`timescale 1ns / 1ps


module UT_BrgTx;

    parameter           PERIOD      = 40; // debe dar 50 Mh
    parameter           N_CLOCK     = 163;
    parameter           CHANGE_RX   = (N_CLOCK*3)/4; // 122
    parameter           NB_DATA     = 8;
    parameter           N_CLOCKS    = 163;
    parameter           N_TICKS     = 15;   // cantidad de bit para colcarse al centro del bit de dato
    
    reg     [7:0]count_clocks;
    reg     [3:0]count_ticks;
    wire    tick;
    
    // _________________________________ TOP _______________________________________ //
    wire    tx;
    wire    read_tx;
    wire    tx_done_tick;
    reg     clock;
    reg     reset;
    wire    [NB_DATA - 1:0] din;
    reg     empty;
    
    topBrgTx myTopBrgTx (
        .tx(tx),
        .tx_done_tick(tx_done_tick),
        .read_tx(read_tx),
        .din(din),
        .empty(empty),
        .clock (clock),
        .reset (reset)
    );
    
    initial
        begin
            count_clocks= 0;
            count_ticks = 0;
            clock       = 0; 
            reset       = 1;
            #PERIOD reset = 0;     
        end
    
    always begin
        #(PERIOD/2) clock = ~clock;
        #(PERIOD/2);
    end
        
    always @(posedge clock) begin
        count_clocks = count_clocks + 1;
        if(count_clocks == N_CLOCKS) begin
            count_ticks = count_ticks + 1;
            if(count_ticks == N_TICKS) begin
                count_clocks = 0;
                count_ticks = 0;
            end
        end
    end
   

endmodule
