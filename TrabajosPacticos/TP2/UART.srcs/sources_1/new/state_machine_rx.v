`timescale 1ns / 1ps

module state_machine_rx
#(
    parameter   NB_STATE        = 4,
    parameter   N_DATA          = 8,
    parameter   START_VALUE     = 0,
    parameter   STARTS_TICKS    = 7,
    parameter   DATA_TICKS      = 15 
)
(
    // OUTPUTS
    output wire [7:0] o_data,
    output wire rx_done_tick,
    // INPUTS
    input wire  rx,
    input wire  i_tick
);
    // TICKS CONTROL
    reg [3:0] count_ticks;
    // DATA CONTROL
    reg [8:0] reg_data;
    reg [3:0] count_data;
    reg is_valid = 1;
    // STATES
    parameter STATE_IDLE  = 4'b0001;
    parameter STATE_START = 4'b0010;
    parameter STATE_DATA  = 4'b0100;
    parameter STATE_STOP  = 4'b1000;

    reg [NB_STATE - 1:0] current_state = STATE_IDLE;
    reg [NB_STATE - 1:0] next_state = STATE_IDLE;

    always @(*) begin: state_logic
        case (current_state)
            STATE_IDLE : begin
                case(rx)
                    1'b0   :   next_state = STATE_START;
                    default:   next_state = STATE_IDLE;
                endcase
            end
            STATE_START : begin
                if (i_tick) begin
                    count_ticks = count_ticks + 1;
                    case(count_ticks)
                            STARTS_TICKS:   begin 
                                                count_ticks     = 0;
                                                next_state      = STATE_DATA;                                                    
                                            end
                            default:        next_state  = STATE_START;   
                    endcase
                end
            end
            STATE_DATA : begin
                if (i_tick) begin
                    count_ticks = count_ticks + 1;
                    case(count_ticks)
                            DATA_TICKS:     begin
                                                count_ticks     = 0;
                                                count_data      = count_data + 1;
                                                reg_data        = {rx , reg_data[8 : 1]};
                                                if(count_data == N_DATA) begin
                                                    // implementar analisis de bit de paridad
                                                    /////////////////////////////////////////
                                                    count_data  = 0;
                                                    next_state  = STATE_STOP;
                                                end
                                                else next_state  = STATE_DATA;                                                
                                            end
                            default:        next_state  = STATE_DATA;   
                    endcase
                end
            end
            STATE_STOP : begin
                if (i_tick) begin
                    count_ticks <= count_ticks + 1;
                    case(count_ticks)
                            DATA_TICKS:     begin
                                                count_ticks     = 0;
                                                if(rx) begin
                                                    rx_done_tick    = 1'b1;
                                                    next_state      = STATE_IDLE;  
                                                end
                                                else is_valid = 0;                                        
                                            end
                            default:        next_state  = STATE_STOP;   
                    endcase
                end
            end
         endcase
    end

    always @(posedge i_tick, posedge reset) begin
        if(i_reset)
          state <= STATE_IDLE;
        else if(is_valid)
          current_state <= next_state;
    end


   assign o_data    = reg_data [7:0];
	
endmodule
