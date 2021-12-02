`timescale 1ns / 1ps

module interface_uart
#(
    /** numero de bits - datos*/
    parameter NB_DATA   = 8,                        // cantidad de bits de la trama
    parameter NB_STATE  = 5                         // catnidad de estados de la interface
)
(
    /* DATO */
    input   wire                    wr,             // habilitador para leer la entrada provista por rx uart
    input   wire                    rd,             // habilitador para saber que se ha realizado la transmision correctamente
    input   wire    [NB_DATA - 1:0] in_rx,          // Se presenta los bit provistos por rx uart
    input   wire    [NB_DATA - 1:0] in_alu,         // Se presenta los bits provistos por la salida de la ALU (resultado de la alu)
    input   wire                    read_tx,
    /* SALIDA*/
    output  reg    [NB_DATA - 1:0] o_data_A,       // Se presenta el dato A a la alu
    output  reg    [NB_DATA - 1:0] o_data_B,       // Se presenta el dato B a la Alu
    output  reg    [NB_DATA - 1:0] o_data_Op,      // Se presenta el dato OP a la Alu
    output  reg    [NB_DATA - 1:0] o_tx,           // Se presenta el resutlado a tx
    output  reg                    empty,           // bit para avisar a tx que puede leer
    /* CLOCK */
    input wire                      clock,                                // clock que alimenta el sistema,
    input   wire                    reset
);

  // estados de la fsm
  localparam [NB_STATE-1 :0]
        STATE_DATA_A    = 5'b00001,
        STATE_DATA_B    = 5'b00010,
        STATE_DATA_OP   = 5'b00100,
        STATE_READ_TX   = 5'b01000,
        STATE_TX        = 5'b10000;

    reg [NB_STATE - 1:0] current_state  ;
    reg [NB_STATE - 1:0] next_state     ;
   
   
   always @(posedge clock) 
   begin
        if (reset) begin
            current_state   <= STATE_DATA_A; 
        end
        else begin
            current_state   <= next_state;
        end
   end
   
   always @(*)
   begin
        next_state  = current_state;
        case (current_state)
            STATE_DATA_A:
                begin
                    case(wr)
                        1'b1: begin
                            o_data_A = in_rx;
                            next_state = STATE_DATA_B;
                        end
                        default: next_state = STATE_DATA_A;
                    endcase 
                end
            // -------------------------------------------------------------------------- //
            STATE_DATA_B:
            begin
                case(wr)
                    1'b1: begin
                        o_data_B = in_rx;
                        next_state = STATE_DATA_OP;
                    end
                    default: next_state = STATE_DATA_B;
                endcase 
            end
            // -------------------------------------------------------------------------- //
            STATE_DATA_OP:
            begin
                case(wr)
                    1'b1: begin
                        o_data_Op = in_rx;
                        next_state = STATE_READ_TX;
                    end 
                    default: next_state = STATE_DATA_OP;
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_READ_TX:
            begin
                o_tx     = in_alu;
                case(read_tx)
                    1'b1: begin
                        empty = 1'b1;
                        next_state = STATE_TX;
                    end
                    default: begin
                        next_state = STATE_READ_TX;
                        empty = 1'b0;
                    end
                endcase        
            end
            // -------------------------------------------------------------------------- //
            STATE_TX:
            begin
                case (rd)
                    1'b1: begin
                        next_state = STATE_DATA_A;
                    end
                    default: next_state = STATE_TX;
                endcase
            end  
            
        endcase
   
   end

endmodule