-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Nov  3 16:36:16 2022
-- Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/RAYAN/Lab_4/Lab_4.srcs/sources_1/bd/Lab_4/ip/Lab_4_top_level_0_0/Lab_4_top_level_0_0_stub.vhdl
-- Design      : Lab_4_top_level_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab_4_top_level_0_0 is
  Port ( 
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryDataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : out STD_LOGIC
  );

end Lab_4_top_level_0_0;

architecture stub of Lab_4_top_level_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "MemoryDataIn[31:0],CLK,RST,MemoryAddress[31:0],MemoryDataOut[31:0],MemWrite";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_level,Vivado 2018.3";
begin
end;
