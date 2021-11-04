`timescale 1ns / 1ps

module rx_uart
#(
    parameter   NB_STATE        = 5,    // estados de la FSM
    parameter   N_DATA          = 8,    // cantidad de datos a recibir
    parameter   START_VALUE     = 0,    // Bit de start
    parameter   STOP_VALUE      = 1,     // Bit de stop
    parameter   STARTS_TICKS    = 7,    // cantidad de bit para colcarse al centro del bit de start
    parameter   DATA_TICKS      = 15   // cantidad de bit para colcarse al centro del bit de dato
)
(
   /** 
   **  - Cables de salida -
   * dout:          Dato a ser enviado              8 bit
   * rx_done_tick:  bit de aviso para leer dout     1 bit
   *
   **  - Cables de entrada -
   * rx:        bit que llega al receptor           1 bit
   * s_tick:    bit que habilita la lectura de rx   1 bit
   * clock:     Para cambio de estado 
   **/
    output  wire [7:0]  dout,          
    output  reg         rx_done_tick,       
    input   wire        rx,s_tick,                   
    input   wire        clock
);
    // contador de tick
    reg [3:0]           count_ticks;
    // registro de los datos leidos en rx
    reg [N_DATA-1:0]    reg_data;
    // contador de datos leidos en rx
    reg [3:0]           count_data;
    // bit para .....
    reg is_valid = 1;
    
    // estados de la fsm
    localparam [ NB_STATE -1:0]
        STATE_IDLE  = 5'b00001,
        STATE_START = 5'b00010,
        STATE_DATA  = 5'b00100,
        STATE_PAR   = 5'b01000,
        STATE_STOP  = 5'b10000;

    reg [NB_STATE - 1:0] current_state  = STATE_IDLE;
    reg [NB_STATE - 1:0] next_state     = STATE_IDLE;
    
    /**
        Logica de cambio de estado
    **/
    always @(posedge clock)
        if(is_valid) begin
            if (s_tick) begin
                count_ticks <= count_ticks + 1;
            end
            
            current_state <= next_state;
        end 
        
    always @(*) begin: state_logic
         case (current_state)
            STATE_IDLE : begin
                case(rx)
                    1'b0   :   next_state = STATE_START;
                    default:   next_state = STATE_IDLE;
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_START : begin
                case(count_ticks)
                    STARTS_TICKS:   
                    begin 
                        count_ticks     = 0;
                        next_state      = STATE_DATA;                                                    
                    end
                    default:  next_state  = STATE_START;   
                endcase
            end
            // -------------------------------------------------------------------------- // 
            STATE_DATA : begin
                case(count_ticks)
                    DATA_TICKS:     
                        begin
                            count_ticks     = 0;
                            count_data      = count_data + 1;
                            reg_data        = {rx , reg_data[7 : 1]};
                            if(count_data == N_DATA) begin
                                count_data  = 0;
                                next_state  = STATE_PAR;
                            end
                            else next_state  = STATE_DATA;                                                
                        end
                    default: next_state  = STATE_DATA;   
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_PAR: begin
                case(count_ticks)
                    DATA_TICKS:     
                    begin
                        count_ticks     = 0;
                        next_state  = STATE_DATA;                                                
                    end
                    default:   next_state  = STATE_PAR;   
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_STOP : begin
                case(count_ticks)
                    DATA_TICKS:     
                    begin
                        count_ticks     = 0;
                        if(rx) begin
                            rx_done_tick    = 1'b1;
                            next_state      = STATE_IDLE;  
                        end
                        else is_valid = 0;                                        
                    end
                    default: next_state  = STATE_STOP;   
                endcase
            end
        // -----------------------------------------------------------------------// 
         endcase
    end

   assign dout    = reg_data [7:0];
   
endmodule