`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2021 15:40:37
// Design Name: 
// Module Name: inpu
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


module INPUT 
#(
    /** numero de bits - datos*/
    parameter NB_DATA   = 8
)

(
    /* DATO */
    input   wire   [NB_DATA - 1:0] DATO,
    /* SELECT */
    input   wire selA,
    input   wire selB,
    input   wire selOp,
    /* SALIDA*/
    output wire  [NB_DATA - 1:0] o_alu,
    /* CLOCK */
    input wire CLOCK
);

    /* registros internos*/
    reg [NB_DATA    - 1 :0]      DA_reg;
    reg [NB_DATA    - 1 :0]      DB_reg;
    reg [5              :0]      OP_reg;

    alu myAlu (.i_a(DA_reg), .i_b(DB_reg), .i_op(OP_reg), .o_o(o_alu));
    /* Entrada Dato A*/
    always @(posedge CLOCK)
    begin : Input_A
        if (selA) begin
            DA_reg <= DATO;
        end
    end
    /* Entrada Dato B*/
    always @(posedge CLOCK) begin : Input_B
        if (selB) begin
            DB_reg <= DATO;
        end
    end
    /* Entrada Dato de Operacion*/
    always @(posedge CLOCK) begin : Input_OP
        if (selOp) begin
            OP_reg <= DATO;
        end
    end

endmodule