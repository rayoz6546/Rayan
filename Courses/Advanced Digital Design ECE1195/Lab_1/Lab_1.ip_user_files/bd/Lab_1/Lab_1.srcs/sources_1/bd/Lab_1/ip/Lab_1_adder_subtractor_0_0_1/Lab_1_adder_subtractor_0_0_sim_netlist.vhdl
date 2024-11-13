-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Sep 12 19:46:30 2022
-- Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/RAYAN/Lab_1/Lab_1.srcs/sources_1/bd/Lab_1/ip/Lab_1_adder_subtractor_0_0_1/Lab_1_adder_subtractor_0_0_sim_netlist.vhdl
-- Design      : Lab_1_adder_subtractor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_1_adder_subtractor_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    k : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lab_1_adder_subtractor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lab_1_adder_subtractor_0_0 : entity is "Lab_1_adder_subtractor_0_0,adder_subtractor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Lab_1_adder_subtractor_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Lab_1_adder_subtractor_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Lab_1_adder_subtractor_0_0 : entity is "adder_subtractor,Vivado 2018.3";
end Lab_1_adder_subtractor_0_0;

architecture STRUCTURE of Lab_1_adder_subtractor_0_0 is
  signal \U0/C_10\ : STD_LOGIC;
  signal \U0/C_12\ : STD_LOGIC;
  signal \U0/C_14\ : STD_LOGIC;
  signal \U0/C_16\ : STD_LOGIC;
  signal \U0/C_18\ : STD_LOGIC;
  signal \U0/C_2\ : STD_LOGIC;
  signal \U0/C_20\ : STD_LOGIC;
  signal \U0/C_22\ : STD_LOGIC;
  signal \U0/C_24\ : STD_LOGIC;
  signal \U0/C_26\ : STD_LOGIC;
  signal \U0/C_28\ : STD_LOGIC;
  signal \U0/C_30\ : STD_LOGIC;
  signal \U0/C_4\ : STD_LOGIC;
  signal \U0/C_6\ : STD_LOGIC;
  signal \U0/C_8\ : STD_LOGIC;
begin
Cout_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(31),
      I1 => k,
      I2 => B(30),
      I3 => \U0/C_30\,
      I4 => A(30),
      I5 => B(31),
      O => Cout
    );
\S[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S(0)
    );
\S[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(10),
      I1 => k,
      I2 => A(10),
      I3 => \U0/C_10\,
      O => S(10)
    );
\S[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      I2 => A(10),
      I3 => \U0/C_10\,
      I4 => B(10),
      I5 => k,
      O => S(11)
    );
\S[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(9),
      I1 => k,
      I2 => B(8),
      I3 => \U0/C_8\,
      I4 => A(8),
      I5 => B(9),
      O => \U0/C_10\
    );
\S[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(12),
      I1 => k,
      I2 => A(12),
      I3 => \U0/C_12\,
      O => S(12)
    );
\S[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(13),
      I1 => A(13),
      I2 => A(12),
      I3 => \U0/C_12\,
      I4 => B(12),
      I5 => k,
      O => S(13)
    );
\S[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(11),
      I1 => k,
      I2 => B(10),
      I3 => \U0/C_10\,
      I4 => A(10),
      I5 => B(11),
      O => \U0/C_12\
    );
\S[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(14),
      I1 => k,
      I2 => A(14),
      I3 => \U0/C_14\,
      O => S(14)
    );
\S[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => A(14),
      I3 => \U0/C_14\,
      I4 => B(14),
      I5 => k,
      O => S(15)
    );
\S[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(13),
      I1 => k,
      I2 => B(12),
      I3 => \U0/C_12\,
      I4 => A(12),
      I5 => B(13),
      O => \U0/C_14\
    );
\S[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(16),
      I1 => k,
      I2 => A(16),
      I3 => \U0/C_16\,
      O => S(16)
    );
\S[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(17),
      I1 => A(17),
      I2 => A(16),
      I3 => \U0/C_16\,
      I4 => B(16),
      I5 => k,
      O => S(17)
    );
\S[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(15),
      I1 => k,
      I2 => B(14),
      I3 => \U0/C_14\,
      I4 => A(14),
      I5 => B(15),
      O => \U0/C_16\
    );
\S[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(18),
      I1 => k,
      I2 => A(18),
      I3 => \U0/C_18\,
      O => S(18)
    );
\S[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(19),
      I1 => A(19),
      I2 => A(18),
      I3 => \U0/C_18\,
      I4 => B(18),
      I5 => k,
      O => S(19)
    );
\S[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(17),
      I1 => k,
      I2 => B(16),
      I3 => \U0/C_16\,
      I4 => A(16),
      I5 => B(17),
      O => \U0/C_18\
    );
\S[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966666"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      I2 => A(0),
      I3 => k,
      I4 => B(0),
      O => S(1)
    );
