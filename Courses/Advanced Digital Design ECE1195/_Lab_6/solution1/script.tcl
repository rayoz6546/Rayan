############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project _Lab_6
set_top hw_conv
add_files ../../../../OneDrive/Desktop/lab6_template/vhls/convolution.cpp
add_files ../../../../OneDrive/Desktop/lab6_template/vhls/convolution.hpp
add_files ../../../../OneDrive/Desktop/lab6_template/vhls/image.cpp
add_files ../../../../OneDrive/Desktop/lab6_template/vhls/image.hpp
add_files ../../../../OneDrive/Desktop/lab6_template/vhls/rock512.pgm
add_files -tb ../../../../OneDrive/Desktop/lab6_template/vhls/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./_Lab_6/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog
