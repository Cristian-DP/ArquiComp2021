// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct 29 21:26:49 2021
// Host        : LAPTOP-DJ46CPRC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Laudi/vivado_projects/ArquiComp2021/TrabajosPacticos/TP2/UART.sim/sim_1/synth/timing/xsim/TestBaudRateGenerator_time_synth.v
// Design      : alu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* N_BITS = "8" *) 
(* NotValidForBitStream *)
module alu
   (i_a,
    i_b,
    i_op,
    o_o);
  input [7:0]i_a;
  input [7:0]i_b;
  input [5:0]i_op;
  output [7:0]o_o;

  wire [7:0]data0;
  wire [7:0]i_a;
  wire [7:0]i_a_IBUF;
  wire [7:0]i_b;
  wire [7:0]i_b_IBUF;
  wire [5:0]i_op;
  wire [5:0]i_op_IBUF;
  wire [7:0]o_o;
  wire [7:0]o_o_OBUF;
  wire \o_o_OBUF[0]_inst_i_2_n_0 ;
  wire \o_o_OBUF[0]_inst_i_3_n_0 ;
  wire \o_o_OBUF[1]_inst_i_2_n_0 ;
  wire \o_o_OBUF[1]_inst_i_3_n_0 ;
  wire \o_o_OBUF[2]_inst_i_2_n_0 ;
  wire \o_o_OBUF[2]_inst_i_3_n_0 ;
  wire \o_o_OBUF[3]_inst_i_2_n_0 ;
  wire \o_o_OBUF[3]_inst_i_3_n_0 ;
  wire \o_o_OBUF[3]_inst_i_4_n_0 ;
  wire \o_o_OBUF[3]_inst_i_4_n_1 ;
  wire \o_o_OBUF[3]_inst_i_4_n_2 ;
  wire \o_o_OBUF[3]_inst_i_4_n_3 ;
  wire \o_o_OBUF[3]_inst_i_5_n_0 ;
  wire \o_o_OBUF[3]_inst_i_6_n_0 ;
  wire \o_o_OBUF[3]_inst_i_7_n_0 ;
  wire \o_o_OBUF[3]_inst_i_8_n_0 ;
  wire \o_o_OBUF[4]_inst_i_2_n_0 ;
  wire \o_o_OBUF[4]_inst_i_3_n_0 ;
  wire \o_o_OBUF[5]_inst_i_2_n_0 ;
  wire \o_o_OBUF[5]_inst_i_3_n_0 ;
  wire \o_o_OBUF[5]_inst_i_4_n_0 ;
  wire \o_o_OBUF[5]_inst_i_5_n_0 ;
  wire \o_o_OBUF[6]_inst_i_2_n_0 ;
  wire \o_o_OBUF[6]_inst_i_3_n_0 ;
  wire \o_o_OBUF[7]_inst_i_10_n_0 ;
  wire \o_o_OBUF[7]_inst_i_2_n_0 ;
  wire \o_o_OBUF[7]_inst_i_3_n_0 ;
  wire \o_o_OBUF[7]_inst_i_4_n_0 ;
  wire \o_o_OBUF[7]_inst_i_5_n_1 ;
  wire \o_o_OBUF[7]_inst_i_5_n_2 ;
  wire \o_o_OBUF[7]_inst_i_5_n_3 ;
  wire \o_o_OBUF[7]_inst_i_6_n_0 ;
  wire \o_o_OBUF[7]_inst_i_7_n_0 ;
  wire \o_o_OBUF[7]_inst_i_8_n_0 ;
  wire \o_o_OBUF[7]_inst_i_9_n_0 ;
  wire [3:3]\NLW_o_o_OBUF[7]_inst_i_5_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("TestBaudRateGenerator_time_synth.sdf",,,,"tool_control");
