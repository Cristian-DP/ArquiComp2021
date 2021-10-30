`timescale 1ns / 1ps

module BaudRate_generatormodule
#(
    parameter   CLOCK_FREQ       = 50000000,                        //50Mhz
    parameter   BAUD_RATE        = 19200,                           //19,2Khz
    parameter   DIVISION         = 16,
    parameter   N_CLOCKS         = CLOCK_FREQ/(BAUD_RATE*DIVISION)  // 163 tick
)
(
    // OUTPUTS
    output reg tick,
    // INPUTS
    input wire clock
);    
    // counter ticks
    reg [7: 0]  counTicks = 8'b0;
    
    /**
    * Lista de Sensibilidades : 
        clock - posedge
    * Accion :
        Icrementamos en uno cuando aun no se llega 
        al valor de N_CLOCKS.
        Cuando se cumple la igualdad, seteamos en uno 
        a tick
    **/
    always @(posedge clock) begin
        counTicks  <= counTicks + 1'b1;
        if (counTicks == N_CLOCKS) begin
            tick <= 1'b1;
            counTicks  <= 0;
        end
        else begin
            tick <= 1'b0;
        end
    end

endmodule

