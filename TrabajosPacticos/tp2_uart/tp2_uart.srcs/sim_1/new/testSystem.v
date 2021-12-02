`timescale 1ns / 1ps


module testSystem;
    parameter           PERIOD  = 40; // debe dar 50 Mh
    parameter           N_CLOCK = 163;
    parameter           CHANGE_RX = (N_CLOCK*3)/4; // 122
    parameter           N_DATA = 8;
    
    parameter           NB_DATA = 8;
    
    parameter   [7:0]  data_rx          = 8'b00001010;
    parameter   [7:0]  data_rx_b        = 8'b00000001;
    parameter   [7:0]   data_rx_op      = 8'b00100000;
    
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
    
    
//    wire        empty;
//    wire        read_tx;
    wire        tick;
//    wire        rx_done_tick;
//    wire [NB_DATA - 1:0]  dout;
   
//    wire  [NB_DATA - 1:0]   o_tx;
//    reg   [2:0] counter_t;
//    wire        tx_done_tick; 
    
//    wire    [NB_DATA -1 : 0] 
//             o_data_A, 
//             o_data_B, 
//             o_data_Op, 
//             o_alu  ;    
    
    // _________________________________ TOP _______________________________________ //
    wire    tx;
    reg     rx;                 
    reg     clock;
    reg    reset;
    
    
    
// // ______________________ BRG ____________ //
//    BaudRateGenerator myBRG (
//        .tick(tick),
//        .clock (clock),
//        .reset(reset)
//    );
//    // ____________________ Rx   ____________________ //
//    rx_uart myrx_uart(
//        .s_tick(tick), 
//        .rx(rx),
//        .rx_done_tick(rx_done_tick), 
//        .dout(dout),
//        .clock(clock),
//        .reset(reset)
//    );
//    // ______________________ Tx ____________ //
//    tx_uart mytx_uart(
//        .s_tick(tick), 
//        .tx(tx),
//        .tx_done_tick(tx_done_tick), 
//        .tx_start(empty),
//        .read_tx(read_tx),
//        .din(o_tx),
//        .clock(clock),
//        .reset(reset)
//    );
//    // ______________________ interface  ____________ //
//    interface_uart myinterface_uart (
//        .in_rx      (dout), 
//        .wr         (rx_done_tick), 
//        .CLOCK      (clock), 
//        .in_alu     (o_alu),
//        .o_data_A   (o_data_A), 
//        .o_data_B   (o_data_B), 
//        .o_data_Op  (o_data_Op),
//        .o_tx       (o_tx),
//        .empty      (empty),
//        .rd         (tx_done_tick),
//        .read_tx    (read_tx),
//        .reset(reset)
        
//    );
//    // ______________________ alu   ____________ //
//    alu myAlu (.i_a(o_data_A), .i_b(o_data_B), .i_op(o_data_Op[5:0]), .o_o(o_alu));
    
    
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
//            D_Op_sw [0] = 8'b00100000;
//            D_Op_sw [1] = 8'b00100010;
//            D_Op_sw [2] = 8'b00100100;
//            D_Op_sw [3] = 8'b00100101;
//            D_Op_sw [4] = 8'b00100110;
//            D_Op_sw [5] = 8'b00000011;
//            D_Op_sw [6] = 8'b00000010;
//            D_Op_sw [7] = 8'b00100111;
            
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
//                        data_rx_op          = D_Op_sw[$urandom_range(7,0)];
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
                        counter_data       = 0;
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


