// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 25 14:04:54 2021
// Host        : DESKTOP-05TNCFU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/CR/Desktop/arqui/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/testSystem_time_synth.v
// Design      : interface_uart
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NB_DATA = "8" *) (* NB_STATE = "4" *) (* STATE_DATA_A = "4'b0001" *) 
(* STATE_DATA_B = "4'b0010" *) (* STATE_DATA_OP = "4'b0100" *) (* STATE_TX = "4'b1000" *) 
(* NotValidForBitStream *)
module interface_uart
   (wr,
    rd,
    in_rx,
    in_alu,
    o_data_A,
    o_data_B,
    o_data_Op,
    o_tx,
    empty,
    CLOCK);
  input wr;
  input rd;
  input [7:0]in_rx;
  input [7:0]in_alu;
  output [7:0]o_data_A;
  output [7:0]o_data_B;
  output [7:0]o_data_Op;
  output [7:0]o_tx;
  output empty;
  input CLOCK;

  wire CLOCK;
  wire CLOCK_IBUF;
  wire CLOCK_IBUF_BUFG;
  wire \DA_reg[7]_i_1_n_0 ;
  wire DB_reg_next;
  wire [3:0]current_state;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[3]_i_1_n_0 ;
  wire \current_state[3]_i_4_n_0 ;
  wire \current_state[3]_i_5_n_0 ;
  wire \current_state[3]_i_6_n_0 ;
  wire empty;
  wire empty_OBUF;
  wire empty_reg_i_1_n_0;
  wire [7:0]in_alu;
  wire [7:0]in_alu_IBUF;
  wire \in_alu_reg_reg[7]_i_1_n_0 ;
  wire [7:0]in_rx;
  wire [7:0]in_rx_IBUF;
  wire [3:0]next_state;
  wire next_state1;
  wire next_state11_out;
  wire [7:0]o_data_A;
  wire [7:0]o_data_A_OBUF;
  wire [7:0]o_data_B;
  wire [7:0]o_data_B_OBUF;
  wire [7:0]o_data_Op;
  wire [5:0]o_data_Op_OBUF;
  wire [7:0]o_tx;
  wire [7:0]o_tx_OBUF;
  wire rd;
  wire rd_IBUF;
  wire wr;
  wire wr_IBUF;

initial begin
 $sdf_annotate("testSystem_time_synth.sdf",,,,"tool_control");
