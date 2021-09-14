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
    input   wire EA,
    input   wire EB,
    input   wire EC,
//    input   wire EB,
//    input   wire EOP,
    /* SALIDA*/
    //output reg  [NB_DATA - 1:0] F,     // EN DUDA
    output reg [NB_DATA    - 1 :0]      DAreg,
    output reg [NB_DATA    - 1 :0]      DBreg,
    output reg [5              :0]      OPreg,
    /* CLOCK */
    input   wire CLOCK
);

/* registros internos*/
//reg [NB_DATA    - 1 :0]      DAreg;
//reg [NB_DATA    - 1 :0]      DBreg;
//reg [5              :0]      OPreg;

//ALU myALU (.DA(DAreg), .DB(DBreg), .OP(OPreg), .F
/* Entrada Dato A*/
always @(posedge CLOCK) begin : sincr_entradas
    if (EA) begin
        DAreg <= DATO;
    end
    if (EB) begin
        DBreg <= DATO;
    end
    if (EC) begin
        OPreg <= DATO;
//        case(OPreg)
//            6'b000000: F <= 8'b0;
//            6'b000001: F <= DAreg + DBreg;
//            6'b000100: F <= DAreg - DBreg;
//        endcase
    end
        
    end
endmodule