`timescale 1ns / 1ps

/**
    A Fixear:
        - Ver que rx_done dura un ciclo y eso genera que 
        DATO B lea el dato de A
        - Cuando se incrementa el cont_tick vuelve a ingresar 
        al bloque combinacional sumandose tantas veces lo que 
        dure el ticks
*/

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
    reg [3:0]           count_ticks_reg     = 0;
    reg [3:0]           count_ticks_next     = 0;
    // registro de los datos leidos en rx
    reg [N_DATA-1:0]    reg_data        = 0;
    reg [N_DATA-1:0]    reg_data_next   = 0;
    // contador de datos leidos en rx
    reg [3:0]           count_data      = 0;
    reg [3:0]           count_data_next = 0;
    // bit para .....
    reg is_valid                        = 1;
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
        begin
            current_state   <= next_state;
            count_ticks_reg <= count_ticks_next;
            count_data      <= count_data_next;
            reg_data        <= reg_data_next;
        end
        
    always @(*) begin: state_logic
         rx_done_tick = 1'b0;
         case (current_state)
            STATE_IDLE : begin
                case(rx)
                    1'b0   :   next_state = STATE_START;
                    default:   next_state = STATE_IDLE;
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_START : begin
                case(count_ticks_reg)
                    STARTS_TICKS:   
                    begin 
                        count_ticks_next    = 0;
                        count_data_next     = 0;
                        next_state          = STATE_DATA;                                                    
                    end
                    default:  begin
                        next_state  = STATE_START;   
                        if (s_tick) begin
                            count_ticks_next = count_ticks_reg + 1;
                        end
                    end
                endcase
            end
            // -------------------------------------------------------------------------- // 
            STATE_DATA : begin
                case(count_ticks_reg)
                    DATA_TICKS:     
                        begin
                            count_ticks_next     = 0;
                            //   0       0   0 0 0 0 0 0
                            // rx(i)     0   0 0 0 0 0 0 
                            // rx(i+1) rx(i) 0 0 0 0 0 0
                            reg_data_next        = {rx , reg_data[7 : 1]};
                            
                            count_data_next      = count_data + 1;
                            if(count_data == N_DATA) begin
                                count_data_next = 0;
                                next_state      = STATE_PAR;
                            end
                            else begin
                                next_state  = STATE_DATA;
                            end                                                
                        end
                    default: begin
                        if (s_tick)begin
                            count_ticks_next = count_ticks_reg + 1;
                        end
                        next_state  = STATE_DATA;   
                    end 
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_PAR: begin
                case(count_ticks_reg)
                    DATA_TICKS:     
                    begin
                        count_ticks_next     = 0;
                        next_state  = STATE_STOP;                                                
                    end
                    default:   begin
                        next_state  = STATE_PAR;   
                        if (s_tick) begin
                            count_ticks_next = count_ticks_reg + 1;
                        end
                   end
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_STOP : begin
                case(count_ticks_reg)
                    DATA_TICKS:     
                    begin
                        count_ticks_next     = 0;
                        if(rx) begin
                            rx_done_tick    = 1'b1;
                            next_state      = STATE_IDLE;  
                        end
                        else  next_state = STATE_IDLE;             
                    end
                    default: begin 
                        next_state  = STATE_STOP;   
                        if (s_tick) begin
                            count_ticks_next = count_ticks_reg + 1;
                        end
                    end
                endcase
            end
        // -----------------------------------------------------------------------// 
         default: begin
            next_state = STATE_IDLE;
         end
         endcase
    end

   assign dout    = reg_data [7:0];
endmodule
