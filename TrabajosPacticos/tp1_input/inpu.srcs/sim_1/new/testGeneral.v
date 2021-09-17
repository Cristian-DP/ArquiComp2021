`timescale 1ns / 1ps


module testGeneral;
    parameter NB_D = 8;

    /* Datos */
    reg clk;
    reg D_A;
    reg D_B;
    reg D_Op;
    reg [NB_D - 1 :0] D_DATO;
    reg en;
    wire [NB_D - 1 :0] out_op;

    INPUT myINPUT (.DATO(D_DATO), .selA(D_A), .selB(D_B), .selOp(D_Op) , .en(en), .CLOCK(clk), .o_alu(out_op));
    /* Se realiza la operacion deseada */
    initial
    begin
        clk = 0;                           //Primer valor
        D_DATO = $urandom_range(127,0);
        D_A = 1;
 D_B = 0;
 D_Op = 0;
        #10
        clk = 1;

        #10
        clk = 0;                           //segundo valor
        D_DATO = $urandom_range(127,0);
        D_A = 1'b0;
 D_B = 1'b1;

        #10
        clk = 1;

        #10
        clk = 0;                           //operador
        D_DATO = 8'b00100000;
        D_A = 0;
 D_B = 0;
 D_Op = 1'b1;

        #10
        clk = 1;

        #5                                //Habilito el calculo
        en = 1;

        #10
        clk = 0;

    end

    initial $monitor("%d dato A: %d, dato B: %d, dato Op: %d, DATO: %d, out: %d",$time, D_A, D_B, D_Op, D_DATO, out_op);
endmodule
