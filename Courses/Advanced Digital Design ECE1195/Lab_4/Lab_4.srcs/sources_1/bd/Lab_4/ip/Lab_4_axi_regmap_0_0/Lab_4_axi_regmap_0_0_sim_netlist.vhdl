-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Nov  3 16:30:41 2022
-- Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/RAYAN/Lab_4/Lab_4.srcs/sources_1/bd/Lab_4/ip/Lab_4_axi_regmap_0_0/Lab_4_axi_regmap_0_0_sim_netlist.vhdl
-- Design      : Lab_4_axi_regmap_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_4_axi_regmap_0_0_mm_regmap is
  port (
    sel0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    REG0_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG7_WR : out STD_LOGIC;
    REG5_WR : out STD_LOGIC;
    REG3_WR : out STD_LOGIC;
    REG1_WR : out STD_LOGIC;
    REG6_WR : out STD_LOGIC;
    REG4_WR : out STD_LOGIC;
    REG2_WR : out STD_LOGIC;
    REG0_WR : out STD_LOGIC;
    \slv_read_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    REG1_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG3_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG4_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG5_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG6_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG7_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_out[0][31]_i_3_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    \slv_read_reg[6]_0\ : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    \slv_out[0][31]_i_3_1\ : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab_4_axi_regmap_0_0_mm_regmap : entity is "mm_regmap";
end Lab_4_axi_regmap_0_0_mm_regmap;

architecture STRUCTURE of Lab_4_axi_regmap_0_0_mm_regmap is
  signal RESET : STD_LOGIC;
  signal \^sel0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_out[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_out[0][31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_out[0][31]_i_5_n_0\ : STD_LOGIC;
  signal \slv_out[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[6][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[7][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_read[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_read[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_read[0]_i_4_n_0\ : STD_LOGIC;
  signal \slv_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_write[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_write[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_write[6]_i_1_n_0\ : STD_LOGIC;
  signal write : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \slv_write[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_write[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_write[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_write[6]_i_1\ : label is "soft_lutpair0";
begin
  sel0(7 downto 0) <= \^sel0\(7 downto 0);
\slv_out[0][31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => RESET
    );
\slv_out[0][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(2),
      I3 => \slv_out[0][31]_i_3_0\(1),
      O => write
    );
\slv_out[0][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_out[0][31]_i_4_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(8),
      I2 => \slv_out[0][31]_i_3_0\(7),
      I3 => \slv_out[0][31]_i_3_0\(6),
      I4 => \slv_out[0][31]_i_3_0\(5),
      I5 => \slv_out[0][31]_i_5_n_0\,
      O => \slv_out[0][31]_i_3_n_0\
    );
\slv_out[0][31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_0\(12),
      I1 => \slv_out[0][31]_i_3_0\(11),
      I2 => \slv_out[0][31]_i_3_0\(10),
      I3 => \slv_out[0][31]_i_3_0\(9),
      O => \slv_out[0][31]_i_4_n_0\
    );
\slv_out[0][31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_0\(13),
      I1 => S_AXI_WVALID,
      I2 => \slv_out[0][31]_i_3_1\,
      I3 => \slv_out[0][31]_i_3_0\(4),
      I4 => \slv_out[0][31]_i_3_0\(3),
      O => \slv_out[0][31]_i_5_n_0\
    );
\slv_out[1][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(2),
      I3 => \slv_out[0][31]_i_3_0\(1),
      O => \slv_out[1][31]_i_1_n_0\
    );
\slv_out[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(2),
      I3 => \slv_out[0][31]_i_3_0\(1),
      O => \slv_out[2][31]_i_1_n_0\
    );
\slv_out[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(2),
      I3 => \slv_out[0][31]_i_3_0\(1),
      O => \slv_out[3][31]_i_1_n_0\
    );
\slv_out[4][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(1),
      I3 => \slv_out[0][31]_i_3_0\(2),
      O => \slv_out[4][31]_i_1_n_0\
    );
\slv_out[5][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(1),
      I3 => \slv_out[0][31]_i_3_0\(2),
      O => \slv_out[5][31]_i_1_n_0\
    );
\slv_out[6][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(2),
      I3 => \slv_out[0][31]_i_3_0\(1),
      O => \slv_out[6][31]_i_1_n_0\
    );
\slv_out[7][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => \slv_out[0][31]_i_3_0\(2),
      I3 => \slv_out[0][31]_i_3_0\(1),
      O => \slv_out[7][31]_i_1_n_0\
    );
\slv_out_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(0),
      Q => REG0_OUT(0),
      R => RESET
    );
\slv_out_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(10),
      Q => REG0_OUT(10),
      R => RESET
    );
\slv_out_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(11),
      Q => REG0_OUT(11),
      R => RESET
    );
\slv_out_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(12),
      Q => REG0_OUT(12),
      R => RESET
    );
\slv_out_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(13),
      Q => REG0_OUT(13),
      R => RESET
    );
\slv_out_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(14),
      Q => REG0_OUT(14),
      R => RESET
    );
\slv_out_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(15),
      Q => REG0_OUT(15),
      R => RESET
    );
\slv_out_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(16),
      Q => REG0_OUT(16),
      R => RESET
    );
\slv_out_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(17),
      Q => REG0_OUT(17),
      R => RESET
    );
\slv_out_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(18),
      Q => REG0_OUT(18),
      R => RESET
    );
\slv_out_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(19),
      Q => REG0_OUT(19),
      R => RESET
    );
\slv_out_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(1),
      Q => REG0_OUT(1),
      R => RESET
    );
\slv_out_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(20),
      Q => REG0_OUT(20),
      R => RESET
    );
\slv_out_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(21),
      Q => REG0_OUT(21),
      R => RESET
    );
\slv_out_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(22),
      Q => REG0_OUT(22),
      R => RESET
    );
\slv_out_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(23),
      Q => REG0_OUT(23),
      R => RESET
    );
\slv_out_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(24),
      Q => REG0_OUT(24),
      R => RESET
    );
\slv_out_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(25),
      Q => REG0_OUT(25),
      R => RESET
    );
\slv_out_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(26),
      Q => REG0_OUT(26),
      R => RESET
    );
\slv_out_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(27),
      Q => REG0_OUT(27),
      R => RESET
    );
\slv_out_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(28),
      Q => REG0_OUT(28),
      R => RESET
    );
\slv_out_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(29),
      Q => REG0_OUT(29),
      R => RESET
    );
\slv_out_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(2),
      Q => REG0_OUT(2),
      R => RESET
    );
\slv_out_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(30),
      Q => REG0_OUT(30),
      R => RESET
    );
\slv_out_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(31),
      Q => REG0_OUT(31),
      R => RESET
    );
\slv_out_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(3),
      Q => REG0_OUT(3),
      R => RESET
    );
\slv_out_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(4),
      Q => REG0_OUT(4),
      R => RESET
    );
\slv_out_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(5),
      Q => REG0_OUT(5),
      R => RESET
    );
\slv_out_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(6),
      Q => REG0_OUT(6),
      R => RESET
    );
\slv_out_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(7),
      Q => REG0_OUT(7),
      R => RESET
    );
\slv_out_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(8),
      Q => REG0_OUT(8),
      R => RESET
    );
