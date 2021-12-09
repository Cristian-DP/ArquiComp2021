`timescale 1ns / 1ps


module testSystem;
    parameter           PERIOD  = 40; // debe dar 50 Mh
    parameter           N_CLOCK = 163;
//    parameter           CHANGE_RX = (N_CLOCK*3)/4; // 122
    parameter           N_DATA = 8;
    
    parameter           NB_DATA = 8;
    
//    parameter   [7:0]  data_rx          = 8'b00001010;
//    parameter   [7:0]  data_rx_b        = 8'b00000001;
//    parameter   [7:0]  data_rx_op       = 8'b00100000;
    
//    parameter   bit_start               = 1'b0;
//    parameter   bit_stop                = 1'b1;
//    parameter   bit_par                 = 1'b1;
//    parameter   STARTS_TICKS            = 7;    // cantidad de bit para colcarse al centro del bit de start
//    parameter   DATA_TICKS              = 15;   // cantidad de bit para colcarse al centro del bit de dato
    
    //count_tick

//    wire        rx_done_tick;
//    wire [NB_DATA - 1:0]  dout;

//    reg   [2:0] counter_t;
    
//    wire    [NB_DATA -1 : 0] 
//             o_data_A, 
//             o_data_B, 
//             o_data_Op, 
//             o_alu  ;    
    wire        tick;
    wire        tx_source;

    // _________________________________ TOP _______________________________________ //
    wire    tx;
//    reg     rx;                 
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
        .rx(tx_source),
        .clock(clock),
        .reset(reset)
    );
    // ______________________ BRG ____________ //
    baudrate_test myBRGTest (
        .tick(tick),
        .clock (clock),
        .reset (reset)
    );
        
    reg        empty;
    reg  [NB_DATA - 1:0] o_tx;
    wire  tx_done_tick;
    transmisor_test source_messages(
        .s_tick(tick), 
        .tx(tx_source),
        .tx_start(empty),
        .tx_done_tick(tx_done_tick),
        .din(o_tx),
        .clock(clock),
        .reset(reset)
    );
    reg start;
    reg [1:0]count_data;
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
            count_data  = 0;
            start       = 0;        
            empty       = 1;
            o_tx        = 0;
//            rx          = 1;
            clock       = 0; 
            reset       = 1;
            #PERIOD reset = 0;     
            #PERIOD;
            start       = 1;
        end
    
    always begin
        #(PERIOD/2) clock = ~clock;
        #(PERIOD/2);
    end
       
    always @(posedge tick) begin
        if(count_data == 2'b00 && start)begin
            o_tx    <= 8'b01010101;
            empty   <= 0;
            #(PERIOD*3);
            empty   <= 1'b1;
            count_data <= count_data + 1;
        end  
    end
    
    always @(posedge tx_done_tick) begin
        #(PERIOD*2);
        if (count_data <= 2'b10) begin
            o_tx    <= 8'b00100000;
            empty   <= 0;
            #(PERIOD*3);
            empty   <= 1'b1;
            count_data <= count_data + 1; 
        end 
    end
    
endmodule 