end
  BUFG CLOCK_IBUF_BUFG_inst
       (.I(CLOCK_IBUF),
        .O(CLOCK_IBUF_BUFG));
  IBUF CLOCK_IBUF_inst
       (.I(CLOCK),
        .O(CLOCK_IBUF));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DA_reg[7]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(wr_IBUF),
        .I3(current_state[3]),
        .I4(current_state[1]),
        .O(\DA_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[0] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[0]),
        .Q(o_data_A_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[1] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[1]),
        .Q(o_data_A_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[2] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[2]),
        .Q(o_data_A_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[3] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[3]),
        .Q(o_data_A_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[4] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[4]),
        .Q(o_data_A_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[5] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[5]),
        .Q(o_data_A_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[6] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[6]),
        .Q(o_data_A_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[7] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\DA_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[7]),
        .Q(o_data_A_OBUF[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DB_reg[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(next_state11_out),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .O(DB_reg_next));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[0] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[0]),
        .Q(o_data_B_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[1] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[1]),
        .Q(o_data_B_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[2] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[2]),
        .Q(o_data_B_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[3] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[3]),
        .Q(o_data_B_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[4] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[4]),
        .Q(o_data_B_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[5] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[5]),
        .Q(o_data_B_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[6] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[6]),
        .Q(o_data_B_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[7] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(DB_reg_next),
        .D(in_rx_IBUF[7]),
        .Q(o_data_B_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[0] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\in_alu_reg_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[0]),
        .Q(o_data_Op_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[1] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\in_alu_reg_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[1]),
        .Q(o_data_Op_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[2] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\in_alu_reg_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[2]),
        .Q(o_data_Op_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[3] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\in_alu_reg_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[3]),
        .Q(o_data_Op_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[4] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\in_alu_reg_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[4]),
        .Q(o_data_Op_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[5] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\in_alu_reg_reg[7]_i_1_n_0 ),
        .D(in_rx_IBUF[5]),
        .Q(o_data_Op_OBUF[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    \current_state[0]_i_1 
       (.I0(wr_IBUF),
        .I1(current_state[0]),
        .I2(rd_IBUF),
        .I3(current_state[3]),
        .O(next_state[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \current_state[1]_i_1 
       (.I0(wr_IBUF),
        .I1(current_state[0]),
        .I2(next_state11_out),
        .I3(current_state[1]),
        .O(next_state[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \current_state[2]_i_1 
       (.I0(next_state11_out),
        .I1(current_state[1]),
        .I2(next_state1),
        .I3(current_state[2]),
        .O(next_state[2]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \current_state[2]_i_2 
       (.I0(wr_IBUF),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(\current_state[2]_i_5_n_0 ),
        .O(next_state11_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \current_state[2]_i_3 
       (.I0(o_data_A_OBUF[0]),
        .I1(in_rx_IBUF[0]),
        .I2(in_rx_IBUF[2]),
        .I3(o_data_A_OBUF[2]),
        .I4(in_rx_IBUF[1]),
        .I5(o_data_A_OBUF[1]),
        .O(\current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \current_state[2]_i_4 
       (.I0(o_data_A_OBUF[3]),
        .I1(in_rx_IBUF[3]),
        .I2(in_rx_IBUF[5]),
        .I3(o_data_A_OBUF[5]),
        .I4(in_rx_IBUF[4]),
        .I5(o_data_A_OBUF[4]),
        .O(\current_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \current_state[2]_i_5 
       (.I0(o_data_A_OBUF[6]),
        .I1(in_rx_IBUF[6]),
        .I2(o_data_A_OBUF[7]),
        .I3(in_rx_IBUF[7]),
        .O(\current_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0116)) 
    \current_state[3]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .O(\current_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \current_state[3]_i_2 
       (.I0(next_state1),
        .I1(current_state[2]),
        .I2(rd_IBUF),
        .I3(current_state[3]),
        .O(next_state[3]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \current_state[3]_i_3 
       (.I0(wr_IBUF),
        .I1(\current_state[3]_i_4_n_0 ),
        .I2(\current_state[3]_i_5_n_0 ),
        .I3(\current_state[3]_i_6_n_0 ),
        .O(next_state1));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \current_state[3]_i_4 
       (.I0(o_data_B_OBUF[0]),
        .I1(in_rx_IBUF[0]),
        .I2(in_rx_IBUF[2]),
        .I3(o_data_B_OBUF[2]),
        .I4(in_rx_IBUF[1]),
        .I5(o_data_B_OBUF[1]),
        .O(\current_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \current_state[3]_i_5 
       (.I0(o_data_B_OBUF[3]),
        .I1(in_rx_IBUF[3]),
        .I2(in_rx_IBUF[5]),
        .I3(o_data_B_OBUF[5]),
        .I4(in_rx_IBUF[4]),
        .I5(o_data_B_OBUF[4]),
        .O(\current_state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \current_state[3]_i_6 
       (.I0(o_data_B_OBUF[6]),
        .I1(in_rx_IBUF[6]),
        .I2(o_data_B_OBUF[7]),
        .I3(in_rx_IBUF[7]),
        .O(\current_state[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:0010,STATE_DATA_OP:0100,STATE_TX:1000,STATE_DATA_A:0001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:0010,STATE_DATA_OP:0100,STATE_TX:1000,STATE_DATA_A:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:0010,STATE_DATA_OP:0100,STATE_TX:1000,STATE_DATA_A:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_DATA_B:0010,STATE_DATA_OP:0100,STATE_TX:1000,STATE_DATA_A:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(1'b0));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  LUT4 #(
    .INIT(16'h0010)) 
    empty_reg_i_1
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .O(empty_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    empty_reg_reg
       (.C(CLOCK_IBUF_BUFG),
        .CE(empty_reg_i_1_n_0),
        .D(rd_IBUF),
        .Q(empty_OBUF),
        .R(1'b0));
  IBUF \in_alu_IBUF[0]_inst 
       (.I(in_alu[0]),
        .O(in_alu_IBUF[0]));
  IBUF \in_alu_IBUF[1]_inst 
       (.I(in_alu[1]),
        .O(in_alu_IBUF[1]));
  IBUF \in_alu_IBUF[2]_inst 
       (.I(in_alu[2]),
        .O(in_alu_IBUF[2]));
  IBUF \in_alu_IBUF[3]_inst 
       (.I(in_alu[3]),
        .O(in_alu_IBUF[3]));
  IBUF \in_alu_IBUF[4]_inst 
       (.I(in_alu[4]),
        .O(in_alu_IBUF[4]));
  IBUF \in_alu_IBUF[5]_inst 
       (.I(in_alu[5]),
        .O(in_alu_IBUF[5]));
  IBUF \in_alu_IBUF[6]_inst 
       (.I(in_alu[6]),
        .O(in_alu_IBUF[6]));
  IBUF \in_alu_IBUF[7]_inst 
       (.I(in_alu[7]),
        .O(in_alu_IBUF[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[0] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[0]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[1] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[1]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[2] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[2]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[3] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[3]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[4] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[4]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[5] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[5]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[6] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[6]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \in_alu_reg_reg[7] 
       (.CLR(1'b0),
        .D(in_alu_IBUF[7]),
        .G(\in_alu_reg_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(o_tx_OBUF[7]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \in_alu_reg_reg[7]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(next_state1),
        .I3(current_state[3]),
        .I4(current_state[1]),
        .O(\in_alu_reg_reg[7]_i_1_n_0 ));
  IBUF \in_rx_IBUF[0]_inst 
       (.I(in_rx[0]),
        .O(in_rx_IBUF[0]));
  IBUF \in_rx_IBUF[1]_inst 
       (.I(in_rx[1]),
        .O(in_rx_IBUF[1]));
  IBUF \in_rx_IBUF[2]_inst 
       (.I(in_rx[2]),
        .O(in_rx_IBUF[2]));
  IBUF \in_rx_IBUF[3]_inst 
       (.I(in_rx[3]),
        .O(in_rx_IBUF[3]));
  IBUF \in_rx_IBUF[4]_inst 
       (.I(in_rx[4]),
        .O(in_rx_IBUF[4]));
  IBUF \in_rx_IBUF[5]_inst 
       (.I(in_rx[5]),
        .O(in_rx_IBUF[5]));
  IBUF \in_rx_IBUF[6]_inst 
       (.I(in_rx[6]),
        .O(in_rx_IBUF[6]));
  IBUF \in_rx_IBUF[7]_inst 
       (.I(in_rx[7]),
        .O(in_rx_IBUF[7]));
  OBUF \o_data_A_OBUF[0]_inst 
       (.I(o_data_A_OBUF[0]),
        .O(o_data_A[0]));
  OBUF \o_data_A_OBUF[1]_inst 
       (.I(o_data_A_OBUF[1]),
        .O(o_data_A[1]));
  OBUF \o_data_A_OBUF[2]_inst 
       (.I(o_data_A_OBUF[2]),
        .O(o_data_A[2]));
  OBUF \o_data_A_OBUF[3]_inst 
       (.I(o_data_A_OBUF[3]),
        .O(o_data_A[3]));
  OBUF \o_data_A_OBUF[4]_inst 
       (.I(o_data_A_OBUF[4]),
        .O(o_data_A[4]));
  OBUF \o_data_A_OBUF[5]_inst 
       (.I(o_data_A_OBUF[5]),
        .O(o_data_A[5]));
  OBUF \o_data_A_OBUF[6]_inst 
       (.I(o_data_A_OBUF[6]),
        .O(o_data_A[6]));
  OBUF \o_data_A_OBUF[7]_inst 
       (.I(o_data_A_OBUF[7]),
        .O(o_data_A[7]));
  OBUF \o_data_B_OBUF[0]_inst 
       (.I(o_data_B_OBUF[0]),
        .O(o_data_B[0]));
  OBUF \o_data_B_OBUF[1]_inst 
       (.I(o_data_B_OBUF[1]),
        .O(o_data_B[1]));
  OBUF \o_data_B_OBUF[2]_inst 
       (.I(o_data_B_OBUF[2]),
        .O(o_data_B[2]));
  OBUF \o_data_B_OBUF[3]_inst 
       (.I(o_data_B_OBUF[3]),
        .O(o_data_B[3]));
  OBUF \o_data_B_OBUF[4]_inst 
       (.I(o_data_B_OBUF[4]),
        .O(o_data_B[4]));
  OBUF \o_data_B_OBUF[5]_inst 
       (.I(o_data_B_OBUF[5]),
        .O(o_data_B[5]));
  OBUF \o_data_B_OBUF[6]_inst 
       (.I(o_data_B_OBUF[6]),
        .O(o_data_B[6]));
  OBUF \o_data_B_OBUF[7]_inst 
       (.I(o_data_B_OBUF[7]),
        .O(o_data_B[7]));
  OBUF \o_data_Op_OBUF[0]_inst 
       (.I(o_data_Op_OBUF[0]),
        .O(o_data_Op[0]));
  OBUF \o_data_Op_OBUF[1]_inst 
       (.I(o_data_Op_OBUF[1]),
        .O(o_data_Op[1]));
  OBUF \o_data_Op_OBUF[2]_inst 
       (.I(o_data_Op_OBUF[2]),
        .O(o_data_Op[2]));
  OBUF \o_data_Op_OBUF[3]_inst 
       (.I(o_data_Op_OBUF[3]),
        .O(o_data_Op[3]));
  OBUF \o_data_Op_OBUF[4]_inst 
       (.I(o_data_Op_OBUF[4]),
        .O(o_data_Op[4]));
  OBUF \o_data_Op_OBUF[5]_inst 
       (.I(o_data_Op_OBUF[5]),
        .O(o_data_Op[5]));
  OBUF \o_data_Op_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_data_Op[6]));
  OBUF \o_data_Op_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_data_Op[7]));
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
       (.I(o_tx_OBUF[5]),
        .O(o_tx[5]));
  OBUF \o_tx_OBUF[6]_inst 
       (.I(o_tx_OBUF[6]),
        .O(o_tx[6]));
  OBUF \o_tx_OBUF[7]_inst 
       (.I(o_tx_OBUF[7]),
        .O(o_tx[7]));
  IBUF rd_IBUF_inst
       (.I(rd),
        .O(rd_IBUF));
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
