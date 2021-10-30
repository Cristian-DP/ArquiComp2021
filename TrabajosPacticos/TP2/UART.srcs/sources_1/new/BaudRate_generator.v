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
    output reg s_tick,
    // INPUTS
    input wire  clock
);
    // Memory 
    reg [7: 0]  ticks = 0;

    always @(posedge clock) begin
        ticks  <= ticks + 1'b1;
        if (ticks == N_CLOCKS) begin
            s_tick <= 1'b1;
            ticks  <= 0;
        end
        else begin
            s_tick <= 1'b0;
        end
    end

endmodule

