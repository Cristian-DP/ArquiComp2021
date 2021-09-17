`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 21:09:31
// Design Name: 
// Module Name: aluTest
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


module aluTest;
    parameter NB_D = 8;

    /* Datos */
    reg       clk;
    reg		en;
    reg       [NB_D - 1:0] D_A;
    reg       [NB_D - 1:0] D_B;
    reg       [5:0] D_OP;
    wire      [NB_D - 1:0] FO;

    alu myAlu (.i_a(D_A), .i_b(D_B), .i_op(D_OP) , .o_o(FO), .en(en));
    /* Se realiza la operacion deseada */
    initial
    begin
        en = 0;
        #5
        $display("add");
        en = 1;
        D_A = 8'b00000000;
        D_B = 8'b00000001;
        D_OP = 6'b100000;

        #5
        en = 0;

        #5
        $display("sub");
        en = 1;
        D_A = 8'b00000110;
        D_B = 8'b00000101;
        D_OP = 6'b100010;
        #5
        en = 0;

        #5
        $display("and");
        en = 1;
        D_A = 8'b00000111;
        D_B = 8'b00000101;
        D_OP = 6'b100100;

        #5
        en = 0;

        #5
        $display("xor");
        en = 1;
        D_A = 8'b00000111;
        D_B = 8'b00000101;
        D_OP = 6'b100110;
        #5
        en = 0;

        #5
        $display("SRA");
        en = 1;
        D_A = 8'b10000111;
        D_B = 8'b00000001;
        D_OP = 6'b000011;
        #5
        en = 0;

        #30
        $display("SRL");
        en = 1;
        D_A = 8'b00000111;
        D_B = 8'b00000001;
        D_OP = 6'b000010;
        #5
        en = 0;

        #5
        $display("NOR");
        en = 1;
        D_A = 8'b00000111;
        D_B = 8'b00000101;
        D_OP = 6'b100111;
        #5
        en = 0;

        #5
        $display("NO PASA NADA");
        en = 1;
        D_A = 8'b00000111;
        D_B = 8'b00000101;
        D_OP = 6'b111111;
        #5
        en = 0;

    end

    initial $monitor(D_A, D_B, FO);
endmodule
