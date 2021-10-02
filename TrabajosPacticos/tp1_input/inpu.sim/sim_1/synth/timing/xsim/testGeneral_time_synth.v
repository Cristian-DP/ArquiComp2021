// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Sep 30 17:27:50 2021
// Host        : LAPTOP-DJ46CPRC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Laudi/vivado_projects/ArquiComp2021/TrabajosPacticos/tp1_input/inpu.sim/sim_1/synth/timing/xsim/testGeneral_time_synth.v
// Design      : INPUT
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NB_DATA = "8" *) 
(* NotValidForBitStream *)
module INPUT
   (DATO,
    selA,
    selB,
    selOp,
    o_alu,
    CLOCK);
  input [7:0]DATO;
  input selA;
  input selB;
  input selOp;
  output [7:0]o_alu;
  input CLOCK;

  wire \0 ;
  wire CLOCK;
  wire CLOCK_IBUF;
  wire CLOCK_IBUF_BUFG;
  wire [7:0]DATO;
  wire [7:0]DATO_IBUF;
  wire [7:0]DA_reg;
  wire [7:0]DB_reg;
  wire \OP_reg_reg_n_0_[0] ;
  wire \OP_reg_reg_n_0_[2] ;
  wire \OP_reg_reg_n_0_[3] ;
  wire \OP_reg_reg_n_0_[4] ;
  wire \OP_reg_reg_n_0_[5] ;
  wire [7:0]o_alu;
  wire [7:0]o_alu_OBUF;
  wire \o_alu_OBUF[0]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[1]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[2]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[3]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[6]_inst_i_2_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_4_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_5_n_0 ;
  wire selA;
  wire selA_IBUF;
  wire selB;
  wire selB_IBUF;
  wire selOp;
  wire selOp_IBUF;

initial begin
 $sdf_annotate("testGeneral_time_synth.sdf",,,,"tool_control");
