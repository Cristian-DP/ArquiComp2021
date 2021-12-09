// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec  9 18:58:13 2021
// Host        : LAPTOP-DJ46CPRC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Laudi/vivado_projects/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/testSystem_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module BaudRateGenerator
   (tick,
    SR,
    CLK);
  output tick;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire [7:0]counTicks;
  wire \counTicks[0]_i_1_n_0 ;
  wire \counTicks[5]_i_2_n_0 ;
  wire \counTicks[7]_i_2_n_0 ;
  wire \counTicks[7]_i_3_n_0 ;
  wire \counTicks[7]_i_4_n_0 ;
  wire [7:1]counTicks_0;
  wire tick;
  wire tick_1;
  wire tick_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counTicks[0]_i_1 
       (.I0(\counTicks[7]_i_3_n_0 ),
        .I1(counTicks[0]),
        .O(\counTicks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \counTicks[1]_i_1 
       (.I0(counTicks[1]),
        .I1(counTicks[0]),
        .I2(\counTicks[7]_i_3_n_0 ),
        .O(counTicks_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \counTicks[2]_i_1 
       (.I0(counTicks[2]),
        .I1(counTicks[1]),
        .I2(counTicks[0]),
        .I3(\counTicks[7]_i_3_n_0 ),
        .O(counTicks_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \counTicks[3]_i_1 
       (.I0(counTicks[3]),
        .I1(counTicks[2]),
        .I2(counTicks[0]),
        .I3(counTicks[1]),
        .I4(\counTicks[7]_i_3_n_0 ),
        .O(counTicks_0[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \counTicks[4]_i_1 
       (.I0(counTicks[4]),
        .I1(counTicks[3]),
        .I2(counTicks[1]),
        .I3(counTicks[0]),
        .I4(counTicks[2]),
        .I5(\counTicks[7]_i_3_n_0 ),
        .O(counTicks_0[4]));
  LUT3 #(
    .INIT(8'h60)) 
    \counTicks[5]_i_1 
       (.I0(counTicks[5]),
        .I1(\counTicks[5]_i_2_n_0 ),
        .I2(\counTicks[7]_i_3_n_0 ),
        .O(counTicks_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counTicks[5]_i_2 
       (.I0(counTicks[4]),
        .I1(counTicks[2]),
        .I2(counTicks[0]),
        .I3(counTicks[1]),
        .I4(counTicks[3]),
        .O(\counTicks[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \counTicks[6]_i_1 
       (.I0(counTicks[6]),
        .I1(\counTicks[7]_i_2_n_0 ),
        .I2(\counTicks[7]_i_3_n_0 ),
        .O(counTicks_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \counTicks[7]_i_1 
       (.I0(counTicks[7]),
        .I1(counTicks[6]),
        .I2(\counTicks[7]_i_2_n_0 ),
        .I3(\counTicks[7]_i_3_n_0 ),
        .O(counTicks_0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counTicks[7]_i_2 
       (.I0(counTicks[5]),
        .I1(counTicks[3]),
        .I2(counTicks[1]),
        .I3(counTicks[0]),
        .I4(counTicks[2]),
        .I5(counTicks[4]),
        .O(\counTicks[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \counTicks[7]_i_3 
       (.I0(counTicks[6]),
        .I1(counTicks[5]),
        .I2(counTicks[1]),
        .I3(counTicks[7]),
        .I4(\counTicks[7]_i_4_n_0 ),
        .O(\counTicks[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counTicks[7]_i_4 
       (.I0(counTicks[2]),
        .I1(counTicks[3]),
        .I2(counTicks[0]),
        .I3(counTicks[4]),
        .O(\counTicks[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counTicks[0]_i_1_n_0 ),
        .Q(counTicks[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(counTicks_0[1]),
        .Q(counTicks[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(counTicks_0[2]),
        .Q(counTicks[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(counTicks_0[3]),
        .Q(counTicks[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(counTicks_0[4]),
        .Q(counTicks[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(counTicks_0[5]),
        .Q(counTicks[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(counTicks_0[6]),
        .Q(counTicks[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(counTicks_0[7]),
        .Q(counTicks[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000001)) 
    tick_i_1
       (.I0(counTicks[0]),
        .I1(counTicks[4]),
        .I2(counTicks[6]),
        .I3(counTicks[2]),
        .I4(tick_i_2_n_0),
        .O(tick_1));
  LUT4 #(
    .INIT(16'hDFFF)) 
    tick_i_2
       (.I0(counTicks[7]),
        .I1(counTicks[3]),
        .I2(counTicks[5]),
        .I3(counTicks[1]),
        .O(tick_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tick_1),
        .Q(tick),
        .R(SR));
endmodule

module alu
   (O,
    \o_data_A_reg[6] ,
    Q,
    \o_tx_reg[0]_i_3 ,
    S,
    \o_tx_reg[4]_i_3 );
  output [3:0]O;
  output [3:0]\o_data_A_reg[6] ;
  input [6:0]Q;
  input [0:0]\o_tx_reg[0]_i_3 ;
  input [3:0]S;
  input [3:0]\o_tx_reg[4]_i_3 ;

  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [3:0]\o_data_A_reg[6] ;
  wire [0:0]\o_tx_reg[0]_i_3 ;
  wire [3:0]\o_tx_reg[4]_i_3 ;
  wire [3:3]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\o_tx_reg[0]_i_3 }),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3],\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(\o_data_A_reg[6] ),
        .S(\o_tx_reg[4]_i_3 ));
endmodule

module interface_uart
   (empty,
    empty_reg_0,
    S,
    \o_data_Op_reg[1]_0 ,
    \o_data_A_reg[6]_0 ,
    \o_data_B_reg[7]_0 ,
    \o_tx_reg_reg[7]_0 ,
    SR,
    rx_done_tick_reg,
    CLK,
    Q,
    \data_A_reg_reg[7]_0 ,
    \o_tx_reg_reg[7]_1 ,
    O,
    tx_done_tick,
    read_tx);
  output empty;
  output empty_reg_0;
  output [3:0]S;
  output [0:0]\o_data_Op_reg[1]_0 ;
  output [6:0]\o_data_A_reg[6]_0 ;
  output [3:0]\o_data_B_reg[7]_0 ;
  output [7:0]\o_tx_reg_reg[7]_0 ;
  input [0:0]SR;
  input rx_done_tick_reg;
  input CLK;
  input [0:0]Q;
  input [7:0]\data_A_reg_reg[7]_0 ;
  input [3:0]\o_tx_reg_reg[7]_1 ;
  input [3:0]O;
  input tx_done_tick;
  input read_tx;

  wire CLK;
  wire [3:0]O;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [4:0]current_state;
  wire data_A_next__0;
  wire [7:0]data_A_reg;
  wire [7:0]\data_A_reg_reg[7]_0 ;
  wire data_B_next__0;
  wire [7:0]data_B_reg;
  wire data_Op_next__0;
  wire [5:0]data_Op_reg;
  wire empty;
  wire empty_next;
  wire empty_reg_0;
  wire empty_reg__0;
  wire [7:0]\myAlu/o_o ;
  wire next_state__0;
  wire [4:0]next_state__0__0;
  wire [7:7]o_data_A;
  wire [6:0]\o_data_A_reg[6]_0 ;
  wire [7:0]o_data_B;
  wire [3:0]\o_data_B_reg[7]_0 ;
  wire [0:0]\o_data_Op_reg[1]_0 ;
  wire \o_data_Op_reg_n_0_[0] ;
  wire \o_data_Op_reg_n_0_[2] ;
  wire \o_data_Op_reg_n_0_[3] ;
  wire \o_data_Op_reg_n_0_[4] ;
  wire \o_data_Op_reg_n_0_[5] ;
  wire o_tx_next__0;
  wire \o_tx_reg[0]_i_2_n_0 ;
  wire \o_tx_reg[0]_i_3_n_0 ;
  wire \o_tx_reg[1]_i_2_n_0 ;
  wire \o_tx_reg[1]_i_3_n_0 ;
  wire \o_tx_reg[2]_i_2_n_0 ;
  wire \o_tx_reg[2]_i_3_n_0 ;
  wire \o_tx_reg[3]_i_2_n_0 ;
  wire \o_tx_reg[3]_i_3_n_0 ;
  wire \o_tx_reg[4]_i_2_n_0 ;
  wire \o_tx_reg[4]_i_3_n_0 ;
  wire \o_tx_reg[5]_i_2_n_0 ;
  wire \o_tx_reg[5]_i_3_n_0 ;
  wire \o_tx_reg[5]_i_4_n_0 ;
  wire \o_tx_reg[5]_i_5_n_0 ;
  wire \o_tx_reg[6]_i_2_n_0 ;
  wire \o_tx_reg[6]_i_3_n_0 ;
  wire \o_tx_reg[7]_i_2_n_0 ;
  wire \o_tx_reg[7]_i_3_n_0 ;
  wire \o_tx_reg[7]_i_4_n_0 ;
  wire \o_tx_reg[7]_i_5_n_0 ;
  wire [7:0]\o_tx_reg_reg[7]_0 ;
  wire [3:0]\o_tx_reg_reg[7]_1 ;
  wire read_tx;
  wire rx_done_tick_reg;
  wire tx_done_tick;
  wire write;

  LUT2 #(
    .INIT(4'h8)) 
    \count_ticks_reg[3]_i_4 
       (.I0(empty),
        .I1(Q),
        .O(empty_reg_0));
  LUT4 #(
    .INIT(16'hF444)) 
    \current_state[0]_i_1 
       (.I0(write),
        .I1(current_state[0]),
        .I2(tx_done_tick),
        .I3(current_state[4]),
        .O(next_state__0__0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(write),
        .I2(current_state[1]),
        .O(next_state__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[2]_i_1 
       (.I0(current_state[1]),
        .I1(write),
        .I2(current_state[2]),
        .O(next_state__0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \current_state[3]_i_1 
       (.I0(write),
        .I1(current_state[2]),
        .I2(read_tx),
        .I3(current_state[3]),
        .O(next_state__0__0[3]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \current_state[4]_i_1 
       (.I0(read_tx),
        .I1(current_state[3]),
        .I2(tx_done_tick),
        .I3(current_state[4]),
        .O(next_state__0__0[4]));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[0]),
        .Q(current_state[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[1]),
        .Q(current_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[2]),
        .Q(current_state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[3]),
        .Q(current_state[3]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[4]),
        .Q(current_state[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    data_A_next
       (.I0(current_state[1]),
        .I1(current_state[4]),
        .I2(write),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(data_A_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[0] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [0]),
        .Q(data_A_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[1] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [1]),
        .Q(data_A_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[2] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [2]),
        .Q(data_A_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[3] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [3]),
        .Q(data_A_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[4] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [4]),
        .Q(data_A_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[5] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [5]),
        .Q(data_A_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[6] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [6]),
        .Q(data_A_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[7] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(\data_A_reg_reg[7]_0 [7]),
        .Q(data_A_reg[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    data_B_next
       (.I0(current_state[0]),
        .I1(current_state[4]),
        .I2(write),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(data_B_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[0] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [0]),
        .Q(data_B_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[1] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [1]),
        .Q(data_B_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[2] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [2]),
        .Q(data_B_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[3] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [3]),
        .Q(data_B_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[4] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [4]),
        .Q(data_B_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[5] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [5]),
        .Q(data_B_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[6] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [6]),
        .Q(data_B_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[7] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(\data_A_reg_reg[7]_0 [7]),
        .Q(data_B_reg[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    data_Op_next
       (.I0(current_state[1]),
        .I1(current_state[4]),
        .I2(write),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(current_state[0]),
        .O(data_Op_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[0] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(\data_A_reg_reg[7]_0 [0]),
        .Q(data_Op_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[1] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(\data_A_reg_reg[7]_0 [1]),
        .Q(data_Op_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[2] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(\data_A_reg_reg[7]_0 [2]),
        .Q(data_Op_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[3] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(\data_A_reg_reg[7]_0 [3]),
        .Q(data_Op_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[4] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(\data_A_reg_reg[7]_0 [4]),
        .Q(data_Op_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[5] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(\data_A_reg_reg[7]_0 [5]),
        .Q(data_Op_reg[5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(CLK),
        .CE(1'b1),
        .D(empty_reg__0),
        .Q(empty),
        .S(SR));
  LUT4 #(
    .INIT(16'hFFFD)) 
    empty_reg_i_1
       (.I0(current_state[3]),
        .I1(read_tx),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(empty_next));
  FDSE #(
    .INIT(1'b1)) 
    empty_reg_reg
       (.C(CLK),
        .CE(next_state__0),
        .D(empty_next),
        .Q(empty_reg__0),
        .S(SR));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(o_data_B[7]),
        .I1(o_data_A),
        .I2(\o_data_Op_reg[1]_0 ),
        .O(\o_data_B_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(o_data_B[6]),
        .I1(\o_data_Op_reg[1]_0 ),
        .I2(\o_data_A_reg[6]_0 [6]),
        .O(\o_data_B_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(o_data_B[5]),
        .I1(\o_data_Op_reg[1]_0 ),
        .I2(\o_data_A_reg[6]_0 [5]),
        .O(\o_data_B_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(o_data_B[4]),
        .I1(\o_data_Op_reg[1]_0 ),
        .I2(\o_data_A_reg[6]_0 [4]),
        .O(\o_data_B_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(o_data_B[3]),
        .I1(\o_data_Op_reg[1]_0 ),
        .I2(\o_data_A_reg[6]_0 [3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(o_data_B[2]),
        .I1(\o_data_Op_reg[1]_0 ),
        .I2(\o_data_A_reg[6]_0 [2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(o_data_B[1]),
        .I1(\o_data_Op_reg[1]_0 ),
        .I2(\o_data_A_reg[6]_0 [1]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(o_data_B[0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h00010116)) 
    next_state
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[4]),
        .O(next_state__0));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[0]),
        .Q(\o_data_A_reg[6]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[1]),
        .Q(\o_data_A_reg[6]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[2]),
        .Q(\o_data_A_reg[6]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[3]),
        .Q(\o_data_A_reg[6]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[4]),
        .Q(\o_data_A_reg[6]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[5]),
        .Q(\o_data_A_reg[6]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[6]),
        .Q(\o_data_A_reg[6]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[7]),
        .Q(o_data_A),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[0]),
        .Q(o_data_B[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[1]),
        .Q(o_data_B[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[2]),
        .Q(o_data_B[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[3]),
        .Q(o_data_B[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[4]),
        .Q(o_data_B[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[5]),
        .Q(o_data_B[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[6]),
        .Q(o_data_B[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[7]),
        .Q(o_data_B[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[0]),
        .Q(\o_data_Op_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[1]),
        .Q(\o_data_Op_reg[1]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[2]),
        .Q(\o_data_Op_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[3]),
        .Q(\o_data_Op_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[4]),
        .Q(\o_data_Op_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[5]),
        .Q(\o_data_Op_reg_n_0_[5] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000002)) 
    o_tx_next
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .O(o_tx_next__0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_tx_reg[0]_i_1 
       (.I0(\o_tx_reg[7]_i_4_n_0 ),
        .I1(\o_tx_reg[0]_i_2_n_0 ),
        .I2(\o_tx_reg[5]_i_4_n_0 ),
        .I3(\o_tx_reg[1]_i_2_n_0 ),
        .I4(\o_tx_reg[0]_i_3_n_0 ),
        .I5(\o_tx_reg[7]_i_3_n_0 ),
        .O(\myAlu/o_o [0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_tx_reg[0]_i_2 
       (.I0(\o_data_A_reg[6]_0 [4]),
        .I1(\o_data_A_reg[6]_0 [6]),
        .I2(o_data_B[2]),
        .I3(o_data_B[1]),
        .I4(\o_data_A_reg[6]_0 [0]),
        .I5(\o_data_A_reg[6]_0 [2]),
        .O(\o_tx_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_tx_reg[0]_i_3 
       (.I0(O[0]),
        .I1(\o_data_A_reg[6]_0 [0]),
        .I2(o_data_B[0]),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[2] ),
        .I5(\o_data_Op_reg_n_0_[0] ),
        .O(\o_tx_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_tx_reg[1]_i_1 
       (.I0(\o_tx_reg[7]_i_4_n_0 ),
        .I1(\o_tx_reg[1]_i_2_n_0 ),
        .I2(\o_tx_reg[5]_i_4_n_0 ),
        .I3(\o_tx_reg[2]_i_2_n_0 ),
        .I4(\o_tx_reg[1]_i_3_n_0 ),
        .I5(\o_tx_reg[7]_i_3_n_0 ),
        .O(\myAlu/o_o [1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_tx_reg[1]_i_2 
       (.I0(\o_data_A_reg[6]_0 [5]),
        .I1(o_data_A),
        .I2(o_data_B[2]),
        .I3(o_data_B[1]),
        .I4(\o_data_A_reg[6]_0 [1]),
        .I5(\o_data_A_reg[6]_0 [3]),
        .O(\o_tx_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_tx_reg[1]_i_3 
       (.I0(O[1]),
        .I1(\o_data_A_reg[6]_0 [1]),
        .I2(o_data_B[1]),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[2] ),
        .I5(\o_data_Op_reg_n_0_[0] ),
        .O(\o_tx_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_tx_reg[2]_i_1 
       (.I0(\o_tx_reg[7]_i_4_n_0 ),
        .I1(\o_tx_reg[2]_i_2_n_0 ),
        .I2(\o_tx_reg[5]_i_4_n_0 ),
        .I3(\o_tx_reg[3]_i_2_n_0 ),
        .I4(\o_tx_reg[2]_i_3_n_0 ),
        .I5(\o_tx_reg[7]_i_3_n_0 ),
        .O(\myAlu/o_o [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_tx_reg[2]_i_2 
       (.I0(\o_data_A_reg[6]_0 [2]),
        .I1(\o_data_A_reg[6]_0 [4]),
        .I2(\o_data_A_reg[6]_0 [6]),
        .I3(o_data_B[2]),
        .I4(o_data_B[1]),
        .O(\o_tx_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_tx_reg[2]_i_3 
       (.I0(O[2]),
        .I1(\o_data_A_reg[6]_0 [2]),
        .I2(o_data_B[2]),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[2] ),
        .I5(\o_data_Op_reg_n_0_[0] ),
        .O(\o_tx_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_tx_reg[3]_i_1 
       (.I0(\o_tx_reg[7]_i_4_n_0 ),
        .I1(\o_tx_reg[3]_i_2_n_0 ),
        .I2(\o_tx_reg[5]_i_4_n_0 ),
        .I3(\o_tx_reg[4]_i_2_n_0 ),
        .I4(\o_tx_reg[3]_i_3_n_0 ),
        .I5(\o_tx_reg[7]_i_3_n_0 ),
        .O(\myAlu/o_o [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_tx_reg[3]_i_2 
       (.I0(\o_data_A_reg[6]_0 [3]),
        .I1(\o_data_A_reg[6]_0 [5]),
        .I2(o_data_A),
        .I3(o_data_B[2]),
        .I4(o_data_B[1]),
        .O(\o_tx_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_tx_reg[3]_i_3 
       (.I0(O[3]),
        .I1(\o_data_A_reg[6]_0 [3]),
        .I2(o_data_B[3]),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[2] ),
        .I5(\o_data_Op_reg_n_0_[0] ),
        .O(\o_tx_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_tx_reg[4]_i_1 
       (.I0(\o_tx_reg[7]_i_4_n_0 ),
        .I1(\o_tx_reg[4]_i_2_n_0 ),
        .I2(\o_tx_reg[5]_i_4_n_0 ),
        .I3(\o_tx_reg[5]_i_2_n_0 ),
        .I4(\o_tx_reg[4]_i_3_n_0 ),
        .I5(\o_tx_reg[7]_i_3_n_0 ),
        .O(\myAlu/o_o [4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_tx_reg[4]_i_2 
       (.I0(\o_data_A_reg[6]_0 [6]),
        .I1(\o_data_A_reg[6]_0 [4]),
        .I2(o_data_B[1]),
        .I3(o_data_B[2]),
        .O(\o_tx_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_tx_reg[4]_i_3 
       (.I0(\o_tx_reg_reg[7]_1 [0]),
        .I1(\o_data_A_reg[6]_0 [4]),
        .I2(o_data_B[4]),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[2] ),
        .I5(\o_data_Op_reg_n_0_[0] ),
        .O(\o_tx_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_tx_reg[5]_i_1 
       (.I0(\o_tx_reg[7]_i_4_n_0 ),
        .I1(\o_tx_reg[5]_i_2_n_0 ),
        .I2(\o_tx_reg[5]_i_3_n_0 ),
        .I3(\o_tx_reg[5]_i_4_n_0 ),
        .I4(\o_tx_reg[5]_i_5_n_0 ),
        .I5(\o_tx_reg[7]_i_3_n_0 ),
        .O(\myAlu/o_o [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_tx_reg[5]_i_2 
       (.I0(o_data_A),
        .I1(\o_data_A_reg[6]_0 [5]),
        .I2(o_data_B[1]),
        .I3(o_data_B[2]),
        .O(\o_tx_reg[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \o_tx_reg[5]_i_3 
       (.I0(o_data_B[2]),
        .I1(o_data_B[1]),
        .I2(\o_data_A_reg[6]_0 [6]),
        .O(\o_tx_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \o_tx_reg[5]_i_4 
       (.I0(\o_data_Op_reg_n_0_[3] ),
        .I1(\o_data_Op_reg_n_0_[4] ),
        .I2(\o_data_Op_reg_n_0_[2] ),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_tx_reg[7]_i_5_n_0 ),
        .I5(o_data_B[0]),
        .O(\o_tx_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_tx_reg[5]_i_5 
       (.I0(\o_tx_reg_reg[7]_1 [1]),
        .I1(\o_data_A_reg[6]_0 [5]),
        .I2(o_data_B[5]),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[2] ),
        .I5(\o_data_Op_reg_n_0_[0] ),
        .O(\o_tx_reg[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \o_tx_reg[6]_i_1 
       (.I0(\o_tx_reg[6]_i_2_n_0 ),
        .I1(\o_tx_reg[6]_i_3_n_0 ),
        .I2(\o_data_Op_reg_n_0_[4] ),
        .I3(\o_data_Op_reg_n_0_[3] ),
        .I4(\o_data_Op_reg_n_0_[5] ),
        .O(\myAlu/o_o [6]));
  LUT6 #(
    .INIT(64'h000000F800000088)) 
    \o_tx_reg[6]_i_2 
       (.I0(\o_tx_reg[5]_i_4_n_0 ),
        .I1(o_data_A),
        .I2(\o_tx_reg[7]_i_4_n_0 ),
        .I3(o_data_B[2]),
        .I4(o_data_B[1]),
        .I5(\o_data_A_reg[6]_0 [6]),
        .O(\o_tx_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_tx_reg[6]_i_3 
       (.I0(\o_tx_reg_reg[7]_1 [2]),
        .I1(\o_data_A_reg[6]_0 [6]),
        .I2(o_data_B[6]),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[2] ),
        .I5(\o_data_Op_reg_n_0_[0] ),
        .O(\o_tx_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \o_tx_reg[7]_i_1 
       (.I0(\o_tx_reg[7]_i_2_n_0 ),
        .I1(\o_tx_reg[7]_i_3_n_0 ),
        .I2(\o_tx_reg[7]_i_4_n_0 ),
        .I3(o_data_B[2]),
        .I4(o_data_B[1]),
        .I5(o_data_A),
        .O(\myAlu/o_o [7]));
  LUT6 #(
    .INIT(64'h03FC3CC00000AAAA)) 
    \o_tx_reg[7]_i_2 
       (.I0(\o_tx_reg_reg[7]_1 [3]),
        .I1(o_data_B[7]),
        .I2(o_data_A),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(\o_data_Op_reg_n_0_[2] ),
        .O(\o_tx_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \o_tx_reg[7]_i_3 
       (.I0(\o_data_Op_reg_n_0_[4] ),
        .I1(\o_data_Op_reg_n_0_[3] ),
        .I2(\o_data_Op_reg_n_0_[5] ),
        .O(\o_tx_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \o_tx_reg[7]_i_4 
       (.I0(\o_data_Op_reg_n_0_[3] ),
        .I1(\o_data_Op_reg_n_0_[4] ),
        .I2(\o_data_Op_reg_n_0_[2] ),
        .I3(\o_data_Op_reg[1]_0 ),
        .I4(\o_tx_reg[7]_i_5_n_0 ),
        .I5(o_data_B[0]),
        .O(\o_tx_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_tx_reg[7]_i_5 
       (.I0(o_data_B[6]),
        .I1(o_data_B[7]),
        .I2(o_data_B[5]),
        .I3(o_data_B[4]),
        .I4(o_data_B[3]),
        .I5(\o_data_Op_reg_n_0_[5] ),
        .O(\o_tx_reg[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[0] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [0]),
        .Q(\o_tx_reg_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[1] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [1]),
        .Q(\o_tx_reg_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[2] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [2]),
        .Q(\o_tx_reg_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[3] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [3]),
        .Q(\o_tx_reg_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[4] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [4]),
        .Q(\o_tx_reg_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[5] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [5]),
        .Q(\o_tx_reg_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[6] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [6]),
        .Q(\o_tx_reg_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[7] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(\myAlu/o_o [7]),
        .Q(\o_tx_reg_reg[7]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    write_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rx_done_tick_reg),
        .Q(write),
        .R(SR));
endmodule

module rx_uart
   (rx_done_tick_reg,
    Q,
    SR,
    CLK,
    rx_IBUF,
    tick);
  output rx_done_tick_reg;
  output [7:0]Q;
  input [0:0]SR;
  input CLK;
  input rx_IBUF;
  input tick;

  wire CLK;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \count_data[0]_i_1_n_0 ;
  wire \count_data[1]_i_1_n_0 ;
  wire \count_data[2]_i_1_n_0 ;
  wire \count_data[2]_i_3_n_0 ;
  wire count_data_next;
  wire count_ticks_next;
  wire [3:0]count_ticks_reg;
  wire \count_ticks_reg[0]_i_1_n_0 ;
  wire \count_ticks_reg[1]_i_1__0_n_0 ;
  wire \count_ticks_reg[2]_i_1_n_0 ;
  wire \count_ticks_reg[3]_i_2_n_0 ;
  wire \count_ticks_reg[3]_i_3_n_0 ;
  wire \count_ticks_reg[3]_i_4__0_n_0 ;
  wire [4:0]current_state;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire [4:0]next_state;
  wire \next_state_inferred__3/i__n_0 ;
  wire ptro_next;
  wire [7:0]ptro_next0_in;
  wire rx_IBUF;
  wire rx_done_tick_reg;
  wire rx_done_tick_reg_i_1_n_0;
  wire rx_done_tick_reg_i_2_n_0;
  wire [2:0]sel0;
  wire tick;

  LUT3 #(
    .INIT(8'h38)) 
    \count_data[0]_i_1 
       (.I0(current_state[2]),
        .I1(count_data_next),
        .I2(sel0[0]),
        .O(\count_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \count_data[1]_i_1 
       (.I0(sel0[0]),
        .I1(current_state[2]),
        .I2(count_data_next),
        .I3(sel0[1]),
        .O(\count_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \count_data[2]_i_1 
       (.I0(current_state[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(count_data_next),
        .I4(sel0[2]),
        .O(\count_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000202F)) 
    \count_data[2]_i_2 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(\current_state[2]_i_3_n_0 ),
        .I4(\count_data[2]_i_3_n_0 ),
        .I5(current_state[0]),
        .O(count_data_next));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_data[2]_i_3 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .O(\count_data[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_data[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_data[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_data[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    \count_ticks_reg[0]_i_1 
       (.I0(current_state[1]),
        .I1(count_ticks_reg[3]),
        .I2(count_ticks_reg[2]),
        .I3(count_ticks_reg[1]),
        .I4(count_ticks_reg[0]),
        .O(\count_ticks_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_ticks_reg[1]_i_1__0 
       (.I0(count_ticks_reg[1]),
        .I1(count_ticks_reg[0]),
        .O(\count_ticks_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_ticks_reg[2]_i_1 
       (.I0(count_ticks_reg[2]),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[0]),
        .O(\count_ticks_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A2222)) 
    \count_ticks_reg[3]_i_1 
       (.I0(\count_ticks_reg[3]_i_3_n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[1]_i_2_n_0 ),
        .I3(tick),
        .I4(\count_ticks_reg[3]_i_4__0_n_0 ),
        .I5(current_state[0]),
        .O(count_ticks_next));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h3FFDC000)) 
    \count_ticks_reg[3]_i_2 
       (.I0(current_state[1]),
        .I1(count_ticks_reg[0]),
        .I2(count_ticks_reg[1]),
        .I3(count_ticks_reg[2]),
        .I4(count_ticks_reg[3]),
        .O(\count_ticks_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBEABBEABBEAAAA)) 
    \count_ticks_reg[3]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[4]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(tick),
        .I5(\current_state[4]_i_2_n_0 ),
        .O(\count_ticks_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count_ticks_reg[3]_i_4__0 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[4]),
        .O(\count_ticks_reg[3]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[0] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[0]_i_1_n_0 ),
        .Q(count_ticks_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[1] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[1]_i_1__0_n_0 ),
        .Q(count_ticks_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[2] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[2]_i_1_n_0 ),
        .Q(count_ticks_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[3] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[3]_i_2_n_0 ),
        .Q(count_ticks_reg[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \current_state[0]_i_1 
       (.I0(current_state[4]),
        .I1(\current_state[4]_i_2_n_0 ),
        .I2(rx_IBUF),
        .I3(current_state[0]),
        .I4(\next_state_inferred__3/i__n_0 ),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \current_state[1]_i_1 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(current_state[0]),
        .I2(rx_IBUF),
        .I3(current_state[1]),
        .I4(\current_state[1]_i_2_n_0 ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \current_state[1]_i_2 
       (.I0(count_ticks_reg[3]),
        .I1(count_ticks_reg[2]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[1]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \current_state[2]_i_1 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(current_state[2]),
        .I2(\current_state[2]_i_2_n_0 ),
        .I3(\current_state[2]_i_3_n_0 ),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \current_state[2]_i_2 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \current_state[2]_i_3 
       (.I0(count_ticks_reg[1]),
        .I1(count_ticks_reg[0]),
        .I2(count_ticks_reg[2]),
        .I3(count_ticks_reg[3]),
        .I4(current_state[1]),
        .O(\current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08AA00AA08000000)) 
    \current_state[3]_i_1 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(sel0[2]),
        .I2(\current_state[3]_i_2_n_0 ),
        .I3(\current_state[4]_i_2_n_0 ),
        .I4(current_state[2]),
        .I5(current_state[3]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\current_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \current_state[4]_i_1 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(current_state[4]),
        .I2(\current_state[4]_i_2_n_0 ),
        .I3(current_state[3]),
        .O(next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \current_state[4]_i_2 
       (.I0(count_ticks_reg[0]),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[2]),
        .I3(count_ticks_reg[3]),
        .O(\current_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[4]),
        .Q(current_state[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \next_state_inferred__3/i_ 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[4]),
        .O(\next_state_inferred__3/i__n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[0]_i_1 
       (.I0(current_state[2]),
        .I1(Q[1]),
        .O(ptro_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[1]_i_1 
       (.I0(current_state[2]),
        .I1(Q[2]),
        .O(ptro_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[2]_i_1 
       (.I0(current_state[2]),
        .I1(Q[3]),
        .O(ptro_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[3]_i_1 
       (.I0(current_state[2]),
        .I1(Q[4]),
        .O(ptro_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[4]_i_1 
       (.I0(current_state[2]),
        .I1(Q[5]),
        .O(ptro_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[5]_i_1 
       (.I0(current_state[2]),
        .I1(Q[6]),
        .O(ptro_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[6]_i_1 
       (.I0(current_state[2]),
        .I1(Q[7]),
        .O(ptro_next0_in[6]));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8AAAA)) 
    \ptro[7]_i_1 
       (.I0(count_data_next),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(current_state[2]),
        .I5(\current_state[2]_i_3_n_0 ),
        .O(ptro_next));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptro[7]_i_2 
       (.I0(rx_IBUF),
        .I1(current_state[2]),
        .O(ptro_next0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[0] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[1] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[2] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[3] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[4] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[5] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[6] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ptro_reg[7] 
       (.C(CLK),
        .CE(ptro_next),
        .D(ptro_next0_in[7]),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF88FF00008880)) 
    rx_done_tick_reg_i_1
       (.I0(current_state[4]),
        .I1(rx_IBUF),
        .I2(\current_state[4]_i_2_n_0 ),
        .I3(current_state[0]),
        .I4(rx_done_tick_reg_i_2_n_0),
        .I5(rx_done_tick_reg),
        .O(rx_done_tick_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    rx_done_tick_reg_i_2
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .O(rx_done_tick_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_done_tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rx_done_tick_reg_i_1_n_0),
        .Q(rx_done_tick_reg),
        .R(SR));
endmodule

(* DATA_TICKS = "15" *) (* NB_DATA = "8" *) (* NB_STATE = "5" *) 
(* START_VALUE = "0" *) (* STOP_VALUE = "1" *) 
(* NotValidForBitStream *)
module top
   (tx,
    rx,
    clock,
    reset);
  output tx;
  input rx;
  input clock;
  input reset;

  wire \0 ;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [0:0]current_state;
  wire empty;
  wire myAlu_n_0;
  wire myAlu_n_1;
  wire myAlu_n_2;
  wire myAlu_n_3;
  wire myAlu_n_4;
  wire myAlu_n_5;
  wire myAlu_n_6;
  wire myAlu_n_7;
  wire myinterface_uart_n_1;
  wire myinterface_uart_n_14;
  wire myinterface_uart_n_15;
  wire myinterface_uart_n_16;
  wire myinterface_uart_n_17;
  wire myinterface_uart_n_2;
  wire myinterface_uart_n_3;
  wire myinterface_uart_n_4;
  wire myinterface_uart_n_5;
  wire [6:0]o_data_A;
  wire [7:0]o_tx_reg;
  wire [7:0]ptro;
  wire read_tx;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire rx_done_tick_reg;
  wire tick;
  wire tx;
  wire tx_OBUF;
  wire tx_done_tick;

initial begin
 $sdf_annotate("testSystem_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  alu myAlu
       (.O({myAlu_n_0,myAlu_n_1,myAlu_n_2,myAlu_n_3}),
        .Q(o_data_A),
        .S({myinterface_uart_n_2,myinterface_uart_n_3,myinterface_uart_n_4,myinterface_uart_n_5}),
        .\o_data_A_reg[6] ({myAlu_n_4,myAlu_n_5,myAlu_n_6,myAlu_n_7}),
        .\o_tx_reg[0]_i_3 (\0 ),
        .\o_tx_reg[4]_i_3 ({myinterface_uart_n_14,myinterface_uart_n_15,myinterface_uart_n_16,myinterface_uart_n_17}));
  BaudRateGenerator myBRG
       (.CLK(clock_IBUF_BUFG),
        .SR(reset_IBUF),
        .tick(tick));
  interface_uart myinterface_uart
       (.CLK(clock_IBUF_BUFG),
        .O({myAlu_n_0,myAlu_n_1,myAlu_n_2,myAlu_n_3}),
        .Q(current_state),
        .S({myinterface_uart_n_2,myinterface_uart_n_3,myinterface_uart_n_4,myinterface_uart_n_5}),
        .SR(reset_IBUF),
        .\data_A_reg_reg[7]_0 (ptro),
        .empty(empty),
        .empty_reg_0(myinterface_uart_n_1),
        .\o_data_A_reg[6]_0 (o_data_A),
        .\o_data_B_reg[7]_0 ({myinterface_uart_n_14,myinterface_uart_n_15,myinterface_uart_n_16,myinterface_uart_n_17}),
        .\o_data_Op_reg[1]_0 (\0 ),
        .\o_tx_reg_reg[7]_0 (o_tx_reg),
        .\o_tx_reg_reg[7]_1 ({myAlu_n_4,myAlu_n_5,myAlu_n_6,myAlu_n_7}),
        .read_tx(read_tx),
        .rx_done_tick_reg(rx_done_tick_reg),
        .tx_done_tick(tx_done_tick));
  rx_uart myrx_uart
       (.CLK(clock_IBUF_BUFG),
        .Q(ptro),
        .SR(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .rx_done_tick_reg(rx_done_tick_reg),
        .tick(tick));
  tx_uart mytx_uart
       (.CLK(clock_IBUF_BUFG),
        .D(o_tx_reg),
        .Q(current_state),
        .SR(reset_IBUF),
        .\count_ticks_reg_reg[3]_0 (myinterface_uart_n_1),
        .empty(empty),
        .read_tx(read_tx),
        .tick(tick),
        .tx_OBUF(tx_OBUF),
        .tx_done_tick(tx_done_tick));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
endmodule

module tx_uart
   (tx_OBUF,
    read_tx,
    tx_done_tick,
    Q,
    SR,
    CLK,
    empty,
    \count_ticks_reg_reg[3]_0 ,
    tick,
    D);
  output tx_OBUF;
  output read_tx;
  output tx_done_tick;
  output [0:0]Q;
  input [0:0]SR;
  input CLK;
  input empty;
  input \count_ticks_reg_reg[3]_0 ;
  input tick;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire count_data_next;
  wire [2:0]count_data_reg;
  wire \count_data_reg[0]_i_1_n_0 ;
  wire \count_data_reg[1]_i_1_n_0 ;
  wire \count_data_reg[2]_i_1_n_0 ;
  wire count_ticks_next;
  wire [3:0]count_ticks_reg;
  wire \count_ticks_reg[0]_i_1__0_n_0 ;
  wire \count_ticks_reg[1]_i_1_n_0 ;
  wire \count_ticks_reg[2]_i_1__0_n_0 ;
  wire \count_ticks_reg[3]_i_2__0_n_0 ;
  wire \count_ticks_reg[3]_i_3__0_n_0 ;
  wire \count_ticks_reg[3]_i_5_n_0 ;
  wire \count_ticks_reg_reg[3]_0 ;
  wire [4:1]current_state;
  wire \current_state[3]_i_2__0_n_0 ;
  wire \current_state[4]_i_1__0_n_0 ;
  wire \current_state[4]_i_2__0_n_0 ;
  wire din_next;
  wire [7:0]din_reg;
  wire empty;
  wire [3:0]next_state;
  wire \next_state_inferred__3/i__n_0 ;
  wire read_tx;
  wire tick;
  wire tx_OBUF;
  wire tx_done_tick;
  wire tx_done_tick_next;
  wire tx_next;
  wire tx_reg_i_2_n_0;
  wire tx_reg_i_3_n_0;
  wire tx_reg_i_4_n_0;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \count_data_reg[0]_i_1 
       (.I0(current_state[2]),
        .I1(count_data_next),
        .I2(count_data_reg[0]),
        .O(\count_data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \count_data_reg[1]_i_1 
       (.I0(count_data_reg[0]),
        .I1(current_state[2]),
        .I2(count_data_next),
        .I3(count_data_reg[1]),
        .O(\count_data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \count_data_reg[2]_i_1 
       (.I0(current_state[2]),
        .I1(count_data_reg[0]),
        .I2(count_data_reg[1]),
        .I3(count_data_next),
        .I4(count_data_reg[2]),
        .O(\count_data_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \count_data_reg[2]_i_2 
       (.I0(current_state[4]),
        .I1(Q),
        .I2(current_state[3]),
        .I3(\current_state[4]_i_2__0_n_0 ),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(count_data_next));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_data_reg[0]_i_1_n_0 ),
        .Q(count_data_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_data_reg[1]_i_1_n_0 ),
        .Q(count_data_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_data_reg[2]_i_1_n_0 ),
        .Q(count_data_reg[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \count_ticks_reg[0]_i_1__0 
       (.I0(Q),
        .I1(empty),
        .I2(count_ticks_reg[0]),
        .I3(\count_ticks_reg[3]_i_5_n_0 ),
        .O(\count_ticks_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \count_ticks_reg[1]_i_1 
       (.I0(Q),
        .I1(empty),
        .I2(count_ticks_reg[1]),
        .I3(count_ticks_reg[0]),
        .I4(\count_ticks_reg[3]_i_5_n_0 ),
        .O(\count_ticks_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \count_ticks_reg[2]_i_1__0 
       (.I0(Q),
        .I1(empty),
        .I2(count_ticks_reg[2]),
        .I3(count_ticks_reg[0]),
        .I4(count_ticks_reg[1]),
        .I5(\count_ticks_reg[3]_i_5_n_0 ),
        .O(\count_ticks_reg[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \count_ticks_reg[3]_i_1__0 
       (.I0(din_next),
        .I1(\current_state[4]_i_2__0_n_0 ),
        .I2(tick),
        .I3(\count_ticks_reg[3]_i_3__0_n_0 ),
        .O(count_ticks_next));
  LUT6 #(
    .INIT(64'hBFFFEAAAAAAAAAAA)) 
    \count_ticks_reg[3]_i_2__0 
       (.I0(\count_ticks_reg_reg[3]_0 ),
        .I1(count_ticks_reg[2]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[1]),
        .I4(count_ticks_reg[3]),
        .I5(\count_ticks_reg[3]_i_5_n_0 ),
        .O(\count_ticks_reg[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000116)) 
    \count_ticks_reg[3]_i_3__0 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(Q),
        .O(\count_ticks_reg[3]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_ticks_reg[3]_i_5 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .O(\count_ticks_reg[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[0] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[0]_i_1__0_n_0 ),
        .Q(count_ticks_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[1] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[1]_i_1_n_0 ),
        .Q(count_ticks_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[2] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[2]_i_1__0_n_0 ),
        .Q(count_ticks_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[3] 
       (.C(CLK),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[3]_i_2__0_n_0 ),
        .Q(count_ticks_reg[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF4F4F4F)) 
    \current_state[0]_i_1__0 
       (.I0(\current_state[4]_i_2__0_n_0 ),
        .I1(current_state[4]),
        .I2(\next_state_inferred__3/i__n_0 ),
        .I3(empty),
        .I4(Q),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \current_state[1]_i_1__0 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(Q),
        .I2(empty),
        .I3(current_state[1]),
        .I4(\current_state[4]_i_2__0_n_0 ),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hAAAAA8AA08080808)) 
    \current_state[2]_i_1__0 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[4]_i_2__0_n_0 ),
        .I3(count_data_reg[2]),
        .I4(\current_state[3]_i_2__0_n_0 ),
        .I5(current_state[2]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'h88A8888800200000)) 
    \current_state[3]_i_1__0 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(\current_state[4]_i_2__0_n_0 ),
        .I2(count_data_reg[2]),
        .I3(\current_state[3]_i_2__0_n_0 ),
        .I4(current_state[2]),
        .I5(current_state[3]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_2__0 
       (.I0(count_data_reg[0]),
        .I1(count_data_reg[1]),
        .O(\current_state[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \current_state[4]_i_1__0 
       (.I0(current_state[3]),
        .I1(\current_state[4]_i_2__0_n_0 ),
        .I2(current_state[4]),
        .I3(\next_state_inferred__3/i__n_0 ),
        .O(\current_state[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[4]_i_2__0 
       (.I0(count_ticks_reg[3]),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[2]),
        .O(\current_state[4]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q),
        .S(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\current_state[4]_i_1__0_n_0 ),
        .Q(current_state[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \din_reg[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .I4(Q),
        .I5(empty),
        .O(din_next));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[0] 
       (.C(CLK),
        .CE(din_next),
        .D(D[0]),
        .Q(din_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[1] 
       (.C(CLK),
        .CE(din_next),
        .D(D[1]),
        .Q(din_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[2] 
       (.C(CLK),
        .CE(din_next),
        .D(D[2]),
        .Q(din_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[3] 
       (.C(CLK),
        .CE(din_next),
        .D(D[3]),
        .Q(din_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[4] 
       (.C(CLK),
        .CE(din_next),
        .D(D[4]),
        .Q(din_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[5] 
       (.C(CLK),
        .CE(din_next),
        .D(D[5]),
        .Q(din_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[6] 
       (.C(CLK),
        .CE(din_next),
        .D(D[6]),
        .Q(din_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[7] 
       (.C(CLK),
        .CE(din_next),
        .D(D[7]),
        .Q(din_reg[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \next_state_inferred__3/i_ 
       (.I0(Q),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[4]),
        .O(\next_state_inferred__3/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    read_tx_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(din_next),
        .Q(read_tx),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    tx_done_tick_reg_i_1
       (.I0(\current_state[4]_i_2__0_n_0 ),
        .I1(current_state[4]),
        .I2(Q),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(current_state[3]),
        .O(tx_done_tick_next));
  FDRE #(
    .INIT(1'b0)) 
    tx_done_tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_done_tick_next),
        .Q(tx_done_tick),
        .R(SR));
  LUT5 #(
    .INIT(32'h00010116)) 
    tx_reg_i_1
       (.I0(Q),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(current_state[3]),
        .O(tx_next));
  LUT6 #(
    .INIT(64'h000000000000DFD5)) 
    tx_reg_i_2
       (.I0(current_state[2]),
        .I1(tx_reg_i_3_n_0),
        .I2(count_data_reg[2]),
        .I3(tx_reg_i_4_n_0),
        .I4(current_state[3]),
        .I5(current_state[1]),
        .O(tx_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_reg_i_3
       (.I0(din_reg[7]),
        .I1(din_reg[6]),
        .I2(count_data_reg[1]),
        .I3(din_reg[5]),
        .I4(count_data_reg[0]),
        .I5(din_reg[4]),
        .O(tx_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_reg_i_4
       (.I0(din_reg[3]),
        .I1(din_reg[2]),
        .I2(count_data_reg[1]),
        .I3(din_reg[1]),
        .I4(count_data_reg[0]),
        .I5(din_reg[0]),
        .O(tx_reg_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(CLK),
        .CE(tx_next),
        .D(tx_reg_i_2_n_0),
        .Q(tx_OBUF),
        .S(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
