// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep 12 18:45:36 2022
// Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/RAYAN/Lab_1/Lab_1.srcs/sources_1/bd/Lab_1/ip/Lab_1_ila_0_0/Lab_1_ila_0_0_stub.v
// Design      : Lab_1_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2018.3" *)
module Lab_1_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[31:0],probe2[0:0],probe3[31:0],probe4[0:0],probe5[3:0],probe6[3:0]" */;
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [0:0]probe2;
  input [31:0]probe3;
  input [0:0]probe4;
  input [3:0]probe5;
  input [3:0]probe6;
endmodule
