`timescale 1ns / 1ps
module inp 
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
    input   wire EOP,
    /* SALIDA*/
    output  reg  F,     // EN DUDA
    /* CLOCK */
    input   wire CLOCK
);

/* registros internos*/
reg [NB_DATA    - 1 :0]      DAreg;
reg [NB_DATA    - 1 :0]      DBreg;
reg [5              :0]      OPreg;

//ALU myALU (.DA(DAreg), .DB(DBreg), .OP(OPreg), .F
/* Entrada Dato A*/
always @(posedge CLOCK) begin : sincr_entradas
    if (EA) begin
        DAreg <= DATO;
    end
    else if (EB) begin
        DBreg <= DATO;
    end
    else if (EOP) begin
        OPreg <= DATO;
    end

    end
endmodule

