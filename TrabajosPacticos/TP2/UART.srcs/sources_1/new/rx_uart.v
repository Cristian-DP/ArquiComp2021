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
   * clock: ¿? 
   **/
    output  wire [7:0]  dout,
    output  wire        tick,             
    output  reg         rx_done_tick,       
    input   wire        rx,s_tick,                   
    input   wire        clock, i_reset,
    output  wire  [1:0] state_out    
);
    // contador de tick
    reg [3:0]           count_ticks_reg, count_ticks_next;
    // registro de los datos leidos en rx
    reg [N_DATA-1:0]    reg_data,    reg_data_next;
    // contador de datos leidos en rx
    reg [3:0]           count_data_reg, count_data_next;
    // bit para .....
    reg is_valid = 1;
    
    reg [1:0]s_out_next;
    // estados de la fsm
    localparam [ NB_STATE -1:0]
        STATE_IDLE  = 5'b00001,
        STATE_START = 5'b00010,
        STATE_DATA  = 5'b00100,
        STATE_PAR   = 5'b01000,
        STATE_STOP  = 5'b10000;

    reg [NB_STATE - 1:0] current_state = STATE_IDLE;
    reg [NB_STATE - 1:0] next_state = STATE_IDLE;
    
    always @(posedge clock, posedge i_reset) begin
        if (i_reset) begin
            current_state       <= STATE_IDLE;
            reg_data            <= 0;
            count_ticks_reg     <= 0;
            count_data_reg      <= 0;
            s_out_next          <= 0;
          end
        else
            begin
                current_state       <= next_state;
                reg_data            <= reg_data_next;
                count_ticks_reg     <= count_ticks_next;
                count_data_reg      <= count_data_next;
                s_out_next          <= s_out_next;
            end
    end
    
    always @(*) begin: state_logic
    
        case (current_state)
        // -------------------------------------------------//
            STATE_IDLE : begin
                case(rx)
                    1'b0   :   begin 
                        next_state = STATE_START;
                        count_ticks_next = 0;            // add
                        s_out_next            = 1;
                    end
                    default:   next_state = STATE_IDLE;
                endcase
            end
        // -------------------------------------------------//
            STATE_START : begin
                if (s_tick)
                begin
                    case(count_ticks_reg)
                        STARTS_TICKS:   
                        begin 
                            count_ticks_next     = 0;
                            reg_data        = 0;
                            next_state      = STATE_DATA;
                            s_out_next     = 2;                                                    
                        end
                        default:
                        begin       
                            count_ticks_next     = count_ticks_reg + 1; 
                        end
                    endcase
                end
            end
        // -------------------------------------------------//
            STATE_DATA : begin
                if (s_tick)
                begin
                    case(count_ticks_next)
                        DATA_TICKS:    
                            begin
                                count_ticks_next     = 0;
                                if(count_data_reg == N_DATA-1) begin
                                    next_state  = STATE_PAR;
                                    s_out_next = 3;
                                end
                                else    begin
                                    count_data_next = count_data_reg + 1;
                                end                                                
                            end
                        default:
                            begin
                                count_ticks_next = count_ticks_reg + 1 ;   
                            end
                    endcase
                end
            end
        // -------------------------------------------------//
            STATE_PAR: begin
                if (s_tick) begin
                    case(count_ticks_next)
                        DATA_TICKS:
                        begin
                            count_ticks_next     = 0;
                            if (rx == 1) begin
                                next_state  = STATE_STOP;
                            end
                        end 
                        default: count_ticks_next = count_ticks_reg + 1 ;
                        
                        endcase 
                end
            end
        // -------------------------------------------------//
            STATE_STOP : begin
                if (s_tick) begin
                    case(count_ticks_reg)
                        DATA_TICKS:     
                        begin
                              rx_done_tick    = 1'b1;
                              next_state      = STATE_IDLE;                                    
                        end
                        default: begin   
                            count_ticks_next = count_ticks_reg + 1; 
                         end 
                    endcase
              end
            end
        // -------------------------------------------------//
            default: begin
                next_state          = current_state;
                rx_done_tick        = 1'b0;
                count_ticks_next    = count_ticks_reg;
            end
        // -------------------------------------------------//
         endcase
    end


    assign dout      = reg_data;
    assign state_out = s_out_next;
endmodule