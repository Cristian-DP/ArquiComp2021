`timescale 1ns / 1ps


module topBrgTx
#(
    parameter   NB_STATE        = 5, // estados de la FSM
    parameter   NB_DATA          = 8, // cantidad de datos a recibir
    parameter   START_VALUE     = 0, // Bit de start
    parameter   STOP_VALUE      = 1, // Bit de stop
    parameter   DATA_TICKS      = 15 // cantidad de bit para colcarse al centro del bit de dato // agrege
)
(
    output  wire    tx,
    output  wire    read_tx,
    output  wire    tx_done_tick,
    input   wire    clock,
    input   wire    reset,
    input   wire    [NB_DATA - 1:0] din,
    input   wire    empty
);
    
    wire        tick;

    // ______________________ BRG ____________ //
    BaudRateGenerator myBRG (
        .tick(tick),
        .clock (clock),
        .reset(reset)
    );
    // ______________________ Tx ____________ //
    tx_uart mytx_uart(
        .s_tick(tick),
        .tx(tx),
        .tx_done_tick(tx_done_tick),
        .tx_start(empty),
        .read_tx(read_tx),
        .din(din),
        .clock(clock),
        .reset(reset)
    );

endmodule
