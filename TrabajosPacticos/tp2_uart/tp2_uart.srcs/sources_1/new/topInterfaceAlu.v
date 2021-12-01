`timescale 1ns / 1ps

module topInterfaceAlu
#(
    parameter   NB_DATA         = 8    // cantidad de datos a recibircarse al centro del bit de dato // agrege
)
(
    input   [7:0]   din,
    input           wr,
    input           clock,
    input           reset,
    output  [7:0]   o_tx,
    output          empty    
    );
    
    wire  [NB_DATA-1 : 0] o_data_A;
    wire  [NB_DATA-1 : 0] o_data_B;
    wire  [NB_DATA-1 : 0] o_data_Op;
    wire  [NB_DATA-1 : 0] o_alu;
    
    interface_uart interfaceAlu (
        .in_rx(din),            .wr(wr),
        .clock(clock),          .reset(reset),
        .o_tx(o_tx),            .empty(empty),              
        .o_data_A(o_data_A),    .o_data_B(o_data_B),
        .o_data_Op(o_data_Op),  .in_alu(o_alu)
        );
    
    alu AluInterface (
        .i_a(o_data_A),    .i_b(o_data_B), 
        .i_op(o_data_Op),  .o_o(o_alu)
        );
    
endmodule

