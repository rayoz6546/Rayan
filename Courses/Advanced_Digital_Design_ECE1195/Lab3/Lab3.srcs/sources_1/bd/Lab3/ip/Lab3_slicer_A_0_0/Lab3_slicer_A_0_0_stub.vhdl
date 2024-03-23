-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct  6 17:43:43 2022
-- Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/RAYAN/Lab3/Lab3.srcs/sources_1/bd/Lab3/ip/Lab3_slicer_A_0_0/Lab3_slicer_A_0_0_stub.vhdl
-- Design      : Lab3_slicer_A_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab3_slicer_A_0_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 63 downto 0 );
    b : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Lab3_slicer_A_0_0;

architecture stub of Lab3_slicer_A_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[63:0],b[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "slicer_A,Vivado 2018.3";
begin
end;