\slv_out_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(9),
      Q => REG0_OUT(9),
      R => RESET
    );
\slv_out_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG1_OUT(0),
      R => RESET
    );
\slv_out_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG1_OUT(10),
      R => RESET
    );
\slv_out_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG1_OUT(11),
      R => RESET
    );
\slv_out_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG1_OUT(12),
      R => RESET
    );
\slv_out_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG1_OUT(13),
      R => RESET
    );
\slv_out_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG1_OUT(14),
      R => RESET
    );
\slv_out_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG1_OUT(15),
      R => RESET
    );
\slv_out_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG1_OUT(16),
      R => RESET
    );
\slv_out_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG1_OUT(17),
      R => RESET
    );
\slv_out_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG1_OUT(18),
      R => RESET
    );
\slv_out_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG1_OUT(19),
      R => RESET
    );
\slv_out_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG1_OUT(1),
      R => RESET
    );
\slv_out_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG1_OUT(20),
      R => RESET
    );
\slv_out_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG1_OUT(21),
      R => RESET
    );
\slv_out_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG1_OUT(22),
      R => RESET
    );
\slv_out_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG1_OUT(23),
      R => RESET
    );
\slv_out_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG1_OUT(24),
      R => RESET
    );
\slv_out_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG1_OUT(25),
      R => RESET
    );
\slv_out_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG1_OUT(26),
      R => RESET
    );
\slv_out_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG1_OUT(27),
      R => RESET
    );
\slv_out_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG1_OUT(28),
      R => RESET
    );
\slv_out_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG1_OUT(29),
      R => RESET
    );
\slv_out_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG1_OUT(2),
      R => RESET
    );
\slv_out_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG1_OUT(30),
      R => RESET
    );
\slv_out_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG1_OUT(31),
      R => RESET
    );
\slv_out_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG1_OUT(3),
      R => RESET
    );
\slv_out_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG1_OUT(4),
      R => RESET
    );
\slv_out_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG1_OUT(5),
      R => RESET
    );
\slv_out_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG1_OUT(6),
      R => RESET
    );
\slv_out_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG1_OUT(7),
      R => RESET
    );
\slv_out_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG1_OUT(8),
      R => RESET
    );
\slv_out_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG1_OUT(9),
      R => RESET
    );
\slv_out_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG2_OUT(0),
      R => RESET
    );
\slv_out_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG2_OUT(10),
      R => RESET
    );
\slv_out_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG2_OUT(11),
      R => RESET
    );
\slv_out_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG2_OUT(12),
      R => RESET
    );
\slv_out_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG2_OUT(13),
      R => RESET
    );
\slv_out_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG2_OUT(14),
      R => RESET
    );
\slv_out_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG2_OUT(15),
      R => RESET
    );
\slv_out_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG2_OUT(16),
      R => RESET
    );
\slv_out_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG2_OUT(17),
      R => RESET
    );
\slv_out_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG2_OUT(18),
      R => RESET
    );
\slv_out_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG2_OUT(19),
      R => RESET
    );
\slv_out_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG2_OUT(1),
      R => RESET
    );
\slv_out_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG2_OUT(20),
      R => RESET
    );
\slv_out_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG2_OUT(21),
      R => RESET
    );
\slv_out_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG2_OUT(22),
      R => RESET
    );
\slv_out_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG2_OUT(23),
      R => RESET
    );
\slv_out_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG2_OUT(24),
      R => RESET
    );
\slv_out_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG2_OUT(25),
      R => RESET
    );
\slv_out_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG2_OUT(26),
      R => RESET
    );
\slv_out_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG2_OUT(27),
      R => RESET
    );
\slv_out_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG2_OUT(28),
      R => RESET
    );
\slv_out_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG2_OUT(29),
      R => RESET
    );
\slv_out_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG2_OUT(2),
      R => RESET
    );
\slv_out_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG2_OUT(30),
      R => RESET
    );
\slv_out_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG2_OUT(31),
      R => RESET
    );
\slv_out_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG2_OUT(3),
      R => RESET
    );
\slv_out_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG2_OUT(4),
      R => RESET
    );
\slv_out_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG2_OUT(5),
      R => RESET
    );
\slv_out_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG2_OUT(6),
      R => RESET
    );
\slv_out_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG2_OUT(7),
      R => RESET
    );
\slv_out_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG2_OUT(8),
      R => RESET
    );
\slv_out_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG2_OUT(9),
      R => RESET
    );
\slv_out_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG3_OUT(0),
      R => RESET
    );
\slv_out_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG3_OUT(10),
      R => RESET
    );
\slv_out_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG3_OUT(11),
      R => RESET
    );
\slv_out_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG3_OUT(12),
      R => RESET
    );
\slv_out_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG3_OUT(13),
      R => RESET
    );
\slv_out_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG3_OUT(14),
      R => RESET
    );
\slv_out_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG3_OUT(15),
      R => RESET
    );
\slv_out_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG3_OUT(16),
      R => RESET
    );
\slv_out_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG3_OUT(17),
      R => RESET
    );
\slv_out_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG3_OUT(18),
      R => RESET
    );
\slv_out_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG3_OUT(19),
      R => RESET
    );
\slv_out_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG3_OUT(1),
      R => RESET
    );
\slv_out_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG3_OUT(20),
      R => RESET
    );
\slv_out_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG3_OUT(21),
      R => RESET
    );
\slv_out_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG3_OUT(22),
      R => RESET
    );
\slv_out_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG3_OUT(23),
      R => RESET
    );
\slv_out_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG3_OUT(24),
      R => RESET
    );
\slv_out_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG3_OUT(25),
      R => RESET
    );
\slv_out_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG3_OUT(26),
      R => RESET
    );
\slv_out_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG3_OUT(27),
      R => RESET
    );
\slv_out_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG3_OUT(28),
      R => RESET
    );
\slv_out_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG3_OUT(29),
      R => RESET
    );
\slv_out_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG3_OUT(2),
      R => RESET
    );
\slv_out_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG3_OUT(30),
      R => RESET
    );
\slv_out_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG3_OUT(31),
      R => RESET
    );
\slv_out_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG3_OUT(3),
      R => RESET
    );
\slv_out_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG3_OUT(4),
      R => RESET
    );
\slv_out_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG3_OUT(5),
      R => RESET
    );
\slv_out_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG3_OUT(6),
      R => RESET
    );
\slv_out_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG3_OUT(7),
      R => RESET
    );
\slv_out_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG3_OUT(8),
      R => RESET
    );
\slv_out_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG3_OUT(9),
      R => RESET
    );
\slv_out_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG4_OUT(0),
      R => RESET
    );
\slv_out_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG4_OUT(10),
      R => RESET
    );
\slv_out_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG4_OUT(11),
      R => RESET
    );
\slv_out_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG4_OUT(12),
      R => RESET
    );
\slv_out_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG4_OUT(13),
      R => RESET
    );
\slv_out_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG4_OUT(14),
      R => RESET
    );
\slv_out_reg[4][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG4_OUT(15),
      R => RESET
    );
\slv_out_reg[4][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG4_OUT(16),
      R => RESET
    );
\slv_out_reg[4][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG4_OUT(17),
      R => RESET
    );
