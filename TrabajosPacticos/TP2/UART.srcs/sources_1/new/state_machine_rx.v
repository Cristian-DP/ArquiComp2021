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
    input wire  i_tick,
    input wire clock
);
    // TICKS CONTROL
    reg [3:0] count_ticks;
    // DATA CONTROL
    reg [8:0] reg_data;
    reg [3:0] count_data;
    reg is_valid = 1;
    // STATES
    localparam STATE_IDLE  = 4'b0001;
    localparam STATE_START = 4'b0010;
    localparam STATE_DATA  = 4'b0100;
    localparam STATE_STOP  = 4'b1000;

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
                case(count_ticks)
                    STARTS_TICKS:   begin 
                        count_ticks     = 0;
                        next_state      = STATE_DATA;                                                    
                    end
                    default:        next_state  = STATE_START;   
                endcase
            end
            STATE_DATA : begin
                case(count_ticks)
                    DATA_TICKS:     begin
                        count_ticks     = 0;
                        reg_data        = {rx , reg_data[8 : 1]};
                        if(count_data == N_DATA) begin
                        // implementar analisis de bit de paridad
                        /////////////////////////////////////////
                            count_data  = 0;
                            next_state  = STATE_STOP;
                        end
                        else    next_state  = STATE_DATA;                                                
                    end
                    default:
                        next_state  = STATE_DATA;   
                endcase
            end
            STATE_STOP : begin
                case(count_ticks)
                    DATA_TICKS:     begin
                        count_ticks         = 0;
                        if(rx) begin
                            rx_done_tick    = 1'b1;
                            next_state      = STATE_IDLE;  
                        end
                        else is_valid = 0;                                        
                    end
                    default:    next_state  = STATE_STOP;   
                endcase
            end
         endcase
    end

    always @(posedge clock) begin
        if(i_reset)
          state <= STATE_IDLE;
        else if(is_valid) begin
            if(i_tick) begin
                count_data = count_data + 1;
            end  
            current_state <= next_state;
        end
    end


   assign o_data    = reg_data [7:0];
	
endmodule
