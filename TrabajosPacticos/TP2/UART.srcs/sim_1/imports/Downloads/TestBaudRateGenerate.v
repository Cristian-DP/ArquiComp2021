`timescale 1ns / 1ps

module aluTest;
    parameter   PERIOD = 15; // debe dar 50 Mh
    
    reg         clk;
    reg         s_tick;
    reg [7:0]   tick;

    BaudRate_generatormodule myBaudRate_generatormodule(
        .clk(clk), .s_tick(s_tick), .tick(tick)
    );

 
    always begin
        #(PERIOD/2) clk = ~clk;
        #(PERIOD/2);
    end

initial
    begin
        clk       =   1'b0;
        s_tick    =   1'b0;
        tick      =   8'b0;
    end

    initial $monitor($time, clk, s_tick, tick);
endmodule