\slv_out_reg[4][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG4_OUT(18),
      R => RESET
    );
\slv_out_reg[4][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG4_OUT(19),
      R => RESET
    );
\slv_out_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG4_OUT(1),
      R => RESET
    );
\slv_out_reg[4][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG4_OUT(20),
      R => RESET
    );
\slv_out_reg[4][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG4_OUT(21),
      R => RESET
    );
\slv_out_reg[4][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG4_OUT(22),
      R => RESET
    );
\slv_out_reg[4][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG4_OUT(23),
      R => RESET
    );
\slv_out_reg[4][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG4_OUT(24),
      R => RESET
    );
\slv_out_reg[4][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG4_OUT(25),
      R => RESET
    );
\slv_out_reg[4][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG4_OUT(26),
      R => RESET
    );
\slv_out_reg[4][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG4_OUT(27),
      R => RESET
    );
\slv_out_reg[4][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG4_OUT(28),
      R => RESET
    );
\slv_out_reg[4][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG4_OUT(29),
      R => RESET
    );
\slv_out_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG4_OUT(2),
      R => RESET
    );
\slv_out_reg[4][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG4_OUT(30),
      R => RESET
    );
\slv_out_reg[4][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG4_OUT(31),
      R => RESET
    );
\slv_out_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG4_OUT(3),
      R => RESET
    );
\slv_out_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG4_OUT(4),
      R => RESET
    );
\slv_out_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG4_OUT(5),
      R => RESET
    );
\slv_out_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG4_OUT(6),
      R => RESET
    );
\slv_out_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG4_OUT(7),
      R => RESET
    );
\slv_out_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG4_OUT(8),
      R => RESET
    );
\slv_out_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[4][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG4_OUT(9),
      R => RESET
    );
\slv_out_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG5_OUT(0),
      R => RESET
    );
\slv_out_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG5_OUT(10),
      R => RESET
    );
\slv_out_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG5_OUT(11),
      R => RESET
    );
\slv_out_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG5_OUT(12),
      R => RESET
    );
\slv_out_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG5_OUT(13),
      R => RESET
    );
\slv_out_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG5_OUT(14),
      R => RESET
    );
\slv_out_reg[5][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG5_OUT(15),
      R => RESET
    );
\slv_out_reg[5][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG5_OUT(16),
      R => RESET
    );
\slv_out_reg[5][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG5_OUT(17),
      R => RESET
    );
\slv_out_reg[5][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG5_OUT(18),
      R => RESET
    );
\slv_out_reg[5][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG5_OUT(19),
      R => RESET
    );
\slv_out_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG5_OUT(1),
      R => RESET
    );
\slv_out_reg[5][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG5_OUT(20),
      R => RESET
    );
\slv_out_reg[5][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG5_OUT(21),
      R => RESET
    );
\slv_out_reg[5][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG5_OUT(22),
      R => RESET
    );
\slv_out_reg[5][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG5_OUT(23),
      R => RESET
    );
\slv_out_reg[5][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG5_OUT(24),
      R => RESET
    );
\slv_out_reg[5][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG5_OUT(25),
      R => RESET
    );
\slv_out_reg[5][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG5_OUT(26),
      R => RESET
    );
\slv_out_reg[5][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG5_OUT(27),
      R => RESET
    );
\slv_out_reg[5][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG5_OUT(28),
      R => RESET
    );
\slv_out_reg[5][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG5_OUT(29),
      R => RESET
    );
\slv_out_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG5_OUT(2),
      R => RESET
    );
\slv_out_reg[5][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG5_OUT(30),
      R => RESET
    );
\slv_out_reg[5][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG5_OUT(31),
      R => RESET
    );
\slv_out_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG5_OUT(3),
      R => RESET
    );
\slv_out_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG5_OUT(4),
      R => RESET
    );
\slv_out_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG5_OUT(5),
      R => RESET
    );
\slv_out_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG5_OUT(6),
      R => RESET
    );
\slv_out_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG5_OUT(7),
      R => RESET
    );
\slv_out_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG5_OUT(8),
      R => RESET
    );
\slv_out_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[5][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG5_OUT(9),
      R => RESET
    );
\slv_out_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG6_OUT(0),
      R => RESET
    );
\slv_out_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG6_OUT(10),
      R => RESET
    );
\slv_out_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG6_OUT(11),
      R => RESET
    );
\slv_out_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG6_OUT(12),
      R => RESET
    );
\slv_out_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG6_OUT(13),
      R => RESET
    );
\slv_out_reg[6][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG6_OUT(14),
      R => RESET
    );
\slv_out_reg[6][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG6_OUT(15),
      R => RESET
    );
\slv_out_reg[6][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG6_OUT(16),
      R => RESET
    );
\slv_out_reg[6][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG6_OUT(17),
      R => RESET
    );
\slv_out_reg[6][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG6_OUT(18),
      R => RESET
    );
\slv_out_reg[6][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG6_OUT(19),
      R => RESET
    );
\slv_out_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG6_OUT(1),
      R => RESET
    );
\slv_out_reg[6][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG6_OUT(20),
      R => RESET
    );
\slv_out_reg[6][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG6_OUT(21),
      R => RESET
    );
\slv_out_reg[6][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG6_OUT(22),
      R => RESET
    );
\slv_out_reg[6][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG6_OUT(23),
      R => RESET
    );
\slv_out_reg[6][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG6_OUT(24),
      R => RESET
    );
\slv_out_reg[6][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG6_OUT(25),
      R => RESET
    );
\slv_out_reg[6][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG6_OUT(26),
      R => RESET
    );
\slv_out_reg[6][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG6_OUT(27),
      R => RESET
    );
\slv_out_reg[6][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG6_OUT(28),
      R => RESET
    );
\slv_out_reg[6][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG6_OUT(29),
      R => RESET
    );
\slv_out_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG6_OUT(2),
      R => RESET
    );
\slv_out_reg[6][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG6_OUT(30),
      R => RESET
    );
\slv_out_reg[6][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG6_OUT(31),
      R => RESET
    );
\slv_out_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG6_OUT(3),
      R => RESET
    );
\slv_out_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG6_OUT(4),
      R => RESET
    );
\slv_out_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG6_OUT(5),
      R => RESET
    );
\slv_out_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG6_OUT(6),
      R => RESET
    );
\slv_out_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG6_OUT(7),
      R => RESET
    );
\slv_out_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG6_OUT(8),
      R => RESET
    );
\slv_out_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[6][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG6_OUT(9),
      R => RESET
    );
\slv_out_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG7_OUT(0),
      R => RESET
    );
\slv_out_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG7_OUT(10),
      R => RESET
    );
\slv_out_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG7_OUT(11),
      R => RESET
    );
\slv_out_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG7_OUT(12),
      R => RESET
    );
\slv_out_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG7_OUT(13),
      R => RESET
    );
\slv_out_reg[7][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG7_OUT(14),
      R => RESET
    );
\slv_out_reg[7][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG7_OUT(15),
      R => RESET
    );
\slv_out_reg[7][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG7_OUT(16),
      R => RESET
    );
\slv_out_reg[7][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG7_OUT(17),
      R => RESET
    );
\slv_out_reg[7][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG7_OUT(18),
      R => RESET
    );
