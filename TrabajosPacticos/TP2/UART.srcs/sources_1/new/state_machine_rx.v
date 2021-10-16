`timescale 1ns / 1ps

module state_machine_rx
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
    
    
   parameter <state1>  = 16'b0000000000000001;
   parameter <state2>  = 16'b0000000000000010;
   parameter <state3>  = 16'b0000000000000100;
   parameter <state4>  = 16'b0000000000001000;
   parameter <state5>  = 16'b0000000000010000;
   parameter <state6>  = 16'b0000000000100000;
   parameter <state7>  = 16'b0000000001000000;
   parameter <state8>  = 16'b0000000010000000;
   parameter <state9>  = 16'b0000000100000000;
   parameter <state10> = 16'b0000001000000000;
   parameter <state11> = 16'b0000010000000000;
   parameter <state12> = 16'b0000100000000000;
   parameter <state13> = 16'b0001000000000000;
   parameter <state14> = 16'b0010000000000000;
   parameter <state15> = 16'b0100000000000000;
   parameter <state16> = 16'b1000000000000000;

   reg [15:0] <state> = <state1>;

   always @(posedge <clock>)
      if (<reset>)
         <state> <= <state1>;
      else
         case (state)
            <state1> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state2> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state3> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state4> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state5> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state6> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state7> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state8> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state9> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state10> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state11> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state12> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state13> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state14> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state15> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            <state16> : begin
               if (<condition>)
                  <state> <= <next_state>;
               else if (<condition>)
                  <state> <= <next_state>;
               else
                  <state> <= <next_state>;
            end
            default : begin  // Fault Recovery
               <state> <= <state1>;
            end
         endcase

   assign <output1> = <logic_equation_based_on_states_and_inputs>;
   assign <output2> = <logic_equation_based_on_states_and_inputs>;
   // Add other output equations as necessary
							


endmodule
