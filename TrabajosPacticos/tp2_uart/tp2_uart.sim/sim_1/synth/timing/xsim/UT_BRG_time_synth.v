// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Nov 30 12:43:49 2021
// Host        : DESKTOP-05TNCFU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/CR/Desktop/arqui/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/UT_BRG_time_synth.v
// Design      : topBRG
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
  wire \counTicks[0]_i_2_n_0 ;
  wire \counTicks[5]_i_2_n_0 ;
  wire \counTicks[7]_i_2_n_0 ;
  wire \counTicks[7]_i_3_n_0 ;
  wire [7:1]counTicks_0;
  wire tick;
  wire tick_1;
  wire tick_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \counTicks[0]_i_1 
       (.I0(counTicks[2]),
        .I1(counTicks[3]),
        .I2(counTicks[4]),
        .I3(\counTicks[0]_i_2_n_0 ),
        .I4(counTicks[0]),
        .O(\counTicks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counTicks[0]_i_2 
       (.I0(counTicks[7]),
        .I1(counTicks[1]),
        .I2(counTicks[5]),
        .I3(counTicks[6]),
        .O(\counTicks[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55AA55AA45AA55AA)) 
    \counTicks[1]_i_1 
       (.I0(counTicks[0]),
        .I1(\counTicks[7]_i_3_n_0 ),
        .I2(counTicks[7]),
        .I3(counTicks[1]),
        .I4(counTicks[5]),
        .I5(counTicks[6]),
        .O(counTicks_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \counTicks[2]_i_1 
       (.I0(counTicks[1]),
        .I1(counTicks[2]),
        .I2(counTicks[0]),
        .O(counTicks_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \counTicks[3]_i_1 
       (.I0(counTicks[1]),
        .I1(counTicks[2]),
        .I2(counTicks[3]),
        .I3(counTicks[0]),
        .O(counTicks_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counTicks[4]_i_1 
       (.I0(counTicks[1]),
        .I1(counTicks[2]),
        .I2(counTicks[3]),
        .I3(counTicks[0]),
        .I4(counTicks[4]),
        .O(counTicks_0[4]));
  LUT6 #(
    .INIT(64'h5555AAAA4555AAAA)) 
    \counTicks[5]_i_1 
       (.I0(\counTicks[5]_i_2_n_0 ),
        .I1(\counTicks[7]_i_3_n_0 ),
        .I2(counTicks[7]),
        .I3(counTicks[1]),
        .I4(counTicks[5]),
        .I5(counTicks[6]),
        .O(counTicks_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counTicks[5]_i_2 
       (.I0(counTicks[4]),
        .I1(counTicks[2]),
        .I2(counTicks[0]),
        .I3(counTicks[1]),
        .I4(counTicks[3]),
        .O(\counTicks[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555555558AAAAAAA)) 
    \counTicks[6]_i_1 
       (.I0(\counTicks[7]_i_2_n_0 ),
        .I1(\counTicks[7]_i_3_n_0 ),
        .I2(counTicks[7]),
        .I3(counTicks[1]),
        .I4(counTicks[5]),
        .I5(counTicks[6]),
        .O(counTicks_0[6]));
  LUT6 #(
    .INIT(64'h5A5A5A5AC0F0F0F0)) 
    \counTicks[7]_i_1 
       (.I0(\counTicks[7]_i_2_n_0 ),
        .I1(\counTicks[7]_i_3_n_0 ),
        .I2(counTicks[7]),
        .I3(counTicks[1]),
        .I4(counTicks[5]),
        .I5(counTicks[6]),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counTicks[7]_i_3 
       (.I0(counTicks[2]),
        .I1(counTicks[3]),
        .I2(counTicks[0]),
        .I3(counTicks[4]),
        .O(\counTicks[7]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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

(* NotValidForBitStream *)
module topBRG
   (tick,
    clock,
    reset);
  output tick;
  input clock;
  input reset;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire reset;
  wire reset_IBUF;
  wire tick;
  wire tick_OBUF;

initial begin
 $sdf_annotate("UT_BRG_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  BaudRateGenerator myBRG
       (.CLK(clock_IBUF_BUFG),
        .SR(reset_IBUF),
        .tick(tick_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF tick_OBUF_inst
       (.I(tick_OBUF),
        .O(tick));
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