\slv_out_reg[7][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG7_OUT(19),
      R => RESET
    );
\slv_out_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG7_OUT(1),
      R => RESET
    );
\slv_out_reg[7][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG7_OUT(20),
      R => RESET
    );
\slv_out_reg[7][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG7_OUT(21),
      R => RESET
    );
\slv_out_reg[7][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG7_OUT(22),
      R => RESET
    );
\slv_out_reg[7][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG7_OUT(23),
      R => RESET
    );
\slv_out_reg[7][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG7_OUT(24),
      R => RESET
    );
\slv_out_reg[7][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG7_OUT(25),
      R => RESET
    );
\slv_out_reg[7][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG7_OUT(26),
      R => RESET
    );
\slv_out_reg[7][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG7_OUT(27),
      R => RESET
    );
\slv_out_reg[7][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG7_OUT(28),
      R => RESET
    );
\slv_out_reg[7][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG7_OUT(29),
      R => RESET
    );
\slv_out_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG7_OUT(2),
      R => RESET
    );
\slv_out_reg[7][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG7_OUT(30),
      R => RESET
    );
\slv_out_reg[7][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG7_OUT(31),
      R => RESET
    );
\slv_out_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG7_OUT(3),
      R => RESET
    );
\slv_out_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG7_OUT(4),
      R => RESET
    );
\slv_out_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG7_OUT(5),
      R => RESET
    );
\slv_out_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG7_OUT(6),
      R => RESET
    );
\slv_out_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG7_OUT(7),
      R => RESET
    );
\slv_out_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG7_OUT(8),
      R => RESET
    );
\slv_out_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[7][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG7_OUT(9),
      R => RESET
    );
\slv_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \slv_read[0]_i_2_n_0\,
      I4 => \slv_read[0]_i_3_n_0\,
      I5 => \slv_read[0]_i_4_n_0\,
      O => \^sel0\(0)
    );
\slv_read[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(10),
      I3 => Q(9),
      O => \slv_read[0]_i_2_n_0\
    );
\slv_read[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      O => \slv_read[0]_i_3_n_0\
    );
\slv_read[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(13),
      I1 => \slv_read_reg[6]_0\,
      I2 => S_AXI_RREADY,
      I3 => Q(4),
      I4 => Q(3),
      O => \slv_read[0]_i_4_n_0\
    );
\slv_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \slv_read[0]_i_2_n_0\,
      I4 => \slv_read[0]_i_3_n_0\,
      I5 => \slv_read[0]_i_4_n_0\,
      O => \^sel0\(1)
    );
\slv_read[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \slv_read[0]_i_2_n_0\,
      I4 => \slv_read[0]_i_3_n_0\,
      I5 => \slv_read[0]_i_4_n_0\,
      O => \^sel0\(2)
    );
\slv_read[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \slv_read[0]_i_2_n_0\,
      I4 => \slv_read[0]_i_3_n_0\,
      I5 => \slv_read[0]_i_4_n_0\,
      O => \^sel0\(3)
    );
\slv_read[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \slv_read[0]_i_2_n_0\,
      I4 => \slv_read[0]_i_3_n_0\,
      I5 => \slv_read[0]_i_4_n_0\,
      O => \^sel0\(4)
    );
\slv_read[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \slv_read[0]_i_2_n_0\,
      I4 => \slv_read[0]_i_3_n_0\,
      I5 => \slv_read[0]_i_4_n_0\,
      O => \^sel0\(5)
    );
\slv_read[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \slv_read[0]_i_4_n_0\,
      I1 => \slv_read[0]_i_3_n_0\,
      I2 => \slv_read[0]_i_2_n_0\,
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \^sel0\(6)
    );
\slv_read[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_read[0]_i_4_n_0\,
      I1 => \slv_read[0]_i_3_n_0\,
      I2 => \slv_read[0]_i_2_n_0\,
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \^sel0\(7)
    );
\slv_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(0),
      Q => \slv_read_reg[7]_0\(0),
      R => '0'
    );
\slv_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(1),
      Q => \slv_read_reg[7]_0\(1),
      R => '0'
    );
\slv_read_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(2),
      Q => \slv_read_reg[7]_0\(2),
      R => '0'
    );
\slv_read_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(3),
      Q => \slv_read_reg[7]_0\(3),
      R => '0'
    );
\slv_read_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(4),
      Q => \slv_read_reg[7]_0\(4),
      R => '0'
    );
\slv_read_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(5),
      Q => \slv_read_reg[7]_0\(5),
      R => '0'
    );
\slv_read_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(6),
      Q => \slv_read_reg[7]_0\(6),
      R => '0'
    );
\slv_read_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^sel0\(7),
      Q => \slv_read_reg[7]_0\(7),
      R => '0'
    );
\slv_write[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => S_AXI_ARESETN,
      O => \slv_write[0]_i_1_n_0\
    );
\slv_write[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_0\(1),
      I1 => \slv_out[0][31]_i_3_0\(2),
      O => \slv_write[0]_i_2_n_0\
    );
\slv_write[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => \slv_out[0][31]_i_3_0\(0),
      I2 => S_AXI_ARESETN,
      O => \slv_write[1]_i_1_n_0\
    );
\slv_write[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_0\(1),
      I1 => \slv_out[0][31]_i_3_0\(2),
      O => \slv_write[2]_i_1_n_0\
    );
\slv_write[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_0\(2),
      I1 => \slv_out[0][31]_i_3_0\(1),
      O => \slv_write[4]_i_1_n_0\
    );
\slv_write[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_0\(1),
      I1 => \slv_out[0][31]_i_3_0\(2),
      O => \slv_write[6]_i_1_n_0\
    );
\slv_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[0]_i_2_n_0\,
      Q => REG0_WR,
      R => \slv_write[0]_i_1_n_0\
    );
\slv_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[0]_i_2_n_0\,
      Q => REG1_WR,
      R => \slv_write[1]_i_1_n_0\
    );
\slv_write_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[2]_i_1_n_0\,
      Q => REG2_WR,
      R => \slv_write[0]_i_1_n_0\
    );
\slv_write_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[2]_i_1_n_0\,
      Q => REG3_WR,
      R => \slv_write[1]_i_1_n_0\
    );
\slv_write_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[4]_i_1_n_0\,
      Q => REG4_WR,
      R => \slv_write[0]_i_1_n_0\
    );
\slv_write_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[4]_i_1_n_0\,
      Q => REG5_WR,
      R => \slv_write[1]_i_1_n_0\
    );
\slv_write_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[6]_i_1_n_0\,
      Q => REG6_WR,
      R => \slv_write[0]_i_1_n_0\
    );