end
  IBUF \i_a_IBUF[0]_inst 
       (.I(i_a[0]),
        .O(i_a_IBUF[0]));
  IBUF \i_a_IBUF[1]_inst 
       (.I(i_a[1]),
        .O(i_a_IBUF[1]));
  IBUF \i_a_IBUF[2]_inst 
       (.I(i_a[2]),
        .O(i_a_IBUF[2]));
  IBUF \i_a_IBUF[3]_inst 
       (.I(i_a[3]),
        .O(i_a_IBUF[3]));
  IBUF \i_a_IBUF[4]_inst 
       (.I(i_a[4]),
        .O(i_a_IBUF[4]));
  IBUF \i_a_IBUF[5]_inst 
       (.I(i_a[5]),
        .O(i_a_IBUF[5]));
  IBUF \i_a_IBUF[6]_inst 
       (.I(i_a[6]),
        .O(i_a_IBUF[6]));
  IBUF \i_a_IBUF[7]_inst 
       (.I(i_a[7]),
        .O(i_a_IBUF[7]));
  IBUF \i_b_IBUF[0]_inst 
       (.I(i_b[0]),
        .O(i_b_IBUF[0]));
  IBUF \i_b_IBUF[1]_inst 
       (.I(i_b[1]),
        .O(i_b_IBUF[1]));
  IBUF \i_b_IBUF[2]_inst 
       (.I(i_b[2]),
        .O(i_b_IBUF[2]));
  IBUF \i_b_IBUF[3]_inst 
       (.I(i_b[3]),
        .O(i_b_IBUF[3]));
  IBUF \i_b_IBUF[4]_inst 
       (.I(i_b[4]),
        .O(i_b_IBUF[4]));
  IBUF \i_b_IBUF[5]_inst 
       (.I(i_b[5]),
        .O(i_b_IBUF[5]));
  IBUF \i_b_IBUF[6]_inst 
       (.I(i_b[6]),
        .O(i_b_IBUF[6]));
  IBUF \i_b_IBUF[7]_inst 
       (.I(i_b[7]),
        .O(i_b_IBUF[7]));
  IBUF \i_op_IBUF[0]_inst 
       (.I(i_op[0]),
        .O(i_op_IBUF[0]));
  IBUF \i_op_IBUF[1]_inst 
       (.I(i_op[1]),
        .O(i_op_IBUF[1]));
  IBUF \i_op_IBUF[2]_inst 
       (.I(i_op[2]),
        .O(i_op_IBUF[2]));
  IBUF \i_op_IBUF[3]_inst 
       (.I(i_op[3]),
        .O(i_op_IBUF[3]));
  IBUF \i_op_IBUF[4]_inst 
       (.I(i_op[4]),
        .O(i_op_IBUF[4]));
  IBUF \i_op_IBUF[5]_inst 
       (.I(i_op[5]),
        .O(i_op_IBUF[5]));
  OBUF \o_o_OBUF[0]_inst 
       (.I(o_o_OBUF[0]),
        .O(o_o[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_o_OBUF[0]_inst_i_1 
       (.I0(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_o_OBUF[0]_inst_i_2_n_0 ),
        .I2(\o_o_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_o_OBUF[1]_inst_i_2_n_0 ),
        .I4(\o_o_OBUF[0]_inst_i_3_n_0 ),
        .I5(\o_o_OBUF[7]_inst_i_3_n_0 ),
        .O(o_o_OBUF[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_o_OBUF[0]_inst_i_2 
       (.I0(i_a_IBUF[4]),
        .I1(i_a_IBUF[6]),
        .I2(i_b_IBUF[2]),
        .I3(i_b_IBUF[1]),
        .I4(i_a_IBUF[0]),
        .I5(i_a_IBUF[2]),
        .O(\o_o_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_o_OBUF[0]_inst_i_3 
       (.I0(data0[0]),
        .I1(i_a_IBUF[0]),
        .I2(i_b_IBUF[0]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[2]),
        .I5(i_op_IBUF[0]),
        .O(\o_o_OBUF[0]_inst_i_3_n_0 ));
  OBUF \o_o_OBUF[1]_inst 
       (.I(o_o_OBUF[1]),
        .O(o_o[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_o_OBUF[1]_inst_i_1 
       (.I0(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_o_OBUF[1]_inst_i_2_n_0 ),
        .I2(\o_o_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_o_OBUF[2]_inst_i_2_n_0 ),
        .I4(\o_o_OBUF[1]_inst_i_3_n_0 ),
        .I5(\o_o_OBUF[7]_inst_i_3_n_0 ),
        .O(o_o_OBUF[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_o_OBUF[1]_inst_i_2 
       (.I0(i_a_IBUF[5]),
        .I1(i_a_IBUF[7]),
        .I2(i_b_IBUF[2]),
        .I3(i_b_IBUF[1]),
        .I4(i_a_IBUF[1]),
        .I5(i_a_IBUF[3]),
        .O(\o_o_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_o_OBUF[1]_inst_i_3 
       (.I0(data0[1]),
        .I1(i_a_IBUF[1]),
        .I2(i_b_IBUF[1]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[2]),
        .I5(i_op_IBUF[0]),
        .O(\o_o_OBUF[1]_inst_i_3_n_0 ));
  OBUF \o_o_OBUF[2]_inst 
       (.I(o_o_OBUF[2]),
        .O(o_o[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_o_OBUF[2]_inst_i_1 
       (.I0(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_o_OBUF[2]_inst_i_2_n_0 ),
        .I2(\o_o_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_o_OBUF[3]_inst_i_2_n_0 ),
        .I4(\o_o_OBUF[2]_inst_i_3_n_0 ),
        .I5(\o_o_OBUF[7]_inst_i_3_n_0 ),
        .O(o_o_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_o_OBUF[2]_inst_i_2 
       (.I0(i_a_IBUF[2]),
        .I1(i_a_IBUF[4]),
        .I2(i_a_IBUF[6]),
        .I3(i_b_IBUF[2]),
        .I4(i_b_IBUF[1]),
        .O(\o_o_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_o_OBUF[2]_inst_i_3 
       (.I0(data0[2]),
        .I1(i_a_IBUF[2]),
        .I2(i_b_IBUF[2]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[2]),
        .I5(i_op_IBUF[0]),
        .O(\o_o_OBUF[2]_inst_i_3_n_0 ));
  OBUF \o_o_OBUF[3]_inst 
       (.I(o_o_OBUF[3]),
        .O(o_o[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_o_OBUF[3]_inst_i_1 
       (.I0(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_o_OBUF[3]_inst_i_2_n_0 ),
        .I2(\o_o_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_o_OBUF[4]_inst_i_2_n_0 ),
        .I4(\o_o_OBUF[3]_inst_i_3_n_0 ),
        .I5(\o_o_OBUF[7]_inst_i_3_n_0 ),
        .O(o_o_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_o_OBUF[3]_inst_i_2 
       (.I0(i_a_IBUF[3]),
        .I1(i_a_IBUF[5]),
        .I2(i_a_IBUF[7]),
        .I3(i_b_IBUF[2]),
        .I4(i_b_IBUF[1]),
        .O(\o_o_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_o_OBUF[3]_inst_i_3 
       (.I0(data0[3]),
        .I1(i_a_IBUF[3]),
        .I2(i_b_IBUF[3]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[2]),
        .I5(i_op_IBUF[0]),
        .O(\o_o_OBUF[3]_inst_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \o_o_OBUF[3]_inst_i_4 
       (.CI(1'b0),
        .CO({\o_o_OBUF[3]_inst_i_4_n_0 ,\o_o_OBUF[3]_inst_i_4_n_1 ,\o_o_OBUF[3]_inst_i_4_n_2 ,\o_o_OBUF[3]_inst_i_4_n_3 }),
        .CYINIT(i_a_IBUF[0]),
        .DI({i_a_IBUF[3:1],i_op_IBUF[1]}),
        .O(data0[3:0]),
        .S({\o_o_OBUF[3]_inst_i_5_n_0 ,\o_o_OBUF[3]_inst_i_6_n_0 ,\o_o_OBUF[3]_inst_i_7_n_0 ,\o_o_OBUF[3]_inst_i_8_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \o_o_OBUF[3]_inst_i_5 
       (.I0(i_b_IBUF[3]),
        .I1(i_op_IBUF[1]),
        .I2(i_a_IBUF[3]),
        .O(\o_o_OBUF[3]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_o_OBUF[3]_inst_i_6 
       (.I0(i_b_IBUF[2]),
        .I1(i_op_IBUF[1]),
        .I2(i_a_IBUF[2]),
        .O(\o_o_OBUF[3]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_o_OBUF[3]_inst_i_7 
       (.I0(i_b_IBUF[1]),
        .I1(i_op_IBUF[1]),
        .I2(i_a_IBUF[1]),
        .O(\o_o_OBUF[3]_inst_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \o_o_OBUF[3]_inst_i_8 
       (.I0(i_b_IBUF[0]),
        .O(\o_o_OBUF[3]_inst_i_8_n_0 ));
  OBUF \o_o_OBUF[4]_inst 
       (.I(o_o_OBUF[4]),
        .O(o_o[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_o_OBUF[4]_inst_i_1 
       (.I0(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_o_OBUF[4]_inst_i_2_n_0 ),
        .I2(\o_o_OBUF[5]_inst_i_4_n_0 ),
        .I3(\o_o_OBUF[5]_inst_i_2_n_0 ),
        .I4(\o_o_OBUF[4]_inst_i_3_n_0 ),
        .I5(\o_o_OBUF[7]_inst_i_3_n_0 ),
        .O(o_o_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_o_OBUF[4]_inst_i_2 
       (.I0(i_a_IBUF[6]),
        .I1(i_a_IBUF[4]),
        .I2(i_b_IBUF[1]),
        .I3(i_b_IBUF[2]),
        .O(\o_o_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_o_OBUF[4]_inst_i_3 
       (.I0(data0[4]),
        .I1(i_a_IBUF[4]),
        .I2(i_b_IBUF[4]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[2]),
        .I5(i_op_IBUF[0]),
        .O(\o_o_OBUF[4]_inst_i_3_n_0 ));
  OBUF \o_o_OBUF[5]_inst 
       (.I(o_o_OBUF[5]),
        .O(o_o[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_o_OBUF[5]_inst_i_1 
       (.I0(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I1(\o_o_OBUF[5]_inst_i_2_n_0 ),
        .I2(\o_o_OBUF[5]_inst_i_3_n_0 ),
        .I3(\o_o_OBUF[5]_inst_i_4_n_0 ),
        .I4(\o_o_OBUF[5]_inst_i_5_n_0 ),
        .I5(\o_o_OBUF[7]_inst_i_3_n_0 ),
        .O(o_o_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_o_OBUF[5]_inst_i_2 
       (.I0(i_a_IBUF[7]),
        .I1(i_a_IBUF[5]),
        .I2(i_b_IBUF[1]),
        .I3(i_b_IBUF[2]),
        .O(\o_o_OBUF[5]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \o_o_OBUF[5]_inst_i_3 
       (.I0(i_b_IBUF[2]),
        .I1(i_b_IBUF[1]),
        .I2(i_a_IBUF[6]),
        .O(\o_o_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \o_o_OBUF[5]_inst_i_4 
       (.I0(i_op_IBUF[3]),
        .I1(i_op_IBUF[4]),
        .I2(i_op_IBUF[2]),
        .I3(i_op_IBUF[1]),
        .I4(\o_o_OBUF[7]_inst_i_6_n_0 ),
        .I5(i_b_IBUF[0]),
        .O(\o_o_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_o_OBUF[5]_inst_i_5 
       (.I0(data0[5]),
        .I1(i_a_IBUF[5]),
        .I2(i_b_IBUF[5]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[2]),
        .I5(i_op_IBUF[0]),
        .O(\o_o_OBUF[5]_inst_i_5_n_0 ));
  OBUF \o_o_OBUF[6]_inst 
       (.I(o_o_OBUF[6]),
        .O(o_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \o_o_OBUF[6]_inst_i_1 
       (.I0(\o_o_OBUF[6]_inst_i_2_n_0 ),
        .I1(\o_o_OBUF[6]_inst_i_3_n_0 ),
        .I2(i_op_IBUF[4]),
        .I3(i_op_IBUF[3]),
        .I4(i_op_IBUF[5]),
        .O(o_o_OBUF[6]));
  LUT6 #(
    .INIT(64'h000000F800000088)) 
    \o_o_OBUF[6]_inst_i_2 
       (.I0(\o_o_OBUF[5]_inst_i_4_n_0 ),
        .I1(i_a_IBUF[7]),
        .I2(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I3(i_b_IBUF[2]),
        .I4(i_b_IBUF[1]),
        .I5(i_a_IBUF[6]),
        .O(\o_o_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_o_OBUF[6]_inst_i_3 
       (.I0(data0[6]),
        .I1(i_a_IBUF[6]),
        .I2(i_b_IBUF[6]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[2]),
        .I5(i_op_IBUF[0]),
        .O(\o_o_OBUF[6]_inst_i_3_n_0 ));
  OBUF \o_o_OBUF[7]_inst 
       (.I(o_o_OBUF[7]),
        .O(o_o[7]));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \o_o_OBUF[7]_inst_i_1 
       (.I0(\o_o_OBUF[7]_inst_i_2_n_0 ),
        .I1(\o_o_OBUF[7]_inst_i_3_n_0 ),
        .I2(\o_o_OBUF[7]_inst_i_4_n_0 ),
        .I3(i_b_IBUF[2]),
        .I4(i_b_IBUF[1]),
        .I5(i_a_IBUF[7]),
        .O(o_o_OBUF[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_o_OBUF[7]_inst_i_10 
       (.I0(i_b_IBUF[4]),
        .I1(i_op_IBUF[1]),
        .I2(i_a_IBUF[4]),
        .O(\o_o_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h03FC3CC00000AAAA)) 
    \o_o_OBUF[7]_inst_i_2 
       (.I0(data0[7]),
        .I1(i_b_IBUF[7]),
        .I2(i_a_IBUF[7]),
        .I3(i_op_IBUF[1]),
        .I4(i_op_IBUF[0]),
        .I5(i_op_IBUF[2]),
        .O(\o_o_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \o_o_OBUF[7]_inst_i_3 
       (.I0(i_op_IBUF[4]),
        .I1(i_op_IBUF[3]),
        .I2(i_op_IBUF[5]),
        .O(\o_o_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \o_o_OBUF[7]_inst_i_4 
       (.I0(i_op_IBUF[3]),
        .I1(i_op_IBUF[4]),
        .I2(i_op_IBUF[2]),
        .I3(i_op_IBUF[1]),
        .I4(\o_o_OBUF[7]_inst_i_6_n_0 ),
        .I5(i_b_IBUF[0]),
        .O(\o_o_OBUF[7]_inst_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \o_o_OBUF[7]_inst_i_5 
       (.CI(\o_o_OBUF[3]_inst_i_4_n_0 ),
        .CO({\NLW_o_o_OBUF[7]_inst_i_5_CO_UNCONNECTED [3],\o_o_OBUF[7]_inst_i_5_n_1 ,\o_o_OBUF[7]_inst_i_5_n_2 ,\o_o_OBUF[7]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_a_IBUF[6:4]}),
        .O(data0[7:4]),
        .S({\o_o_OBUF[7]_inst_i_7_n_0 ,\o_o_OBUF[7]_inst_i_8_n_0 ,\o_o_OBUF[7]_inst_i_9_n_0 ,\o_o_OBUF[7]_inst_i_10_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_o_OBUF[7]_inst_i_6 
       (.I0(i_b_IBUF[6]),
        .I1(i_b_IBUF[7]),
        .I2(i_b_IBUF[5]),
        .I3(i_b_IBUF[4]),
        .I4(i_b_IBUF[3]),
        .I5(i_op_IBUF[5]),
        .O(\o_o_OBUF[7]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_o_OBUF[7]_inst_i_7 
       (.I0(i_b_IBUF[7]),
        .I1(i_a_IBUF[7]),
        .I2(i_op_IBUF[1]),
        .O(\o_o_OBUF[7]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_o_OBUF[7]_inst_i_8 
       (.I0(i_b_IBUF[6]),
        .I1(i_op_IBUF[1]),
        .I2(i_a_IBUF[6]),
        .O(\o_o_OBUF[7]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_o_OBUF[7]_inst_i_9 
       (.I0(i_b_IBUF[5]),
        .I1(i_op_IBUF[1]),
        .I2(i_a_IBUF[5]),
        .O(\o_o_OBUF[7]_inst_i_9_n_0 ));
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
