`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2021 18:10:24
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu
#
(
    parameter N_BITS = 8
)
(
    input  wire [ N_BITS - 1 : 0 ] i_a,     //input a 
    input  wire [ N_BITS - 1 : 0 ] i_b,     //input b 
    input  wire [ 5 : 0 ] i_op,             //input operation
    output reg  [ N_BITS - 1 : 0 ] o_o      //output operation
);

    always @(*) begin: alu
        case( i_op )
            5'b11100: o_o = i_a + i_b;
            default: o_o = 8'b0000_0000;
        endcase
    end

endmodule
