// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Nov 22 19:48:49 2021
// Host        : DESKTOP-05TNCFU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/CR/Desktop/arqui/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/testSystem_time_synth.v
// Design      : BaudRateGenerator
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* BAUD_RATE = "19200" *) (* CLOCK_FREQ = "50000000" *) (* DIVISION = "16" *) 
(* N_CLOCKS = "162" *) 
(* NotValidForBitStream *)
module BaudRateGenerator
   (tick,
    clock);
  output tick;
  input clock;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire \counTicks[7]_i_1_n_0 ;
  wire \counTicks[7]_i_3_n_0 ;
  wire \counTicks[7]_i_4_n_0 ;
  wire \counTicks_reg_n_0_[0] ;
  wire \counTicks_reg_n_0_[1] ;
  wire \counTicks_reg_n_0_[2] ;
  wire \counTicks_reg_n_0_[3] ;
  wire \counTicks_reg_n_0_[4] ;
  wire \counTicks_reg_n_0_[5] ;
  wire \counTicks_reg_n_0_[6] ;
  wire \counTicks_reg_n_0_[7] ;
  wire [7:0]data0;
  wire tick;
  wire tick_OBUF;
  wire tick_i_1_n_0;
  wire tick_i_2_n_0;

initial begin
 $sdf_annotate("testSystem_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counTicks[0]_i_1 
       (.I0(\counTicks_reg_n_0_[0] ),
        .O(data0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counTicks[1]_i_1 
       (.I0(\counTicks_reg_n_0_[0] ),
        .I1(\counTicks_reg_n_0_[1] ),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counTicks[2]_i_1 
       (.I0(\counTicks_reg_n_0_[0] ),
        .I1(\counTicks_reg_n_0_[1] ),
        .I2(\counTicks_reg_n_0_[2] ),
        .O(data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counTicks[3]_i_1 
       (.I0(\counTicks_reg_n_0_[1] ),
        .I1(\counTicks_reg_n_0_[0] ),
        .I2(\counTicks_reg_n_0_[2] ),
        .I3(\counTicks_reg_n_0_[3] ),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counTicks[4]_i_1 
       (.I0(\counTicks_reg_n_0_[2] ),
        .I1(\counTicks_reg_n_0_[0] ),
        .I2(\counTicks_reg_n_0_[1] ),
        .I3(\counTicks_reg_n_0_[3] ),
        .I4(\counTicks_reg_n_0_[4] ),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counTicks[5]_i_1 
       (.I0(\counTicks_reg_n_0_[3] ),
        .I1(\counTicks_reg_n_0_[1] ),
        .I2(\counTicks_reg_n_0_[0] ),
        .I3(\counTicks_reg_n_0_[2] ),
        .I4(\counTicks_reg_n_0_[4] ),
        .I5(\counTicks_reg_n_0_[5] ),
        .O(data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counTicks[6]_i_1 
       (.I0(\counTicks[7]_i_4_n_0 ),
        .I1(\counTicks_reg_n_0_[6] ),
        .O(data0[6]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \counTicks[7]_i_1 
       (.I0(\counTicks_reg_n_0_[6] ),
        .I1(\counTicks_reg_n_0_[5] ),
        .I2(\counTicks_reg_n_0_[1] ),
        .I3(\counTicks_reg_n_0_[7] ),
        .I4(\counTicks[7]_i_3_n_0 ),
        .O(\counTicks[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counTicks[7]_i_2 
       (.I0(\counTicks[7]_i_4_n_0 ),
        .I1(\counTicks_reg_n_0_[6] ),
        .I2(\counTicks_reg_n_0_[7] ),
        .O(data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counTicks[7]_i_3 
       (.I0(\counTicks_reg_n_0_[2] ),
        .I1(\counTicks_reg_n_0_[3] ),
        .I2(\counTicks_reg_n_0_[0] ),
        .I3(\counTicks_reg_n_0_[4] ),
        .O(\counTicks[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counTicks[7]_i_4 
       (.I0(\counTicks_reg_n_0_[5] ),
        .I1(\counTicks_reg_n_0_[3] ),
        .I2(\counTicks_reg_n_0_[1] ),
        .I3(\counTicks_reg_n_0_[0] ),
        .I4(\counTicks_reg_n_0_[2] ),
        .I5(\counTicks_reg_n_0_[4] ),
        .O(\counTicks[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[0]),
        .Q(\counTicks_reg_n_0_[0] ),
        .R(\counTicks[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\counTicks_reg_n_0_[1] ),
        .R(\counTicks[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\counTicks_reg_n_0_[2] ),
        .R(\counTicks[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\counTicks_reg_n_0_[3] ),
        .R(\counTicks[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\counTicks_reg_n_0_[4] ),
        .R(\counTicks[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\counTicks_reg_n_0_[5] ),
        .R(\counTicks[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\counTicks_reg_n_0_[6] ),
        .R(\counTicks[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counTicks_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\counTicks_reg_n_0_[7] ),
        .R(\counTicks[7]_i_1_n_0 ));
  OBUF tick_OBUF_inst
       (.I(tick_OBUF),
        .O(tick));
  LUT5 #(
    .INIT(32'h00000001)) 
    tick_i_1
       (.I0(\counTicks_reg_n_0_[0] ),
        .I1(\counTicks_reg_n_0_[4] ),
        .I2(\counTicks_reg_n_0_[6] ),
        .I3(\counTicks_reg_n_0_[2] ),
        .I4(tick_i_2_n_0),
        .O(tick_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    tick_i_2
       (.I0(\counTicks_reg_n_0_[7] ),
        .I1(\counTicks_reg_n_0_[3] ),
        .I2(\counTicks_reg_n_0_[5] ),
        .I3(\counTicks_reg_n_0_[1] ),
        .O(tick_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(tick_OBUF),
        .R(1'b0));
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
