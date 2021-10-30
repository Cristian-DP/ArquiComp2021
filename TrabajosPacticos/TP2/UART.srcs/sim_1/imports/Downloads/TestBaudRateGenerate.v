`timescale 1ns / 1ps

module TestBaudRateGenerator;
    parameter   PERIOD = 20; // debe dar 50 Mh
    
    reg         clock;
    wire        tick;
    
    BaudRate_generatormodule myBaudRate_generatormodule(
        .clock(clock), .tick(tick)
    );
 
    always begin
        #(PERIOD/2) clock = ~clock;
        #(PERIOD/2);
    end

initial
    begin
        clock     =   1'b0;
    end

    //initial $monitor(tick);
endmodule
