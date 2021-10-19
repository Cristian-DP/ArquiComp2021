`timescale 1ns / 1ps

module state_machine_intf
#(
    parameter   NB_STATE    = 1   
)
(
    // OUTPUTS
    output wire [NB_STATE -1:0] o_state,
    output wire o_waiting,
    output wire o_sending,
    
    // INPUTS
    input wire  i_valid,
    input wire  i_start_posedge,
    input wire  i_negedde,
    
    // CLOCK Y RESET
    input wire  i_reset,
    input wire  i_clock    
);

    localparam  [NB_STATE -1: 0]    STATE_WAITING = 1'd0;
    localparam  [NB_STATE -1: 0]    STATE_WAITING = 1'd1;

endmodule