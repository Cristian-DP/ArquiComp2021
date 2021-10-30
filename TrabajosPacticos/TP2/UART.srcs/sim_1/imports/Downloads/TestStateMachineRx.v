`timescale 1ns / 1ps

module testRx;
    parameter           PERIOD  = 15; // debe dar 50 Mh
    parameter   [7:0]   data_rx = 8'b00100111;
    parameter           b_start = 1'b1;
    parameter           b_par   = 1'b0;
    parameter   [2:0]   p       = 3'b0; // puntero a data_rx

    // _________ Baud Rate Generator _______________ //
    reg         clk;
    reg         s_tick;
    reg [7:0]   tick;

    BaudRate_generatormodule myBaudRate_generatormodule(
        .clk(clk), .s_tick(s_tick), .tick(tick)
    );
    // _____________________________________________ //
    // _____________________ rx ____________________ //
    reg         i_tick;
    reg         rx;
    reg         rx_done_tick;
    reg [7:0]   o_data;

    state_machine_rx mystate_machine_rx(
        .i_tick(i_tick), .rx(rx),
        .rx_done_tick(rx_done_tick), .o_data(o_data)
    );
    // ____________________________________________ //

    always begin
        #(PERIOD/2) clk = ~clk;
        #(PERIOD/2);
    end

    always @(posedge clk) begin
        if (s_tick == 1'b1) begin
            p           =   p + 1;
            rx          =   data_rx[p];
        end
    end

    initial
    begin
        i_tick          = 1'b0;
        rx              = 1'b1;
        rx_done_tick    = 1'b0;

    end

    initial $monitor($time, i_tick, rx, rx_done_tick, o_data);
endmodule