\slv_write_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[6]_i_1_n_0\,
      Q => REG7_WR,
      R => \slv_write[1]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_4_axi_regmap_0_0_axi_regmap is
  port (
    \FSM_onehot_axi_wr_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_axi_wr_state_reg[1]_0\ : out STD_LOGIC;
    REG0_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG7_WR : out STD_LOGIC;
    REG5_WR : out STD_LOGIC;
    REG3_WR : out STD_LOGIC;
    REG1_WR : out STD_LOGIC;
    REG6_WR : out STD_LOGIC;
    REG4_WR : out STD_LOGIC;
    REG2_WR : out STD_LOGIC;
    REG0_WR : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    REG1_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG3_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG4_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG5_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG6_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG7_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rd_state_reg_0 : out STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    REG6_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG7_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG3_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG4_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG5_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG0_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG1_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab_4_axi_regmap_0_0_axi_regmap : entity is "axi_regmap";
end Lab_4_axi_regmap_0_0_axi_regmap;

architecture STRUCTURE of Lab_4_axi_regmap_0_0_axi_regmap is
  signal \FSM_onehot_axi_wr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_wr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_wr_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_wr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_axi_wr_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_axi_wr_state_reg[2]_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal axi_araddr_1 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \axi_awaddr[15]_i_1_n_0\ : STD_LOGIC;
  signal axi_awaddr_0 : STD_LOGIC;
  signal axi_rd_state_i_1_n_0 : STD_LOGIC;
  signal \^axi_rd_state_reg_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_wr_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_wr_state[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_wr_state_reg[0]\ : label is "addr:001,data:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_wr_state_reg[1]\ : label is "addr:001,data:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_wr_state_reg[2]\ : label is "addr:001,data:010,resp:100,";
begin
  \FSM_onehot_axi_wr_state_reg[1]_0\ <= \^fsm_onehot_axi_wr_state_reg[1]_0\;
  \FSM_onehot_axi_wr_state_reg[2]_0\ <= \^fsm_onehot_axi_wr_state_reg[2]_0\;
  axi_rd_state_reg_0 <= \^axi_rd_state_reg_0\;
\FSM_onehot_axi_wr_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => axi_awaddr_0,
      I1 => \FSM_onehot_axi_wr_state[1]_i_2_n_0\,
      I2 => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      I3 => S_AXI_ARESETN,
      O => \FSM_onehot_axi_wr_state[0]_i_1_n_0\
    );
\FSM_onehot_axi_wr_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      I1 => \FSM_onehot_axi_wr_state[1]_i_2_n_0\,
      I2 => axi_awaddr_0,
      I3 => S_AXI_ARESETN,
      O => \FSM_onehot_axi_wr_state[1]_i_1_n_0\
    );
\FSM_onehot_axi_wr_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      I2 => S_AXI_BREADY,
      I3 => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      I4 => axi_awaddr_0,
      I5 => S_AXI_AWVALID,
      O => \FSM_onehot_axi_wr_state[1]_i_2_n_0\
    );
\FSM_onehot_axi_wr_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      I1 => \FSM_onehot_axi_wr_state[1]_i_2_n_0\,
      I2 => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      I3 => S_AXI_ARESETN,
      O => \FSM_onehot_axi_wr_state[2]_i_1_n_0\
    );
\FSM_onehot_axi_wr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_axi_wr_state[0]_i_1_n_0\,
      Q => axi_awaddr_0,
      R => '0'
    );
\FSM_onehot_axi_wr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_axi_wr_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      R => '0'
    );
\FSM_onehot_axi_wr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_axi_wr_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      R => '0'
    );
MM_i: entity work.Lab_4_axi_regmap_0_0_mm_regmap
     port map (
      Q(13 downto 0) => axi_araddr(15 downto 2),
      REG0_OUT(31 downto 0) => REG0_OUT(31 downto 0),
      REG0_WR => REG0_WR,
      REG1_OUT(31 downto 0) => REG1_OUT(31 downto 0),
      REG1_WR => REG1_WR,
      REG2_OUT(31 downto 0) => REG2_OUT(31 downto 0),
      REG2_WR => REG2_WR,
      REG3_OUT(31 downto 0) => REG3_OUT(31 downto 0),
      REG3_WR => REG3_WR,
      REG4_OUT(31 downto 0) => REG4_OUT(31 downto 0),
      REG4_WR => REG4_WR,
      REG5_OUT(31 downto 0) => REG5_OUT(31 downto 0),
      REG5_WR => REG5_WR,
      REG6_OUT(31 downto 0) => REG6_OUT(31 downto 0),
      REG6_WR => REG6_WR,
      REG7_OUT(31 downto 0) => REG7_OUT(31 downto 0),
      REG7_WR => REG7_WR,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      sel0(7 downto 0) => sel0(7 downto 0),
      \slv_out[0][31]_i_3_0\(13 downto 0) => axi_awaddr(15 downto 2),
      \slv_out[0][31]_i_3_1\ => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      \slv_read_reg[6]_0\ => \^axi_rd_state_reg_0\,
      \slv_read_reg[7]_0\(7 downto 0) => Q(7 downto 0)
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(0),
      I2 => sel0(7),
      I3 => REG7_IN(0),
      I4 => \S_AXI_RDATA[0]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[0]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(0)
    );
\S_AXI_RDATA[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(0),
      I2 => sel0(1),
      I3 => REG1_IN(0),
      I4 => REG2_IN(0),
      I5 => sel0(2),
      O => \S_AXI_RDATA[0]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(0),
      I2 => sel0(4),
      I3 => REG4_IN(0),
      I4 => REG5_IN(0),
      I5 => sel0(5),
      O => \S_AXI_RDATA[0]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(10),
      I2 => sel0(7),
      I3 => REG7_IN(10),
      I4 => \S_AXI_RDATA[10]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[10]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(10)
    );
\S_AXI_RDATA[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(10),
      I2 => sel0(1),
      I3 => REG1_IN(10),
      I4 => REG2_IN(10),
      I5 => sel0(2),
      O => \S_AXI_RDATA[10]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(10),
      I2 => sel0(4),
      I3 => REG4_IN(10),
      I4 => REG5_IN(10),
      I5 => sel0(5),
      O => \S_AXI_RDATA[10]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(11),
      I2 => sel0(7),
      I3 => REG7_IN(11),
      I4 => \S_AXI_RDATA[11]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[11]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(11)
    );
\S_AXI_RDATA[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(11),
      I2 => sel0(1),
      I3 => REG1_IN(11),
      I4 => REG2_IN(11),
      I5 => sel0(2),
      O => \S_AXI_RDATA[11]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(11),
      I2 => sel0(4),
      I3 => REG4_IN(11),
      I4 => REG5_IN(11),
      I5 => sel0(5),
      O => \S_AXI_RDATA[11]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(12),
      I2 => sel0(7),
      I3 => REG7_IN(12),
      I4 => \S_AXI_RDATA[12]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[12]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(12)
    );
\S_AXI_RDATA[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(12),
      I2 => sel0(1),
      I3 => REG1_IN(12),
      I4 => REG2_IN(12),
      I5 => sel0(2),
      O => \S_AXI_RDATA[12]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(12),
      I2 => sel0(4),
      I3 => REG4_IN(12),
      I4 => REG5_IN(12),
      I5 => sel0(5),
      O => \S_AXI_RDATA[12]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(13),
      I2 => sel0(7),
      I3 => REG7_IN(13),
      I4 => \S_AXI_RDATA[13]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[13]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(13)
    );
\S_AXI_RDATA[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(13),
      I2 => sel0(1),
      I3 => REG1_IN(13),
      I4 => REG2_IN(13),
      I5 => sel0(2),
      O => \S_AXI_RDATA[13]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(13),
      I2 => sel0(4),
      I3 => REG4_IN(13),
      I4 => REG5_IN(13),
      I5 => sel0(5),
      O => \S_AXI_RDATA[13]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(14),
      I2 => sel0(7),
      I3 => REG7_IN(14),
      I4 => \S_AXI_RDATA[14]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[14]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(14)
    );
