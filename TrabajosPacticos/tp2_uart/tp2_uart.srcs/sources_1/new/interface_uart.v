`timescale 1ns / 1ps


module interface_uart
#(
    /** numero de bits - datos*/
    parameter NB_DATA   = 8,                        // cantidad de bits de la trama
    parameter NB_STATE  = 4                         // catnidad de estados de la interface
)
(
    /* DATO */
    input   wire                    wr,             // habilitador para leer la entrada provista por rx uart
    input   wire    [NB_DATA - 1:0] in_rx,          // Se presenta los bit provistos por rx uart
    input   wire    [NB_DATA - 1:0] in_alu,         // Se presenta los bits provistos por la salida de la ALU (resultado de la alu)
    /* SALIDA*/
    output  wire    [NB_DATA - 1:0] o_data_A,       // Se presenta el dato A a la alu
    output  wire    [NB_DATA - 1:0] o_data_B,       // Se presenta el dato B a la Alu
    output  wire    [NB_DATA - 1:0] o_data_Op,      // Se presenta el dato OP a la Alu
    output  wire    [NB_DATA - 1:0] o_tx,           // Se presenta el resutlado a tx
    output  wire                    empty,           // bit para avisar a tx que puede leer
    /* CLOCK */
    input wire CLOCK                                // clock que alimenta el sistema
);

  reg    [NB_DATA - 1:0] DA_reg      = 0;            // registro del dato A
  reg    [NB_DATA - 1:0] DB_reg      = 0;            // registro del dato B
  reg    [5          :0] OP_reg      = 0;            // registro del dato OP
  reg    [NB_DATA - 1:0] in_alu_reg  = 0;           // registro del dato provisto por la salidad de la alu
  reg    [2:0]           count_data  = 0;            // registro del contador de datos
  reg                    read_alu    = 0;            // registro del contador de datos
  reg                    empty_reg   = 1;            // registro de aviso para que rx lea el dato 

  reg    [NB_DATA - 1:0] DA_reg = 0;
  reg    [NB_DATA - 1:0] DB_reg = 0;
  reg    [5          :0] OP_reg = 0;
  reg    [2:0]           count_data = 0;

  // estados de la fsm
  localparam [NB_STATE-1 :0]
        STATE_DATA_A    = 4'b00001,
        STATE_DATA_B    = 4'b00010,
        STATE_DATA_OP   = 4'b00100,
        STATE_TX        = 4'b01000;

    reg [NB_STATE - 1:0] current_state  = STATE_DATA_A;
    reg [NB_STATE - 1:0] next_state     = STATE_DATA_A;
   
   
   always @(posedge CLOCK) 
   begin
        current_state   <= next_state;
        if (empty_reg == 0) empty_reg = 1;
        else  empty_reg = 0;
        
   end
   
   always @(*)
   begin
        case (current_state)
            STATE_DATA_A:
                begin
                    if(wr) begin
                        DA_reg = in_rx;
                        next_state = STATE_DATA_B;
                    end 
                    else begin
                        next_state = STATE_DATA_A;
                    end
                end
            // -------------------------------------------------------------------------- //
            STATE_DATA_B:
            begin
                if(wr) begin
                        DB_reg = in_rx;
                        next_state = STATE_DATA_OP;
                    end 
                    else begin
                        next_state = STATE_DATA_B;
                    end
            end
            // -------------------------------------------------------------------------- //
            STATE_DATA_OP:
            begin
                if(wr) begin
                        OP_reg = in_rx[5:0];
                        next_state = STATE_TX;
                        in_alu_reg  = in_alu;
                    end 
                    else begin
                        next_state = STATE_DATA_OP;
                    end
            end
            // -------------------------------------------------------------------------- //
            STATE_TX:
            begin
                empty       = 0;
                next_state  = STATE_DATA_A;
            end  
            
        endcase
   
   end

    assign o_data_A     = DA_reg;
    assign o_data_B     = DB_reg;
    assign o_data_Op    = OP_reg;
    assign o_tx         = in_alu_reg;
    assign empty        = empty_reg;
endmodule