`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////

module topInterface
#(
    parameter   NB_DATA         = 8    // cantidad de datos a recibircarse al centro del bit de dato // agrege
)
(
    /* outputs */
    output  wire     [NB_DATA -1 :0] o_a,
    output  wire     [NB_DATA -1 :0] o_b,
    output  wire     [NB_DATA -1 :0] o_op,
    /* imputs */
    input   wire     [NB_DATA -1 :0] din,
    input   wire     wr,
    input   wire     clock,
    input   wire     reset
);

    interface_uart myinterface_uart_top (
        .in_rx(din),       .wr(wr),              
        .o_data_A(o_a),    .o_data_B(o_b),
        .o_data_Op(o_op) , 
        .clock(clock),      .reset(reset)
        );
                           
endmodule