\S_AXI_RDATA[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(14),
      I2 => sel0(1),
      I3 => REG1_IN(14),
      I4 => REG2_IN(14),
      I5 => sel0(2),
      O => \S_AXI_RDATA[14]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(14),
      I2 => sel0(4),
      I3 => REG4_IN(14),
      I4 => REG5_IN(14),
      I5 => sel0(5),
      O => \S_AXI_RDATA[14]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(15),
      I2 => sel0(7),
      I3 => REG7_IN(15),
      I4 => \S_AXI_RDATA[15]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[15]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(15)
    );
\S_AXI_RDATA[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(15),
      I2 => sel0(1),
      I3 => REG1_IN(15),
      I4 => REG2_IN(15),
      I5 => sel0(2),
      O => \S_AXI_RDATA[15]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(15),
      I2 => sel0(4),
      I3 => REG4_IN(15),
      I4 => REG5_IN(15),
      I5 => sel0(5),
      O => \S_AXI_RDATA[15]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(16),
      I2 => sel0(7),
      I3 => REG7_IN(16),
      I4 => \S_AXI_RDATA[16]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[16]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(16)
    );
\S_AXI_RDATA[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(16),
      I2 => sel0(1),
      I3 => REG1_IN(16),
      I4 => REG2_IN(16),
      I5 => sel0(2),
      O => \S_AXI_RDATA[16]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(16),
      I2 => sel0(4),
      I3 => REG4_IN(16),
      I4 => REG5_IN(16),
      I5 => sel0(5),
      O => \S_AXI_RDATA[16]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(17),
      I2 => sel0(7),
      I3 => REG7_IN(17),
      I4 => \S_AXI_RDATA[17]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[17]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(17)
    );
\S_AXI_RDATA[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(17),
      I2 => sel0(1),
      I3 => REG1_IN(17),
      I4 => REG2_IN(17),
      I5 => sel0(2),
      O => \S_AXI_RDATA[17]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(17),
      I2 => sel0(4),
      I3 => REG4_IN(17),
      I4 => REG5_IN(17),
      I5 => sel0(5),
      O => \S_AXI_RDATA[17]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(18),
      I2 => sel0(7),
      I3 => REG7_IN(18),
      I4 => \S_AXI_RDATA[18]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[18]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(18)
    );
\S_AXI_RDATA[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(18),
      I2 => sel0(1),
      I3 => REG1_IN(18),
      I4 => REG2_IN(18),
      I5 => sel0(2),
      O => \S_AXI_RDATA[18]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(18),
      I2 => sel0(4),
      I3 => REG4_IN(18),
      I4 => REG5_IN(18),
      I5 => sel0(5),
      O => \S_AXI_RDATA[18]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(19),
      I2 => sel0(7),
      I3 => REG7_IN(19),
      I4 => \S_AXI_RDATA[19]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[19]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(19)
    );
\S_AXI_RDATA[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(19),
      I2 => sel0(1),
      I3 => REG1_IN(19),
      I4 => REG2_IN(19),
      I5 => sel0(2),
      O => \S_AXI_RDATA[19]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(19),
      I2 => sel0(4),
      I3 => REG4_IN(19),
      I4 => REG5_IN(19),
      I5 => sel0(5),
      O => \S_AXI_RDATA[19]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(1),
      I2 => sel0(7),
      I3 => REG7_IN(1),
      I4 => \S_AXI_RDATA[1]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[1]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(1)
    );
\S_AXI_RDATA[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(1),
      I2 => sel0(1),
      I3 => REG1_IN(1),
      I4 => REG2_IN(1),
      I5 => sel0(2),
      O => \S_AXI_RDATA[1]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(1),
      I2 => sel0(4),
      I3 => REG4_IN(1),
      I4 => REG5_IN(1),
      I5 => sel0(5),
      O => \S_AXI_RDATA[1]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(20),
      I2 => sel0(7),
      I3 => REG7_IN(20),
      I4 => \S_AXI_RDATA[20]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[20]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(20)
    );
\S_AXI_RDATA[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(20),
      I2 => sel0(1),
      I3 => REG1_IN(20),
      I4 => REG2_IN(20),
      I5 => sel0(2),
      O => \S_AXI_RDATA[20]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(20),
      I2 => sel0(4),
      I3 => REG4_IN(20),
      I4 => REG5_IN(20),
      I5 => sel0(5),
      O => \S_AXI_RDATA[20]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(21),
      I2 => sel0(7),
      I3 => REG7_IN(21),
      I4 => \S_AXI_RDATA[21]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[21]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(21)
    );
\S_AXI_RDATA[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(21),
      I2 => sel0(1),
      I3 => REG1_IN(21),
      I4 => REG2_IN(21),
      I5 => sel0(2),
      O => \S_AXI_RDATA[21]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(21),
      I2 => sel0(4),
      I3 => REG4_IN(21),
      I4 => REG5_IN(21),
      I5 => sel0(5),
      O => \S_AXI_RDATA[21]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(22),
      I2 => sel0(7),
      I3 => REG7_IN(22),
      I4 => \S_AXI_RDATA[22]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[22]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(22)
    );
\S_AXI_RDATA[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(22),
      I2 => sel0(1),
      I3 => REG1_IN(22),
      I4 => REG2_IN(22),
      I5 => sel0(2),
      O => \S_AXI_RDATA[22]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(22),
      I2 => sel0(4),
      I3 => REG4_IN(22),
      I4 => REG5_IN(22),
      I5 => sel0(5),
      O => \S_AXI_RDATA[22]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(23),
      I2 => sel0(7),
      I3 => REG7_IN(23),
      I4 => \S_AXI_RDATA[23]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[23]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(23)
    );
\S_AXI_RDATA[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(23),
      I2 => sel0(1),
      I3 => REG1_IN(23),
      I4 => REG2_IN(23),
      I5 => sel0(2),
      O => \S_AXI_RDATA[23]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(23),
      I2 => sel0(4),
      I3 => REG4_IN(23),
      I4 => REG5_IN(23),
      I5 => sel0(5),
      O => \S_AXI_RDATA[23]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(24),
      I2 => sel0(7),
      I3 => REG7_IN(24),
      I4 => \S_AXI_RDATA[24]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[24]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(24)
    );
\S_AXI_RDATA[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(24),
      I2 => sel0(1),
      I3 => REG1_IN(24),
      I4 => REG2_IN(24),
      I5 => sel0(2),
      O => \S_AXI_RDATA[24]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(24),
      I2 => sel0(4),
      I3 => REG4_IN(24),
      I4 => REG5_IN(24),
      I5 => sel0(5),
      O => \S_AXI_RDATA[24]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(25),
      I2 => sel0(7),
      I3 => REG7_IN(25),
      I4 => \S_AXI_RDATA[25]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[25]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(25)
    );
