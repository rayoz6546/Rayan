// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep 12 19:46:30 2022
// Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/RAYAN/Lab_1/Lab_1.srcs/sources_1/bd/Lab_1/ip/Lab_1_adder_subtractor_0_0_1/Lab_1_adder_subtractor_0_0_sim_netlist.v
// Design      : Lab_1_adder_subtractor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lab_1_adder_subtractor_0_0,adder_subtractor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "adder_subtractor,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module Lab_1_adder_subtractor_0_0
   (A,
    B,
    k,
    S,
    Cout);
  input [31:0]A;
  input [31:0]B;
  input k;
  output [31:0]S;
  output Cout;

  wire [31:0]A;
  wire [31:0]B;
  wire Cout;
  wire [31:0]S;
  wire \U0/C_10 ;
  wire \U0/C_12 ;
  wire \U0/C_14 ;
  wire \U0/C_16 ;
  wire \U0/C_18 ;
  wire \U0/C_2 ;
  wire \U0/C_20 ;
  wire \U0/C_22 ;
  wire \U0/C_24 ;
  wire \U0/C_26 ;
  wire \U0/C_28 ;
  wire \U0/C_30 ;
  wire \U0/C_4 ;
  wire \U0/C_6 ;
  wire \U0/C_8 ;
  wire k;

  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    Cout_INST_0
       (.I0(A[31]),
        .I1(k),
        .I2(B[30]),
        .I3(\U0/C_30 ),
        .I4(A[30]),
        .I5(B[31]),
        .O(Cout));
  LUT2 #(
    .INIT(4'h6)) 
    \S[0]_INST_0 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[10]_INST_0 
       (.I0(B[10]),
        .I1(k),
        .I2(A[10]),
        .I3(\U0/C_10 ),
        .O(S[10]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[11]_INST_0 
       (.I0(B[11]),
        .I1(A[11]),
        .I2(A[10]),
        .I3(\U0/C_10 ),
        .I4(B[10]),
        .I5(k),
        .O(S[11]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[11]_INST_0_i_1 
       (.I0(A[9]),
        .I1(k),
        .I2(B[8]),
        .I3(\U0/C_8 ),
        .I4(A[8]),
        .I5(B[9]),
        .O(\U0/C_10 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[12]_INST_0 
       (.I0(B[12]),
        .I1(k),
        .I2(A[12]),
        .I3(\U0/C_12 ),
        .O(S[12]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[13]_INST_0 
       (.I0(B[13]),
        .I1(A[13]),
        .I2(A[12]),
        .I3(\U0/C_12 ),
        .I4(B[12]),
        .I5(k),
        .O(S[13]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[13]_INST_0_i_1 
       (.I0(A[11]),
        .I1(k),
        .I2(B[10]),
        .I3(\U0/C_10 ),
        .I4(A[10]),
        .I5(B[11]),
        .O(\U0/C_12 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[14]_INST_0 
       (.I0(B[14]),
        .I1(k),
        .I2(A[14]),
        .I3(\U0/C_14 ),
        .O(S[14]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[15]_INST_0 
       (.I0(B[15]),
        .I1(A[15]),
        .I2(A[14]),
        .I3(\U0/C_14 ),
        .I4(B[14]),
        .I5(k),
        .O(S[15]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[15]_INST_0_i_1 
       (.I0(A[13]),
        .I1(k),
        .I2(B[12]),
        .I3(\U0/C_12 ),
        .I4(A[12]),
        .I5(B[13]),
        .O(\U0/C_14 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[16]_INST_0 
       (.I0(B[16]),
        .I1(k),
        .I2(A[16]),
        .I3(\U0/C_16 ),
        .O(S[16]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[17]_INST_0 
       (.I0(B[17]),
        .I1(A[17]),
        .I2(A[16]),
        .I3(\U0/C_16 ),
        .I4(B[16]),
        .I5(k),
        .O(S[17]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[17]_INST_0_i_1 
       (.I0(A[15]),
        .I1(k),
        .I2(B[14]),
        .I3(\U0/C_14 ),
        .I4(A[14]),
        .I5(B[15]),
        .O(\U0/C_16 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[18]_INST_0 
       (.I0(B[18]),
        .I1(k),
        .I2(A[18]),
        .I3(\U0/C_18 ),
        .O(S[18]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[19]_INST_0 
       (.I0(B[19]),
        .I1(A[19]),
        .I2(A[18]),
        .I3(\U0/C_18 ),
        .I4(B[18]),
        .I5(k),
        .O(S[19]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[19]_INST_0_i_1 
       (.I0(A[17]),
        .I1(k),
        .I2(B[16]),
        .I3(\U0/C_16 ),
        .I4(A[16]),
        .I5(B[17]),
        .O(\U0/C_18 ));
  LUT5 #(
    .INIT(32'h69966666)) 
    \S[1]_INST_0 
       (.I0(B[1]),
        .I1(A[1]),
        .I2(A[0]),
        .I3(k),
        .I4(B[0]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[20]_INST_0 
       (.I0(B[20]),
        .I1(k),
        .I2(A[20]),
        .I3(\U0/C_20 ),
        .O(S[20]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[21]_INST_0 
       (.I0(B[21]),
        .I1(A[21]),
        .I2(A[20]),
        .I3(\U0/C_20 ),
        .I4(B[20]),
        .I5(k),
        .O(S[21]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[21]_INST_0_i_1 
       (.I0(A[19]),
        .I1(k),
        .I2(B[18]),
        .I3(\U0/C_18 ),
        .I4(A[18]),
        .I5(B[19]),
        .O(\U0/C_20 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[22]_INST_0 
       (.I0(B[22]),
        .I1(k),
        .I2(A[22]),
        .I3(\U0/C_22 ),
        .O(S[22]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[23]_INST_0 
       (.I0(B[23]),
        .I1(A[23]),
        .I2(A[22]),
        .I3(\U0/C_22 ),
        .I4(B[22]),
        .I5(k),
        .O(S[23]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[23]_INST_0_i_1 
       (.I0(A[21]),
        .I1(k),
        .I2(B[20]),
        .I3(\U0/C_20 ),
        .I4(A[20]),
        .I5(B[21]),
        .O(\U0/C_22 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[24]_INST_0 
       (.I0(B[24]),
        .I1(k),
        .I2(A[24]),
        .I3(\U0/C_24 ),
        .O(S[24]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[25]_INST_0 
       (.I0(B[25]),
        .I1(A[25]),
        .I2(A[24]),
        .I3(\U0/C_24 ),
        .I4(B[24]),
        .I5(k),
        .O(S[25]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[25]_INST_0_i_1 
       (.I0(A[23]),
        .I1(k),
        .I2(B[22]),
        .I3(\U0/C_22 ),
        .I4(A[22]),
        .I5(B[23]),
        .O(\U0/C_24 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[26]_INST_0 
       (.I0(B[26]),
        .I1(k),
        .I2(A[26]),
        .I3(\U0/C_26 ),
        .O(S[26]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[27]_INST_0 
       (.I0(B[27]),
        .I1(A[27]),
        .I2(A[26]),
        .I3(\U0/C_26 ),
        .I4(B[26]),
        .I5(k),
        .O(S[27]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[27]_INST_0_i_1 
       (.I0(A[25]),
        .I1(k),
        .I2(B[24]),
        .I3(\U0/C_24 ),
        .I4(A[24]),
        .I5(B[25]),
        .O(\U0/C_26 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[28]_INST_0 
       (.I0(B[28]),
        .I1(k),
        .I2(A[28]),
        .I3(\U0/C_28 ),
        .O(S[28]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[29]_INST_0 
       (.I0(B[29]),
        .I1(A[29]),
        .I2(A[28]),
        .I3(\U0/C_28 ),
        .I4(B[28]),
        .I5(k),
        .O(S[29]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[29]_INST_0_i_1 
       (.I0(A[27]),
        .I1(k),
        .I2(B[26]),
        .I3(\U0/C_26 ),
        .I4(A[26]),
        .I5(B[27]),
        .O(\U0/C_28 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[2]_INST_0 
       (.I0(B[2]),
        .I1(k),
        .I2(A[2]),
        .I3(\U0/C_2 ),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[30]_INST_0 
       (.I0(B[30]),
        .I1(k),
        .I2(A[30]),
        .I3(\U0/C_30 ),
        .O(S[30]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[31]_INST_0 
       (.I0(B[31]),
        .I1(A[31]),
        .I2(A[30]),
        .I3(\U0/C_30 ),
        .I4(B[30]),
        .I5(k),
        .O(S[31]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[31]_INST_0_i_1 
       (.I0(A[29]),
        .I1(k),
        .I2(B[28]),
        .I3(\U0/C_28 ),
        .I4(A[28]),
        .I5(B[29]),
        .O(\U0/C_30 ));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[3]_INST_0 
       (.I0(B[3]),
        .I1(A[3]),
        .I2(A[2]),
        .I3(\U0/C_2 ),
        .I4(B[2]),
        .I5(k),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hAE2AF8B0)) 
    \S[3]_INST_0_i_1 
       (.I0(A[1]),
        .I1(B[0]),
        .I2(k),
        .I3(A[0]),
        .I4(B[1]),
        .O(\U0/C_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[4]_INST_0 
       (.I0(B[4]),
        .I1(k),
        .I2(A[4]),
        .I3(\U0/C_4 ),
        .O(S[4]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[5]_INST_0 
       (.I0(B[5]),
        .I1(A[5]),
        .I2(A[4]),
        .I3(\U0/C_4 ),
        .I4(B[4]),
        .I5(k),
        .O(S[5]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[5]_INST_0_i_1 
       (.I0(A[3]),
        .I1(k),
        .I2(B[2]),
        .I3(\U0/C_2 ),
        .I4(A[2]),
        .I5(B[3]),
        .O(\U0/C_4 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[6]_INST_0 
       (.I0(B[6]),
        .I1(k),
        .I2(A[6]),
        .I3(\U0/C_6 ),
        .O(S[6]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[7]_INST_0 
       (.I0(B[7]),
        .I1(A[7]),
        .I2(A[6]),
        .I3(\U0/C_6 ),
        .I4(B[6]),
        .I5(k),
        .O(S[7]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[7]_INST_0_i_1 
       (.I0(A[5]),
        .I1(k),
        .I2(B[4]),
        .I3(\U0/C_4 ),
        .I4(A[4]),
        .I5(B[5]),
        .O(\U0/C_6 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \S[8]_INST_0 
       (.I0(B[8]),
        .I1(k),
        .I2(A[8]),
        .I3(\U0/C_8 ),
        .O(S[8]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \S[9]_INST_0 
       (.I0(B[9]),
        .I1(A[9]),
        .I2(A[8]),
        .I3(\U0/C_8 ),
        .I4(B[8]),
        .I5(k),
        .O(S[9]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \S[9]_INST_0_i_1 
       (.I0(A[7]),
        .I1(k),
        .I2(B[6]),
        .I3(\U0/C_6 ),
        .I4(A[6]),
        .I5(B[7]),
        .O(\U0/C_8 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
