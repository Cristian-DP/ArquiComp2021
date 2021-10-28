`timescale 1ns / 1ps

module BaudRate_generatormodule
#(
    parameter   CLOCK_FREQ       = 50000000, //50Mhz
    parameter   BAUD_RATE        = 19200,    //19,2Khz
    parameter   DIVISION         = 16,
    parameter   N_CLOCKS         = CLOCK_FREQ/(BAUD_RATE*DIVISION)
)
(
    // OUTPUTS
    output wire s_tick,
    // INPUTS
    input wire  clock,
    // Memory 
    reg [7: 0]  ticks
);

    always @(posedge CLOCK) begin
        if (ticks == N_CLOCKS) begin
            s_tick <= 1;
            ticks  <= 0;
        end
        else begin
            s_tick <= 0;
            ticks = ticks + 1;
        end
    end

endmodule