\S_AXI_RDATA[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(25),
      I2 => sel0(1),
      I3 => REG1_IN(25),
      I4 => REG2_IN(25),
      I5 => sel0(2),
      O => \S_AXI_RDATA[25]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(25),
      I2 => sel0(4),
      I3 => REG4_IN(25),
      I4 => REG5_IN(25),
      I5 => sel0(5),
      O => \S_AXI_RDATA[25]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(26),
      I2 => sel0(7),
      I3 => REG7_IN(26),
      I4 => \S_AXI_RDATA[26]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[26]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(26)
    );
\S_AXI_RDATA[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(26),
      I2 => sel0(1),
      I3 => REG1_IN(26),
      I4 => REG2_IN(26),
      I5 => sel0(2),
      O => \S_AXI_RDATA[26]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(26),
      I2 => sel0(4),
      I3 => REG4_IN(26),
      I4 => REG5_IN(26),
      I5 => sel0(5),
      O => \S_AXI_RDATA[26]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(27),
      I2 => sel0(7),
      I3 => REG7_IN(27),
      I4 => \S_AXI_RDATA[27]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[27]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(27)
    );
\S_AXI_RDATA[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(27),
      I2 => sel0(1),
      I3 => REG1_IN(27),
      I4 => REG2_IN(27),
      I5 => sel0(2),
      O => \S_AXI_RDATA[27]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(27),
      I2 => sel0(4),
      I3 => REG4_IN(27),
      I4 => REG5_IN(27),
      I5 => sel0(5),
      O => \S_AXI_RDATA[27]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(28),
      I2 => sel0(7),
      I3 => REG7_IN(28),
      I4 => \S_AXI_RDATA[28]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[28]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(28)
    );
\S_AXI_RDATA[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(28),
      I2 => sel0(1),
      I3 => REG1_IN(28),
      I4 => REG2_IN(28),
      I5 => sel0(2),
      O => \S_AXI_RDATA[28]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(28),
      I2 => sel0(4),
      I3 => REG4_IN(28),
      I4 => REG5_IN(28),
      I5 => sel0(5),
      O => \S_AXI_RDATA[28]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(29),
      I2 => sel0(7),
      I3 => REG7_IN(29),
      I4 => \S_AXI_RDATA[29]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[29]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(29)
    );
\S_AXI_RDATA[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(29),
      I2 => sel0(1),
      I3 => REG1_IN(29),
      I4 => REG2_IN(29),
      I5 => sel0(2),
      O => \S_AXI_RDATA[29]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(29),
      I2 => sel0(4),
      I3 => REG4_IN(29),
      I4 => REG5_IN(29),
      I5 => sel0(5),
      O => \S_AXI_RDATA[29]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(2),
      I2 => sel0(7),
      I3 => REG7_IN(2),
      I4 => \S_AXI_RDATA[2]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[2]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(2)
    );
\S_AXI_RDATA[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(2),
      I2 => sel0(1),
      I3 => REG1_IN(2),
      I4 => REG2_IN(2),
      I5 => sel0(2),
      O => \S_AXI_RDATA[2]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(2),
      I2 => sel0(4),
      I3 => REG4_IN(2),
      I4 => REG5_IN(2),
      I5 => sel0(5),
      O => \S_AXI_RDATA[2]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(30),
      I2 => sel0(7),
      I3 => REG7_IN(30),
      I4 => \S_AXI_RDATA[30]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[30]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(30)
    );
\S_AXI_RDATA[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(30),
      I2 => sel0(1),
      I3 => REG1_IN(30),
      I4 => REG2_IN(30),
      I5 => sel0(2),
      O => \S_AXI_RDATA[30]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(30),
      I2 => sel0(4),
      I3 => REG4_IN(30),
      I4 => REG5_IN(30),
      I5 => sel0(5),
      O => \S_AXI_RDATA[30]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(31),
      I2 => sel0(7),
      I3 => REG7_IN(31),
      I4 => \S_AXI_RDATA[31]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[31]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(31)
    );
\S_AXI_RDATA[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(31),
      I2 => sel0(1),
      I3 => REG1_IN(31),
      I4 => REG2_IN(31),
      I5 => sel0(2),
      O => \S_AXI_RDATA[31]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(31),
      I2 => sel0(4),
      I3 => REG4_IN(31),
      I4 => REG5_IN(31),
      I5 => sel0(5),
      O => \S_AXI_RDATA[31]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(3),
      I2 => sel0(7),
      I3 => REG7_IN(3),
      I4 => \S_AXI_RDATA[3]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[3]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(3)
    );
\S_AXI_RDATA[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(3),
      I2 => sel0(1),
      I3 => REG1_IN(3),
      I4 => REG2_IN(3),
      I5 => sel0(2),
      O => \S_AXI_RDATA[3]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(3),
      I2 => sel0(4),
      I3 => REG4_IN(3),
      I4 => REG5_IN(3),
      I5 => sel0(5),
      O => \S_AXI_RDATA[3]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(4),
      I2 => sel0(7),
      I3 => REG7_IN(4),
      I4 => \S_AXI_RDATA[4]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[4]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(4)
    );
\S_AXI_RDATA[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(4),
      I2 => sel0(1),
      I3 => REG1_IN(4),
      I4 => REG2_IN(4),
      I5 => sel0(2),
      O => \S_AXI_RDATA[4]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(4),
      I2 => sel0(4),
      I3 => REG4_IN(4),
      I4 => REG5_IN(4),
      I5 => sel0(5),
      O => \S_AXI_RDATA[4]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(5),
      I2 => sel0(7),
      I3 => REG7_IN(5),
      I4 => \S_AXI_RDATA[5]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[5]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(5)
    );
\S_AXI_RDATA[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(5),
      I2 => sel0(1),
      I3 => REG1_IN(5),
      I4 => REG2_IN(5),
      I5 => sel0(2),
      O => \S_AXI_RDATA[5]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(5),
      I2 => sel0(4),
      I3 => REG4_IN(5),
      I4 => REG5_IN(5),
      I5 => sel0(5),
      O => \S_AXI_RDATA[5]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(6),
      I2 => sel0(7),
      I3 => REG7_IN(6),
      I4 => \S_AXI_RDATA[6]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[6]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(6)
    );
\S_AXI_RDATA[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(6),
      I2 => sel0(1),
      I3 => REG1_IN(6),
      I4 => REG2_IN(6),
      I5 => sel0(2),
      O => \S_AXI_RDATA[6]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(6),
      I2 => sel0(4),
      I3 => REG4_IN(6),
      I4 => REG5_IN(6),
      I5 => sel0(5),
      O => \S_AXI_RDATA[6]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(7),
      I2 => sel0(7),
      I3 => REG7_IN(7),
      I4 => \S_AXI_RDATA[7]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[7]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(7)
    );
\S_AXI_RDATA[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(7),
      I2 => sel0(1),
      I3 => REG1_IN(7),
      I4 => REG2_IN(7),
      I5 => sel0(2),
      O => \S_AXI_RDATA[7]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(7),
      I2 => sel0(4),
      I3 => REG4_IN(7),
      I4 => REG5_IN(7),
      I5 => sel0(5),
      O => \S_AXI_RDATA[7]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(8),
      I2 => sel0(7),
      I3 => REG7_IN(8),
      I4 => \S_AXI_RDATA[8]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[8]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(8)
    );
