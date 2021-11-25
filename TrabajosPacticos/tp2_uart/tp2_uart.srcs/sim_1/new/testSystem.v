`timescale 1ns / 1ps


module testSystem;
    parameter           PERIOD  = 40; // debe dar 50 Mh
    parameter           N_CLOCK = 163;
    parameter           CHANGE_RX = (N_CLOCK*3)/4; // 122
    parameter           N_DATA = 8;
    
    parameter   [7:0]  data_rx          = 8'b00001010;
    parameter   [7:0]  data_rx_b        = 8'b00000001;
    parameter   [7:0]  data_rx_op       = 8'b00100000;
    parameter   bit_start               = 1'b0;
    parameter   bit_stop                = 1'b1;
    parameter   bit_par                 = 1'b1;
    parameter   STARTS_TICKS            = 7;    // cantidad de bit para colcarse al centro del bit de start
    parameter   DATA_TICKS              = 15;   // cantidad de bit para colcarse al centro del bit de dato
    
    reg     [3:0]   ctick_change_data   = 4'b0;   // cantidad de bit para cambiar el dato
    reg     [3:0]   ptr_data            = 4'b0;  // puntero a data_rx
    reg     [7:0]   counter_data        = 8'b0; // cuento los datos enviados incluido start, par y stop
    reg     [3:0]   state;
    reg     [7:0]   counter;
    reg     [2:0]   sel_data;
    
    
    // _________________________________ TOP _______________________________________ //
    wire    tx;
    reg     rx;                 
    reg     clock;           
    wire    tick;
    reg    reset;
    
    top mytop(
                .tx(tx),
                .rx(rx),
                .clock(clock),
                .reset(reset)
    );
    // ______________________ BRG ____________ //
    BaudRateGenerator myBRGTest (
        .tick(tick),
        .clock (clock),
        .reset (reset)
    );
    
    initial
        begin
            rx          = 1;
            ptr_data    = 0;
            clock       = 0; 
            counter     = 0;
            state       = 0;
            sel_data    = 0;
            reset       = 1;
            #PERIOD reset = 0;     
        end
    
    always begin
        #(PERIOD/2) clock = ~clock;
        #(PERIOD/2);
    end
        
    always @(posedge tick) begin
        case (state)
            3'b000: begin
                        rx                  = bit_start;
                        state               = 1;
                 end
                
            3'b001: begin
                rx                  = bit_start;
                ctick_change_data   = ctick_change_data + 1;
                if (ctick_change_data == DATA_TICKS) begin
                    case(sel_data)
                        2'b00: rx = data_rx[ptr_data];
                        2'b01: rx = data_rx_b[ptr_data];
                        2'b10: rx = data_rx_op[ptr_data];
                    endcase
                        state               = 2'b010;
                        ctick_change_data   = 0;
                end
            end
            
            3'b010: begin
                case(sel_data)
                    2'b00: rx = data_rx[ptr_data];
                    2'b01: rx = data_rx_b[ptr_data];
                    2'b10: rx = data_rx_op[ptr_data];
                endcase
                
                ctick_change_data   = ctick_change_data + 1;
                
                if (ctick_change_data == DATA_TICKS) begin
                        ptr_data            = ptr_data + 1;
                        case(sel_data)
                            2'b00: rx = data_rx[ptr_data];
                            2'b01: rx = data_rx_b[ptr_data];
                            2'b10: rx = data_rx_op[ptr_data];
                        endcase
                        ctick_change_data   = 0;
                        counter_data        = counter_data +1;
                        // 0 1 2 3 4 5 6 7
                        if (counter_data == 8)begin
                            rx      = bit_par;
                            state   = state + 1;
                        end
                end
            end
            3'b011: begin
                rx                  = bit_par;
                ctick_change_data   = ctick_change_data + 1;
                
                if (ctick_change_data == DATA_TICKS) begin
                        rx      = bit_stop;
                        state   = state + 1;
                end
            end
            3'b100: begin
                rx                  = bit_stop;
                ctick_change_data   = ctick_change_data + 1;
             
                if (ctick_change_data == DATA_TICKS) begin
                        ptr_data            = 0;
                        rx                  = 1;
                        ctick_change_data   = 0;
                        state               = 0;
                        counter_data        = 0;
                        sel_data            = sel_data + 1;
                        
                        if (sel_data == 2'b11) sel_data = 0;
                end
                
          end
          default: begin
                 ctick_change_data   = 0;
                 rx                  = 1;
                 state               = 0;
                 counter_data        = 0;
                 ptr_data            = 0;
                 sel_data            = 0;
          end
            
        endcase
   end
   
//    initial $monitor(tick, rx, rx_done_tick, dout);
endmodule 


