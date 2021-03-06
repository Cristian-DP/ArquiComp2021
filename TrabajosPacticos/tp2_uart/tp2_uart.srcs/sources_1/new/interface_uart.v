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
    output  wire    [NB_DATA - 1:0] o_data_A,       // Se presenta el dato A a la alu
    output  wire    [NB_DATA - 1:0] o_data_B,       // Se presenta el dato B a la Alu
    output  wire    [NB_DATA - 1:0] o_data_Op,      // Se presenta el dato OP a la Alu
    output  wire    [NB_DATA - 1:0] o_tx,           // Se presenta el resutlado a tx
    output  wire                    empty,           // bit para avisar a tx que puede leer
    /* CLOCK */
    input wire                      CLOCK,                                // clock que alimenta el sistema,
    input   wire                    reset
);

  reg    [NB_DATA - 1:0] DA_reg      ;           // registro del dato A
  reg    [NB_DATA - 1:0] DA_reg_next ;           // para evitar pisar el dato A
  
  reg    [NB_DATA - 1:0] DB_reg      ;           // registro del dato B
  reg    [NB_DATA - 1:0] DB_reg_next ;           // para evitar pisar el dato B  
  
  reg    [5          :0] OP_reg      ;           // registro del dato OP
  reg    [5          :0] OP_reg_next ;           // para evitar pisar el dato OP

  reg    [NB_DATA - 1:0] in_alu_reg ;           // registro del dato provisto por la salidad de la alu
  reg    [NB_DATA - 1:0] in_alu_next  ;           // registro del dato provisto por la salidad de la alu
  
  reg                    empty_reg    ;            // registro de aviso para que rx lea el dato 
  reg                    empty_next    ;            // registro de aviso para que rx lea el dato 

  // estados de la fsm
  localparam [NB_STATE-1 :0]
        STATE_DATA_A    = 5'b00001,
        STATE_DATA_B    = 5'b00010,
        STATE_DATA_OP   = 5'b00100,
        STATE_READ_TX   = 5'b01000,
        STATE_TX        = 5'b10000;

    reg [NB_STATE - 1:0] current_state  ;
    reg [NB_STATE - 1:0] next_state     ;
   
   
   always @(posedge CLOCK) 
   begin
        if (reset) begin
            current_state   <= STATE_DATA_A;
            next_state      <= STATE_DATA_A;
            DA_reg          <= 0;
            DB_reg          <= 0;
            OP_reg          <= 0;
            empty_reg       <= 1;
            in_alu_reg      <= 0;
            DA_reg_next     <= 0;
            DB_reg_next     <= 0;
            OP_reg_next      <= 0;
            empty_next       <= 1;
            in_alu_next      <= 0;
        
        end
        else begin
            current_state   <= next_state;
            DA_reg          <= DA_reg_next;
            DB_reg          <= DB_reg_next;
            OP_reg          <= OP_reg_next;
            empty_reg       <= empty_next;
            in_alu_reg      <= in_alu_next;
        end
   end
   
   always @(*)
   begin
        next_state  = current_state;
        DA_reg_next = DA_reg;
        DB_reg_next = DB_reg;
        OP_reg_next = OP_reg;
        empty_next  = empty_reg;
        in_alu_next = in_alu_reg;
        case (current_state)
            STATE_DATA_A:
                begin
                    case(wr)
                        1'b1: begin
                            DA_reg_next = in_rx;
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
                        DB_reg_next = in_rx;
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
                        OP_reg_next = in_rx[5:0];
                        next_state = STATE_READ_TX;
                    end 
                    default: next_state = STATE_DATA_OP;
                endcase
            end
            // -------------------------------------------------------------------------- //
            STATE_READ_TX:
            begin
                in_alu_next     = in_alu;
                case(read_tx)
                    1'b1: begin
                        empty_next = 1'b1;
                        next_state = STATE_TX;
                    end
                    default: begin
                        next_state = STATE_READ_TX;
                        empty_next = 1'b0;
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

    assign o_data_A     = DA_reg;
    assign o_data_B     = DB_reg;
    assign o_data_Op    = OP_reg;
    assign o_tx         = in_alu_reg;
    assign empty        = empty_reg;
endmodule