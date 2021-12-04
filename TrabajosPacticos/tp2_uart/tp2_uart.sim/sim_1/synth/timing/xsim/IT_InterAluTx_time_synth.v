// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Dec  4 14:02:05 2021
// Host        : LAPTOP-DJ46CPRC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Laudi/vivado_projects/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/IT_InterAluTx_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (data0,
    Q,
    \o_alu_OBUF[0]_inst_i_3 ,
    S,
    \o_alu_OBUF[4]_inst_i_3 );
  output [7:0]data0;
  input [6:0]Q;
  input [0:0]\o_alu_OBUF[0]_inst_i_3 ;
  input [3:0]S;
  input [3:0]\o_alu_OBUF[4]_inst_i_3 ;

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
  wire [0:0]\o_alu_OBUF[0]_inst_i_3 ;
  wire [3:0]\o_alu_OBUF[4]_inst_i_3 ;
  wire [3:3]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\o_alu_OBUF[0]_inst_i_3 }),
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
        .S(\o_alu_OBUF[4]_inst_i_3 ));
endmodule

module interface_uart
   (\o_data_B_reg[7]_0 ,
    Q,
    \o_data_Op_reg[5]_0 ,
    \o_data_A_reg[7]_0 ,
    S,
    o_alu_OBUF,
    \o_tx_reg[4]_0 ,
    \VER_ESTADOS_reg[3]_0 ,
    SR,
    wr_IBUF,
    CLK,
    D,
    data0);
  output [3:0]\o_data_B_reg[7]_0 ;
  output [7:0]Q;
  output [5:0]\o_data_Op_reg[5]_0 ;
  output [7:0]\o_data_A_reg[7]_0 ;
  output [3:0]S;
  output [7:0]o_alu_OBUF;
  output [4:0]\o_tx_reg[4]_0 ;
  output [3:0]\VER_ESTADOS_reg[3]_0 ;
  input [0:0]SR;
  input wr_IBUF;
  input CLK;
  input [7:0]D;
  input [7:0]data0;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [3:0]\VER_ESTADOS_reg[3]_0 ;
  wire [3:0]current_state_reg;
  wire [7:0]data0;
  wire data_A_next__0;
  wire [7:0]data_A_reg;
  wire data_B_next__0;
  wire [7:0]data_B_reg;
  wire data_Op_next__0;
  wire [5:0]data_Op_reg;
  wire next_state__0;
  wire [3:0]next_state__0__0;
  wire [7:0]o_alu_OBUF;
  wire \o_alu_OBUF[0]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[0]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[1]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[1]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[2]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[2]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[3]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[3]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_5_n_0 ;
  wire \o_alu_OBUF[6]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[6]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_5_n_0 ;
  wire [7:0]\o_data_A_reg[7]_0 ;
  wire [3:0]\o_data_B_reg[7]_0 ;
  wire [5:0]\o_data_Op_reg[5]_0 ;
  wire o_tx_next__0;
  wire [4:0]o_tx_reg;
  wire [4:0]\o_tx_reg[4]_0 ;
  wire wr_IBUF;
  wire write;

  FDSE #(
    .INIT(1'b1)) 
    \VER_ESTADOS_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(current_state_reg[0]),
        .Q(\VER_ESTADOS_reg[3]_0 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \VER_ESTADOS_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(current_state_reg[1]),
        .Q(\VER_ESTADOS_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \VER_ESTADOS_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(current_state_reg[2]),
        .Q(\VER_ESTADOS_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \VER_ESTADOS_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(current_state_reg[3]),
        .Q(\VER_ESTADOS_reg[3]_0 [3]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[0]_i_1 
       (.I0(current_state_reg[0]),
        .I1(write),
        .O(next_state__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[1]_i_1 
       (.I0(current_state_reg[0]),
        .I1(write),
        .I2(current_state_reg[1]),
        .O(next_state__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[2]_i_1 
       (.I0(current_state_reg[1]),
        .I1(write),
        .I2(current_state_reg[2]),
        .O(next_state__0__0[2]));
  LUT3 #(
    .INIT(8'hF8)) 
    \current_state[3]_i_1 
       (.I0(write),
        .I1(current_state_reg[2]),
        .I2(current_state_reg[3]),
        .O(next_state__0__0[3]));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[0]),
        .Q(current_state_reg[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[1]),
        .Q(current_state_reg[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[2]),
        .Q(current_state_reg[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:00010,STATE_DATA_OP:00100,STATE_READ_TX:01000,STATE_TX:10000,STATE_DATA_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(CLK),
        .CE(next_state__0),
        .D(next_state__0__0[3]),
        .Q(current_state_reg[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000040)) 
    data_A_next
       (.I0(current_state_reg[1]),
        .I1(write),
        .I2(current_state_reg[0]),
        .I3(current_state_reg[3]),
        .I4(current_state_reg[2]),
        .O(data_A_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[0] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[0]),
        .Q(data_A_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[1] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[1]),
        .Q(data_A_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[2] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[2]),
        .Q(data_A_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[3] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[3]),
        .Q(data_A_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[4] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[4]),
        .Q(data_A_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[5] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[5]),
        .Q(data_A_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[6] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[6]),
        .Q(data_A_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_A_reg_reg[7] 
       (.C(CLK),
        .CE(data_A_next__0),
        .D(D[7]),
        .Q(data_A_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000040)) 
    data_B_next
       (.I0(current_state_reg[0]),
        .I1(write),
        .I2(current_state_reg[1]),
        .I3(current_state_reg[3]),
        .I4(current_state_reg[2]),
        .O(data_B_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[0] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[0]),
        .Q(data_B_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[1] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[1]),
        .Q(data_B_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[2] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[2]),
        .Q(data_B_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[3] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[3]),
        .Q(data_B_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[4] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[4]),
        .Q(data_B_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[5] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[5]),
        .Q(data_B_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[6] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[6]),
        .Q(data_B_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_B_reg_reg[7] 
       (.C(CLK),
        .CE(data_B_next__0),
        .D(D[7]),
        .Q(data_B_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000040)) 
    data_Op_next
       (.I0(current_state_reg[1]),
        .I1(write),
        .I2(current_state_reg[2]),
        .I3(current_state_reg[3]),
        .I4(current_state_reg[0]),
        .O(data_Op_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[0] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(D[0]),
        .Q(data_Op_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[1] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(D[1]),
        .Q(data_Op_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[2] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(D[2]),
        .Q(data_Op_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[3] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(D[3]),
        .Q(data_Op_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[4] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(D[4]),
        .Q(data_Op_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_Op_reg_reg[5] 
       (.C(CLK),
        .CE(data_Op_next__0),
        .D(D[5]),
        .Q(data_Op_reg[5]),
        .R(SR));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(Q[7]),
        .I1(\o_data_A_reg[7]_0 [7]),
        .I2(\o_data_Op_reg[5]_0 [1]),
        .O(\o_data_B_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(Q[6]),
        .I1(\o_data_Op_reg[5]_0 [1]),
        .I2(\o_data_A_reg[7]_0 [6]),
        .O(\o_data_B_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(Q[5]),
        .I1(\o_data_Op_reg[5]_0 [1]),
        .I2(\o_data_A_reg[7]_0 [5]),
        .O(\o_data_B_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(Q[4]),
        .I1(\o_data_Op_reg[5]_0 [1]),
        .I2(\o_data_A_reg[7]_0 [4]),
        .O(\o_data_B_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(Q[3]),
        .I1(\o_data_Op_reg[5]_0 [1]),
        .I2(\o_data_A_reg[7]_0 [3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(Q[2]),
        .I1(\o_data_Op_reg[5]_0 [1]),
        .I2(\o_data_A_reg[7]_0 [2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(Q[1]),
        .I1(\o_data_Op_reg[5]_0 [1]),
        .I2(\o_data_A_reg[7]_0 [1]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(Q[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h0116)) 
    next_state
       (.I0(current_state_reg[0]),
        .I1(current_state_reg[1]),
        .I2(current_state_reg[2]),
        .I3(current_state_reg[3]),
        .O(next_state__0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[0]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_alu_OBUF[0]_inst_i_2_n_0 ),
        .I2(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_alu_OBUF[1]_inst_i_2_n_0 ),
        .I4(\o_alu_OBUF[0]_inst_i_3_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_alu_OBUF[0]_inst_i_2 
       (.I0(\o_data_A_reg[7]_0 [4]),
        .I1(\o_data_A_reg[7]_0 [6]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\o_data_A_reg[7]_0 [0]),
        .I5(\o_data_A_reg[7]_0 [2]),
        .O(\o_alu_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[0]_inst_i_3 
       (.I0(data0[0]),
        .I1(\o_data_A_reg[7]_0 [0]),
        .I2(Q[0]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [2]),
        .I5(\o_data_Op_reg[5]_0 [0]),
        .O(\o_alu_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[1]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_alu_OBUF[1]_inst_i_2_n_0 ),
        .I2(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_alu_OBUF[2]_inst_i_2_n_0 ),
        .I4(\o_alu_OBUF[1]_inst_i_3_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_alu_OBUF[1]_inst_i_2 
       (.I0(\o_data_A_reg[7]_0 [5]),
        .I1(\o_data_A_reg[7]_0 [7]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\o_data_A_reg[7]_0 [1]),
        .I5(\o_data_A_reg[7]_0 [3]),
        .O(\o_alu_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[1]_inst_i_3 
       (.I0(data0[1]),
        .I1(\o_data_A_reg[7]_0 [1]),
        .I2(Q[1]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [2]),
        .I5(\o_data_Op_reg[5]_0 [0]),
        .O(\o_alu_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[2]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_alu_OBUF[2]_inst_i_2_n_0 ),
        .I2(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_alu_OBUF[3]_inst_i_2_n_0 ),
        .I4(\o_alu_OBUF[2]_inst_i_3_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_alu_OBUF[2]_inst_i_2 
       (.I0(\o_data_A_reg[7]_0 [2]),
        .I1(\o_data_A_reg[7]_0 [4]),
        .I2(\o_data_A_reg[7]_0 [6]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\o_alu_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[2]_inst_i_3 
       (.I0(data0[2]),
        .I1(\o_data_A_reg[7]_0 [2]),
        .I2(Q[2]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [2]),
        .I5(\o_data_Op_reg[5]_0 [0]),
        .O(\o_alu_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[3]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_alu_OBUF[3]_inst_i_2_n_0 ),
        .I2(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_alu_OBUF[4]_inst_i_2_n_0 ),
        .I4(\o_alu_OBUF[3]_inst_i_3_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_alu_OBUF[3]_inst_i_2 
       (.I0(\o_data_A_reg[7]_0 [3]),
        .I1(\o_data_A_reg[7]_0 [5]),
        .I2(\o_data_A_reg[7]_0 [7]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\o_alu_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[3]_inst_i_3 
       (.I0(data0[3]),
        .I1(\o_data_A_reg[7]_0 [3]),
        .I2(Q[3]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [2]),
        .I5(\o_data_Op_reg[5]_0 [0]),
        .O(\o_alu_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[4]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_alu_OBUF[4]_inst_i_2_n_0 ),
        .I2(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_alu_OBUF[5]_inst_i_2_n_0 ),
        .I4(\o_alu_OBUF[4]_inst_i_3_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_alu_OBUF[4]_inst_i_2 
       (.I0(\o_data_A_reg[7]_0 [6]),
        .I1(\o_data_A_reg[7]_0 [4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\o_alu_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[4]_inst_i_3 
       (.I0(data0[4]),
        .I1(\o_data_A_reg[7]_0 [4]),
        .I2(Q[4]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [2]),
        .I5(\o_data_Op_reg[5]_0 [0]),
        .O(\o_alu_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[5]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_alu_OBUF[5]_inst_i_2_n_0 ),
        .I2(\o_alu_OBUF[5]_inst_i_3_n_0 ),
        .I3(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I4(\o_alu_OBUF[5]_inst_i_5_n_0 ),
        .I5(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .O(o_alu_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_alu_OBUF[5]_inst_i_2 
       (.I0(\o_data_A_reg[7]_0 [7]),
        .I1(\o_data_A_reg[7]_0 [5]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\o_alu_OBUF[5]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \o_alu_OBUF[5]_inst_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\o_data_A_reg[7]_0 [6]),
        .O(\o_alu_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \o_alu_OBUF[5]_inst_i_4 
       (.I0(\o_data_Op_reg[5]_0 [3]),
        .I1(\o_data_Op_reg[5]_0 [4]),
        .I2(\o_data_Op_reg[5]_0 [2]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I5(Q[0]),
        .O(\o_alu_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[5]_inst_i_5 
       (.I0(data0[5]),
        .I1(\o_data_A_reg[7]_0 [5]),
        .I2(Q[5]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [2]),
        .I5(\o_data_Op_reg[5]_0 [0]),
        .O(\o_alu_OBUF[5]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \o_alu_OBUF[6]_inst_i_1 
       (.I0(\o_alu_OBUF[6]_inst_i_2_n_0 ),
        .I1(\o_alu_OBUF[6]_inst_i_3_n_0 ),
        .I2(\o_data_Op_reg[5]_0 [4]),
        .I3(\o_data_Op_reg[5]_0 [3]),
        .I4(\o_data_Op_reg[5]_0 [5]),
        .O(o_alu_OBUF[6]));
  LUT6 #(
    .INIT(64'h000000F800000088)) 
    \o_alu_OBUF[6]_inst_i_2 
       (.I0(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I1(\o_data_A_reg[7]_0 [7]),
        .I2(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\o_data_A_reg[7]_0 [6]),
        .O(\o_alu_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[6]_inst_i_3 
       (.I0(data0[6]),
        .I1(\o_data_A_reg[7]_0 [6]),
        .I2(Q[6]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [2]),
        .I5(\o_data_Op_reg[5]_0 [0]),
        .O(\o_alu_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \o_alu_OBUF[7]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_2_n_0 ),
        .I1(\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .I2(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\o_data_A_reg[7]_0 [7]),
        .O(o_alu_OBUF[7]));
  LUT6 #(
    .INIT(64'h03FC3CC00000AAAA)) 
    \o_alu_OBUF[7]_inst_i_2 
       (.I0(data0[7]),
        .I1(Q[7]),
        .I2(\o_data_A_reg[7]_0 [7]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_data_Op_reg[5]_0 [0]),
        .I5(\o_data_Op_reg[5]_0 [2]),
        .O(\o_alu_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \o_alu_OBUF[7]_inst_i_3 
       (.I0(\o_data_Op_reg[5]_0 [4]),
        .I1(\o_data_Op_reg[5]_0 [3]),
        .I2(\o_data_Op_reg[5]_0 [5]),
        .O(\o_alu_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \o_alu_OBUF[7]_inst_i_4 
       (.I0(\o_data_Op_reg[5]_0 [3]),
        .I1(\o_data_Op_reg[5]_0 [4]),
        .I2(\o_data_Op_reg[5]_0 [2]),
        .I3(\o_data_Op_reg[5]_0 [1]),
        .I4(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I5(Q[0]),
        .O(\o_alu_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_alu_OBUF[7]_inst_i_5 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\o_data_Op_reg[5]_0 [5]),
        .O(\o_alu_OBUF[7]_inst_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[0]),
        .Q(\o_data_A_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[1]),
        .Q(\o_data_A_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[2]),
        .Q(\o_data_A_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[3]),
        .Q(\o_data_A_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[4]),
        .Q(\o_data_A_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[5]),
        .Q(\o_data_A_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[6]),
        .Q(\o_data_A_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_A_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_A_reg[7]),
        .Q(\o_data_A_reg[7]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_B_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_B_reg[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[0]),
        .Q(\o_data_Op_reg[5]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[1]),
        .Q(\o_data_Op_reg[5]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[2]),
        .Q(\o_data_Op_reg[5]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[3]),
        .Q(\o_data_Op_reg[5]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[4]),
        .Q(\o_data_Op_reg[5]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_Op_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_Op_reg[5]),
        .Q(\o_data_Op_reg[5]_0 [5]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0002)) 
    o_tx_next
       (.I0(current_state_reg[3]),
        .I1(current_state_reg[2]),
        .I2(current_state_reg[1]),
        .I3(current_state_reg[0]),
        .O(o_tx_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tx_reg[0]),
        .Q(\o_tx_reg[4]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tx_reg[1]),
        .Q(\o_tx_reg[4]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tx_reg[2]),
        .Q(\o_tx_reg[4]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tx_reg[3]),
        .Q(\o_tx_reg[4]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tx_reg[4]),
        .Q(\o_tx_reg[4]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[0] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(o_alu_OBUF[0]),
        .Q(o_tx_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[1] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(o_alu_OBUF[1]),
        .Q(o_tx_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[2] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(o_alu_OBUF[2]),
        .Q(o_tx_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[3] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(o_alu_OBUF[3]),
        .Q(o_tx_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tx_reg_reg[4] 
       (.C(CLK),
        .CE(o_tx_next__0),
        .D(o_alu_OBUF[4]),
        .Q(o_tx_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    write_reg
       (.C(CLK),
        .CE(1'b1),
        .D(wr_IBUF),
        .Q(write),
        .R(SR));
endmodule

(* DATA_TICKS = "15" *) (* NB_DATA = "8" *) (* NB_STATE = "5" *) 
(* START_VALUE = "0" *) (* STOP_VALUE = "1" *) 
(* NotValidForBitStream *)
module top
   (salida_operacion,
    salida_A,
    salida_B,
    VER_ESTADOS,
    wr,
    din,
    o_alu,
    clock,
    reset,
    o_tx);
  output [5:0]salida_operacion;
  output [7:0]salida_A;
  output [7:0]salida_B;
  output [4:0]VER_ESTADOS;
  input wr;
  input [7:0]din;
  output [7:0]o_alu;
  input clock;
  input reset;
  output [7:0]o_tx;

  wire [4:0]VER_ESTADOS;
  wire [3:0]VER_ESTADOS_OBUF;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]data0;
  wire [7:0]din;
  wire [7:0]din_IBUF;
  wire myinterface_uart_n_0;
  wire myinterface_uart_n_1;
  wire myinterface_uart_n_2;
  wire myinterface_uart_n_26;
  wire myinterface_uart_n_27;
  wire myinterface_uart_n_28;
  wire myinterface_uart_n_29;
  wire myinterface_uart_n_3;
  wire [7:0]o_alu;
  wire [7:0]o_alu_OBUF;
  wire [7:0]o_tx;
  wire [4:0]o_tx_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [7:0]salida_A;
  wire [7:0]salida_A_OBUF;
  wire [7:0]salida_B;
  wire [7:0]salida_B_OBUF;
  wire [5:0]salida_operacion;
  wire [5:0]salida_operacion_OBUF;
  wire wr;
  wire wr_IBUF;

initial begin
 $sdf_annotate("IT_InterAluTx_time_synth.sdf",,,,"tool_control");
end
  OBUF \VER_ESTADOS_OBUF[0]_inst 
       (.I(VER_ESTADOS_OBUF[0]),
        .O(VER_ESTADOS[0]));
  OBUF \VER_ESTADOS_OBUF[1]_inst 
       (.I(VER_ESTADOS_OBUF[1]),
        .O(VER_ESTADOS[1]));
  OBUF \VER_ESTADOS_OBUF[2]_inst 
       (.I(VER_ESTADOS_OBUF[2]),
        .O(VER_ESTADOS[2]));
  OBUF \VER_ESTADOS_OBUF[3]_inst 
       (.I(VER_ESTADOS_OBUF[3]),
        .O(VER_ESTADOS[3]));
  OBUF \VER_ESTADOS_OBUF[4]_inst 
       (.I(1'b0),
        .O(VER_ESTADOS[4]));
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
       (.Q(salida_A_OBUF[6:0]),
        .S({myinterface_uart_n_26,myinterface_uart_n_27,myinterface_uart_n_28,myinterface_uart_n_29}),
        .data0(data0),
        .\o_alu_OBUF[0]_inst_i_3 (salida_operacion_OBUF[1]),
        .\o_alu_OBUF[4]_inst_i_3 ({myinterface_uart_n_0,myinterface_uart_n_1,myinterface_uart_n_2,myinterface_uart_n_3}));
  interface_uart myinterface_uart
       (.CLK(clock_IBUF_BUFG),
        .D(din_IBUF),
        .Q(salida_B_OBUF),
        .S({myinterface_uart_n_26,myinterface_uart_n_27,myinterface_uart_n_28,myinterface_uart_n_29}),
        .SR(reset_IBUF),
        .\VER_ESTADOS_reg[3]_0 (VER_ESTADOS_OBUF),
        .data0(data0),
        .o_alu_OBUF(o_alu_OBUF),
        .\o_data_A_reg[7]_0 (salida_A_OBUF),
        .\o_data_B_reg[7]_0 ({myinterface_uart_n_0,myinterface_uart_n_1,myinterface_uart_n_2,myinterface_uart_n_3}),
        .\o_data_Op_reg[5]_0 (salida_operacion_OBUF),
        .\o_tx_reg[4]_0 (o_tx_OBUF),
        .wr_IBUF(wr_IBUF));
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
  OBUF \o_tx_OBUF[0]_inst 
       (.I(o_tx_OBUF[0]),
        .O(o_tx[0]));
  OBUF \o_tx_OBUF[1]_inst 
       (.I(o_tx_OBUF[1]),
        .O(o_tx[1]));
  OBUF \o_tx_OBUF[2]_inst 
       (.I(o_tx_OBUF[2]),
        .O(o_tx[2]));
  OBUF \o_tx_OBUF[3]_inst 
       (.I(o_tx_OBUF[3]),
        .O(o_tx[3]));
  OBUF \o_tx_OBUF[4]_inst 
       (.I(o_tx_OBUF[4]),
        .O(o_tx[4]));
  OBUF \o_tx_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_tx[5]));
  OBUF \o_tx_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_tx[6]));
  OBUF \o_tx_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_tx[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \salida_A_OBUF[0]_inst 
       (.I(salida_A_OBUF[0]),
        .O(salida_A[0]));
  OBUF \salida_A_OBUF[1]_inst 
       (.I(salida_A_OBUF[1]),
        .O(salida_A[1]));
  OBUF \salida_A_OBUF[2]_inst 
       (.I(salida_A_OBUF[2]),
        .O(salida_A[2]));
  OBUF \salida_A_OBUF[3]_inst 
       (.I(salida_A_OBUF[3]),
        .O(salida_A[3]));
  OBUF \salida_A_OBUF[4]_inst 
       (.I(salida_A_OBUF[4]),
        .O(salida_A[4]));
  OBUF \salida_A_OBUF[5]_inst 
       (.I(salida_A_OBUF[5]),
        .O(salida_A[5]));
  OBUF \salida_A_OBUF[6]_inst 
       (.I(salida_A_OBUF[6]),
        .O(salida_A[6]));
  OBUF \salida_A_OBUF[7]_inst 
       (.I(salida_A_OBUF[7]),
        .O(salida_A[7]));
  OBUF \salida_B_OBUF[0]_inst 
       (.I(salida_B_OBUF[0]),
        .O(salida_B[0]));
  OBUF \salida_B_OBUF[1]_inst 
       (.I(salida_B_OBUF[1]),
        .O(salida_B[1]));
  OBUF \salida_B_OBUF[2]_inst 
       (.I(salida_B_OBUF[2]),
        .O(salida_B[2]));
  OBUF \salida_B_OBUF[3]_inst 
       (.I(salida_B_OBUF[3]),
        .O(salida_B[3]));
  OBUF \salida_B_OBUF[4]_inst 
       (.I(salida_B_OBUF[4]),
        .O(salida_B[4]));
  OBUF \salida_B_OBUF[5]_inst 
       (.I(salida_B_OBUF[5]),
        .O(salida_B[5]));
  OBUF \salida_B_OBUF[6]_inst 
       (.I(salida_B_OBUF[6]),
        .O(salida_B[6]));
  OBUF \salida_B_OBUF[7]_inst 
       (.I(salida_B_OBUF[7]),
        .O(salida_B[7]));
  OBUF \salida_operacion_OBUF[0]_inst 
       (.I(salida_operacion_OBUF[0]),
        .O(salida_operacion[0]));
  OBUF \salida_operacion_OBUF[1]_inst 
       (.I(salida_operacion_OBUF[1]),
        .O(salida_operacion[1]));
  OBUF \salida_operacion_OBUF[2]_inst 
       (.I(salida_operacion_OBUF[2]),
        .O(salida_operacion[2]));
  OBUF \salida_operacion_OBUF[3]_inst 
       (.I(salida_operacion_OBUF[3]),
        .O(salida_operacion[3]));
  OBUF \salida_operacion_OBUF[4]_inst 
       (.I(salida_operacion_OBUF[4]),
        .O(salida_operacion[4]));
  OBUF \salida_operacion_OBUF[5]_inst 
       (.I(salida_operacion_OBUF[5]),
        .O(salida_operacion[5]));
  IBUF wr_IBUF_inst
       (.I(wr),
        .O(wr_IBUF));
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
