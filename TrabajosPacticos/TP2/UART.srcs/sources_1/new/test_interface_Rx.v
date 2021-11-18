`timescale 1ns / 1ps


module test_interface_Rx;
    parameter           NB_DATA = 8;
    parameter           PERIOD  = 20; // debe dar 50 Mh
    parameter           [NB_DATA-1 : 0] da  = 8'b00000001;
    parameter           [NB_DATA-1 : 0] db  = 8'b00000010;
    parameter           [NB_DATA-1 : 0] dop = 8'b00100000;
    parameter           [NB_DATA-1 : 0] dop1 = 8'b00100100;
    
    reg                 [NB_DATA-1 : 0] DATO;
    wire                 [NB_DATA-1 : 0] o_data_A ;
    wire                 [NB_DATA-1 : 0] o_data_B ;
    wire                 [NB_DATA-1 : 0] o_data_Op;
    wire                 [NB_DATA-1 : 0] o_alu;
    reg                                 wr;
    reg                                 CLOCK;
    reg                  [4:0]          count;
    
    interface myinterface (.DATO(DATO), .wr(wr), .CLOCK(CLOCK),
                            .o_data_A(o_data_A), .o_data_B(o_data_B),
                            .o_data_Op(o_data_Op) , .o_alu(o_alu));
                            
    alu myAlu (.i_a(o_data_A), .i_b(o_data_B), .i_op(o_data_Op[5:0]), .o_o(o_alu));
    initial
        begin
            CLOCK   = 0;
            wr      = 0;
            count   = 1;
            DATO = 0;
//            o_data_A = 0;
//            o_data_B = 0;
//            o_data_Op = 0;
//            o_alu;
        end
        
    always begin
        #(PERIOD/2) CLOCK = ~CLOCK;
        #(PERIOD/2);
    end
    
    always @(posedge CLOCK)
    begin
        case (count)
            4'b0001:
            begin
                count <= count + 1;
            end
            4'b0100:
            begin
                DATO    <= da;
                wr      <= 1;
                count   <= count +1;
            end
            4'b0101:
            begin
                wr      <= 0;
                count   <= count +1;
            end
            4'b0110:
            begin
                DATO    <= db;
                wr      <= 1;
                count   <= count +1;
            end
            4'b0111:
            begin
                wr      <= 0;
                count   <= count +1;
            end
            4'b1000:
            begin
                DATO    <= dop;
                wr      <= 1;
                count   <= count +1;
            end
            4'b1001:
            begin
                wr      <= 0;
                count   <= count +1;
            end
            4'b1010:
            begin
                count   <= 1;
            end
            
            default: count <= count +1;
        endcase
    
    end
    
    
endmodule
