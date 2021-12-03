// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Dec  3 14:29:12 2021
// Host        : LAPTOP-DJ46CPRC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Laudi/vivado_projects/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/func/xsim/IT_InterAluTx_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BaudRateGenerator
   (tick,
    reset_IBUF,
    clock_IBUF_BUFG);
  output tick;
  input reset_IBUF;
  input clock_IBUF_BUFG;

  wire clock_IBUF_BUFG;
  wire [7:0]counTicks;
  wire \counTicks[0]_i_1_n_0 ;
  wire \counTicks[5]_i_2_n_0 ;
  wire \counTicks[7]_i_2_n_0 ;
  wire \counTicks[7]_i_3_n_0 ;
  wire \counTicks[7]_i_4_n_0 ;
  wire [7:1]counTicks_0;
  wire reset_IBUF;
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
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counTicks[0]_i_1_n_0 ),
        .Q(counTicks[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(counTicks_0[1]),
        .Q(counTicks[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(counTicks_0[2]),
        .Q(counTicks[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(counTicks_0[3]),
        .Q(counTicks[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(counTicks_0[4]),
        .Q(counTicks[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(counTicks_0[5]),
        .Q(counTicks[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(counTicks_0[6]),
        .Q(counTicks[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(counTicks_0[7]),
        .Q(counTicks[7]),
        .R(reset_IBUF));
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
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_1),
        .Q(tick),
        .R(reset_IBUF));
endmodule

module alu
   (data0,
    Q,
    \o_alu_OBUF[0]_inst_i_2 ,
    S,
    \o_alu_OBUF[4]_inst_i_2 );
  output [7:0]data0;
  input [6:0]Q;
  input [0:0]\o_alu_OBUF[0]_inst_i_2 ;
  input [3:0]S;
  input [3:0]\o_alu_OBUF[4]_inst_i_2 ;

  wire [6:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [7:0]data0;
  wire [0:0]\o_alu_OBUF[0]_inst_i_2 ;
  wire [3:0]\o_alu_OBUF[4]_inst_i_2 ;
  wire [3:3]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\o_alu_OBUF[0]_inst_i_2 }),
        .O(data0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3],\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S(\o_alu_OBUF[4]_inst_i_2 ));
endmodule

module interface_uart
   (empty,
    D,
    \o_data_B_reg[7]_0 ,
    Q,
    \o_data_A_reg[6]_0 ,
    \current_state_reg[4]_0 ,
    o_alu_OBUF,
    S,
    empty_reg_0,
    reset_IBUF,
    clock_IBUF_BUFG,
    wr_IBUF,
    read_tx,
    data0,
    \current_state_reg[4]_1 ,
    tx_done_tick,
    \count_ticks_reg_reg[3] ,
    \o_data_A_reg[7]_0 );
  output empty;
  output [4:0]D;
  output [3:0]\o_data_B_reg[7]_0 ;
  output [0:0]Q;
  output [6:0]\o_data_A_reg[6]_0 ;
  output [1:0]\current_state_reg[4]_0 ;
  output [7:0]o_alu_OBUF;
  output [3:0]S;
  output empty_reg_0;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input wr_IBUF;
  input read_tx;
  input [7:0]data0;
  input [0:0]\current_state_reg[4]_1 ;
  input tx_done_tick;
  input [0:0]\count_ticks_reg_reg[3] ;
  input [7:0]\o_data_A_reg[7]_0 ;

  wire [4:0]D;
  wire [0:0]Q;
  wire [3:0]S;
  wire clock_IBUF_BUFG;
  wire [0:0]\count_ticks_reg_reg[3] ;
  wire [2:0]current_state;
  wire \current_state[4]_i_1_n_0 ;
  wire [1:0]\current_state_reg[4]_0 ;
  wire [0:0]\current_state_reg[4]_1 ;
  wire [7:0]data0;
  wire data_A_next;
  wire data_B_next;
  wire data_Op_next;
  wire empty;
  wire empty_i_2_n_0;
  wire empty_i_3_n_0;
  wire empty_i_4_n_0;
  wire empty_next;
  wire empty_reg_0;
  wire empty_reg__0;
  wire empty_reg_i_1_n_0;
  wire [3:0]next_state;
  wire [7:0]o_alu_OBUF;
  wire \o_alu_OBUF[0]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[0]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[0]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[1]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[1]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[1]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[2]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[2]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[2]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[3]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[3]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[3]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_5_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[6]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[6]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_5_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_6_n_0 ;
  wire [7:7]o_data_A;
  wire [6:0]\o_data_A_reg[6]_0 ;
  wire [7:0]\o_data_A_reg[7]_0 ;
  wire [7:0]o_data_B;
  wire [3:0]\o_data_B_reg[7]_0 ;
  wire \o_data_Op_reg_n_0_[0] ;
  wire \o_data_Op_reg_n_0_[2] ;
  wire \o_data_Op_reg_n_0_[3] ;
  wire \o_data_Op_reg_n_0_[4] ;
  wire \o_data_Op_reg_n_0_[5] ;
  wire \o_tx[0]_i_2_n_0 ;
  wire \o_tx[0]_i_3_n_0 ;
  wire \o_tx[0]_i_4_n_0 ;
  wire \o_tx[1]_i_2_n_0 ;
  wire \o_tx[1]_i_3_n_0 ;
  wire \o_tx[2]_i_2_n_0 ;
  wire \o_tx[2]_i_3_n_0 ;
  wire \o_tx[2]_i_4_n_0 ;
  wire \o_tx[3]_i_2_n_0 ;
  wire \o_tx[3]_i_3_n_0 ;
  wire \o_tx[4]_i_2_n_0 ;
  wire \o_tx[4]_i_3_n_0 ;
  wire \o_tx[4]_i_4_n_0 ;
  wire [4:0]o_tx_next__73;
  wire read_tx;
  wire reset_IBUF;
  wire tx_done_tick;
  wire wr_IBUF;

  LUT2 #(
    .INIT(4'h8)) 
    \count_ticks_reg[3]_i_5 
       (.I0(empty),
        .I1(\count_ticks_reg_reg[3] ),
        .O(empty_reg_0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \current_state[0]_i_1 
       (.I0(tx_done_tick),
        .I1(\current_state_reg[4]_0 [1]),
        .I2(wr_IBUF),
        .I3(current_state[0]),
        .O(next_state[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(wr_IBUF),
        .I2(current_state[1]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[2]_i_1 
       (.I0(current_state[1]),
        .I1(wr_IBUF),
        .I2(current_state[2]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \current_state[3]_i_1 
       (.I0(read_tx),
        .I1(\current_state_reg[4]_0 [0]),
        .I2(wr_IBUF),
        .I3(current_state[2]),
        .O(next_state[3]));
  LUT5 #(
    .INIT(32'h00010116)) 
    \current_state[4]_i_1 
       (.I0(\current_state_reg[4]_0 [1]),
        .I1(\current_state_reg[4]_0 [0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\current_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\current_state[4]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\current_state[4]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\current_state[4]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\current_state[4]_i_1_n_0 ),
        .D(next_state[3]),
        .Q(\current_state_reg[4]_0 [0]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\current_state[4]_i_1_n_0 ),
        .D(\current_state_reg[4]_1 ),
        .Q(\current_state_reg[4]_0 [1]),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    empty_i_1
       (.I0(empty_i_2_n_0),
        .I1(empty_i_3_n_0),
        .I2(current_state[1]),
        .I3(empty_i_4_n_0),
        .I4(empty_reg__0),
        .O(empty_next));
  LUT6 #(
    .INIT(64'h00000000000B0300)) 
    empty_i_2
       (.I0(empty_reg__0),
        .I1(\current_state_reg[4]_0 [0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(\current_state_reg[4]_0 [1]),
        .O(empty_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000001612)) 
    empty_i_3
       (.I0(current_state[2]),
        .I1(\current_state_reg[4]_0 [0]),
        .I2(\current_state_reg[4]_0 [1]),
        .I3(read_tx),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(empty_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    empty_i_4
       (.I0(\current_state_reg[4]_0 [1]),
        .I1(current_state[2]),
        .I2(\current_state_reg[4]_0 [0]),
        .O(empty_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(empty_next),
        .Q(empty),
        .S(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFF0000FFFEEEEE)) 
    empty_reg_i_1
       (.I0(empty_i_2_n_0),
        .I1(empty_i_3_n_0),
        .I2(current_state[1]),
        .I3(empty_i_4_n_0),
        .I4(empty_reg__0),
        .I5(reset_IBUF),
        .O(empty_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_reg_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(empty_reg_i_1_n_0),
        .Q(empty_reg__0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(o_data_B[7]),
        .I1(Q),
        .I2(o_data_A),
        .O(\o_data_B_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(o_data_B[6]),
        .I1(Q),
        .I2(\o_data_A_reg[6]_0 [6]),
        .O(\o_data_B_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(o_data_B[5]),
        .I1(Q),
        .I2(\o_data_A_reg[6]_0 [5]),
        .O(\o_data_B_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(o_data_B[4]),
        .I1(Q),
        .I2(\o_data_A_reg[6]_0 [4]),
        .O(\o_data_B_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(o_data_B[3]),
        .I1(Q),
        .I2(\o_data_A_reg[6]_0 [3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(o_data_B[2]),
        .I1(Q),
        .I2(\o_data_A_reg[6]_0 [2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(o_data_B[1]),
        .I1(Q),
        .I2(\o_data_A_reg[6]_0 [1]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(o_data_B[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \o_alu_OBUF[0]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_alu_OBUF[0]_inst_i_2_n_0 ),
        .I2(\o_data_Op_reg_n_0_[5] ),
        .I3(\o_alu_OBUF[1]_inst_i_4_n_0 ),
        .I4(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I5(\o_alu_OBUF[0]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[0]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[0]_inst_i_2 
       (.I0(data0[0]),
        .I1(\o_data_A_reg[6]_0 [0]),
        .I2(o_data_B[0]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \o_alu_OBUF[0]_inst_i_3 
       (.I0(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .I1(\o_alu_OBUF[0]_inst_i_4_n_0 ),
        .I2(o_data_B[1]),
        .I3(\o_data_A_reg[6]_0 [4]),
        .I4(\o_data_A_reg[6]_0 [0]),
        .I5(o_data_B[2]),
        .O(\o_alu_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_alu_OBUF[0]_inst_i_4 
       (.I0(\o_data_A_reg[6]_0 [6]),
        .I1(o_data_B[2]),
        .I2(\o_data_A_reg[6]_0 [2]),
        .O(\o_alu_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \o_alu_OBUF[1]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_alu_OBUF[1]_inst_i_2_n_0 ),
        .I2(\o_data_Op_reg_n_0_[5] ),
        .I3(\o_alu_OBUF[1]_inst_i_3_n_0 ),
        .I4(\o_alu_OBUF[1]_inst_i_4_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[1]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[1]_inst_i_2 
       (.I0(data0[1]),
        .I1(\o_data_A_reg[6]_0 [1]),
        .I2(o_data_B[1]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \o_alu_OBUF[1]_inst_i_3 
       (.I0(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I1(\o_data_A_reg[6]_0 [2]),
        .I2(o_data_B[2]),
        .I3(\o_data_A_reg[6]_0 [6]),
        .I4(o_data_B[1]),
        .I5(\o_data_A_reg[6]_0 [4]),
        .O(\o_alu_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \o_alu_OBUF[1]_inst_i_4 
       (.I0(\o_data_A_reg[6]_0 [1]),
        .I1(\o_data_A_reg[6]_0 [5]),
        .I2(o_data_B[1]),
        .I3(o_data_A),
        .I4(o_data_B[2]),
        .I5(\o_data_A_reg[6]_0 [3]),
        .O(\o_alu_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \o_alu_OBUF[2]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_alu_OBUF[2]_inst_i_2_n_0 ),
        .I2(\o_data_Op_reg_n_0_[5] ),
        .I3(\o_alu_OBUF[2]_inst_i_3_n_0 ),
        .I4(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I5(\o_alu_OBUF[2]_inst_i_4_n_0 ),
        .O(o_alu_OBUF[2]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[2]_inst_i_2 
       (.I0(data0[2]),
        .I1(\o_data_A_reg[6]_0 [2]),
        .I2(o_data_B[2]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o_alu_OBUF[2]_inst_i_3 
       (.I0(\o_data_A_reg[6]_0 [5]),
        .I1(o_data_B[1]),
        .I2(o_data_A),
        .I3(o_data_B[2]),
        .I4(\o_data_A_reg[6]_0 [3]),
        .O(\o_alu_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \o_alu_OBUF[2]_inst_i_4 
       (.I0(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .I1(\o_data_A_reg[6]_0 [2]),
        .I2(o_data_B[2]),
        .I3(\o_data_A_reg[6]_0 [6]),
        .I4(o_data_B[1]),
        .I5(\o_data_A_reg[6]_0 [4]),
        .O(\o_alu_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \o_alu_OBUF[3]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_alu_OBUF[3]_inst_i_2_n_0 ),
        .I2(\o_data_Op_reg_n_0_[5] ),
        .I3(\o_alu_OBUF[3]_inst_i_3_n_0 ),
        .I4(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I5(\o_alu_OBUF[3]_inst_i_4_n_0 ),
        .O(o_alu_OBUF[3]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[3]_inst_i_2 
       (.I0(data0[3]),
        .I1(\o_data_A_reg[6]_0 [3]),
        .I2(o_data_B[3]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_alu_OBUF[3]_inst_i_3 
       (.I0(\o_data_A_reg[6]_0 [6]),
        .I1(\o_data_A_reg[6]_0 [4]),
        .I2(o_data_B[1]),
        .I3(o_data_B[2]),
        .O(\o_alu_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \o_alu_OBUF[3]_inst_i_4 
       (.I0(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .I1(\o_data_A_reg[6]_0 [3]),
        .I2(o_data_B[2]),
        .I3(o_data_A),
        .I4(o_data_B[1]),
        .I5(\o_data_A_reg[6]_0 [5]),
        .O(\o_alu_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \o_alu_OBUF[4]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_alu_OBUF[4]_inst_i_2_n_0 ),
        .I2(\o_data_Op_reg_n_0_[5] ),
        .I3(\o_alu_OBUF[4]_inst_i_3_n_0 ),
        .I4(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I5(\o_alu_OBUF[4]_inst_i_5_n_0 ),
        .O(o_alu_OBUF[4]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[4]_inst_i_2 
       (.I0(data0[4]),
        .I1(\o_data_A_reg[6]_0 [4]),
        .I2(o_data_B[4]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[4]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_alu_OBUF[4]_inst_i_3 
       (.I0(o_data_A),
        .I1(\o_data_A_reg[6]_0 [5]),
        .I2(o_data_B[1]),
        .I3(o_data_B[2]),
        .O(\o_alu_OBUF[4]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_alu_OBUF[4]_inst_i_4 
       (.I0(\o_alu_OBUF[7]_inst_i_6_n_0 ),
        .I1(Q),
        .I2(\o_data_Op_reg_n_0_[2] ),
        .I3(o_data_B[0]),
        .O(\o_alu_OBUF[4]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h22200200)) 
    \o_alu_OBUF[4]_inst_i_5 
       (.I0(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .I1(o_data_B[2]),
        .I2(o_data_B[1]),
        .I3(\o_data_A_reg[6]_0 [4]),
        .I4(\o_data_A_reg[6]_0 [6]),
        .O(\o_alu_OBUF[4]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h11111000)) 
    \o_alu_OBUF[5]_inst_i_1 
       (.I0(\o_data_Op_reg_n_0_[4] ),
        .I1(\o_data_Op_reg_n_0_[3] ),
        .I2(\o_alu_OBUF[5]_inst_i_2_n_0 ),
        .I3(\o_data_Op_reg_n_0_[5] ),
        .I4(\o_alu_OBUF[5]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[5]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[5]_inst_i_2 
       (.I0(data0[5]),
        .I1(\o_data_A_reg[6]_0 [5]),
        .I2(o_data_B[5]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \o_alu_OBUF[5]_inst_i_3 
       (.I0(o_data_B[2]),
        .I1(o_data_B[1]),
        .I2(\o_data_A_reg[6]_0 [6]),
        .I3(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I4(\o_alu_OBUF[4]_inst_i_3_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(\o_alu_OBUF[5]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h11111000)) 
    \o_alu_OBUF[6]_inst_i_1 
       (.I0(\o_data_Op_reg_n_0_[4] ),
        .I1(\o_data_Op_reg_n_0_[3] ),
        .I2(\o_alu_OBUF[6]_inst_i_2_n_0 ),
        .I3(\o_data_Op_reg_n_0_[5] ),
        .I4(\o_alu_OBUF[6]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[6]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[6]_inst_i_2 
       (.I0(data0[6]),
        .I1(\o_data_A_reg[6]_0 [6]),
        .I2(o_data_B[6]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000F000800080008)) 
    \o_alu_OBUF[6]_inst_i_3 
       (.I0(o_data_A),
        .I1(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I2(o_data_B[2]),
        .I3(o_data_B[1]),
        .I4(\o_data_A_reg[6]_0 [6]),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(\o_alu_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \o_alu_OBUF[7]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_2_n_0 ),
        .I1(\o_data_Op_reg_n_0_[5] ),
        .I2(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .I3(o_data_A),
        .I4(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .O(o_alu_OBUF[7]));
  LUT6 #(
    .INIT(64'h03003CAAFC00C0AA)) 
    \o_alu_OBUF[7]_inst_i_2 
       (.I0(data0[7]),
        .I1(o_data_A),
        .I2(o_data_B[7]),
        .I3(\o_data_Op_reg_n_0_[2] ),
        .I4(\o_data_Op_reg_n_0_[0] ),
        .I5(Q),
        .O(\o_alu_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \o_alu_OBUF[7]_inst_i_3 
       (.I0(\o_alu_OBUF[7]_inst_i_6_n_0 ),
        .I1(Q),
        .I2(\o_data_Op_reg_n_0_[2] ),
        .I3(o_data_B[0]),
        .O(\o_alu_OBUF[7]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_alu_OBUF[7]_inst_i_4 
       (.I0(o_data_B[1]),
        .I1(o_data_B[2]),
        .O(\o_alu_OBUF[7]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_alu_OBUF[7]_inst_i_5 
       (.I0(\o_data_Op_reg_n_0_[3] ),
        .I1(\o_data_Op_reg_n_0_[4] ),
        .O(\o_alu_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_alu_OBUF[7]_inst_i_6 
       (.I0(o_data_B[6]),
        .I1(o_data_B[7]),
        .I2(o_data_B[5]),
        .I3(o_data_B[4]),
        .I4(o_data_B[3]),
        .I5(\o_data_Op_reg_n_0_[5] ),
        .O(\o_alu_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \o_data_A[7]_i_1 
       (.I0(current_state[2]),
        .I1(\current_state_reg[4]_0 [1]),
        .I2(wr_IBUF),
        .I3(\current_state_reg[4]_0 [0]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(data_A_next));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [0]),
        .Q(\o_data_A_reg[6]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [1]),
        .Q(\o_data_A_reg[6]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [2]),
        .Q(\o_data_A_reg[6]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [3]),
        .Q(\o_data_A_reg[6]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [4]),
        .Q(\o_data_A_reg[6]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [5]),
        .Q(\o_data_A_reg[6]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [6]),
        .Q(\o_data_A_reg[6]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(data_A_next),
        .D(\o_data_A_reg[7]_0 [7]),
        .Q(o_data_A),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \o_data_B[7]_i_1 
       (.I0(current_state[2]),
        .I1(\current_state_reg[4]_0 [1]),
        .I2(wr_IBUF),
        .I3(\current_state_reg[4]_0 [0]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(data_B_next));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [0]),
        .Q(o_data_B[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [1]),
        .Q(o_data_B[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [2]),
        .Q(o_data_B[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [3]),
        .Q(o_data_B[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [4]),
        .Q(o_data_B[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [5]),
        .Q(o_data_B[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [6]),
        .Q(o_data_B[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(data_B_next),
        .D(\o_data_A_reg[7]_0 [7]),
        .Q(o_data_B[7]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \o_data_Op[5]_i_1 
       (.I0(wr_IBUF),
        .I1(\current_state_reg[4]_0 [1]),
        .I2(current_state[2]),
        .I3(\current_state_reg[4]_0 [0]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(data_Op_next));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(data_Op_next),
        .D(\o_data_A_reg[7]_0 [0]),
        .Q(\o_data_Op_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(data_Op_next),
        .D(\o_data_A_reg[7]_0 [1]),
        .Q(Q),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(data_Op_next),
        .D(\o_data_A_reg[7]_0 [2]),
        .Q(\o_data_Op_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(data_Op_next),
        .D(\o_data_A_reg[7]_0 [3]),
        .Q(\o_data_Op_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(data_Op_next),
        .D(\o_data_A_reg[7]_0 [4]),
        .Q(\o_data_Op_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(data_Op_next),
        .D(\o_data_A_reg[7]_0 [5]),
        .Q(\o_data_Op_reg_n_0_[5] ),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAAAAAAA)) 
    \o_tx[0]_i_1 
       (.I0(\o_tx[0]_i_2_n_0 ),
        .I1(\o_tx[4]_i_3_n_0 ),
        .I2(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I3(\o_alu_OBUF[0]_inst_i_2_n_0 ),
        .I4(\o_data_Op_reg_n_0_[5] ),
        .I5(\o_tx[0]_i_3_n_0 ),
        .O(o_tx_next__73[0]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \o_tx[0]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\current_state_reg[4]_0 [1]),
        .I3(current_state[2]),
        .I4(\current_state_reg[4]_0 [0]),
        .I5(D[0]),
        .O(\o_tx[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \o_tx[0]_i_3 
       (.I0(\o_alu_OBUF[1]_inst_i_4_n_0 ),
        .I1(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I2(\o_tx[0]_i_4_n_0 ),
        .I3(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(\o_tx[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \o_tx[0]_i_4 
       (.I0(\o_data_A_reg[6]_0 [0]),
        .I1(\o_data_A_reg[6]_0 [4]),
        .I2(o_data_B[1]),
        .I3(\o_data_A_reg[6]_0 [6]),
        .I4(o_data_B[2]),
        .I5(\o_data_A_reg[6]_0 [2]),
        .O(\o_tx[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAAAAAAA)) 
    \o_tx[1]_i_1 
       (.I0(\o_tx[1]_i_2_n_0 ),
        .I1(\o_tx[4]_i_3_n_0 ),
        .I2(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I3(\o_alu_OBUF[1]_inst_i_2_n_0 ),
        .I4(\o_data_Op_reg_n_0_[5] ),
        .I5(\o_tx[1]_i_3_n_0 ),
        .O(o_tx_next__73[1]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \o_tx[1]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\current_state_reg[4]_0 [1]),
        .I3(current_state[2]),
        .I4(\current_state_reg[4]_0 [0]),
        .I5(D[1]),
        .O(\o_tx[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \o_tx[1]_i_3 
       (.I0(\o_tx[2]_i_4_n_0 ),
        .I1(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I2(\o_alu_OBUF[1]_inst_i_4_n_0 ),
        .I3(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(\o_tx[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAAAAAAA)) 
    \o_tx[2]_i_1 
       (.I0(\o_tx[2]_i_2_n_0 ),
        .I1(\o_tx[4]_i_3_n_0 ),
        .I2(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I3(\o_alu_OBUF[2]_inst_i_2_n_0 ),
        .I4(\o_data_Op_reg_n_0_[5] ),
        .I5(\o_tx[2]_i_3_n_0 ),
        .O(o_tx_next__73[2]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \o_tx[2]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\current_state_reg[4]_0 [1]),
        .I3(current_state[2]),
        .I4(\current_state_reg[4]_0 [0]),
        .I5(D[2]),
        .O(\o_tx[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_tx[2]_i_3 
       (.I0(\o_alu_OBUF[2]_inst_i_3_n_0 ),
        .I1(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I2(\o_tx[2]_i_4_n_0 ),
        .I3(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(\o_tx[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o_tx[2]_i_4 
       (.I0(\o_data_A_reg[6]_0 [4]),
        .I1(o_data_B[1]),
        .I2(\o_data_A_reg[6]_0 [6]),
        .I3(o_data_B[2]),
        .I4(\o_data_A_reg[6]_0 [2]),
        .O(\o_tx[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAAAAAAA)) 
    \o_tx[3]_i_1 
       (.I0(\o_tx[3]_i_2_n_0 ),
        .I1(\o_tx[4]_i_3_n_0 ),
        .I2(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I3(\o_alu_OBUF[3]_inst_i_2_n_0 ),
        .I4(\o_data_Op_reg_n_0_[5] ),
        .I5(\o_tx[3]_i_3_n_0 ),
        .O(o_tx_next__73[3]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \o_tx[3]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\current_state_reg[4]_0 [1]),
        .I3(current_state[2]),
        .I4(\current_state_reg[4]_0 [0]),
        .I5(D[3]),
        .O(\o_tx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \o_tx[3]_i_3 
       (.I0(\o_alu_OBUF[3]_inst_i_3_n_0 ),
        .I1(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I2(\o_alu_OBUF[2]_inst_i_3_n_0 ),
        .I3(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(\o_tx[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAAAAAAA)) 
    \o_tx[4]_i_1 
       (.I0(\o_tx[4]_i_2_n_0 ),
        .I1(\o_tx[4]_i_3_n_0 ),
        .I2(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I3(\o_alu_OBUF[4]_inst_i_2_n_0 ),
        .I4(\o_data_Op_reg_n_0_[5] ),
        .I5(\o_tx[4]_i_4_n_0 ),
        .O(o_tx_next__73[4]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \o_tx[4]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\current_state_reg[4]_0 [1]),
        .I3(current_state[2]),
        .I4(\current_state_reg[4]_0 [0]),
        .I5(D[4]),
        .O(\o_tx[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \o_tx[4]_i_3 
       (.I0(\current_state_reg[4]_0 [0]),
        .I1(current_state[2]),
        .I2(\current_state_reg[4]_0 [1]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\o_tx[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \o_tx[4]_i_4 
       (.I0(\o_alu_OBUF[4]_inst_i_3_n_0 ),
        .I1(\o_alu_OBUF[4]_inst_i_4_n_0 ),
        .I2(\o_alu_OBUF[3]_inst_i_3_n_0 ),
        .I3(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(\o_tx[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(o_tx_next__73[0]),
        .Q(D[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(o_tx_next__73[1]),
        .Q(D[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(o_tx_next__73[2]),
        .Q(D[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(o_tx_next__73[3]),
        .Q(D[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(o_tx_next__73[4]),
        .Q(D[4]),
        .R(reset_IBUF));
endmodule

(* DATA_TICKS = "15" *) (* NB_DATA = "8" *) (* NB_STATE = "5" *) 
(* START_VALUE = "0" *) (* STOP_VALUE = "1" *) 
(* NotValidForBitStream *)
module top
   (tx,
    wr,
    din,
    o_alu,
    clock,
    reset);
  output tx;
  input wr;
  input [7:0]din;
  output [7:0]o_alu;
  input clock;
  input reset;

  wire \0 ;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [4:3]current_state;
  wire [0:0]current_state_0;
  wire [7:0]data0;
  wire [7:0]din;
  wire [7:0]din_IBUF;
  wire empty;
  wire myinterface_uart_n_28;
  wire myinterface_uart_n_29;
  wire myinterface_uart_n_30;
  wire myinterface_uart_n_31;
  wire myinterface_uart_n_32;
  wire myinterface_uart_n_6;
  wire myinterface_uart_n_7;
  wire myinterface_uart_n_8;
  wire myinterface_uart_n_9;
  wire [4:4]next_state;
  wire [7:0]o_alu;
  wire [7:0]o_alu_OBUF;
  wire [6:0]o_data_A;
  wire [4:0]o_tx;
  wire read_tx;
  wire reset;
  wire reset_IBUF;
  wire tick;
  wire tx;
  wire tx_OBUF;
  wire tx_done_tick;
  wire wr;
  wire wr_IBUF;

  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  IBUF \din_IBUF[0]_inst 
       (.I(din[0]),
        .O(din_IBUF[0]));
  IBUF \din_IBUF[1]_inst 
       (.I(din[1]),
        .O(din_IBUF[1]));
  IBUF \din_IBUF[2]_inst 
       (.I(din[2]),
        .O(din_IBUF[2]));
  IBUF \din_IBUF[3]_inst 
       (.I(din[3]),
        .O(din_IBUF[3]));
  IBUF \din_IBUF[4]_inst 
       (.I(din[4]),
        .O(din_IBUF[4]));
  IBUF \din_IBUF[5]_inst 
       (.I(din[5]),
        .O(din_IBUF[5]));
  IBUF \din_IBUF[6]_inst 
       (.I(din[6]),
        .O(din_IBUF[6]));
  IBUF \din_IBUF[7]_inst 
       (.I(din[7]),
        .O(din_IBUF[7]));
  alu myAlu
       (.Q(o_data_A),
        .S({myinterface_uart_n_28,myinterface_uart_n_29,myinterface_uart_n_30,myinterface_uart_n_31}),
        .data0(data0),
        .\o_alu_OBUF[0]_inst_i_2 (\0 ),
        .\o_alu_OBUF[4]_inst_i_2 ({myinterface_uart_n_6,myinterface_uart_n_7,myinterface_uart_n_8,myinterface_uart_n_9}));
  BaudRateGenerator myBRG
       (.clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .tick(tick));
  interface_uart myinterface_uart
       (.D(o_tx),
        .Q(\0 ),
        .S({myinterface_uart_n_28,myinterface_uart_n_29,myinterface_uart_n_30,myinterface_uart_n_31}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\count_ticks_reg_reg[3] (current_state_0),
        .\current_state_reg[4]_0 (current_state),
        .\current_state_reg[4]_1 (next_state),
        .data0(data0),
        .empty(empty),
        .empty_reg_0(myinterface_uart_n_32),
        .o_alu_OBUF(o_alu_OBUF),
        .\o_data_A_reg[6]_0 (o_data_A),
        .\o_data_A_reg[7]_0 (din_IBUF),
        .\o_data_B_reg[7]_0 ({myinterface_uart_n_6,myinterface_uart_n_7,myinterface_uart_n_8,myinterface_uart_n_9}),
        .read_tx(read_tx),
        .reset_IBUF(reset_IBUF),
        .tx_done_tick(tx_done_tick),
        .wr_IBUF(wr_IBUF));
  tx_uart mytx_uart
       (.D(o_tx),
        .Q(current_state_0),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\count_ticks_reg_reg[3]_0 (myinterface_uart_n_32),
        .\current_state_reg[4]_0 (current_state),
        .empty(empty),
        .read_tx(read_tx),
        .reset_IBUF(reset_IBUF),
        .tick(tick),
        .tx_OBUF(tx_OBUF),
        .tx_done_tick(tx_done_tick),
        .tx_done_tick_reg_reg_0(next_state));
  OBUF \o_alu_OBUF[0]_inst 
       (.I(o_alu_OBUF[0]),
        .O(o_alu[0]));
  OBUF \o_alu_OBUF[1]_inst 
       (.I(o_alu_OBUF[1]),
        .O(o_alu[1]));
  OBUF \o_alu_OBUF[2]_inst 
       (.I(o_alu_OBUF[2]),
        .O(o_alu[2]));
  OBUF \o_alu_OBUF[3]_inst 
       (.I(o_alu_OBUF[3]),
        .O(o_alu[3]));
  OBUF \o_alu_OBUF[4]_inst 
       (.I(o_alu_OBUF[4]),
        .O(o_alu[4]));
  OBUF \o_alu_OBUF[5]_inst 
       (.I(o_alu_OBUF[5]),
        .O(o_alu[5]));
  OBUF \o_alu_OBUF[6]_inst 
       (.I(o_alu_OBUF[6]),
        .O(o_alu[6]));
  OBUF \o_alu_OBUF[7]_inst 
       (.I(o_alu_OBUF[7]),
        .O(o_alu[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  IBUF wr_IBUF_inst
       (.I(wr),
        .O(wr_IBUF));
endmodule

module tx_uart
   (tx_OBUF,
    read_tx,
    tx_done_tick,
    Q,
    tx_done_tick_reg_reg_0,
    reset_IBUF,
    clock_IBUF_BUFG,
    \current_state_reg[4]_0 ,
    \count_ticks_reg_reg[3]_0 ,
    empty,
    tick,
    D);
  output tx_OBUF;
  output read_tx;
  output tx_done_tick;
  output [0:0]Q;
  output [0:0]tx_done_tick_reg_reg_0;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input [1:0]\current_state_reg[4]_0 ;
  input \count_ticks_reg_reg[3]_0 ;
  input empty;
  input tick;
  input [4:0]D;

  wire [4:0]D;
  wire [0:0]Q;
  wire clock_IBUF_BUFG;
  wire count_data_next;
  wire [2:0]count_data_reg;
  wire \count_data_reg[0]_i_1_n_0 ;
  wire \count_data_reg[1]_i_1_n_0 ;
  wire \count_data_reg[2]_i_1_n_0 ;
  wire count_ticks_next;
  wire [3:0]count_ticks_reg;
  wire \count_ticks_reg[0]_i_1_n_0 ;
  wire \count_ticks_reg[1]_i_1_n_0 ;
  wire \count_ticks_reg[2]_i_1_n_0 ;
  wire \count_ticks_reg[3]_i_2_n_0 ;
  wire \count_ticks_reg[3]_i_3_n_0 ;
  wire \count_ticks_reg[3]_i_4_n_0 ;
  wire \count_ticks_reg_reg[3]_0 ;
  wire [4:1]current_state;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[4]_i_1__0_n_0 ;
  wire \current_state[4]_i_2__0_n_0 ;
  wire [1:0]\current_state_reg[4]_0 ;
  wire din_next;
  wire [4:0]din_reg;
  wire empty;
  wire [3:0]next_state;
  wire \next_state_inferred__3/i__n_0 ;
  wire read_tx;
  wire reset_IBUF;
  wire tick;
  wire tx_OBUF;
  wire tx_done_tick;
  wire tx_done_tick_next;
  wire [0:0]tx_done_tick_reg_reg_0;
  wire tx_next;
  wire tx_reg_i_2_n_0;
  wire tx_reg_i_3_n_0;
  wire tx_reg_i_4_n_0;

  LUT3 #(
    .INIT(8'h38)) 
    \count_data_reg[0]_i_1 
       (.I0(current_state[2]),
        .I1(count_data_next),
        .I2(count_data_reg[0]),
        .O(\count_data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \count_data_reg[1]_i_1 
       (.I0(count_data_reg[0]),
        .I1(current_state[2]),
        .I2(count_data_next),
        .I3(count_data_reg[1]),
        .O(\count_data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
       (.I0(current_state[3]),
        .I1(\current_state[4]_i_2__0_n_0 ),
        .I2(current_state[4]),
        .I3(Q),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(count_data_next));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data_reg[0]_i_1_n_0 ),
        .Q(count_data_reg[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data_reg[1]_i_1_n_0 ),
        .Q(count_data_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data_reg[2]_i_1_n_0 ),
        .Q(count_data_reg[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \count_ticks_reg[0]_i_1 
       (.I0(Q),
        .I1(empty),
        .I2(count_ticks_reg[0]),
        .I3(\count_ticks_reg[3]_i_3_n_0 ),
        .O(\count_ticks_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \count_ticks_reg[1]_i_1 
       (.I0(Q),
        .I1(empty),
        .I2(count_ticks_reg[1]),
        .I3(count_ticks_reg[0]),
        .I4(\count_ticks_reg[3]_i_3_n_0 ),
        .O(\count_ticks_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \count_ticks_reg[2]_i_1 
       (.I0(Q),
        .I1(empty),
        .I2(count_ticks_reg[2]),
        .I3(count_ticks_reg[0]),
        .I4(count_ticks_reg[1]),
        .I5(\count_ticks_reg[3]_i_3_n_0 ),
        .O(\count_ticks_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F1010101F101F10)) 
    \count_ticks_reg[3]_i_1 
       (.I0(empty),
        .I1(\count_ticks_reg[3]_i_3_n_0 ),
        .I2(Q),
        .I3(\count_ticks_reg[3]_i_4_n_0 ),
        .I4(tick),
        .I5(\current_state[4]_i_2__0_n_0 ),
        .O(count_ticks_next));
  LUT6 #(
    .INIT(64'hBEEEEEEEAAAAAAAA)) 
    \count_ticks_reg[3]_i_2 
       (.I0(\count_ticks_reg_reg[3]_0 ),
        .I1(count_ticks_reg[3]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[1]),
        .I4(count_ticks_reg[2]),
        .I5(\count_ticks_reg[3]_i_3_n_0 ),
        .O(\count_ticks_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_ticks_reg[3]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .O(\count_ticks_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \count_ticks_reg[3]_i_4 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .O(\count_ticks_reg[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[0]_i_1_n_0 ),
        .Q(count_ticks_reg[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[1]_i_1_n_0 ),
        .Q(count_ticks_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[2]_i_1_n_0 ),
        .Q(count_ticks_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[3]_i_2_n_0 ),
        .Q(count_ticks_reg[3]),
        .R(reset_IBUF));
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
    .INIT(64'hAAA8AAAA08080808)) 
    \current_state[2]_i_1__0 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[4]_i_2__0_n_0 ),
        .I3(\current_state[3]_i_2_n_0 ),
        .I4(count_data_reg[2]),
        .I5(current_state[2]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'hAA20AA0000200000)) 
    \current_state[3]_i_1__0 
       (.I0(\next_state_inferred__3/i__n_0 ),
        .I1(\current_state[3]_i_2_n_0 ),
        .I2(count_data_reg[2]),
        .I3(\current_state[4]_i_2__0_n_0 ),
        .I4(current_state[2]),
        .I5(current_state[3]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_2 
       (.I0(count_data_reg[0]),
        .I1(count_data_reg[1]),
        .O(\current_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \current_state[4]_i_1__0 
       (.I0(current_state[3]),
        .I1(\current_state[4]_i_2__0_n_0 ),
        .I2(current_state[4]),
        .I3(\next_state_inferred__3/i__n_0 ),
        .O(\current_state[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \current_state[4]_i_2 
       (.I0(tx_done_tick),
        .I1(\current_state_reg[4]_0 [1]),
        .I2(read_tx),
        .I3(\current_state_reg[4]_0 [0]),
        .O(tx_done_tick_reg_reg_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[4]_i_2__0 
       (.I0(count_ticks_reg[0]),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[3]),
        .I3(count_ticks_reg[2]),
        .O(\current_state[4]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[4]_i_1__0_n_0 ),
        .Q(current_state[4]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \din_reg[4]_i_1 
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
       (.C(clock_IBUF_BUFG),
        .CE(din_next),
        .D(D[0]),
        .Q(din_reg[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(din_next),
        .D(D[1]),
        .Q(din_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(din_next),
        .D(D[2]),
        .Q(din_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(din_next),
        .D(D[3]),
        .Q(din_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(din_next),
        .D(D[4]),
        .Q(din_reg[4]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(din_next),
        .Q(read_tx),
        .R(reset_IBUF));
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
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_done_tick_next),
        .Q(tx_done_tick),
        .R(reset_IBUF));
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    tx_reg_i_3
       (.I0(count_data_reg[0]),
        .I1(din_reg[4]),
        .I2(count_data_reg[1]),
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
       (.C(clock_IBUF_BUFG),
        .CE(tx_next),
        .D(tx_reg_i_2_n_0),
        .Q(tx_OBUF),
        .S(reset_IBUF));
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
