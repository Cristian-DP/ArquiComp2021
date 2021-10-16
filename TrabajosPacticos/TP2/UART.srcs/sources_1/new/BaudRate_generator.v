`timescale 1ns / 1ps

module BaudRate_generatormodule
#(
    parameter   CLOCK_FREQ       = 50000000,
    parameter   BAUD_RATE        = 19200,
    parameter   DIVISION         = 16,
    parameter   N_CLOCKS         = CLOCK_FREQ/(BAUD_RATE*DIVISION),
    parameter   INITIAL_N_CLOCKS = N_CLOCKS/2
)
(
    // OUTPUTS
    output wire s_tick,
    // INPUTS
    input wire  clock,
    // Memory 
    reg [7: 0]  ticks,
);
    reg initial_aux     = 1'b1;
    reg [7:0]n_clocks   = INITIAL_N_CLOCKS;
    always @(posedge CLOCK) begin
        if (!initial_aux)
            n_clocks <= N_CLOCKS;
            
        if (ticks == n_clocks) begin
            s_tick <= 1;
            ticks  <= 0;
            initial_aux <= 0;
        end
        else begin
            ticks = ticks + 1;
        end
    end

endmodule

