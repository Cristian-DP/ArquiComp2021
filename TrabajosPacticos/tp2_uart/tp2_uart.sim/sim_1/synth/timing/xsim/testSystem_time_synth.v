// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 25 20:50:05 2021
// Host        : DESKTOP-05TNCFU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/CR/Desktop/arqui/ArquiComp2021/TrabajosPacticos/tp2_uart/tp2_uart.sim/sim_1/synth/timing/xsim/testSystem_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* DATA_TICKS = "15" *) (* NB_STATE = "5" *) (* N_DATA = "8" *) 
(* START_VALUE = "0" *) (* STOP_VALUE = "1" *) 
(* NotValidForBitStream *)
module top
   (tx,
    rx,
    clock,
    reset,
    o_data_A,
    o_data_B,
    o_data_Op,
    o_alu,
    o_tx);
  output tx;
  input rx;
  input clock;
  input reset;
  output [7:0]o_data_A;
  output [7:0]o_data_B;
  output [7:0]o_data_Op;
  output [7:0]o_alu;
  output o_tx;

  wire [7:0]o_alu;
  wire [7:0]o_data_A;
  wire [7:0]o_data_B;
  wire [7:0]o_data_Op;
  wire o_tx;
  wire tx;

initial begin
 $sdf_annotate("testSystem_time_synth.sdf",,,,"tool_control");
end
  OBUF \o_alu_OBUF[0]_inst 
       (.I(1'b0),
        .O(o_alu[0]));
  OBUF \o_alu_OBUF[1]_inst 
       (.I(1'b0),
        .O(o_alu[1]));
  OBUF \o_alu_OBUF[2]_inst 
       (.I(1'b0),
        .O(o_alu[2]));
  OBUF \o_alu_OBUF[3]_inst 
       (.I(1'b0),
        .O(o_alu[3]));
  OBUF \o_alu_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_alu[4]));
  OBUF \o_alu_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_alu[5]));
  OBUF \o_alu_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_alu[6]));
  OBUF \o_alu_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_alu[7]));
  OBUF \o_data_A_OBUF[0]_inst 
       (.I(1'b0),
        .O(o_data_A[0]));
  OBUF \o_data_A_OBUF[1]_inst 
       (.I(1'b0),
        .O(o_data_A[1]));
  OBUF \o_data_A_OBUF[2]_inst 
       (.I(1'b0),
        .O(o_data_A[2]));
  OBUF \o_data_A_OBUF[3]_inst 
       (.I(1'b0),
        .O(o_data_A[3]));
  OBUF \o_data_A_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_data_A[4]));
  OBUF \o_data_A_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_data_A[5]));
  OBUF \o_data_A_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_data_A[6]));
  OBUF \o_data_A_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_data_A[7]));
  OBUF \o_data_B_OBUF[0]_inst 
       (.I(1'b0),
        .O(o_data_B[0]));
  OBUF \o_data_B_OBUF[1]_inst 
       (.I(1'b0),
        .O(o_data_B[1]));
  OBUF \o_data_B_OBUF[2]_inst 
       (.I(1'b0),
        .O(o_data_B[2]));
  OBUF \o_data_B_OBUF[3]_inst 
       (.I(1'b0),
        .O(o_data_B[3]));
  OBUF \o_data_B_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_data_B[4]));
  OBUF \o_data_B_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_data_B[5]));
  OBUF \o_data_B_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_data_B[6]));
  OBUF \o_data_B_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_data_B[7]));
  OBUF \o_data_Op_OBUF[0]_inst 
       (.I(1'b0),
        .O(o_data_Op[0]));
  OBUF \o_data_Op_OBUF[1]_inst 
       (.I(1'b0),
        .O(o_data_Op[1]));
  OBUF \o_data_Op_OBUF[2]_inst 
       (.I(1'b0),
        .O(o_data_Op[2]));
  OBUF \o_data_Op_OBUF[3]_inst 
       (.I(1'b0),
        .O(o_data_Op[3]));
  OBUF \o_data_Op_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_data_Op[4]));
  OBUF \o_data_Op_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_data_Op[5]));
  OBUF \o_data_Op_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_data_Op[6]));
  OBUF \o_data_Op_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_data_Op[7]));
  OBUF o_tx_OBUF_inst
       (.I(1'b0),
        .O(o_tx));
  OBUF tx_OBUF_inst
       (.I(1'b1),
        .O(tx));
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
