// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov  3 16:36:16 2022
// Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/RAYAN/Lab_4/Lab_4.srcs/sources_1/bd/Lab_4/ip/Lab_4_top_level_0_0/Lab_4_top_level_0_0_stub.v
// Design      : Lab_4_top_level_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_level,Vivado 2018.3" *)
module Lab_4_top_level_0_0(MemoryDataIn, CLK, RST, MemoryAddress, 
  MemoryDataOut, MemWrite)
/* synthesis syn_black_box black_box_pad_pin="MemoryDataIn[31:0],CLK,RST,MemoryAddress[31:0],MemoryDataOut[31:0],MemWrite" */;
  input [31:0]MemoryDataIn;
  input CLK;
  input RST;
  output [31:0]MemoryAddress;
  output [31:0]MemoryDataOut;
  output MemWrite;
endmodule
