// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 25 17:03:51 2021
// Host        : DESKTOP-05TNCFU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/CR/Desktop/arqui/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/testSystem_time_synth.v
// Design      : tx_uart
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* DATA_TICKS = "15" *) (* NB_STATE = "5" *) (* N_DATA = "8" *) 
(* START_VALUE = "0" *) (* STATE_DATA = "5'b00100" *) (* STATE_IDLE = "5'b00001" *) 
(* STATE_PAR = "5'b01000" *) (* STATE_START = "5'b00010" *) (* STATE_STOP = "5'b10000" *) 
(* STOP_VALUE = "1" *) 
(* NotValidForBitStream *)
module tx_uart
   (tx,
    din,
    tx_start,
    s_tick,
    tx_done_tick,
    clock);
  output tx;
  input [7:0]din;
  input tx_start;
  input s_tick;
  input tx_done_tick;
  input clock;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [2:0]count_data_reg;
  wire \count_data_reg[0]_i_1_n_0 ;
  wire \count_data_reg[0]_i_2_n_0 ;
  wire \count_data_reg[1]_i_1_n_0 ;
  wire \count_data_reg[2]_i_1_n_0 ;
  wire \count_data_reg[2]_i_2_n_0 ;
  wire \count_data_reg[2]_i_3_n_0 ;
  wire count_ticks_next;
  wire [3:0]count_ticks_reg;
  wire \count_ticks_reg[0]_i_1_n_0 ;
  wire \count_ticks_reg[1]_i_1_n_0 ;
  wire \count_ticks_reg[2]_i_1_n_0 ;
  wire \count_ticks_reg[3]_i_2_n_0 ;
  wire \count_ticks_reg[3]_i_3_n_0 ;
  wire \count_ticks_reg[3]_i_4_n_0 ;
  wire [4:0]current_state;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[3]_i_3_n_0 ;
  wire \current_state[4]_i_1_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state[4]_i_3_n_0 ;
  wire [7:0]din;
  wire [7:0]din_IBUF;
  wire [7:0]din_reg;
  wire \din_reg[7]_i_1_n_0 ;
  wire [3:0]next_state;
  wire s_tick;
  wire s_tick_IBUF;
  wire tx;
  wire tx_OBUF;
  wire tx_next;
  wire tx_reg_i_1_n_0;
  wire tx_reg_i_3_n_0;
  wire tx_reg_i_4_n_0;
  wire tx_start;
  wire tx_start_IBUF;

