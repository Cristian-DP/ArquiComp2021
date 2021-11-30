`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Unit test para el modulo Baud Rate Generator
// Se buscará testear en post sintesis
//////////////////////////////////////////////////////////////////////////////////


module UT_BRG; 
    parameter           PERIOD  = 40; // debe dar 50 Mh
    
    reg     clock;
    reg    reset;
    wire    tick;
    
    topBRG mytopBGR (
        .clock  (clock),
        .reset  (reset),
        .tick   (tick)
    );

    always begin
        #(PERIOD/2) clock = ~clock;
        #(PERIOD/2);
    end
    
    initial
        begin
            clock       = 0;
            reset       = 1;
            #PERIOD reset = 0;   
        end
endmodule
