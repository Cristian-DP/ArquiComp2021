// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 24 17:17:29 2021
// Host        : LAPTOP-DJ46CPRC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Laudi/vivado_projects/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/testSystem_time_synth.v
// Design      : rx_uart
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* DATA_TICKS = "15" *) (* NB_STATE = "5" *) (* N_DATA = "8" *) 
(* STARTS_TICKS = "8" *) (* START_VALUE = "0" *) (* STATE_DATA = "5'b00100" *) 
(* STATE_IDLE = "5'b00001" *) (* STATE_PAR = "5'b01000" *) (* STATE_START = "5'b00010" *) 
(* STATE_STOP = "5'b10000" *) (* STOP_VALUE = "1" *) 
(* NotValidForBitStream *)
module rx_uart
   (dout,
    rx_done_tick,
    rx,
    s_tick,
    clock);
  output [7:0]dout;
  output rx_done_tick;
  input rx;
  input s_tick;
  input clock;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [2:0]count_data;
  wire \count_data[0]_i_1_n_0 ;
  wire \count_data[1]_i_1_n_0 ;
  wire \count_data[2]_i_1_n_0 ;
  wire \count_data[2]_i_2_n_0 ;
  wire \count_data[2]_i_3_n_0 ;
  wire count_ticks_next;
  wire [3:0]count_ticks_reg;
  wire \count_ticks_reg[0]_i_1_n_0 ;
  wire \count_ticks_reg[1]_i_1_n_0 ;
  wire \count_ticks_reg[2]_i_1_n_0 ;
  wire \count_ticks_reg[3]_i_2_n_0 ;
  wire \count_ticks_reg[3]_i_3_n_0 ;
  wire \count_ticks_reg[3]_i_4_n_0 ;
  wire \count_ticks_reg[3]_i_5_n_0 ;
  wire \count_ticks_reg[3]_i_6_n_0 ;
  wire [4:0]current_state;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state[4]_i_3_n_0 ;
  wire [7:0]dout;
  wire [7:0]dout_OBUF;
  wire [4:0]next_state;
  wire \reg_data[7]_i_1_n_0 ;
  wire rx;
  wire rx_IBUF;
  wire rx_done_tick;
  wire rx_done_tick_OBUF;
  wire rx_done_tick_next;
  wire rx_done_tick_reg_i_1_n_0;
  wire rx_done_tick_reg_i_3_n_0;
  wire s_tick;
  wire s_tick_IBUF;

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
    .INIT(64'h00FF0FFF88008000)) 
    \count_data[0]_i_1 
       (.I0(current_state[2]),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\count_data[2]_i_2_n_0 ),
        .I3(\count_ticks_reg[3]_i_3_n_0 ),
        .I4(\count_data[2]_i_3_n_0 ),
        .I5(count_data[0]),
        .O(\count_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44FF4FFF88008000)) 
    \count_data[1]_i_1 
       (.I0(count_data[0]),
        .I1(current_state[2]),
        .I2(\count_data[2]_i_2_n_0 ),
        .I3(\count_ticks_reg[3]_i_3_n_0 ),
        .I4(\count_data[2]_i_3_n_0 ),
        .I5(count_data[1]),
        .O(\count_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88FF8FFF44004000)) 
    \count_data[2]_i_1 
       (.I0(\current_state[3]_i_2_n_0 ),
        .I1(current_state[2]),
        .I2(\count_data[2]_i_2_n_0 ),
        .I3(\count_ticks_reg[3]_i_3_n_0 ),
        .I4(\count_data[2]_i_3_n_0 ),
        .I5(count_data[2]),
        .O(\count_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \count_data[2]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[2]),
        .I4(count_ticks_reg[1]),
        .I5(count_ticks_reg[3]),
        .O(\count_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \count_data[2]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(count_ticks_reg[1]),
        .I3(count_ticks_reg[3]),
        .I4(count_ticks_reg[0]),
        .I5(count_ticks_reg[2]),
        .O(\count_data[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data[0]_i_1_n_0 ),
        .Q(count_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data[1]_i_1_n_0 ),
        .Q(count_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_data_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_data[2]_i_1_n_0 ),
        .Q(count_data[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F0D0F0F)) 
    \count_ticks_reg[0]_i_1 
       (.I0(current_state[1]),
        .I1(count_ticks_reg[2]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[1]),
        .I4(count_ticks_reg[3]),
        .O(\count_ticks_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_ticks_reg[1]_i_1 
       (.I0(count_ticks_reg[0]),
        .I1(count_ticks_reg[1]),
        .O(\count_ticks_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_ticks_reg[2]_i_1 
       (.I0(count_ticks_reg[1]),
        .I1(count_ticks_reg[0]),
        .I2(count_ticks_reg[2]),
        .O(\count_ticks_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF080028200800)) 
    \count_ticks_reg[3]_i_1 
       (.I0(\count_ticks_reg[3]_i_3_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(\count_ticks_reg[3]_i_4_n_0 ),
        .I4(\count_ticks_reg[3]_i_5_n_0 ),
        .I5(\count_ticks_reg[3]_i_6_n_0 ),
        .O(count_ticks_next));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h78E078F0)) 
    \count_ticks_reg[3]_i_2 
       (.I0(count_ticks_reg[2]),
        .I1(count_ticks_reg[0]),
        .I2(count_ticks_reg[3]),
        .I3(count_ticks_reg[1]),
        .I4(current_state[1]),
        .O(\count_ticks_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count_ticks_reg[3]_i_3 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[4]),
        .O(\count_ticks_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \count_ticks_reg[3]_i_4 
       (.I0(s_tick_IBUF),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[3]),
        .I3(count_ticks_reg[0]),
        .I4(count_ticks_reg[2]),
        .O(\count_ticks_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \count_ticks_reg[3]_i_5 
       (.I0(count_ticks_reg[2]),
        .I1(count_ticks_reg[3]),
        .I2(count_ticks_reg[0]),
        .I3(count_ticks_reg[1]),
        .I4(s_tick_IBUF),
        .O(\count_ticks_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010010)) 
    \count_ticks_reg[3]_i_6 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .O(\count_ticks_reg[3]_i_6_n_0 ));
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
    .INIT(32'hD5FFD5D5)) 
    \current_state[0]_i_1 
       (.I0(\current_state[4]_i_3_n_0 ),
        .I1(current_state[0]),
        .I2(rx_IBUF),
        .I3(\current_state[4]_i_2_n_0 ),
        .I4(current_state[4]),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h8080F080)) 
    \current_state[1]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[4]_i_3_n_0 ),
        .I3(current_state[0]),
        .I4(rx_IBUF),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFF4000044440000)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(current_state[1]),
        .I2(\current_state[4]_i_2_n_0 ),
        .I3(\current_state[2]_i_3_n_0 ),
        .I4(\current_state[4]_i_3_n_0 ),
        .I5(current_state[2]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \current_state[2]_i_2 
       (.I0(count_ticks_reg[2]),
        .I1(count_ticks_reg[0]),
        .I2(count_ticks_reg[3]),
        .I3(count_ticks_reg[1]),
        .O(\current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \current_state[2]_i_3 
       (.I0(count_data[1]),
        .I1(count_data[0]),
        .I2(count_data[2]),
        .O(\current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \current_state[3]_i_1 
       (.I0(count_data[2]),
        .I1(\current_state[3]_i_2_n_0 ),
        .I2(current_state[2]),
        .I3(\current_state[4]_i_2_n_0 ),
        .I4(\current_state[4]_i_3_n_0 ),
        .I5(current_state[3]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_2 
       (.I0(count_data[0]),
        .I1(count_data[1]),
        .O(\current_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE020)) 
    \current_state[4]_i_1 
       (.I0(current_state[3]),
        .I1(\current_state[4]_i_2_n_0 ),
        .I2(\current_state[4]_i_3_n_0 ),
        .I3(current_state[4]),
        .O(next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[4]_i_2 
       (.I0(count_ticks_reg[3]),
        .I1(count_ticks_reg[1]),
        .I2(count_ticks_reg[2]),
        .I3(count_ticks_reg[0]),
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
        .D(next_state[4]),
        .Q(current_state[4]),
        .R(1'b0));
  OBUF \dout_OBUF[0]_inst 
       (.I(dout_OBUF[0]),
        .O(dout[0]));
  OBUF \dout_OBUF[1]_inst 
       (.I(dout_OBUF[1]),
        .O(dout[1]));
  OBUF \dout_OBUF[2]_inst 
       (.I(dout_OBUF[2]),
        .O(dout[2]));
  OBUF \dout_OBUF[3]_inst 
       (.I(dout_OBUF[3]),
        .O(dout[3]));
  OBUF \dout_OBUF[4]_inst 
       (.I(dout_OBUF[4]),
        .O(dout[4]));
  OBUF \dout_OBUF[5]_inst 
       (.I(dout_OBUF[5]),
        .O(dout[5]));
  OBUF \dout_OBUF[6]_inst 
       (.I(dout_OBUF[6]),
        .O(dout[6]));
  OBUF \dout_OBUF[7]_inst 
       (.I(dout_OBUF[7]),
        .O(dout[7]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \reg_data[7]_i_1 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[4]),
        .I4(current_state[0]),
        .I5(current_state[3]),
        .O(\reg_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(dout_OBUF[1]),
        .Q(dout_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(dout_OBUF[2]),
        .Q(dout_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(dout_OBUF[3]),
        .Q(dout_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(dout_OBUF[4]),
        .Q(dout_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(dout_OBUF[5]),
        .Q(dout_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(dout_OBUF[6]),
        .Q(dout_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(dout_OBUF[7]),
        .Q(dout_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_data_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\reg_data[7]_i_1_n_0 ),
        .D(rx_IBUF),
        .Q(dout_OBUF[7]),
        .R(1'b0));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF rx_done_tick_OBUF_inst
       (.I(rx_done_tick_OBUF),
        .O(rx_done_tick));
  LUT6 #(
    .INIT(64'h0020002002200020)) 
    rx_done_tick_reg_i_1
       (.I0(rx_done_tick_reg_i_3_n_0),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[4]),
        .I4(rx_IBUF),
        .I5(\current_state[4]_i_2_n_0 ),
        .O(rx_done_tick_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rx_done_tick_reg_i_2
       (.I0(current_state[4]),
        .I1(rx_IBUF),
        .O(rx_done_tick_next));
  LUT2 #(
    .INIT(4'h1)) 
    rx_done_tick_reg_i_3
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(rx_done_tick_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_done_tick_reg_reg
       (.C(clock_IBUF_BUFG),
        .CE(rx_done_tick_reg_i_1_n_0),
        .D(rx_done_tick_next),
        .Q(rx_done_tick_OBUF),
        .R(1'b0));
  IBUF s_tick_IBUF_inst
       (.I(s_tick),
        .O(s_tick_IBUF));
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