initial begin
 $sdf_annotate("testSystem_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFEB00000004)) 
    \count_data_reg[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[4]),
        .I4(\count_data_reg[0]_i_2_n_0 ),
        .I5(count_data_reg[0]),
        .O(\count_data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \count_data_reg[0]_i_2 
       (.I0(current_state[3]),
        .I1(count_ticks_reg[2]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[1]),
        .I4(count_ticks_reg[3]),
        .O(\count_data_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4F00000080)) 
    \count_data_reg[1]_i_1 
       (.I0(count_data_reg[0]),
        .I1(current_state[2]),
        .I2(\count_data_reg[2]_i_3_n_0 ),
        .I3(\current_state[4]_i_2_n_0 ),
        .I4(current_state[3]),
        .I5(count_data_reg[1]),
        .O(\count_data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4F00000080)) 
    \count_data_reg[2]_i_1 
       (.I0(\count_data_reg[2]_i_2_n_0 ),
        .I1(current_state[2]),
        .I2(\count_data_reg[2]_i_3_n_0 ),
        .I3(\current_state[4]_i_2_n_0 ),
        .I4(current_state[3]),
        .I5(count_data_reg[2]),
        .O(\count_data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_data_reg[2]_i_2 
       (.I0(count_data_reg[0]),
        .I1(count_data_reg[1]),
        .O(\count_data_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \count_data_reg[2]_i_3 
       (.I0(current_state[4]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .O(\count_data_reg[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data_reg[0]_i_1_n_0 ),
        .Q(count_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data_reg[1]_i_1_n_0 ),
        .Q(count_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data_reg[2]_i_1_n_0 ),
        .Q(count_data_reg[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ticks_reg[0]_i_1 
       (.I0(count_ticks_reg[0]),
        .I1(tx_start_IBUF),
        .I2(current_state[0]),
        .O(\count_ticks_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \count_ticks_reg[1]_i_1 
       (.I0(tx_start_IBUF),
        .I1(current_state[0]),
        .I2(count_ticks_reg[1]),
        .I3(count_ticks_reg[0]),
        .O(\count_ticks_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \count_ticks_reg[2]_i_1 
       (.I0(tx_start_IBUF),
        .I1(current_state[0]),
        .I2(count_ticks_reg[2]),
        .I3(count_ticks_reg[1]),
        .I4(count_ticks_reg[0]),
        .O(\count_ticks_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F1010101F101F10)) 
    \count_ticks_reg[3]_i_1 
       (.I0(tx_start_IBUF),
        .I1(\count_ticks_reg[3]_i_3_n_0 ),
        .I2(current_state[0]),
        .I3(\count_ticks_reg[3]_i_4_n_0 ),
        .I4(s_tick_IBUF),
        .I5(\current_state[4]_i_2_n_0 ),
        .O(count_ticks_next));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \count_ticks_reg[3]_i_2 
       (.I0(tx_start_IBUF),
        .I1(current_state[0]),
        .I2(count_ticks_reg[3]),
        .I3(count_ticks_reg[1]),
        .I4(count_ticks_reg[0]),
        .I5(count_ticks_reg[2]),
        .O(\count_ticks_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_ticks_reg[3]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .O(\count_ticks_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[1]_i_1_n_0 ),
        .Q(count_ticks_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[2]_i_1_n_0 ),
        .Q(count_ticks_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_ticks_reg_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(count_ticks_next),
        .D(\count_ticks_reg[3]_i_2_n_0 ),
        .Q(count_ticks_reg[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF4F4F4F)) 
    \current_state[0]_i_1 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(current_state[4]),
        .I2(\current_state[4]_i_3_n_0 ),
        .I3(tx_start_IBUF),
        .I4(current_state[0]),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \current_state[1]_i_1 
       (.I0(\current_state[4]_i_3_n_0 ),
        .I1(current_state[0]),
        .I2(tx_start_IBUF),
        .I3(current_state[1]),
        .I4(\current_state[4]_i_2_n_0 ),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hAA08AAAA08080808)) 
    \current_state[2]_i_1 
       (.I0(\current_state[4]_i_3_n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[4]_i_2_n_0 ),
        .I3(\current_state[3]_i_2_n_0 ),
        .I4(\current_state[3]_i_3_n_0 ),
        .I5(current_state[2]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'hAAAA200020002000)) 
    \current_state[3]_i_1 
       (.I0(\current_state[4]_i_3_n_0 ),
        .I1(\current_state[3]_i_2_n_0 ),
        .I2(\current_state[3]_i_3_n_0 ),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(\current_state[4]_i_2_n_0 ),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \current_state[3]_i_2 
       (.I0(count_ticks_reg[0]),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[2]),
        .O(\current_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \current_state[3]_i_3 
       (.I0(count_data_reg[1]),
        .I1(count_data_reg[0]),
        .I2(count_data_reg[2]),
        .I3(count_ticks_reg[3]),
        .O(\current_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \current_state[4]_i_1 
       (.I0(current_state[3]),
        .I1(\current_state[4]_i_2_n_0 ),
        .I2(current_state[4]),
        .I3(\current_state[4]_i_3_n_0 ),
        .O(\current_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[4]_i_2 
       (.I0(count_ticks_reg[3]),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[2]),
        .O(\current_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \current_state[4]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[4]),
        .O(\current_state[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_START:00010,STATE_DATA:00100,STATE_PAR:01000,STATE_STOP:10000,STATE_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[4]_i_1_n_0 ),
        .Q(current_state[4]),
        .R(1'b0));
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
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \din_reg[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .I5(tx_start_IBUF),
        .O(\din_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[0]),
        .Q(din_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[1]),
        .Q(din_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[2]),
        .Q(din_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[3]),
        .Q(din_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[4]),
        .Q(din_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[5]),
        .Q(din_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[6]),
        .Q(din_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\din_reg[7]_i_1_n_0 ),
        .D(din_IBUF[7]),
        .Q(din_reg[7]),
        .R(1'b0));
  IBUF s_tick_IBUF_inst
       (.I(s_tick),
        .O(s_tick_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  LUT5 #(
    .INIT(32'h00010116)) 
    tx_reg_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(current_state[3]),
        .O(tx_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000DFD5)) 
    tx_reg_i_2
       (.I0(current_state[2]),
        .I1(tx_reg_i_3_n_0),
        .I2(count_data_reg[2]),
        .I3(tx_reg_i_4_n_0),
        .I4(current_state[3]),
        .I5(current_state[1]),
        .O(tx_next));
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
  FDRE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(clock_IBUF_BUFG),
        .CE(tx_reg_i_1_n_0),
        .D(tx_next),
        .Q(tx_OBUF),
        .R(1'b0));
  IBUF tx_start_IBUF_inst
       (.I(tx_start),
        .O(tx_start_IBUF));
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
