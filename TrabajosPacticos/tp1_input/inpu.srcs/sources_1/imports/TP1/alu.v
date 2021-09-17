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
    input wire en, //entrada de habilitacion de operacion
    input  wire [ N_BITS - 1 : 0 ] i_a, //input a 
    input  wire [ N_BITS - 1 : 0 ] i_b, //input b 
    input  wire [ 5 : 0 ] i_op, //input operation
    output reg  [ N_BITS - 1 : 0 ] o_o //output operation
);
    reg s;
    reg [ N_BITS - 1: 0 ] i_b2;
    reg [ N_BITS - 1: 0 ] i_a2;
    always @(posedge en) begin   // uso innecesario de enable
        case (i_op)
            /* ADD */
            6'b100000: begin
                o_o = i_a + i_b;
            end
            /* SUB */
            6'b100010: begin
                o_o = i_a - i_b;
            end
            /* AND */
            6'b100100: begin
                o_o = i_a & i_b;
            end
            /* OR */
            6'b100101: begin
                o_o = i_a | i_b;
            end

            /* XOR */
            6'b100110: begin
                o_o = ((~i_a)&i_b) | (i_a&(~i_b));
            end
            /* SRA */
            6'b000011: begin
                o_o = i_a >> i_b;
//                s <= i_b[ N_BITS - 1 ];
//                i_a2 <= i_a;
//                for(i_b2 = i_b;i_b2 > 0; i_b2 = (i_b2 - 1'b1))
//                    begin
//                        i_a2 <= {s, i_a2[ N_BITS - 1 : 1] };
//                    end
//                o_o <= i_a2;
            end
            /* SRL */
            6'b000010: begin
                o_o = (i_a >> i_b);
            end
            /* NOR */
            6'b100111: begin
                o_o = ~(i_a | i_b);
            end
            default: begin
                o_o = 8'b0000_0000;
            end
        endcase
    end

endmodule