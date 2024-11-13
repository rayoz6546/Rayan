// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct  6 17:44:42 2022
// Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/RAYAN/Lab3/Lab3.srcs/sources_1/bd/Lab3/ip/Lab3_slicer_B_0_0/Lab3_slicer_B_0_0_stub.v
// Design      : Lab3_slicer_B_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "slicer_B,Vivado 2018.3" *)
module Lab3_slicer_B_0_0(a, b)
/* synthesis syn_black_box black_box_pad_pin="a[63:0],b[31:0]" */;
  input [63:0]a;
  output [31:0]b;
endmodule
