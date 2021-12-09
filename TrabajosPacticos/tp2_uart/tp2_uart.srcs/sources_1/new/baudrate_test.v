`timescale 1ns / 1ps


module baudrate_test
#(
    parameter   CLOCK_FREQ       = 50000000,                        //50Mhz
    parameter   BAUD_RATE        = 19200,                           //19,2Khz
    parameter   DIVISION         = 16,
    parameter   N_CLOCKS         = CLOCK_FREQ/(BAUD_RATE*DIVISION)  // 163 tick
)
(
    output reg tick,
    input wire clock,
    input wire reset
);    
    reg [7: 0]  counTicks;
    
    always @(posedge clock) begin
        if (reset) begin
            tick        <= 1'b0;
            counTicks   <= 1'b0;
        end
        else begin
            counTicks  <= counTicks + 1'b1;
            if (counTicks == N_CLOCKS) begin
                tick        <= 1'b1;
                counTicks   <= 1'b0;
            end
            else begin
                tick <= 1'b0;
            end
        end
    end

endmodule

