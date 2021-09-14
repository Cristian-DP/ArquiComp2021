`timescale 1ns / 1ps

// Code your testbench here
// or browse Examples
module testInput;
  parameter NB_D = 8;

    /* Datos */
  reg clk;
  reg D_A;
  reg D_B;
  reg D_C;
  reg [NB_D - 1:0] D_DATO;
  //reg      [5       :0] O_P;
  wire     [NB_D - 1:0] FO;

  INPUT myINPUT (.DATO(D_DATO), .EA(D_A), .EB(D_B), .EC(D_C) , .F(FO), .CLOCK(clk));
/* Se realiza la operacion deseada */
initial
  begin
    D_A = 1'b0;
    D_B = 1'b0;
    D_C = 1'b0;
    clk = 0;
    //O_P = 6'b100000;
    #10 
    clk = 1;
    
    #10 
    D_DATO = 8'b00000011;
    D_A = 1'b1;
    //D_C = 1'b1;
    
    #10 
    clk = 0;
    D_A = 0;
    D_B = 1;
    
    #10 
    clk = 1;
    
    #20 
    clk = 0;
    #10 
    D_B = 0;
    D_B = 0;
    D_DATO = 8'b00000001;
    D_C = 1;   
    
    #10 
    clk = 1;
    
    #20 
    clk = 0;
    
  end
  
  //initial $monitor($
    initial $monitor($time, D_A, D_B, D_C, D_DATO, FO);
endmodule
