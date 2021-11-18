`timescale 1ns / 1ps

module tx_uart
#(
    parameter   NB_STATE        = 5,    // estados de la FSM
    parameter   N_DATA          = 8,    // cantidad de datos a recibir
    parameter   START_VALUE     = 0,    // Bit de start
    parameter   STOP_VALUE      = 1,     // Bit de stop
    parameter   N_TICKS         = 7
)
(
    output  wire        dout,      
    input   wire        [7:0]din,
    input   wire        op_done , s_tick,                   
    input   wire        clock
);
    // contador de tick
    reg [3:0]           count_ticks     = 0;
    // registro conteo de los datos de envio 
    reg [3:0]           count_data      = 0;
    // registro de guardado de la operacion de la alu
    reg [7:0]           op_reg          = 0;
    // registro asociado a la salida
    reg                 out_reg         = 1;
    
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
            if( current_state > STATE_IDLE ) begin
                if (s_tick) begin
                    count_ticks <= count_ticks + 1;
                end
            end
            current_state   <= next_state;
        end
        
    always @(*) begin: state_logic
         
         case (current_state)
            STATE_IDLE : begin
                case(op_done)
                    1'b0   :
                    begin
                        reg_data    = din;
                        next_state  = STATE_START;
                    end
                    default:   begin
                        next_state = STATE_IDLE;
                    end
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_START : begin
                out_reg = 0;        // bit de start
                case(count_ticks)
                    N_TICKS:   
                    begin 
                        count_ticks     = 0;
                        next_state      = STATE_DATA;                                                    
                    end
                    default:  next_state  = STATE_START;   
                endcase
            end
            // -------------------------------------------------------------------------- // 
            STATE_DATA : begin
                out_reg = op_reg[count_data];
                case(count_ticks)
                    DATA_TICKS:     
                        begin
                            count_ticks     = 0;
                            count_data      = count_data + 1;
                            if(count_data == N_DATA) begin
                                count_data  = 0;
                                next_state  = STATE_PAR;
                            end
                            else next_state  = STATE_DATA;                                                
                        end
                    default: next_state  = STATE_DATA;   
                endcase
            end
            // ---------------CALCULO OPCIONAL DEL BIT DE PARIDAD----------------------- //
            STATE_PAR: begin
                out_reg = 0; // valor 0 por ahora, luego hay que hacer el calculo de paridad
                case(count_ticks)
                    DATA_TICKS:     
                    begin
                        count_ticks     = 0;
                        next_state  = STATE_STOP;                                                
                    end
                    default:   next_state  = STATE_PAR;   
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_STOP : begin
                out_reg = 1;
                case(count_ticks)
                    DATA_TICKS:     
                    begin
                        count_ticks     = 0;        
                        next_state = STATE_IDLE;
                    end
                    default: next_state  = STATE_STOP;   
                endcase
            end
        // -----------------------------------------------------------------------// 
         endcase
    end

   assign dout    = out_reg;
   
endmodule