\S_AXI_RDATA[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(8),
      I2 => sel0(1),
      I3 => REG1_IN(8),
      I4 => REG2_IN(8),
      I5 => sel0(2),
      O => \S_AXI_RDATA[8]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(8),
      I2 => sel0(4),
      I3 => REG4_IN(8),
      I4 => REG5_IN(8),
      I5 => sel0(5),
      O => \S_AXI_RDATA[8]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => sel0(6),
      I1 => REG6_IN(9),
      I2 => sel0(7),
      I3 => REG7_IN(9),
      I4 => \S_AXI_RDATA[9]_INST_0_i_1_n_0\,
      I5 => \S_AXI_RDATA[9]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(9)
    );
\S_AXI_RDATA[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(9),
      I2 => sel0(1),
      I3 => REG1_IN(9),
      I4 => REG2_IN(9),
      I5 => sel0(2),
      O => \S_AXI_RDATA[9]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(9),
      I2 => sel0(4),
      I3 => REG4_IN(9),
      I4 => REG5_IN(9),
      I5 => sel0(5),
      O => \S_AXI_RDATA[9]_INST_0_i_2_n_0\
    );
\axi_araddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \^axi_rd_state_reg_0\,
      O => axi_araddr_1
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(8),
      Q => axi_araddr(10),
      R => '0'
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(9),
      Q => axi_araddr(11),
      R => '0'
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(10),
      Q => axi_araddr(12),
      R => '0'
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(11),
      Q => axi_araddr(13),
      R => '0'
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(12),
      Q => axi_araddr(14),
      R => '0'
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(13),
      Q => axi_araddr(15),
      R => '0'
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(0),
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(1),
      Q => axi_araddr(3),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(2),
      Q => axi_araddr(4),
      R => '0'
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(3),
      Q => axi_araddr(5),
      R => '0'
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(4),
      Q => axi_araddr(6),
      R => '0'
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(5),
      Q => axi_araddr(7),
      R => '0'
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(6),
      Q => axi_araddr(8),
      R => '0'
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(7),
      Q => axi_araddr(9),
      R => '0'
    );
\axi_awaddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => axi_awaddr_0,
      O => \axi_awaddr[15]_i_1_n_0\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(8),
      Q => axi_awaddr(10),
      R => '0'
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(9),
      Q => axi_awaddr(11),
      R => '0'
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(10),
      Q => axi_awaddr(12),
      R => '0'
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(11),
      Q => axi_awaddr(13),
      R => '0'
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(12),
      Q => axi_awaddr(14),
      R => '0'
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(13),
      Q => axi_awaddr(15),
      R => '0'
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(0),
      Q => axi_awaddr(2),
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(1),
      Q => axi_awaddr(3),
      R => '0'
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(2),
      Q => axi_awaddr(4),
      R => '0'
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(3),
      Q => axi_awaddr(5),
      R => '0'
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(4),
      Q => axi_awaddr(6),
      R => '0'
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(5),
      Q => axi_awaddr(7),
      R => '0'
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(6),
      Q => axi_awaddr(8),
      R => '0'
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(7),
      Q => axi_awaddr(9),
      R => '0'
    );
axi_rd_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7200"
    )
        port map (
      I0 => \^axi_rd_state_reg_0\,
      I1 => S_AXI_RREADY,
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARESETN,
      O => axi_rd_state_i_1_n_0
    );
axi_rd_state_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rd_state_i_1_n_0,
      Q => \^axi_rd_state_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_4_axi_regmap_0_0 is
  port (
    REG0_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG0_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG0_WR : out STD_LOGIC;
    REG0_RD : out STD_LOGIC;
    REG1_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG1_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG1_WR : out STD_LOGIC;
    REG1_RD : out STD_LOGIC;
    REG2_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_WR : out STD_LOGIC;
    REG2_RD : out STD_LOGIC;
    REG3_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG3_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG3_WR : out STD_LOGIC;
    REG3_RD : out STD_LOGIC;
    REG4_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG4_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG4_WR : out STD_LOGIC;
    REG4_RD : out STD_LOGIC;
    REG5_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG5_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG5_WR : out STD_LOGIC;
    REG5_RD : out STD_LOGIC;
    REG6_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG6_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG6_WR : out STD_LOGIC;
    REG6_RD : out STD_LOGIC;
    REG7_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG7_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG7_WR : out STD_LOGIC;
    REG7_RD : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lab_4_axi_regmap_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lab_4_axi_regmap_0_0 : entity is "Lab_4_axi_regmap_0_0,axi_regmap,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Lab_4_axi_regmap_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Lab_4_axi_regmap_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Lab_4_axi_regmap_0_0 : entity is "axi_regmap,Vivado 2018.3";
end Lab_4_axi_regmap_0_0;

architecture STRUCTURE of Lab_4_axi_regmap_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Lab_4_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Lab_4_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_ARREADY <= \<const1>\;
  S_AXI_AWREADY <= \<const1>\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Lab_4_axi_regmap_0_0_axi_regmap
     port map (
      \FSM_onehot_axi_wr_state_reg[1]_0\ => S_AXI_WREADY,
      \FSM_onehot_axi_wr_state_reg[2]_0\ => S_AXI_BVALID,
      Q(7) => REG7_RD,
      Q(6) => REG6_RD,
      Q(5) => REG5_RD,
      Q(4) => REG4_RD,
      Q(3) => REG3_RD,
      Q(2) => REG2_RD,
      Q(1) => REG1_RD,
      Q(0) => REG0_RD,
      REG0_IN(31 downto 0) => REG0_IN(31 downto 0),
      REG0_OUT(31 downto 0) => REG0_OUT(31 downto 0),
      REG0_WR => REG0_WR,
      REG1_IN(31 downto 0) => REG1_IN(31 downto 0),
      REG1_OUT(31 downto 0) => REG1_OUT(31 downto 0),
      REG1_WR => REG1_WR,
      REG2_IN(31 downto 0) => REG2_IN(31 downto 0),
      REG2_OUT(31 downto 0) => REG2_OUT(31 downto 0),
      REG2_WR => REG2_WR,
      REG3_IN(31 downto 0) => REG3_IN(31 downto 0),
      REG3_OUT(31 downto 0) => REG3_OUT(31 downto 0),
      REG3_WR => REG3_WR,
      REG4_IN(31 downto 0) => REG4_IN(31 downto 0),
      REG4_OUT(31 downto 0) => REG4_OUT(31 downto 0),
      REG4_WR => REG4_WR,
      REG5_IN(31 downto 0) => REG5_IN(31 downto 0),
      REG5_OUT(31 downto 0) => REG5_OUT(31 downto 0),
      REG5_WR => REG5_WR,
      REG6_IN(31 downto 0) => REG6_IN(31 downto 0),
      REG6_OUT(31 downto 0) => REG6_OUT(31 downto 0),
      REG6_WR => REG6_WR,
      REG7_IN(31 downto 0) => REG7_IN(31 downto 0),
      REG7_OUT(31 downto 0) => REG7_OUT(31 downto 0),
      REG7_WR => REG7_WR,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(13 downto 0) => S_AXI_ARADDR(15 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(13 downto 0) => S_AXI_AWADDR(15 downto 2),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_rd_state_reg_0 => S_AXI_RVALID
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;