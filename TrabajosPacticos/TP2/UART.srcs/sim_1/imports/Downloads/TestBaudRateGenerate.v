`timescale 1ns / 1ps

module TestBaudRateGenerator;
    parameter   PERIOD = 10; // debe dar 50 Mh
    
    reg         clock;
    wire        s_tick;
    
    
    BaudRate_generatormodule myBaudRate_generatormodule(
        .clock(clock), .s_tick(s_tick)
    );

 
    always begin
        #(PERIOD/2) clock = ~clock;
        #(PERIOD/2);
    end

    //assign clk = clock;

initial
    begin
        clock     =   1'b0;
    end

    initial $monitor(s_tick);
endmodule
