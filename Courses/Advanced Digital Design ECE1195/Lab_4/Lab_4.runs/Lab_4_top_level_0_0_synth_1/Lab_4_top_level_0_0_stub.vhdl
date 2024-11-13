-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Nov  3 16:36:14 2022
-- Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lab_4_top_level_0_0_stub.vhdl
-- Design      : Lab_4_top_level_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryDataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "MemoryDataIn[31:0],CLK,RST,MemoryAddress[31:0],MemoryDataOut[31:0],MemWrite";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_level,Vivado 2018.3";
begin
end;