\S[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(20),
      I1 => k,
      I2 => A(20),
      I3 => \U0/C_20\,
      O => S(20)
    );
\S[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      I2 => A(20),
      I3 => \U0/C_20\,
      I4 => B(20),
      I5 => k,
      O => S(21)
    );
\S[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(19),
      I1 => k,
      I2 => B(18),
      I3 => \U0/C_18\,
      I4 => A(18),
      I5 => B(19),
      O => \U0/C_20\
    );
\S[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(22),
      I1 => k,
      I2 => A(22),
      I3 => \U0/C_22\,
      O => S(22)
    );
\S[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(23),
      I1 => A(23),
      I2 => A(22),
      I3 => \U0/C_22\,
      I4 => B(22),
      I5 => k,
      O => S(23)
    );
\S[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(21),
      I1 => k,
      I2 => B(20),
      I3 => \U0/C_20\,
      I4 => A(20),
      I5 => B(21),
      O => \U0/C_22\
    );
\S[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(24),
      I1 => k,
      I2 => A(24),
      I3 => \U0/C_24\,
      O => S(24)
    );
\S[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(25),
      I1 => A(25),
      I2 => A(24),
      I3 => \U0/C_24\,
      I4 => B(24),
      I5 => k,
      O => S(25)
    );
\S[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(23),
      I1 => k,
      I2 => B(22),
      I3 => \U0/C_22\,
      I4 => A(22),
      I5 => B(23),
      O => \U0/C_24\
    );
\S[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(26),
      I1 => k,
      I2 => A(26),
      I3 => \U0/C_26\,
      O => S(26)
    );
\S[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      I2 => A(26),
      I3 => \U0/C_26\,
      I4 => B(26),
      I5 => k,
      O => S(27)
    );
\S[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(25),
      I1 => k,
      I2 => B(24),
      I3 => \U0/C_24\,
      I4 => A(24),
      I5 => B(25),
      O => \U0/C_26\
    );
\S[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(28),
      I1 => k,
      I2 => A(28),
      I3 => \U0/C_28\,
      O => S(28)
    );
\S[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(29),
      I1 => A(29),
      I2 => A(28),
      I3 => \U0/C_28\,
      I4 => B(28),
      I5 => k,
      O => S(29)
    );
\S[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(27),
      I1 => k,
      I2 => B(26),
      I3 => \U0/C_26\,
      I4 => A(26),
      I5 => B(27),
      O => \U0/C_28\
    );
\S[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(2),
      I1 => k,
      I2 => A(2),
      I3 => \U0/C_2\,
      O => S(2)
    );
\S[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(30),
      I1 => k,
      I2 => A(30),
      I3 => \U0/C_30\,
      O => S(30)
    );
\S[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(31),
      I1 => A(31),
      I2 => A(30),
      I3 => \U0/C_30\,
      I4 => B(30),
      I5 => k,
      O => S(31)
    );
\S[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(29),
      I1 => k,
      I2 => B(28),
      I3 => \U0/C_28\,
      I4 => A(28),
      I5 => B(29),
      O => \U0/C_30\
    );
\S[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      I2 => A(2),
      I3 => \U0/C_2\,
      I4 => B(2),
      I5 => k,
      O => S(3)
    );
\S[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE2AF8B0"
    )
        port map (
      I0 => A(1),
      I1 => B(0),
      I2 => k,
      I3 => A(0),
      I4 => B(1),
      O => \U0/C_2\
    );
\S[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(4),
      I1 => k,
      I2 => A(4),
      I3 => \U0/C_4\,
      O => S(4)
    );
\S[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      I2 => A(4),
      I3 => \U0/C_4\,
      I4 => B(4),
      I5 => k,
      O => S(5)
    );
\S[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(3),
      I1 => k,
      I2 => B(2),
      I3 => \U0/C_2\,
      I4 => A(2),
      I5 => B(3),
      O => \U0/C_4\
    );
\S[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(6),
      I1 => k,
      I2 => A(6),
      I3 => \U0/C_6\,
      O => S(6)
    );
\S[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      I2 => A(6),
      I3 => \U0/C_6\,
      I4 => B(6),
      I5 => k,
      O => S(7)
    );
\S[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(5),
      I1 => k,
      I2 => B(4),
      I3 => \U0/C_4\,
      I4 => A(4),
      I5 => B(5),
      O => \U0/C_6\
    );
\S[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(8),
      I1 => k,
      I2 => A(8),
      I3 => \U0/C_8\,
      O => S(8)
    );
\S[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      I2 => A(8),
      I3 => \U0/C_8\,
      I4 => B(8),
      I5 => k,
      O => S(9)
    );
\S[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => A(7),
      I1 => k,
      I2 => B(6),
      I3 => \U0/C_6\,
      I4 => A(6),
      I5 => B(7),
      O => \U0/C_8\
    );
end STRUCTURE;
