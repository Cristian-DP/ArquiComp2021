`timescale 1ns / 1ps

module IT_InterAluTx;
 parameter              NB_DATA = 8;
    parameter           PERIOD  = 20; // debe dar 50 Mh
    parameter           N_TICKS  = 15; 
    parameter           BR      = 163; 
    parameter           [NB_DATA-1 : 0] da  = 8'b00000011;
    parameter           [NB_DATA-1 : 0] db  = 8'b00000010;
    parameter           [NB_DATA-1 : 0] dop = 8'b00100000;
    parameter           [NB_DATA-1 : 0] dop1 = 8'b00100100;
    
    reg                                 flags;
    //____________________TOP_____________________________________// 
    reg                  [NB_DATA-1 : 0] DATO;
    wire                  [NB_DATA-1 : 0] o_alu;
    wire                                 tx;
    reg                                  wr;
    reg                                  clock;
    reg                                  reset;
    reg                  [7:0]                count_tick;
    reg                  [7:0]                count_clk;
    reg                  [5:0]           count;
    reg                                  reset;
    
    top topInterfaceAluTx (
        .din(DATO),     .wr(wr),
        .clock(clock),  .reset(reset),
        .tx(tx),        .o_alu(o_alu)
    );
    //____________________________________________________________// 
    
    initial
        begin
            clock   = 0;
            wr      = 0;
            count   = 0;
            count_tick = 0;
            count_clk = 0;
            DATO    = 0;
            flags   = 0;
            reset   = 1;
            #PERIOD  reset   = 0;
        end
        
    always begin
        #(PERIOD/2) clock = ~clock;
        #(PERIOD/2);
    end
    
    always @(posedge clock)
    begin
        case (count_clk) 
            BR: begin
                case (count_tick)
                    N_TICKS: begin
                        case (count)
                            3'b000:
                            begin
                                count   <= count +1;
                            end
                            3'b001:
                            begin
                                count   <= count +1;
                            end
                            3'b010:
                            begin
                                DATO    <= da;
                                count   <= count +1;
                            end
                            3'b011:
                            begin
                                wr      <= 1;
                                count   <= count +1;
                            end
                            3'b100:
                            begin
                                wr      <= 0;
                                count   <= count +1;
                            end
                            3'b101:
                            begin
                                DATO      <= db;
                                count   <= count +1;
                            end
                            3'b110:
                            begin
                                wr      <= 1;
                                count   <= count +1;
                            end
                            3'b111:
                            begin
                                wr      <= 0;
                                count   <= count +1;
                            end
                            4'b1000:
                            begin
                                if (flags) begin
                                    DATO    <= dop;
                                    flags   <= 0;
                                end
                                else begin
                                    DATO    <= dop1;
                                    flags   <= 1;
                                end
                                count   <= count +1;
                            end
                            4'b1001:
                            begin
                                wr      <= 1;
                                count   <= count +1;
                            end
                            4'b1010:
                            begin
                                wr      <= 0;
                                count   <= count +1;
                            end
                            4'b1011:
                            begin
                                case (count)
                                
                                endcase
                                wr      <= 0;
                                count <= count +1;
                            end
                            4'b1100:
                            begin
                                wr      <= 0;
                                count <= 0;
                            end
                            default: count <= count +1;
                        endcase
                        count_tick = 0;
                    end
                   default: count_tick = count_tick + 1;
                   endcase
           count_clk = 0;
           end
           default: count_clk = count_clk + 1;
       endcase
    end
endmodule
