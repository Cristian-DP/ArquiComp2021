`timescale 1ns / 1ps


module interface
#(
    /** numero de bits - datos*/
    parameter NB_DATA   = 8,
    parameter NB_STATE  = 4
)
(
    /* DATO */
    input   wire                    wr,
    input   wire    [NB_DATA - 1:0] DATO,
    /* SALIDA*/
    output  wire    [NB_DATA - 1:0] o_data_A,
    output  wire    [NB_DATA - 1:0] o_data_B,
    output  wire    [NB_DATA - 1:0] o_data_Op,
    output  wire    [NB_DATA - 1:0] o_alu,
    /* SELECT */
//    input   wire selA,
//    input   wire selB,
//    input   wire selOp,
    /* CLOCK */
    input wire CLOCK
);

  reg    [NB_DATA - 1:0] DA_reg;
  reg    [NB_DATA - 1:0] DB_reg;
  reg    [5          :0] OP_reg;
  reg    [2:0]           count_data;
  // estados de la fsm
  localparam [NB_STATE-1 :0]
        STATE_DATA_A    = 4'b00001,
        STATE_DATA_B    = 4'b00010,
        STATE_DATA_OP   = 4'b00100,
        STATE_ALU       = 4'b01000;

    reg [NB_STATE - 1:0] current_state  = STATE_DATA_A;
    reg [NB_STATE - 1:0] next_state     = STATE_DATA_A;
    
   alu myAlu (.i_a(DA_reg), .i_b(DB_reg), .i_op(OP_reg), .o_o(o_alu));
   
   always @(posedge CLOCK, posedge wr) begin
        current_state   <= next_state;
   
//   always @(*)
//   begin
        case (current_state)
            STATE_DATA_A:
                begin
                    if(wr) begin
                        DA_reg = DATO;
                        count_data = 1;
                        next_state = STATE_DATA_B;
                    end 
                    else begin
                        next_state = STATE_DATA_A;
                    end
                end
            // -------------------------------------------------------------------------- //
            STATE_DATA_B:
            begin
                if(wr) begin
                        DB_reg = DATO;
                        count_data = 1;
                        next_state = STATE_DATA_OP;
                    end 
                    else begin
                        next_state = STATE_DATA_B;
                    end
            end
            // -------------------------------------------------------------------------- //
            STATE_DATA_OP:
            begin
                if(wr) begin
                        OP_reg = DATO;
                        count_data = 1;
                        next_state = STATE_ALU;
                    end 
                    else begin
                        next_state = STATE_DATA_OP;
                    end
            end
            // -------------------------------------------------------------------------- //
            STATE_ALU:
            begin
                next_state = STATE_DATA_A;
                count_data = 0;
            end  
              
        endcase
   
   end

assign o_data_A     = DA_reg;
assign o_data_B     = DB_reg;
assign o_data_Op    = OP_reg;
endmodule