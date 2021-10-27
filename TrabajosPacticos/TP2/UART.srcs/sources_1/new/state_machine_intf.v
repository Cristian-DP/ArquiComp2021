`timescale 1ns / 1ps

module state_machine_intf
#(
    parameter   DATA_LEGHT  = 8
)
(
    // OUTPUTS
    output wire [DATA_LEGHT -1:0] o_data_A,
    output wire [DATA_LEGHT -1:0] o_data_B,
    output wire [DATA_LEGHT -1:0] o_data_Op,
    
    // INPUTS
    input wire  [DATA_LEGHT - 1:0]i_data,
    input wire  i_ready_flag,
    input wire  i_negedde,
    
    // AUX REGS
    reg new_op = 0
    // CLOCK Y RESET
//    input wire  i_reset,
//    input wire  i_clock    
);

    parameter DATA_WAITING  = 6'b000001;
    parameter SAVE_DATA_A   = 4'b000010;
    parameter SAVE_DATA_B   = 4'b000100;
    parameter SAVE_DATA_OP  = 4'b001000;
    parameter OP_WAITING    = 4'b010000;
    parameter OP_SAVE       = 4'b100000;
    

endmodule