end
  BUFG CLOCK_IBUF_BUFG_inst
       (.I(CLOCK_IBUF),
        .O(CLOCK_IBUF_BUFG));
  IBUF CLOCK_IBUF_inst
       (.I(CLOCK),
        .O(CLOCK_IBUF));
  IBUF \DATO_IBUF[0]_inst 
       (.I(DATO[0]),
        .O(DATO_IBUF[0]));
  IBUF \DATO_IBUF[1]_inst 
       (.I(DATO[1]),
        .O(DATO_IBUF[1]));
  IBUF \DATO_IBUF[2]_inst 
       (.I(DATO[2]),
        .O(DATO_IBUF[2]));
  IBUF \DATO_IBUF[3]_inst 
       (.I(DATO[3]),
        .O(DATO_IBUF[3]));
  IBUF \DATO_IBUF[4]_inst 
       (.I(DATO[4]),
        .O(DATO_IBUF[4]));
  IBUF \DATO_IBUF[5]_inst 
       (.I(DATO[5]),
        .O(DATO_IBUF[5]));
  IBUF \DATO_IBUF[6]_inst 
       (.I(DATO[6]),
        .O(DATO_IBUF[6]));
  IBUF \DATO_IBUF[7]_inst 
       (.I(DATO[7]),
        .O(DATO_IBUF[7]));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[0] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[0]),
        .Q(DA_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[1] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[1]),
        .Q(DA_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[2] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[2]),
        .Q(DA_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[3] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[3]),
        .Q(DA_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[4] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[4]),
        .Q(DA_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[5] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[5]),
        .Q(DA_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[6] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[6]),
        .Q(DA_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DA_reg_reg[7] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selA_IBUF),
        .D(DATO_IBUF[7]),
        .Q(DA_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[0] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[0]),
        .Q(DB_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[1] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[1]),
        .Q(DB_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[2] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[2]),
        .Q(DB_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[3] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[3]),
        .Q(DB_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[4] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[4]),
        .Q(DB_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[5] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[5]),
        .Q(DB_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[6] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[6]),
        .Q(DB_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DB_reg_reg[7] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selB_IBUF),
        .D(DATO_IBUF[7]),
        .Q(DB_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[0] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selOp_IBUF),
        .D(DATO_IBUF[0]),
        .Q(\OP_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[1] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selOp_IBUF),
        .D(DATO_IBUF[1]),
        .Q(\0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[2] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selOp_IBUF),
        .D(DATO_IBUF[2]),
        .Q(\OP_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[3] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selOp_IBUF),
        .D(DATO_IBUF[3]),
        .Q(\OP_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[4] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selOp_IBUF),
        .D(DATO_IBUF[4]),
        .Q(\OP_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_reg_reg[5] 
       (.C(CLOCK_IBUF_BUFG),
        .CE(selOp_IBUF),
        .D(DATO_IBUF[5]),
        .Q(\OP_reg_reg_n_0_[5] ),
        .R(1'b0));
  alu myAlu
       (.Q(DA_reg),
        ._carry__0_0(DB_reg),
        .\o_alu[0] (\o_alu_OBUF[0]_inst_i_2_n_0 ),
        .\o_alu[0]_0 (\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .\o_alu[0]_1 (\o_alu_OBUF[1]_inst_i_2_n_0 ),
        .\o_alu[1] (\o_alu_OBUF[2]_inst_i_2_n_0 ),
        .\o_alu[2] (\o_alu_OBUF[3]_inst_i_2_n_0 ),
        .\o_alu[3] (\o_alu_OBUF[4]_inst_i_2_n_0 ),
        .\o_alu[4] (\o_alu_OBUF[5]_inst_i_2_n_0 ),
        .\o_alu[5] (\o_alu_OBUF[5]_inst_i_3_n_0 ),
        .\o_alu[6] ({\OP_reg_reg_n_0_[5] ,\OP_reg_reg_n_0_[4] ,\OP_reg_reg_n_0_[3] ,\OP_reg_reg_n_0_[2] ,\0 ,\OP_reg_reg_n_0_[0] }),
        .\o_alu[6]_0 (\o_alu_OBUF[6]_inst_i_2_n_0 ),
        .\o_alu[7] (\o_alu_OBUF[7]_inst_i_3_n_0 ),
        .\o_alu[7]_0 (\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .o_alu_OBUF(o_alu_OBUF));
  OBUF \o_alu_OBUF[0]_inst 
       (.I(o_alu_OBUF[0]),
        .O(o_alu[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_alu_OBUF[0]_inst_i_2 
       (.I0(DA_reg[4]),
        .I1(DA_reg[6]),
        .I2(DB_reg[2]),
        .I3(DB_reg[1]),
        .I4(DA_reg[0]),
        .I5(DA_reg[2]),
        .O(\o_alu_OBUF[0]_inst_i_2_n_0 ));
  OBUF \o_alu_OBUF[1]_inst 
       (.I(o_alu_OBUF[1]),
        .O(o_alu[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \o_alu_OBUF[1]_inst_i_2 
       (.I0(DA_reg[5]),
        .I1(DA_reg[7]),
        .I2(DB_reg[2]),
        .I3(DB_reg[1]),
        .I4(DA_reg[1]),
        .I5(DA_reg[3]),
        .O(\o_alu_OBUF[1]_inst_i_2_n_0 ));
  OBUF \o_alu_OBUF[2]_inst 
       (.I(o_alu_OBUF[2]),
        .O(o_alu[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_alu_OBUF[2]_inst_i_2 
       (.I0(DA_reg[2]),
        .I1(DA_reg[4]),
        .I2(DA_reg[6]),
        .I3(DB_reg[2]),
        .I4(DB_reg[1]),
        .O(\o_alu_OBUF[2]_inst_i_2_n_0 ));
  OBUF \o_alu_OBUF[3]_inst 
       (.I(o_alu_OBUF[3]),
        .O(o_alu[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \o_alu_OBUF[3]_inst_i_2 
       (.I0(DA_reg[3]),
        .I1(DA_reg[5]),
        .I2(DA_reg[7]),
        .I3(DB_reg[2]),
        .I4(DB_reg[1]),
        .O(\o_alu_OBUF[3]_inst_i_2_n_0 ));
  OBUF \o_alu_OBUF[4]_inst 
       (.I(o_alu_OBUF[4]),
        .O(o_alu[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_alu_OBUF[4]_inst_i_2 
       (.I0(DA_reg[6]),
        .I1(DA_reg[4]),
        .I2(DB_reg[1]),
        .I3(DB_reg[2]),
        .O(\o_alu_OBUF[4]_inst_i_2_n_0 ));
  OBUF \o_alu_OBUF[5]_inst 
       (.I(o_alu_OBUF[5]),
        .O(o_alu[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \o_alu_OBUF[5]_inst_i_2 
       (.I0(DA_reg[7]),
        .I1(DA_reg[5]),
        .I2(DB_reg[1]),
        .I3(DB_reg[2]),
        .O(\o_alu_OBUF[5]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \o_alu_OBUF[5]_inst_i_3 
       (.I0(DB_reg[2]),
        .I1(DB_reg[1]),
        .I2(DA_reg[6]),
        .O(\o_alu_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \o_alu_OBUF[5]_inst_i_4 
       (.I0(\OP_reg_reg_n_0_[3] ),
        .I1(\OP_reg_reg_n_0_[4] ),
        .I2(\OP_reg_reg_n_0_[2] ),
        .I3(\0 ),
        .I4(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I5(DB_reg[0]),
        .O(\o_alu_OBUF[5]_inst_i_4_n_0 ));
  OBUF \o_alu_OBUF[6]_inst 
       (.I(o_alu_OBUF[6]),
        .O(o_alu[6]));
  LUT6 #(
    .INIT(64'h000000F800000088)) 
    \o_alu_OBUF[6]_inst_i_2 
       (.I0(\o_alu_OBUF[5]_inst_i_4_n_0 ),
        .I1(DA_reg[7]),
        .I2(\o_alu_OBUF[7]_inst_i_4_n_0 ),
        .I3(DB_reg[2]),
        .I4(DB_reg[1]),
        .I5(DA_reg[6]),
        .O(\o_alu_OBUF[6]_inst_i_2_n_0 ));
  OBUF \o_alu_OBUF[7]_inst 
       (.I(o_alu_OBUF[7]),
        .O(o_alu[7]));
  LUT3 #(
    .INIT(8'h10)) 
    \o_alu_OBUF[7]_inst_i_3 
       (.I0(\OP_reg_reg_n_0_[4] ),
        .I1(\OP_reg_reg_n_0_[3] ),
        .I2(\OP_reg_reg_n_0_[5] ),
        .O(\o_alu_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \o_alu_OBUF[7]_inst_i_4 
       (.I0(\OP_reg_reg_n_0_[3] ),
        .I1(\OP_reg_reg_n_0_[4] ),
        .I2(\OP_reg_reg_n_0_[2] ),
        .I3(\0 ),
        .I4(\o_alu_OBUF[7]_inst_i_5_n_0 ),
        .I5(DB_reg[0]),
        .O(\o_alu_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_alu_OBUF[7]_inst_i_5 
       (.I0(DB_reg[6]),
        .I1(DB_reg[7]),
        .I2(DB_reg[5]),
        .I3(DB_reg[4]),
        .I4(DB_reg[3]),
        .I5(\OP_reg_reg_n_0_[5] ),
        .O(\o_alu_OBUF[7]_inst_i_5_n_0 ));
  IBUF selA_IBUF_inst
       (.I(selA),
        .O(selA_IBUF));
  IBUF selB_IBUF_inst
       (.I(selB),
        .O(selB_IBUF));
  IBUF selOp_IBUF_inst
       (.I(selOp),
        .O(selOp_IBUF));
endmodule

module alu
   (o_alu_OBUF,
    Q,
    \o_alu[6] ,
    \o_alu[7] ,
    \o_alu[7]_0 ,
    _carry__0_0,
    \o_alu[0] ,
    \o_alu[0]_0 ,
    \o_alu[0]_1 ,
    \o_alu[1] ,
    \o_alu[2] ,
    \o_alu[3] ,
    \o_alu[4] ,
    \o_alu[5] ,
    \o_alu[6]_0 );
  output [7:0]o_alu_OBUF;
  input [7:0]Q;
  input [5:0]\o_alu[6] ;
  input \o_alu[7] ;
  input \o_alu[7]_0 ;
  input [7:0]_carry__0_0;
  input \o_alu[0] ;
  input \o_alu[0]_0 ;
  input \o_alu[0]_1 ;
  input \o_alu[1] ;
  input \o_alu[2] ;
  input \o_alu[3] ;
  input \o_alu[4] ;
  input \o_alu[5] ;
  input \o_alu[6]_0 ;

  wire [7:0]Q;
  wire [7:0]_carry__0_0;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire [7:0]data0;
  wire \o_alu[0] ;
  wire \o_alu[0]_0 ;
  wire \o_alu[0]_1 ;
  wire \o_alu[1] ;
  wire \o_alu[2] ;
  wire \o_alu[3] ;
  wire \o_alu[4] ;
  wire \o_alu[5] ;
  wire [5:0]\o_alu[6] ;
  wire \o_alu[6]_0 ;
  wire \o_alu[7] ;
  wire \o_alu[7]_0 ;
  wire [7:0]o_alu_OBUF;
  wire \o_alu_OBUF[0]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[1]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[2]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[3]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[4]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[5]_inst_i_5_n_0 ;
  wire \o_alu_OBUF[6]_inst_i_3_n_0 ;
  wire \o_alu_OBUF[7]_inst_i_2_n_0 ;
  wire [3:3]NLW__carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\o_alu[6] [1]}),
        .O(data0[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({NLW__carry__0_CO_UNCONNECTED[3],_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_1
       (.I0(_carry__0_0[7]),
        .I1(Q[7]),
        .I2(\o_alu[6] [1]),
        .O(_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_2
       (.I0(_carry__0_0[6]),
        .I1(\o_alu[6] [1]),
        .I2(Q[6]),
        .O(_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_3
       (.I0(_carry__0_0[5]),
        .I1(\o_alu[6] [1]),
        .I2(Q[5]),
        .O(_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_4
       (.I0(_carry__0_0[4]),
        .I1(\o_alu[6] [1]),
        .I2(Q[4]),
        .O(_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_1
       (.I0(_carry__0_0[3]),
        .I1(\o_alu[6] [1]),
        .I2(Q[3]),
        .O(_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_2
       (.I0(_carry__0_0[2]),
        .I1(\o_alu[6] [1]),
        .I2(Q[2]),
        .O(_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_3
       (.I0(_carry__0_0[1]),
        .I1(\o_alu[6] [1]),
        .I2(Q[1]),
        .O(_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    _carry_i_4
       (.I0(_carry__0_0[0]),
        .O(_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[0]_inst_i_1 
       (.I0(\o_alu[7]_0 ),
        .I1(\o_alu[0] ),
        .I2(\o_alu[0]_0 ),
        .I3(\o_alu[0]_1 ),
        .I4(\o_alu_OBUF[0]_inst_i_3_n_0 ),
        .I5(\o_alu[7] ),
        .O(o_alu_OBUF[0]));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[0]_inst_i_3 
       (.I0(data0[0]),
        .I1(Q[0]),
        .I2(_carry__0_0[0]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [2]),
        .I5(\o_alu[6] [0]),
        .O(\o_alu_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[1]_inst_i_1 
       (.I0(\o_alu[7]_0 ),
        .I1(\o_alu[0]_1 ),
        .I2(\o_alu[0]_0 ),
        .I3(\o_alu[1] ),
        .I4(\o_alu_OBUF[1]_inst_i_3_n_0 ),
        .I5(\o_alu[7] ),
        .O(o_alu_OBUF[1]));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[1]_inst_i_3 
       (.I0(data0[1]),
        .I1(Q[1]),
        .I2(_carry__0_0[1]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [2]),
        .I5(\o_alu[6] [0]),
        .O(\o_alu_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[2]_inst_i_1 
       (.I0(\o_alu[7]_0 ),
        .I1(\o_alu[1] ),
        .I2(\o_alu[0]_0 ),
        .I3(\o_alu[2] ),
        .I4(\o_alu_OBUF[2]_inst_i_3_n_0 ),
        .I5(\o_alu[7] ),
        .O(o_alu_OBUF[2]));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[2]_inst_i_3 
       (.I0(data0[2]),
        .I1(Q[2]),
        .I2(_carry__0_0[2]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [2]),
        .I5(\o_alu[6] [0]),
        .O(\o_alu_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[3]_inst_i_1 
       (.I0(\o_alu[7]_0 ),
        .I1(\o_alu[2] ),
        .I2(\o_alu[0]_0 ),
        .I3(\o_alu[3] ),
        .I4(\o_alu_OBUF[3]_inst_i_3_n_0 ),
        .I5(\o_alu[7] ),
        .O(o_alu_OBUF[3]));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[3]_inst_i_3 
       (.I0(data0[3]),
        .I1(Q[3]),
        .I2(_carry__0_0[3]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [2]),
        .I5(\o_alu[6] [0]),
        .O(\o_alu_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[4]_inst_i_1 
       (.I0(\o_alu[7]_0 ),
        .I1(\o_alu[3] ),
        .I2(\o_alu[0]_0 ),
        .I3(\o_alu[4] ),
        .I4(\o_alu_OBUF[4]_inst_i_3_n_0 ),
        .I5(\o_alu[7] ),
        .O(o_alu_OBUF[4]));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[4]_inst_i_3 
       (.I0(data0[4]),
        .I1(Q[4]),
        .I2(_carry__0_0[4]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [2]),
        .I5(\o_alu[6] [0]),
        .O(\o_alu_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_alu_OBUF[5]_inst_i_1 
       (.I0(\o_alu[7]_0 ),
        .I1(\o_alu[4] ),
        .I2(\o_alu[5] ),
        .I3(\o_alu[0]_0 ),
        .I4(\o_alu_OBUF[5]_inst_i_5_n_0 ),
        .I5(\o_alu[7] ),
        .O(o_alu_OBUF[5]));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[5]_inst_i_5 
       (.I0(data0[5]),
        .I1(Q[5]),
        .I2(_carry__0_0[5]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [2]),
        .I5(\o_alu[6] [0]),
        .O(\o_alu_OBUF[5]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \o_alu_OBUF[6]_inst_i_1 
       (.I0(\o_alu[6]_0 ),
        .I1(\o_alu_OBUF[6]_inst_i_3_n_0 ),
        .I2(\o_alu[6] [4]),
        .I3(\o_alu[6] [3]),
        .I4(\o_alu[6] [5]),
        .O(o_alu_OBUF[6]));
  LUT6 #(
    .INIT(64'h03FC00003CC0AAAA)) 
    \o_alu_OBUF[6]_inst_i_3 
       (.I0(data0[6]),
        .I1(Q[6]),
        .I2(_carry__0_0[6]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [2]),
        .I5(\o_alu[6] [0]),
        .O(\o_alu_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \o_alu_OBUF[7]_inst_i_1 
       (.I0(\o_alu_OBUF[7]_inst_i_2_n_0 ),
        .I1(\o_alu[7] ),
        .I2(\o_alu[7]_0 ),
        .I3(_carry__0_0[2]),
        .I4(_carry__0_0[1]),
        .I5(Q[7]),
        .O(o_alu_OBUF[7]));
  LUT6 #(
    .INIT(64'h03FC3CC00000AAAA)) 
    \o_alu_OBUF[7]_inst_i_2 
       (.I0(data0[7]),
        .I1(_carry__0_0[7]),
        .I2(Q[7]),
        .I3(\o_alu[6] [1]),
        .I4(\o_alu[6] [0]),
        .I5(\o_alu[6] [2]),
        .O(\o_alu_OBUF[7]_inst_i_2_n_0 ));
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
