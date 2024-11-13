-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Dec  5 19:47:50 2021
-- Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/RAYAN/AppData/Roaming/Xilinx/Vivado/_Lab_6/vivado/lab6/lab6.srcs/sources_1/bd/system/ip/system_hw_conv_0_0/system_hw_conv_0_0_sim_netlist.vhdl
-- Design      : system_hw_conv_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_hw_conv_0_0_hw_conv_lbuf_0_ram is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ce0 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sin_V_data_V_0_state_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_reg_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    i_reg_228_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    tmp_3_reg_638_pp0_iter1_reg : in STD_LOGIC;
    ram_reg_i_4_0 : in STD_LOGIC;
    tmp_3_reg_638_pp0_iter2_reg : in STD_LOGIC;
    sout_V_data_V_1_ack_in : in STD_LOGIC;
    \tmp6_reg_662_reg[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tmp_5_reg_624 : in STD_LOGIC;
    \kbuf_1_1_fu_124_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp6_reg_662_reg[9]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ram_reg_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_hw_conv_0_0_hw_conv_lbuf_0_ram : entity is "hw_conv_lbuf_0_ram";
end system_hw_conv_0_0_hw_conv_lbuf_0_ram;

architecture STRUCTURE of system_hw_conv_0_0_hw_conv_lbuf_0_ram is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ce0\ : STD_LOGIC;
  signal lbuf_1_q0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_reg_i_5_n_2 : STD_LOGIC;
  signal \^sin_v_data_v_0_state_reg[0]\ : STD_LOGIC;
  signal \tmp6_reg_662[3]_i_2_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[3]_i_3_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[3]_i_4_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[3]_i_5_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[3]_i_6_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[3]_i_7_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[3]_i_8_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_2_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_3_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_4_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_5_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_6_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_7_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_8_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[7]_i_9_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662[9]_i_2_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \tmp6_reg_662_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal NLW_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_tmp6_reg_662_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp6_reg_662_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kbuf_1_1_fu_124[7]_i_1\ : label is "soft_lutpair3";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 4072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 7;
  attribute HLUTNM : string;
  attribute HLUTNM of \tmp6_reg_662[3]_i_4\ : label is "lutpair10";
  attribute HLUTNM of \tmp6_reg_662[3]_i_8\ : label is "lutpair10";
begin
  E(0) <= \^e\(0);
  WEA(0) <= \^wea\(0);
  ce0 <= \^ce0\;
  \sin_V_data_V_0_state_reg[0]\ <= \^sin_v_data_v_0_state_reg[0]\;
\kbuf_1_1_fu_124[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(0),
      I1 => \kbuf_1_1_fu_124_reg[7]\(0),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(0)
    );
\kbuf_1_1_fu_124[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(1),
      I1 => \kbuf_1_1_fu_124_reg[7]\(1),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(1)
    );
\kbuf_1_1_fu_124[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(2),
      I1 => \kbuf_1_1_fu_124_reg[7]\(2),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(2)
    );
\kbuf_1_1_fu_124[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(3),
      I1 => \kbuf_1_1_fu_124_reg[7]\(3),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(3)
    );
\kbuf_1_1_fu_124[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(4),
      I1 => \kbuf_1_1_fu_124_reg[7]\(4),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(4)
    );
\kbuf_1_1_fu_124[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(5),
      I1 => \kbuf_1_1_fu_124_reg[7]\(5),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(5)
    );
\kbuf_1_1_fu_124[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(6),
      I1 => \kbuf_1_1_fu_124_reg[7]\(6),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(6)
    );
\kbuf_1_1_fu_124[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lbuf_1_q0(7),
      I1 => \kbuf_1_1_fu_124_reg[7]\(7),
      I2 => tmp_5_reg_624,
      O => ram_reg_0(7)
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13) => '1',
      ADDRARDADDR(12 downto 4) => Q(8 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13) => '1',
      ADDRBWRADDR(12 downto 4) => \out\(8 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => ram_reg_1(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_ram_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => lbuf_1_q0(7 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^e\(0),
      ENBWREN => \^ce0\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(3 downto 0) => B"0000"
    );
ram_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^sin_v_data_v_0_state_reg[0]\,
      I1 => ram_reg_3(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ram_reg_4,
      O => \^e\(0)
    );
ram_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^sin_v_data_v_0_state_reg[0]\,
      I1 => ram_reg_3(0),
      I2 => ap_enable_reg_pp0_iter0,
      O => \^ce0\
    );
ram_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^sin_v_data_v_0_state_reg[0]\,
      I1 => ram_reg_3(0),
      I2 => ap_enable_reg_pp0_iter1,
      O => \^wea\(0)
    );
ram_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => ram_reg_2,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => i_reg_228_reg(0),
      I3 => ram_reg_i_5_n_2,
      O => \^sin_v_data_v_0_state_reg[0]\
    );
ram_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => tmp_3_reg_638_pp0_iter1_reg,
      I2 => ram_reg_i_4_0,
      I3 => tmp_3_reg_638_pp0_iter2_reg,
      I4 => sout_V_data_V_1_ack_in,
      O => ram_reg_i_5_n_2
    );
\tmp6_reg_662[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(2),
      I2 => lbuf_1_q0(2),
      I3 => \tmp6_reg_662_reg[9]\(2),
      I4 => \tmp6_reg_662_reg[9]_0\(2),
      O => \tmp6_reg_662[3]_i_2_n_2\
    );
\tmp6_reg_662[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(1),
      I2 => lbuf_1_q0(1),
      I3 => \tmp6_reg_662_reg[9]\(1),
      I4 => \tmp6_reg_662_reg[9]_0\(1),
      O => \tmp6_reg_662[3]_i_3_n_2\
    );
\tmp6_reg_662[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(0),
      I2 => lbuf_1_q0(0),
      I3 => \tmp6_reg_662_reg[9]\(0),
      I4 => \tmp6_reg_662_reg[9]_0\(0),
      O => \tmp6_reg_662[3]_i_4_n_2\
    );
\tmp6_reg_662[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \tmp6_reg_662[3]_i_2_n_2\,
      I1 => \tmp6_reg_662_reg[9]\(3),
      I2 => tmp_5_reg_624,
      I3 => \kbuf_1_1_fu_124_reg[7]\(3),
      I4 => lbuf_1_q0(3),
      I5 => \tmp6_reg_662_reg[9]_0\(3),
      O => \tmp6_reg_662[3]_i_5_n_2\
    );
\tmp6_reg_662[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \tmp6_reg_662[3]_i_3_n_2\,
      I1 => \tmp6_reg_662_reg[9]\(2),
      I2 => tmp_5_reg_624,
      I3 => \kbuf_1_1_fu_124_reg[7]\(2),
      I4 => lbuf_1_q0(2),
      I5 => \tmp6_reg_662_reg[9]_0\(2),
      O => \tmp6_reg_662[3]_i_6_n_2\
    );
\tmp6_reg_662[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \tmp6_reg_662[3]_i_4_n_2\,
      I1 => \tmp6_reg_662_reg[9]\(1),
      I2 => tmp_5_reg_624,
      I3 => \kbuf_1_1_fu_124_reg[7]\(1),
      I4 => lbuf_1_q0(1),
      I5 => \tmp6_reg_662_reg[9]_0\(1),
      O => \tmp6_reg_662[3]_i_7_n_2\
    );
\tmp6_reg_662[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E41B1BE4"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(0),
      I2 => lbuf_1_q0(0),
      I3 => \tmp6_reg_662_reg[9]\(0),
      I4 => \tmp6_reg_662_reg[9]_0\(0),
      O => \tmp6_reg_662[3]_i_8_n_2\
    );
\tmp6_reg_662[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(6),
      I2 => lbuf_1_q0(6),
      I3 => \tmp6_reg_662_reg[9]\(6),
      I4 => \tmp6_reg_662_reg[9]_0\(6),
      O => \tmp6_reg_662[7]_i_2_n_2\
    );
\tmp6_reg_662[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(5),
      I2 => lbuf_1_q0(5),
      I3 => \tmp6_reg_662_reg[9]\(5),
      I4 => \tmp6_reg_662_reg[9]_0\(5),
      O => \tmp6_reg_662[7]_i_3_n_2\
    );
\tmp6_reg_662[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(4),
      I2 => lbuf_1_q0(4),
      I3 => \tmp6_reg_662_reg[9]\(4),
      I4 => \tmp6_reg_662_reg[9]_0\(4),
      O => \tmp6_reg_662[7]_i_4_n_2\
    );
\tmp6_reg_662[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(3),
      I2 => lbuf_1_q0(3),
      I3 => \tmp6_reg_662_reg[9]\(3),
      I4 => \tmp6_reg_662_reg[9]_0\(3),
      O => \tmp6_reg_662[7]_i_5_n_2\
    );
\tmp6_reg_662[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \tmp6_reg_662[7]_i_2_n_2\,
      I1 => \tmp6_reg_662_reg[9]\(7),
      I2 => tmp_5_reg_624,
      I3 => \kbuf_1_1_fu_124_reg[7]\(7),
      I4 => lbuf_1_q0(7),
      I5 => \tmp6_reg_662_reg[9]_0\(7),
      O => \tmp6_reg_662[7]_i_6_n_2\
    );
\tmp6_reg_662[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \tmp6_reg_662[7]_i_3_n_2\,
      I1 => \tmp6_reg_662_reg[9]\(6),
      I2 => tmp_5_reg_624,
      I3 => \kbuf_1_1_fu_124_reg[7]\(6),
      I4 => lbuf_1_q0(6),
      I5 => \tmp6_reg_662_reg[9]_0\(6),
      O => \tmp6_reg_662[7]_i_7_n_2\
    );
\tmp6_reg_662[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \tmp6_reg_662[7]_i_4_n_2\,
      I1 => \tmp6_reg_662_reg[9]\(5),
      I2 => tmp_5_reg_624,
      I3 => \kbuf_1_1_fu_124_reg[7]\(5),
      I4 => lbuf_1_q0(5),
      I5 => \tmp6_reg_662_reg[9]_0\(5),
      O => \tmp6_reg_662[7]_i_8_n_2\
    );
\tmp6_reg_662[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \tmp6_reg_662[7]_i_5_n_2\,
      I1 => \tmp6_reg_662_reg[9]\(4),
      I2 => tmp_5_reg_624,
      I3 => \kbuf_1_1_fu_124_reg[7]\(4),
      I4 => lbuf_1_q0(4),
      I5 => \tmp6_reg_662_reg[9]_0\(4),
      O => \tmp6_reg_662[7]_i_9_n_2\
    );
\tmp6_reg_662[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => tmp_5_reg_624,
      I1 => \kbuf_1_1_fu_124_reg[7]\(7),
      I2 => lbuf_1_q0(7),
      I3 => \tmp6_reg_662_reg[9]\(7),
      I4 => \tmp6_reg_662_reg[9]_0\(7),
      O => \tmp6_reg_662[9]_i_2_n_2\
    );
\tmp6_reg_662_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp6_reg_662_reg[3]_i_1_n_2\,
      CO(2) => \tmp6_reg_662_reg[3]_i_1_n_3\,
      CO(1) => \tmp6_reg_662_reg[3]_i_1_n_4\,
      CO(0) => \tmp6_reg_662_reg[3]_i_1_n_5\,
      CYINIT => '0',
      DI(3) => \tmp6_reg_662[3]_i_2_n_2\,
      DI(2) => \tmp6_reg_662[3]_i_3_n_2\,
      DI(1) => \tmp6_reg_662[3]_i_4_n_2\,
      DI(0) => '0',
      O(3 downto 0) => D(3 downto 0),
      S(3) => \tmp6_reg_662[3]_i_5_n_2\,
      S(2) => \tmp6_reg_662[3]_i_6_n_2\,
      S(1) => \tmp6_reg_662[3]_i_7_n_2\,
      S(0) => \tmp6_reg_662[3]_i_8_n_2\
    );
\tmp6_reg_662_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp6_reg_662_reg[3]_i_1_n_2\,
      CO(3) => \tmp6_reg_662_reg[7]_i_1_n_2\,
      CO(2) => \tmp6_reg_662_reg[7]_i_1_n_3\,
      CO(1) => \tmp6_reg_662_reg[7]_i_1_n_4\,
      CO(0) => \tmp6_reg_662_reg[7]_i_1_n_5\,
      CYINIT => '0',
      DI(3) => \tmp6_reg_662[7]_i_2_n_2\,
      DI(2) => \tmp6_reg_662[7]_i_3_n_2\,
      DI(1) => \tmp6_reg_662[7]_i_4_n_2\,
      DI(0) => \tmp6_reg_662[7]_i_5_n_2\,
      O(3 downto 0) => D(7 downto 4),
      S(3) => \tmp6_reg_662[7]_i_6_n_2\,
      S(2) => \tmp6_reg_662[7]_i_7_n_2\,
      S(1) => \tmp6_reg_662[7]_i_8_n_2\,
      S(0) => \tmp6_reg_662[7]_i_9_n_2\
    );
\tmp6_reg_662_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp6_reg_662_reg[7]_i_1_n_2\,
      CO(3 downto 2) => \NLW_tmp6_reg_662_reg[9]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(9),
      CO(0) => \NLW_tmp6_reg_662_reg[9]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_tmp6_reg_662_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => D(8),
      S(3 downto 1) => B"001",
      S(0) => \tmp6_reg_662[9]_i_2_n_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_hw_conv_0_0_hw_conv_lbuf_0_ram_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \kbuf_0_1_fu_112_reg[7]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ce0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    \result_2_1_1_reg_657_reg[11]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result_2_1_1_reg_657_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result_2_1_1_reg_657_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_hw_conv_0_0_hw_conv_lbuf_0_ram_1 : entity is "hw_conv_lbuf_0_ram";
end system_hw_conv_0_0_hw_conv_lbuf_0_ram_1;

architecture STRUCTURE of system_hw_conv_0_0_hw_conv_lbuf_0_ram_1 is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \result_2_1_1_reg_657[11]_i_4_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[3]_i_2_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[3]_i_3_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[3]_i_4_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[3]_i_5_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[3]_i_6_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[3]_i_7_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[3]_i_8_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_2_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_3_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_4_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_5_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_6_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_7_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_8_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_9_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal NLW_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_result_2_1_1_reg_657_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 4072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 7;
  attribute HLUTNM : string;
  attribute HLUTNM of \result_2_1_1_reg_657[3]_i_2\ : label is "lutpair5";
  attribute HLUTNM of \result_2_1_1_reg_657[3]_i_3\ : label is "lutpair4";
  attribute HLUTNM of \result_2_1_1_reg_657[3]_i_4\ : label is "lutpair19";
  attribute HLUTNM of \result_2_1_1_reg_657[3]_i_5\ : label is "lutpair6";
  attribute HLUTNM of \result_2_1_1_reg_657[3]_i_6\ : label is "lutpair5";
  attribute HLUTNM of \result_2_1_1_reg_657[3]_i_7\ : label is "lutpair4";
  attribute HLUTNM of \result_2_1_1_reg_657[3]_i_8\ : label is "lutpair19";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_2\ : label is "lutpair9";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_3\ : label is "lutpair8";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_4\ : label is "lutpair7";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_5\ : label is "lutpair6";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_7\ : label is "lutpair9";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_8\ : label is "lutpair8";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_9\ : label is "lutpair7";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13) => '1',
      ADDRARDADDR(12 downto 4) => Q(8 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13) => '1',
      ADDRBWRADDR(12 downto 4) => \out\(8 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => ram_reg_0(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_ram_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => \^d\(7 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => E(0),
      ENBWREN => ce0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
\result_2_1_1_reg_657[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[11]\(7),
      I1 => \^d\(7),
      I2 => \result_2_1_1_reg_657_reg[11]_0\(3),
      I3 => O(0),
      O => \result_2_1_1_reg_657[11]_i_4_n_2\
    );
\result_2_1_1_reg_657[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[3]\(2),
      I1 => \^d\(2),
      I2 => \result_2_1_1_reg_657_reg[11]\(2),
      O => \result_2_1_1_reg_657[3]_i_2_n_2\
    );
\result_2_1_1_reg_657[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[3]\(1),
      I1 => \^d\(1),
      I2 => \result_2_1_1_reg_657_reg[11]\(1),
      O => \result_2_1_1_reg_657[3]_i_3_n_2\
    );
\result_2_1_1_reg_657[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^d\(0),
      I1 => \result_2_1_1_reg_657_reg[3]\(0),
      O => \result_2_1_1_reg_657[3]_i_4_n_2\
    );
\result_2_1_1_reg_657[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[3]\(3),
      I1 => \^d\(3),
      I2 => \result_2_1_1_reg_657_reg[11]\(3),
      I3 => \result_2_1_1_reg_657[3]_i_2_n_2\,
      O => \result_2_1_1_reg_657[3]_i_5_n_2\
    );
\result_2_1_1_reg_657[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[3]\(2),
      I1 => \^d\(2),
      I2 => \result_2_1_1_reg_657_reg[11]\(2),
      I3 => \result_2_1_1_reg_657[3]_i_3_n_2\,
      O => \result_2_1_1_reg_657[3]_i_6_n_2\
    );
\result_2_1_1_reg_657[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[3]\(1),
      I1 => \^d\(1),
      I2 => \result_2_1_1_reg_657_reg[11]\(1),
      I3 => \result_2_1_1_reg_657[3]_i_4_n_2\,
      O => \result_2_1_1_reg_657[3]_i_7_n_2\
    );
\result_2_1_1_reg_657[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^d\(0),
      I1 => \result_2_1_1_reg_657_reg[3]\(0),
      I2 => \result_2_1_1_reg_657_reg[11]\(0),
      O => \result_2_1_1_reg_657[3]_i_8_n_2\
    );
\result_2_1_1_reg_657[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[11]_0\(2),
      I1 => \^d\(6),
      I2 => \result_2_1_1_reg_657_reg[11]\(6),
      O => \result_2_1_1_reg_657[7]_i_2_n_2\
    );
\result_2_1_1_reg_657[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[11]_0\(1),
      I1 => \^d\(5),
      I2 => \result_2_1_1_reg_657_reg[11]\(5),
      O => \result_2_1_1_reg_657[7]_i_3_n_2\
    );
\result_2_1_1_reg_657[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[11]_0\(0),
      I1 => \^d\(4),
      I2 => \result_2_1_1_reg_657_reg[11]\(4),
      O => \result_2_1_1_reg_657[7]_i_4_n_2\
    );
\result_2_1_1_reg_657[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[3]\(3),
      I1 => \^d\(3),
      I2 => \result_2_1_1_reg_657_reg[11]\(3),
      O => \result_2_1_1_reg_657[7]_i_5_n_2\
    );
\result_2_1_1_reg_657[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \result_2_1_1_reg_657[7]_i_2_n_2\,
      I1 => \^d\(7),
      I2 => \result_2_1_1_reg_657_reg[11]_0\(3),
      I3 => \result_2_1_1_reg_657_reg[11]\(7),
      O => \result_2_1_1_reg_657[7]_i_6_n_2\
    );
\result_2_1_1_reg_657[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[11]_0\(2),
      I1 => \^d\(6),
      I2 => \result_2_1_1_reg_657_reg[11]\(6),
      I3 => \result_2_1_1_reg_657[7]_i_3_n_2\,
      O => \result_2_1_1_reg_657[7]_i_7_n_2\
    );
\result_2_1_1_reg_657[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[11]_0\(1),
      I1 => \^d\(5),
      I2 => \result_2_1_1_reg_657_reg[11]\(5),
      I3 => \result_2_1_1_reg_657[7]_i_4_n_2\,
      O => \result_2_1_1_reg_657[7]_i_8_n_2\
    );
\result_2_1_1_reg_657[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \result_2_1_1_reg_657_reg[11]_0\(0),
      I1 => \^d\(4),
      I2 => \result_2_1_1_reg_657_reg[11]\(4),
      I3 => \result_2_1_1_reg_657[7]_i_5_n_2\,
      O => \result_2_1_1_reg_657[7]_i_9_n_2\
    );
\result_2_1_1_reg_657_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_2_1_1_reg_657_reg[7]_i_1_n_2\,
      CO(3) => \NLW_result_2_1_1_reg_657_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \result_2_1_1_reg_657_reg[11]_i_2_n_3\,
      CO(1) => \result_2_1_1_reg_657_reg[11]_i_2_n_4\,
      CO(0) => \result_2_1_1_reg_657_reg[11]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => O(0),
      O(3 downto 0) => \kbuf_0_1_fu_112_reg[7]\(11 downto 8),
      S(3 downto 1) => O(3 downto 1),
      S(0) => \result_2_1_1_reg_657[11]_i_4_n_2\
    );
\result_2_1_1_reg_657_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_2_1_1_reg_657_reg[3]_i_1_n_2\,
      CO(2) => \result_2_1_1_reg_657_reg[3]_i_1_n_3\,
      CO(1) => \result_2_1_1_reg_657_reg[3]_i_1_n_4\,
      CO(0) => \result_2_1_1_reg_657_reg[3]_i_1_n_5\,
      CYINIT => '0',
      DI(3) => \result_2_1_1_reg_657[3]_i_2_n_2\,
      DI(2) => \result_2_1_1_reg_657[3]_i_3_n_2\,
      DI(1) => \result_2_1_1_reg_657[3]_i_4_n_2\,
      DI(0) => \result_2_1_1_reg_657_reg[11]\(0),
      O(3 downto 0) => \kbuf_0_1_fu_112_reg[7]\(3 downto 0),
      S(3) => \result_2_1_1_reg_657[3]_i_5_n_2\,
      S(2) => \result_2_1_1_reg_657[3]_i_6_n_2\,
      S(1) => \result_2_1_1_reg_657[3]_i_7_n_2\,
      S(0) => \result_2_1_1_reg_657[3]_i_8_n_2\
    );
\result_2_1_1_reg_657_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_2_1_1_reg_657_reg[3]_i_1_n_2\,
      CO(3) => \result_2_1_1_reg_657_reg[7]_i_1_n_2\,
      CO(2) => \result_2_1_1_reg_657_reg[7]_i_1_n_3\,
      CO(1) => \result_2_1_1_reg_657_reg[7]_i_1_n_4\,
      CO(0) => \result_2_1_1_reg_657_reg[7]_i_1_n_5\,
      CYINIT => '0',
      DI(3) => \result_2_1_1_reg_657[7]_i_2_n_2\,
      DI(2) => \result_2_1_1_reg_657[7]_i_3_n_2\,
      DI(1) => \result_2_1_1_reg_657[7]_i_4_n_2\,
      DI(0) => \result_2_1_1_reg_657[7]_i_5_n_2\,
      O(3 downto 0) => \kbuf_0_1_fu_112_reg[7]\(7 downto 4),
      S(3) => \result_2_1_1_reg_657[7]_i_6_n_2\,
      S(2) => \result_2_1_1_reg_657[7]_i_7_n_2\,
      S(1) => \result_2_1_1_reg_657[7]_i_8_n_2\,
      S(0) => \result_2_1_1_reg_657[7]_i_9_n_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_hw_conv_0_0_hw_conv_lbuf_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \kbuf_0_1_fu_112_reg[7]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ce0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    \result_2_1_1_reg_657_reg[11]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result_2_1_1_reg_657_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result_2_1_1_reg_657_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_hw_conv_0_0_hw_conv_lbuf_0 : entity is "hw_conv_lbuf_0";
end system_hw_conv_0_0_hw_conv_lbuf_0;

architecture STRUCTURE of system_hw_conv_0_0_hw_conv_lbuf_0 is
begin
hw_conv_lbuf_0_ram_U: entity work.system_hw_conv_0_0_hw_conv_lbuf_0_ram_1
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      O(3 downto 0) => O(3 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      WEA(0) => WEA(0),
      ap_clk => ap_clk,
      ce0 => ce0,
      \kbuf_0_1_fu_112_reg[7]\(11 downto 0) => \kbuf_0_1_fu_112_reg[7]\(11 downto 0),
      \out\(8 downto 0) => \out\(8 downto 0),
      ram_reg_0(7 downto 0) => ram_reg(7 downto 0),
      \result_2_1_1_reg_657_reg[11]\(7 downto 0) => \result_2_1_1_reg_657_reg[11]\(7 downto 0),
      \result_2_1_1_reg_657_reg[11]_0\(3 downto 0) => \result_2_1_1_reg_657_reg[11]_0\(3 downto 0),
      \result_2_1_1_reg_657_reg[3]\(3 downto 0) => \result_2_1_1_reg_657_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_hw_conv_0_0_hw_conv_lbuf_0_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ce0 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sin_V_data_V_0_state_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_1 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    i_reg_228_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    tmp_3_reg_638_pp0_iter1_reg : in STD_LOGIC;
    ram_reg_i_4 : in STD_LOGIC;
    tmp_3_reg_638_pp0_iter2_reg : in STD_LOGIC;
    sout_V_data_V_1_ack_in : in STD_LOGIC;
    \tmp6_reg_662_reg[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tmp_5_reg_624 : in STD_LOGIC;
    \kbuf_1_1_fu_124_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp6_reg_662_reg[9]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ram_reg_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_hw_conv_0_0_hw_conv_lbuf_0_0 : entity is "hw_conv_lbuf_0";
end system_hw_conv_0_0_hw_conv_lbuf_0_0;

architecture STRUCTURE of system_hw_conv_0_0_hw_conv_lbuf_0_0 is
begin
hw_conv_lbuf_0_ram_U: entity work.system_hw_conv_0_0_hw_conv_lbuf_0_ram
     port map (
      D(9 downto 0) => D(9 downto 0),
      E(0) => E(0),
      Q(8 downto 0) => Q(8 downto 0),
      WEA(0) => WEA(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ce0 => ce0,
      i_reg_228_reg(0) => i_reg_228_reg(0),
      \kbuf_1_1_fu_124_reg[7]\(7 downto 0) => \kbuf_1_1_fu_124_reg[7]\(7 downto 0),
      \out\(8 downto 0) => \out\(8 downto 0),
      ram_reg_0(7 downto 0) => ram_reg(7 downto 0),
      ram_reg_1(7 downto 0) => ram_reg_0(7 downto 0),
      ram_reg_2 => ram_reg_1,
      ram_reg_3(0) => ram_reg_2(0),
      ram_reg_4 => ram_reg_3,
      ram_reg_i_4_0 => ram_reg_i_4,
      \sin_V_data_V_0_state_reg[0]\ => \sin_V_data_V_0_state_reg[0]\,
      sout_V_data_V_1_ack_in => sout_V_data_V_1_ack_in,
      \tmp6_reg_662_reg[9]\(7 downto 0) => \tmp6_reg_662_reg[9]\(7 downto 0),
      \tmp6_reg_662_reg[9]_0\(7 downto 0) => \tmp6_reg_662_reg[9]_0\(7 downto 0),
      tmp_3_reg_638_pp0_iter1_reg => tmp_3_reg_638_pp0_iter1_reg,
      tmp_3_reg_638_pp0_iter2_reg => tmp_3_reg_638_pp0_iter2_reg,
      tmp_5_reg_624 => tmp_5_reg_624
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_hw_conv_0_0_hw_conv is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    sin_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sin_TVALID : in STD_LOGIC;
    sin_TREADY : out STD_LOGIC;
    sin_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sout_TVALID : out STD_LOGIC;
    sout_TREADY : in STD_LOGIC;
    sout_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_hw_conv_0_0_hw_conv : entity is "hw_conv";
end system_hw_conv_0_0_hw_conv;

architecture STRUCTURE of system_hw_conv_0_0_hw_conv is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_2_n_2\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_3_n_2\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_4_n_2\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_2\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3_i_1_n_2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3_reg_n_2 : STD_LOGIC;
  signal ce0 : STD_LOGIC;
  signal ce1 : STD_LOGIC;
  signal exitcond1_fu_253_p2 : STD_LOGIC;
  signal exitcond1_reg_6090 : STD_LOGIC;
  signal \exitcond1_reg_609[0]_i_2_n_2\ : STD_LOGIC;
  signal \exitcond1_reg_609[0]_i_3_n_2\ : STD_LOGIC;
  signal \exitcond1_reg_609[0]_i_4_n_2\ : STD_LOGIC;
  signal \exitcond1_reg_609_reg_n_2_[0]\ : STD_LOGIC;
  signal i_reg_228 : STD_LOGIC;
  signal i_reg_2280 : STD_LOGIC;
  signal \i_reg_228[0]_i_4_n_2\ : STD_LOGIC;
  signal i_reg_228_reg : STD_LOGIC_VECTOR ( 18 to 18 );
  signal \i_reg_228_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \i_reg_228_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \i_reg_228_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \i_reg_228_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \i_reg_228_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \i_reg_228_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \i_reg_228_reg[0]_i_3_n_8\ : STD_LOGIC;
  signal \i_reg_228_reg[0]_i_3_n_9\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \i_reg_228_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \i_reg_228_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg_228_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg_228_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg_228_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \i_reg_228_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_8\ : STD_LOGIC;
  signal \i_reg_228_reg[4]_i_1_n_9\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \i_reg_228_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \i_reg_228_reg__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal kbuf_0_0_fu_108 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_0_1_fu_112 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_1_0_fu_120 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_1_0_s_fu_116 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_1_1_fu_124 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_1_2_1_fu_379_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_2_0_fu_132 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_2_0_load_6_reg_652 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_2_0_s_fu_128 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_2_1_1_reg_603 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal kbuf_2_1_fu_136 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \kbuf_2_1_fu_136[7]_i_1_n_2\ : STD_LOGIC;
  signal lbuf_0_addr_reg_6180 : STD_LOGIC;
  signal lbuf_0_q0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lbuf_1_U_n_5 : STD_LOGIC;
  signal lbuf_1_addr_reg_629 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal next_urem_fu_306_p2 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \phi_urem_reg_239[0]_i_11_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239[0]_i_1_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239[0]_i_3_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239[0]_i_4_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239[0]_i_8_n_2\ : STD_LOGIC;
  signal phi_urem_reg_239_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \phi_urem_reg_239_reg[0]_i_10_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_10_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_10_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_10_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_12_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_12_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_5_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_5_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_7_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_7_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_7_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_7_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[0]_i_9_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_8\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[4]_i_1_n_9\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \phi_urem_reg_239_reg__0\ : STD_LOGIC_VECTOR ( 18 downto 9 );
  signal reset : STD_LOGIC;
  signal result_2_1_1_fu_457_p2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal result_2_1_1_reg_657 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal result_2_1_1_reg_6570 : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_10_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_11_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_12_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_13_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_14_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_15_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_16_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_17_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_6_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_7_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_8_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[11]_i_9_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_11_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_12_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_13_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_14_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_15_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_16_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_17_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657[7]_i_18_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_3_n_8\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_3_n_9\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_4\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_5\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_6\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_7\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_8\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[11]_i_5_n_9\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_8\ : STD_LOGIC;
  signal \result_2_1_1_reg_657_reg[7]_i_10_n_9\ : STD_LOGIC;
  signal \^sin_tready\ : STD_LOGIC;
  signal sin_V_data_V_0_ack_in : STD_LOGIC;
  signal sin_V_data_V_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sin_V_data_V_0_load_A : STD_LOGIC;
  signal sin_V_data_V_0_load_B : STD_LOGIC;
  signal sin_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sin_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sin_V_data_V_0_sel : STD_LOGIC;
  signal sin_V_data_V_0_sel_rd_i_1_n_2 : STD_LOGIC;
  signal sin_V_data_V_0_sel_wr : STD_LOGIC;
  signal sin_V_data_V_0_sel_wr_i_1_n_2 : STD_LOGIC;
  signal sin_V_data_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \sin_V_data_V_0_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sin_V_data_V_0_state_reg_n_2_[0]\ : STD_LOGIC;
  signal sin_V_dest_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \sin_V_dest_V_0_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sin_V_dest_V_0_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \^sout_tvalid\ : STD_LOGIC;
  signal sout_V_data_V_1_ack_in : STD_LOGIC;
  signal sout_V_data_V_1_load_A : STD_LOGIC;
  signal sout_V_data_V_1_load_B : STD_LOGIC;
  signal sout_V_data_V_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sout_V_data_V_1_payload_A[3]_i_3_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[3]_i_4_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[3]_i_5_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[3]_i_6_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[3]_i_7_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[3]_i_8_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[3]_i_9_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_10_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_11_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_12_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_13_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_14_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_15_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_16_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_17_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_18_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_6_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_7_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_8_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A[7]_i_9_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_8\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[3]_i_2_n_9\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_4_n_4\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_4\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_5\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_6\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_7\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_8\ : STD_LOGIC;
  signal \sout_V_data_V_1_payload_A_reg[7]_i_5_n_9\ : STD_LOGIC;
  signal sout_V_data_V_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sout_V_data_V_1_payload_B[7]_i_1_n_2\ : STD_LOGIC;
  signal sout_V_data_V_1_sel : STD_LOGIC;
  signal sout_V_data_V_1_sel_rd_i_1_n_2 : STD_LOGIC;
  signal sout_V_data_V_1_sel_wr : STD_LOGIC;
  signal sout_V_data_V_1_sel_wr_i_1_n_2 : STD_LOGIC;
  signal \sout_V_data_V_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_state[1]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_data_V_1_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \sout_V_dest_V_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_dest_V_1_state[0]_i_2_n_2\ : STD_LOGIC;
  signal \sout_V_dest_V_1_state[1]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_dest_V_1_state_reg_n_2_[1]\ : STD_LOGIC;
  signal \sout_V_id_V_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_id_V_1_state[1]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_id_V_1_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \sout_V_id_V_1_state_reg_n_2_[1]\ : STD_LOGIC;
  signal \sout_V_keep_V_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_keep_V_1_state[1]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_keep_V_1_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \sout_V_keep_V_1_state_reg_n_2_[1]\ : STD_LOGIC;
  signal sout_V_last_V_1_ack_in : STD_LOGIC;
  signal sout_V_last_V_1_payload_A : STD_LOGIC;
  signal \sout_V_last_V_1_payload_A[0]_i_1_n_2\ : STD_LOGIC;
  signal sout_V_last_V_1_payload_B : STD_LOGIC;
  signal \sout_V_last_V_1_payload_B[0]_i_1_n_2\ : STD_LOGIC;
  signal sout_V_last_V_1_sel : STD_LOGIC;
  signal sout_V_last_V_1_sel_rd_i_1_n_2 : STD_LOGIC;
  signal sout_V_last_V_1_sel_wr : STD_LOGIC;
  signal sout_V_last_V_1_sel_wr_i_1_n_2 : STD_LOGIC;
  signal sout_V_last_V_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \sout_V_last_V_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_last_V_1_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \sout_V_strb_V_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_strb_V_1_state[1]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_strb_V_1_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \sout_V_strb_V_1_state_reg_n_2_[1]\ : STD_LOGIC;
  signal \sout_V_user_V_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_user_V_1_state[1]_i_1_n_2\ : STD_LOGIC;
  signal \sout_V_user_V_1_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \sout_V_user_V_1_state_reg_n_2_[1]\ : STD_LOGIC;
  signal tmp6_fu_484_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmp6_reg_662 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmp_3_fu_294_p2 : STD_LOGIC;
  signal tmp_3_reg_638 : STD_LOGIC;
  signal \tmp_3_reg_638[0]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_3_reg_638[0]_i_4_n_2\ : STD_LOGIC;
  signal \tmp_3_reg_638[0]_i_5_n_2\ : STD_LOGIC;
  signal \tmp_3_reg_638[0]_i_6_n_2\ : STD_LOGIC;
  signal tmp_3_reg_638_pp0_iter1_reg : STD_LOGIC;
  signal tmp_3_reg_638_pp0_iter2_reg : STD_LOGIC;
  signal \tmp_3_reg_638_pp0_iter2_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal tmp_4_fu_507_p4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp_5_fu_271_p2 : STD_LOGIC;
  signal tmp_5_reg_624 : STD_LOGIC;
  signal \tmp_5_reg_624[0]_i_2_n_2\ : STD_LOGIC;
  signal tmp_7_fu_539_p1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tmp_last_V_reg_642[0]_i_1_n_2\ : STD_LOGIC;
  signal tmp_last_V_reg_642_pp0_iter1_reg : STD_LOGIC;
  signal \tmp_last_V_reg_642_reg_n_2_[0]\ : STD_LOGIC;
  signal we1 : STD_LOGIC;
  signal \NLW_i_reg_228_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg_228_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_phi_urem_reg_239_reg[0]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_phi_urem_reg_239_reg[0]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_phi_urem_reg_239_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_phi_urem_reg_239_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_2_1_1_reg_657_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sout_V_data_V_1_payload_A_reg[7]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \exitcond1_reg_609[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kbuf_2_1_fu_136[7]_i_2\ : label is "soft_lutpair16";
  attribute HLUTNM : string;
  attribute HLUTNM of \result_2_1_1_reg_657[11]_i_10\ : label is "lutpair3";
  attribute HLUTNM of \result_2_1_1_reg_657[11]_i_11\ : label is "lutpair2";
  attribute HLUTNM of \result_2_1_1_reg_657[11]_i_12\ : label is "lutpair1";
  attribute HLUTNM of \result_2_1_1_reg_657[11]_i_13\ : label is "lutpair0";
  attribute HLUTNM of \result_2_1_1_reg_657[11]_i_15\ : label is "lutpair3";
  attribute HLUTNM of \result_2_1_1_reg_657[11]_i_16\ : label is "lutpair2";
  attribute HLUTNM of \result_2_1_1_reg_657[11]_i_17\ : label is "lutpair1";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_11\ : label is "lutpair18";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_15\ : label is "lutpair0";
  attribute HLUTNM of \result_2_1_1_reg_657[7]_i_16\ : label is "lutpair18";
  attribute SOFT_HLUTNM of sin_V_data_V_0_sel_rd_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sin_V_data_V_0_sel_wr_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sin_V_data_V_0_state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sin_V_dest_V_0_state[1]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sout_TDATA[0]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sout_TDATA[1]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sout_TDATA[2]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sout_TDATA[3]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sout_TDATA[4]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sout_TDATA[5]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sout_TDATA[6]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sout_TDATA[7]_INST_0\ : label is "soft_lutpair20";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[3]_i_3\ : label is "lutpair13";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[3]_i_4\ : label is "lutpair12";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[3]_i_5\ : label is "lutpair11";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[3]_i_6\ : label is "lutpair14";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[3]_i_7\ : label is "lutpair13";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[3]_i_8\ : label is "lutpair12";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[3]_i_9\ : label is "lutpair11";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[7]_i_11\ : label is "lutpair17";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[7]_i_12\ : label is "lutpair16";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[7]_i_13\ : label is "lutpair15";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[7]_i_14\ : label is "lutpair14";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[7]_i_16\ : label is "lutpair17";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[7]_i_17\ : label is "lutpair16";
  attribute HLUTNM of \sout_V_data_V_1_payload_A[7]_i_18\ : label is "lutpair15";
  attribute SOFT_HLUTNM of sout_V_data_V_1_sel_rd_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sout_V_data_V_1_sel_wr_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sout_V_data_V_1_state[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sout_V_dest_V_1_state[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sout_V_dest_V_1_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sout_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sout_V_last_V_1_state[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmp_3_reg_638[0]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmp_3_reg_638_pp0_iter2_reg[0]_i_1\ : label is "soft_lutpair12";
begin
  sin_TREADY <= \^sin_tready\;
  sout_TDEST(0) <= \<const0>\;
  sout_TID(0) <= \<const0>\;
  sout_TKEEP(0) <= \<const1>\;
  sout_TSTRB(0) <= \<const0>\;
  sout_TUSER(0) <= \<const0>\;
  sout_TVALID <= \^sout_tvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \ap_CS_fsm[0]_i_2_n_2\,
      I1 => \ap_CS_fsm[0]_i_3_n_2\,
      I2 => \ap_CS_fsm[0]_i_4_n_2\,
      I3 => \^sout_tvalid\,
      I4 => \sout_V_dest_V_1_state_reg_n_2_[1]\,
      I5 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \sout_V_keep_V_1_state_reg_n_2_[1]\,
      I1 => sout_V_last_V_1_ack_in,
      I2 => \sout_V_user_V_1_state_reg_n_2_[0]\,
      I3 => \sout_V_last_V_1_state_reg_n_2_[0]\,
      O => \ap_CS_fsm[0]_i_2_n_2\
    );
\ap_CS_fsm[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \sout_V_id_V_1_state_reg_n_2_[0]\,
      I1 => sout_V_data_V_1_ack_in,
      I2 => \sout_V_user_V_1_state_reg_n_2_[1]\,
      I3 => \sout_V_id_V_1_state_reg_n_2_[1]\,
      O => \ap_CS_fsm[0]_i_3_n_2\
    );
\ap_CS_fsm[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \sout_V_strb_V_1_state_reg_n_2_[1]\,
      I1 => \sout_V_strb_V_1_state_reg_n_2_[0]\,
      I2 => ap_CS_fsm_state6,
      I3 => \sout_V_keep_V_1_state_reg_n_2_[0]\,
      O => \ap_CS_fsm[0]_i_4_n_2\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => ap_CS_fsm_state1,
      I1 => \ap_CS_fsm[2]_i_2_n_2\,
      I2 => ap_CS_fsm_state6,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => ap_NS_fsm(0),
      I1 => ap_CS_fsm_state6,
      I2 => \ap_CS_fsm[2]_i_2_n_2\,
      I3 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055550400"
    )
        port map (
      I0 => lbuf_1_U_n_5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_enable_reg_pp0_iter3_reg_n_2,
      I5 => ap_enable_reg_pp0_iter2,
      O => \ap_CS_fsm[2]_i_2_n_2\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_state1,
      S => reset
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage0,
      R => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state6,
      R => reset
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF0000000000"
    )
        port map (
      I0 => lbuf_1_U_n_5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => exitcond1_fu_253_p2,
      I3 => ap_CS_fsm_state1,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => ap_rst_n,
      O => ap_enable_reg_pp0_iter0_i_1_n_2
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_2,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => lbuf_1_U_n_5,
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_enable_reg_pp0_iter1_i_1_n_2
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_2,
      Q => ap_enable_reg_pp0_iter1,
      R => reset
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => lbuf_1_U_n_5,
      I3 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter2_i_1_n_2
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_2,
      Q => ap_enable_reg_pp0_iter2,
      R => reset
    );
ap_enable_reg_pp0_iter3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F400000"
    )
        port map (
      I0 => ap_CS_fsm_state1,
      I1 => ap_enable_reg_pp0_iter3_reg_n_2,
      I2 => lbuf_1_U_n_5,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter3_i_1_n_2
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3_i_1_n_2,
      Q => ap_enable_reg_pp0_iter3_reg_n_2,
      R => '0'
    );
\exitcond1_reg_609[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \exitcond1_reg_609[0]_i_2_n_2\,
      I1 => \i_reg_228_reg__0\(0),
      I2 => \exitcond1_reg_609[0]_i_3_n_2\,
      O => exitcond1_fu_253_p2
    );
\exitcond1_reg_609[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \i_reg_228_reg__0\(13),
      I1 => \i_reg_228_reg__0\(16),
      I2 => \i_reg_228_reg__0\(14),
      I3 => \i_reg_228_reg__0\(15),
      I4 => \exitcond1_reg_609[0]_i_4_n_2\,
      O => \exitcond1_reg_609[0]_i_2_n_2\
    );
\exitcond1_reg_609[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \tmp_3_reg_638[0]_i_5_n_2\,
      I1 => \i_reg_228_reg__0\(11),
      I2 => \i_reg_228_reg__0\(12),
      I3 => \i_reg_228_reg__0\(3),
      I4 => \i_reg_228_reg__0\(4),
      O => \exitcond1_reg_609[0]_i_3_n_2\
    );
\exitcond1_reg_609[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \i_reg_228_reg__0\(9),
      I1 => i_reg_228_reg(18),
      I2 => \i_reg_228_reg__0\(10),
      I3 => \i_reg_228_reg__0\(2),
      I4 => \i_reg_228_reg__0\(17),
      I5 => \i_reg_228_reg__0\(1),
      O => \exitcond1_reg_609[0]_i_4_n_2\
    );
\exitcond1_reg_609_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => exitcond1_fu_253_p2,
      Q => \exitcond1_reg_609_reg_n_2_[0]\,
      R => '0'
    );
\i_reg_228[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state1,
      I1 => i_reg_2280,
      O => i_reg_228
    );
\i_reg_228[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => lbuf_1_U_n_5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => exitcond1_fu_253_p2,
      I3 => ap_enable_reg_pp0_iter0,
      O => i_reg_2280
    );
\i_reg_228[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg_228_reg__0\(0),
      O => \i_reg_228[0]_i_4_n_2\
    );
\i_reg_228_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[0]_i_3_n_9\,
      Q => \i_reg_228_reg__0\(0),
      R => i_reg_228
    );
\i_reg_228_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg_228_reg[0]_i_3_n_2\,
      CO(2) => \i_reg_228_reg[0]_i_3_n_3\,
      CO(1) => \i_reg_228_reg[0]_i_3_n_4\,
      CO(0) => \i_reg_228_reg[0]_i_3_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i_reg_228_reg[0]_i_3_n_6\,
      O(2) => \i_reg_228_reg[0]_i_3_n_7\,
      O(1) => \i_reg_228_reg[0]_i_3_n_8\,
      O(0) => \i_reg_228_reg[0]_i_3_n_9\,
      S(3 downto 1) => \i_reg_228_reg__0\(3 downto 1),
      S(0) => \i_reg_228[0]_i_4_n_2\
    );
\i_reg_228_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[8]_i_1_n_7\,
      Q => \i_reg_228_reg__0\(10),
      R => i_reg_228
    );
\i_reg_228_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[8]_i_1_n_6\,
      Q => \i_reg_228_reg__0\(11),
      R => i_reg_228
    );
\i_reg_228_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[12]_i_1_n_9\,
      Q => \i_reg_228_reg__0\(12),
      R => i_reg_228
    );
\i_reg_228_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_228_reg[8]_i_1_n_2\,
      CO(3) => \i_reg_228_reg[12]_i_1_n_2\,
      CO(2) => \i_reg_228_reg[12]_i_1_n_3\,
      CO(1) => \i_reg_228_reg[12]_i_1_n_4\,
      CO(0) => \i_reg_228_reg[12]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg_228_reg[12]_i_1_n_6\,
      O(2) => \i_reg_228_reg[12]_i_1_n_7\,
      O(1) => \i_reg_228_reg[12]_i_1_n_8\,
      O(0) => \i_reg_228_reg[12]_i_1_n_9\,
      S(3 downto 0) => \i_reg_228_reg__0\(15 downto 12)
    );
\i_reg_228_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[12]_i_1_n_8\,
      Q => \i_reg_228_reg__0\(13),
      R => i_reg_228
    );
\i_reg_228_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[12]_i_1_n_7\,
      Q => \i_reg_228_reg__0\(14),
      R => i_reg_228
    );
\i_reg_228_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[12]_i_1_n_6\,
      Q => \i_reg_228_reg__0\(15),
      R => i_reg_228
    );
\i_reg_228_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[16]_i_1_n_9\,
      Q => \i_reg_228_reg__0\(16),
      R => i_reg_228
    );
\i_reg_228_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_228_reg[12]_i_1_n_2\,
      CO(3 downto 2) => \NLW_i_reg_228_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg_228_reg[16]_i_1_n_4\,
      CO(0) => \i_reg_228_reg[16]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_reg_228_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \i_reg_228_reg[16]_i_1_n_7\,
      O(1) => \i_reg_228_reg[16]_i_1_n_8\,
      O(0) => \i_reg_228_reg[16]_i_1_n_9\,
      S(3) => '0',
      S(2) => i_reg_228_reg(18),
      S(1 downto 0) => \i_reg_228_reg__0\(17 downto 16)
    );
\i_reg_228_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[16]_i_1_n_8\,
      Q => \i_reg_228_reg__0\(17),
      R => i_reg_228
    );
\i_reg_228_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[16]_i_1_n_7\,
      Q => i_reg_228_reg(18),
      R => i_reg_228
    );
\i_reg_228_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[0]_i_3_n_8\,
      Q => \i_reg_228_reg__0\(1),
      R => i_reg_228
    );
\i_reg_228_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[0]_i_3_n_7\,
      Q => \i_reg_228_reg__0\(2),
      R => i_reg_228
    );
\i_reg_228_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[0]_i_3_n_6\,
      Q => \i_reg_228_reg__0\(3),
      R => i_reg_228
    );
\i_reg_228_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[4]_i_1_n_9\,
      Q => \i_reg_228_reg__0\(4),
      R => i_reg_228
    );
\i_reg_228_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_228_reg[0]_i_3_n_2\,
      CO(3) => \i_reg_228_reg[4]_i_1_n_2\,
      CO(2) => \i_reg_228_reg[4]_i_1_n_3\,
      CO(1) => \i_reg_228_reg[4]_i_1_n_4\,
      CO(0) => \i_reg_228_reg[4]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg_228_reg[4]_i_1_n_6\,
      O(2) => \i_reg_228_reg[4]_i_1_n_7\,
      O(1) => \i_reg_228_reg[4]_i_1_n_8\,
      O(0) => \i_reg_228_reg[4]_i_1_n_9\,
      S(3 downto 0) => \i_reg_228_reg__0\(7 downto 4)
    );
\i_reg_228_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[4]_i_1_n_8\,
      Q => \i_reg_228_reg__0\(5),
      R => i_reg_228
    );
\i_reg_228_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[4]_i_1_n_7\,
      Q => \i_reg_228_reg__0\(6),
      R => i_reg_228
    );
\i_reg_228_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[4]_i_1_n_6\,
      Q => \i_reg_228_reg__0\(7),
      R => i_reg_228
    );
\i_reg_228_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[8]_i_1_n_9\,
      Q => \i_reg_228_reg__0\(8),
      R => i_reg_228
    );
\i_reg_228_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_228_reg[4]_i_1_n_2\,
      CO(3) => \i_reg_228_reg[8]_i_1_n_2\,
      CO(2) => \i_reg_228_reg[8]_i_1_n_3\,
      CO(1) => \i_reg_228_reg[8]_i_1_n_4\,
      CO(0) => \i_reg_228_reg[8]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg_228_reg[8]_i_1_n_6\,
      O(2) => \i_reg_228_reg[8]_i_1_n_7\,
      O(1) => \i_reg_228_reg[8]_i_1_n_8\,
      O(0) => \i_reg_228_reg[8]_i_1_n_9\,
      S(3 downto 0) => \i_reg_228_reg__0\(11 downto 8)
    );
\i_reg_228_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \i_reg_228_reg[8]_i_1_n_8\,
      Q => \i_reg_228_reg__0\(9),
      R => i_reg_228
    );
\kbuf_0_0_fu_108_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(0),
      Q => kbuf_0_0_fu_108(0),
      R => '0'
    );
\kbuf_0_0_fu_108_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(1),
      Q => kbuf_0_0_fu_108(1),
      R => '0'
    );
\kbuf_0_0_fu_108_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(2),
      Q => kbuf_0_0_fu_108(2),
      R => '0'
    );
\kbuf_0_0_fu_108_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(3),
      Q => kbuf_0_0_fu_108(3),
      R => '0'
    );
\kbuf_0_0_fu_108_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(4),
      Q => kbuf_0_0_fu_108(4),
      R => '0'
    );
\kbuf_0_0_fu_108_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(5),
      Q => kbuf_0_0_fu_108(5),
      R => '0'
    );
\kbuf_0_0_fu_108_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(6),
      Q => kbuf_0_0_fu_108(6),
      R => '0'
    );
\kbuf_0_0_fu_108_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_0_1_fu_112(7),
      Q => kbuf_0_0_fu_108(7),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(0),
      Q => kbuf_0_1_fu_112(0),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(1),
      Q => kbuf_0_1_fu_112(1),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(2),
      Q => kbuf_0_1_fu_112(2),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(3),
      Q => kbuf_0_1_fu_112(3),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(4),
      Q => kbuf_0_1_fu_112(4),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(5),
      Q => kbuf_0_1_fu_112(5),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(6),
      Q => kbuf_0_1_fu_112(6),
      R => '0'
    );
\kbuf_0_1_fu_112_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => lbuf_0_q0(7),
      Q => kbuf_0_1_fu_112(7),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(0),
      Q => kbuf_1_0_fu_120(0),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(1),
      Q => kbuf_1_0_fu_120(1),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(2),
      Q => kbuf_1_0_fu_120(2),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(3),
      Q => kbuf_1_0_fu_120(3),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(4),
      Q => kbuf_1_0_fu_120(4),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(5),
      Q => kbuf_1_0_fu_120(5),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(6),
      Q => kbuf_1_0_fu_120(6),
      R => '0'
    );
\kbuf_1_0_fu_120_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_1_fu_124(7),
      Q => kbuf_1_0_fu_120(7),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(0),
      Q => kbuf_1_0_s_fu_116(0),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(1),
      Q => kbuf_1_0_s_fu_116(1),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(2),
      Q => kbuf_1_0_s_fu_116(2),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(3),
      Q => kbuf_1_0_s_fu_116(3),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(4),
      Q => kbuf_1_0_s_fu_116(4),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(5),
      Q => kbuf_1_0_s_fu_116(5),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(6),
      Q => kbuf_1_0_s_fu_116(6),
      R => '0'
    );
\kbuf_1_0_s_fu_116_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_1_0_fu_120(7),
      Q => kbuf_1_0_s_fu_116(7),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(0),
      Q => kbuf_1_1_fu_124(0),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(1),
      Q => kbuf_1_1_fu_124(1),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(2),
      Q => kbuf_1_1_fu_124(2),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(3),
      Q => kbuf_1_1_fu_124(3),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(4),
      Q => kbuf_1_1_fu_124(4),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(5),
      Q => kbuf_1_1_fu_124(5),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(6),
      Q => kbuf_1_1_fu_124(6),
      R => '0'
    );
\kbuf_1_1_fu_124_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => we1,
      D => kbuf_1_2_1_fu_379_p3(7),
      Q => kbuf_1_1_fu_124(7),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(0),
      Q => kbuf_2_0_fu_132(0),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(1),
      Q => kbuf_2_0_fu_132(1),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(2),
      Q => kbuf_2_0_fu_132(2),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(3),
      Q => kbuf_2_0_fu_132(3),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(4),
      Q => kbuf_2_0_fu_132(4),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(5),
      Q => kbuf_2_0_fu_132(5),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(6),
      Q => kbuf_2_0_fu_132(6),
      R => '0'
    );
\kbuf_2_0_fu_132_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_1_1_reg_603(7),
      Q => kbuf_2_0_fu_132(7),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(0),
      Q => kbuf_2_0_load_6_reg_652(0),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(1),
      Q => kbuf_2_0_load_6_reg_652(1),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(2),
      Q => kbuf_2_0_load_6_reg_652(2),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(3),
      Q => kbuf_2_0_load_6_reg_652(3),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(4),
      Q => kbuf_2_0_load_6_reg_652(4),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(5),
      Q => kbuf_2_0_load_6_reg_652(5),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(6),
      Q => kbuf_2_0_load_6_reg_652(6),
      R => '0'
    );
\kbuf_2_0_load_6_reg_652_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_0_fu_132(7),
      Q => kbuf_2_0_load_6_reg_652(7),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(0),
      Q => kbuf_2_0_s_fu_128(0),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(1),
      Q => kbuf_2_0_s_fu_128(1),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(2),
      Q => kbuf_2_0_s_fu_128(2),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(3),
      Q => kbuf_2_0_s_fu_128(3),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(4),
      Q => kbuf_2_0_s_fu_128(4),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(5),
      Q => kbuf_2_0_s_fu_128(5),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(6),
      Q => kbuf_2_0_s_fu_128(6),
      R => '0'
    );
\kbuf_2_0_s_fu_128_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce1,
      D => kbuf_2_0_fu_132(7),
      Q => kbuf_2_0_s_fu_128(7),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(0),
      Q => kbuf_2_1_1_reg_603(0),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(1),
      Q => kbuf_2_1_1_reg_603(1),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(2),
      Q => kbuf_2_1_1_reg_603(2),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(3),
      Q => kbuf_2_1_1_reg_603(3),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(4),
      Q => kbuf_2_1_1_reg_603(4),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(5),
      Q => kbuf_2_1_1_reg_603(5),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(6),
      Q => kbuf_2_1_1_reg_603(6),
      R => '0'
    );
\kbuf_2_1_1_reg_603_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => kbuf_2_1_fu_136(7),
      Q => kbuf_2_1_1_reg_603(7),
      R => '0'
    );
\kbuf_2_1_fu_136[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(0),
      I1 => sin_V_data_V_0_payload_A(0),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(0)
    );
\kbuf_2_1_fu_136[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(1),
      I1 => sin_V_data_V_0_payload_A(1),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(1)
    );
\kbuf_2_1_fu_136[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(2),
      I1 => sin_V_data_V_0_payload_A(2),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(2)
    );
\kbuf_2_1_fu_136[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(3),
      I1 => sin_V_data_V_0_payload_A(3),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(3)
    );
\kbuf_2_1_fu_136[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(4),
      I1 => sin_V_data_V_0_payload_A(4),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(4)
    );
\kbuf_2_1_fu_136[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(5),
      I1 => sin_V_data_V_0_payload_A(5),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(5)
    );
\kbuf_2_1_fu_136[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(6),
      I1 => sin_V_data_V_0_payload_A(6),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(6)
    );
\kbuf_2_1_fu_136[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => lbuf_1_U_n_5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => i_reg_228_reg(18),
      I3 => ap_enable_reg_pp0_iter0,
      O => \kbuf_2_1_fu_136[7]_i_1_n_2\
    );
\kbuf_2_1_fu_136[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sin_V_data_V_0_payload_B(7),
      I1 => sin_V_data_V_0_payload_A(7),
      I2 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_data_out(7)
    );
\kbuf_2_1_fu_136_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(0),
      Q => kbuf_2_1_fu_136(0),
      R => '0'
    );
\kbuf_2_1_fu_136_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(1),
      Q => kbuf_2_1_fu_136(1),
      R => '0'
    );
\kbuf_2_1_fu_136_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(2),
      Q => kbuf_2_1_fu_136(2),
      R => '0'
    );
\kbuf_2_1_fu_136_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(3),
      Q => kbuf_2_1_fu_136(3),
      R => '0'
    );
\kbuf_2_1_fu_136_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(4),
      Q => kbuf_2_1_fu_136(4),
      R => '0'
    );
\kbuf_2_1_fu_136_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(5),
      Q => kbuf_2_1_fu_136(5),
      R => '0'
    );
\kbuf_2_1_fu_136_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(6),
      Q => kbuf_2_1_fu_136(6),
      R => '0'
    );
\kbuf_2_1_fu_136_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      D => sin_V_data_V_0_data_out(7),
      Q => kbuf_2_1_fu_136(7),
      R => '0'
    );
lbuf_0_U: entity work.system_hw_conv_0_0_hw_conv_lbuf_0
     port map (
      D(7 downto 0) => lbuf_0_q0(7 downto 0),
      E(0) => we1,
      O(3) => \result_2_1_1_reg_657_reg[11]_i_3_n_6\,
      O(2) => \result_2_1_1_reg_657_reg[11]_i_3_n_7\,
      O(1) => \result_2_1_1_reg_657_reg[11]_i_3_n_8\,
      O(0) => \result_2_1_1_reg_657_reg[11]_i_3_n_9\,
      Q(8 downto 0) => lbuf_1_addr_reg_629(8 downto 0),
      WEA(0) => ce1,
      ap_clk => ap_clk,
      ce0 => ce0,
      \kbuf_0_1_fu_112_reg[7]\(11 downto 0) => result_2_1_1_fu_457_p2(11 downto 0),
      \out\(8 downto 0) => phi_urem_reg_239_reg(8 downto 0),
      ram_reg(7 downto 0) => kbuf_1_0_s_fu_116(7 downto 0),
      \result_2_1_1_reg_657_reg[11]\(7 downto 0) => kbuf_0_1_fu_112(7 downto 0),
      \result_2_1_1_reg_657_reg[11]_0\(3) => \result_2_1_1_reg_657_reg[11]_i_5_n_6\,
      \result_2_1_1_reg_657_reg[11]_0\(2) => \result_2_1_1_reg_657_reg[11]_i_5_n_7\,
      \result_2_1_1_reg_657_reg[11]_0\(1) => \result_2_1_1_reg_657_reg[11]_i_5_n_8\,
      \result_2_1_1_reg_657_reg[11]_0\(0) => \result_2_1_1_reg_657_reg[11]_i_5_n_9\,
      \result_2_1_1_reg_657_reg[3]\(3) => \result_2_1_1_reg_657_reg[7]_i_10_n_6\,
      \result_2_1_1_reg_657_reg[3]\(2) => \result_2_1_1_reg_657_reg[7]_i_10_n_7\,
      \result_2_1_1_reg_657_reg[3]\(1) => \result_2_1_1_reg_657_reg[7]_i_10_n_8\,
      \result_2_1_1_reg_657_reg[3]\(0) => \result_2_1_1_reg_657_reg[7]_i_10_n_9\
    );
\lbuf_0_addr_reg_618_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(0),
      Q => lbuf_1_addr_reg_629(0),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(1),
      Q => lbuf_1_addr_reg_629(1),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(2),
      Q => lbuf_1_addr_reg_629(2),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(3),
      Q => lbuf_1_addr_reg_629(3),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(4),
      Q => lbuf_1_addr_reg_629(4),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(5),
      Q => lbuf_1_addr_reg_629(5),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(6),
      Q => lbuf_1_addr_reg_629(6),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(7),
      Q => lbuf_1_addr_reg_629(7),
      R => '0'
    );
\lbuf_0_addr_reg_618_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => phi_urem_reg_239_reg(8),
      Q => lbuf_1_addr_reg_629(8),
      R => '0'
    );
lbuf_1_U: entity work.system_hw_conv_0_0_hw_conv_lbuf_0_0
     port map (
      D(9 downto 0) => tmp6_fu_484_p2(9 downto 0),
      E(0) => we1,
      Q(8 downto 0) => lbuf_1_addr_reg_629(8 downto 0),
      WEA(0) => ce1,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ce0 => ce0,
      i_reg_228_reg(0) => i_reg_228_reg(18),
      \kbuf_1_1_fu_124_reg[7]\(7 downto 0) => kbuf_1_1_fu_124(7 downto 0),
      \out\(8 downto 0) => phi_urem_reg_239_reg(8 downto 0),
      ram_reg(7 downto 0) => kbuf_1_2_1_fu_379_p3(7 downto 0),
      ram_reg_0(7 downto 0) => kbuf_2_0_s_fu_128(7 downto 0),
      ram_reg_1 => \sin_V_data_V_0_state_reg_n_2_[0]\,
      ram_reg_2(0) => ap_CS_fsm_pp0_stage0,
      ram_reg_3 => \exitcond1_reg_609_reg_n_2_[0]\,
      ram_reg_i_4 => ap_enable_reg_pp0_iter3_reg_n_2,
      \sin_V_data_V_0_state_reg[0]\ => lbuf_1_U_n_5,
      sout_V_data_V_1_ack_in => sout_V_data_V_1_ack_in,
      \tmp6_reg_662_reg[9]\(7 downto 0) => kbuf_2_1_fu_136(7 downto 0),
      \tmp6_reg_662_reg[9]_0\(7 downto 0) => kbuf_2_1_1_reg_603(7 downto 0),
      tmp_3_reg_638_pp0_iter1_reg => tmp_3_reg_638_pp0_iter1_reg,
      tmp_3_reg_638_pp0_iter2_reg => tmp_3_reg_638_pp0_iter2_reg,
      tmp_5_reg_624 => tmp_5_reg_624
    );
\phi_urem_reg_239[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \phi_urem_reg_239[0]_i_3_n_2\,
      I1 => \phi_urem_reg_239[0]_i_4_n_2\,
      I2 => next_urem_fu_306_p2(10),
      I3 => next_urem_fu_306_p2(9),
      I4 => i_reg_2280,
      I5 => ap_CS_fsm_state1,
      O => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => next_urem_fu_306_p2(13),
      I1 => next_urem_fu_306_p2(14),
      I2 => next_urem_fu_306_p2(11),
      I3 => next_urem_fu_306_p2(12),
      O => \phi_urem_reg_239[0]_i_11_n_2\
    );
\phi_urem_reg_239[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => next_urem_fu_306_p2(8),
      I1 => next_urem_fu_306_p2(7),
      I2 => next_urem_fu_306_p2(6),
      I3 => \phi_urem_reg_239[0]_i_8_n_2\,
      O => \phi_urem_reg_239[0]_i_3_n_2\
    );
\phi_urem_reg_239[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => next_urem_fu_306_p2(18),
      I1 => next_urem_fu_306_p2(15),
      I2 => next_urem_fu_306_p2(17),
      I3 => next_urem_fu_306_p2(16),
      I4 => \phi_urem_reg_239[0]_i_11_n_2\,
      O => \phi_urem_reg_239[0]_i_4_n_2\
    );
\phi_urem_reg_239[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_urem_reg_239_reg(0),
      O => next_urem_fu_306_p2(0)
    );
\phi_urem_reg_239[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => next_urem_fu_306_p2(1),
      I1 => phi_urem_reg_239_reg(0),
      I2 => next_urem_fu_306_p2(5),
      I3 => next_urem_fu_306_p2(3),
      I4 => next_urem_fu_306_p2(4),
      I5 => next_urem_fu_306_p2(2),
      O => \phi_urem_reg_239[0]_i_8_n_2\
    );
\phi_urem_reg_239_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[0]_i_2_n_9\,
      Q => phi_urem_reg_239_reg(0),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[0]_i_5_n_2\,
      CO(3) => \phi_urem_reg_239_reg[0]_i_10_n_2\,
      CO(2) => \phi_urem_reg_239_reg[0]_i_10_n_3\,
      CO(1) => \phi_urem_reg_239_reg[0]_i_10_n_4\,
      CO(0) => \phi_urem_reg_239_reg[0]_i_10_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_urem_fu_306_p2(16 downto 13),
      S(3 downto 0) => \phi_urem_reg_239_reg__0\(16 downto 13)
    );
\phi_urem_reg_239_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phi_urem_reg_239_reg[0]_i_12_n_2\,
      CO(2) => \phi_urem_reg_239_reg[0]_i_12_n_3\,
      CO(1) => \phi_urem_reg_239_reg[0]_i_12_n_4\,
      CO(0) => \phi_urem_reg_239_reg[0]_i_12_n_5\,
      CYINIT => phi_urem_reg_239_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_urem_fu_306_p2(4 downto 1),
      S(3 downto 0) => phi_urem_reg_239_reg(4 downto 1)
    );
\phi_urem_reg_239_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phi_urem_reg_239_reg[0]_i_2_n_2\,
      CO(2) => \phi_urem_reg_239_reg[0]_i_2_n_3\,
      CO(1) => \phi_urem_reg_239_reg[0]_i_2_n_4\,
      CO(0) => \phi_urem_reg_239_reg[0]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \phi_urem_reg_239_reg[0]_i_2_n_6\,
      O(2) => \phi_urem_reg_239_reg[0]_i_2_n_7\,
      O(1) => \phi_urem_reg_239_reg[0]_i_2_n_8\,
      O(0) => \phi_urem_reg_239_reg[0]_i_2_n_9\,
      S(3 downto 1) => phi_urem_reg_239_reg(3 downto 1),
      S(0) => next_urem_fu_306_p2(0)
    );
\phi_urem_reg_239_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[0]_i_7_n_2\,
      CO(3) => \phi_urem_reg_239_reg[0]_i_5_n_2\,
      CO(2) => \phi_urem_reg_239_reg[0]_i_5_n_3\,
      CO(1) => \phi_urem_reg_239_reg[0]_i_5_n_4\,
      CO(0) => \phi_urem_reg_239_reg[0]_i_5_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_urem_fu_306_p2(12 downto 9),
      S(3 downto 0) => \phi_urem_reg_239_reg__0\(12 downto 9)
    );
\phi_urem_reg_239_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[0]_i_12_n_2\,
      CO(3) => \phi_urem_reg_239_reg[0]_i_7_n_2\,
      CO(2) => \phi_urem_reg_239_reg[0]_i_7_n_3\,
      CO(1) => \phi_urem_reg_239_reg[0]_i_7_n_4\,
      CO(0) => \phi_urem_reg_239_reg[0]_i_7_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_urem_fu_306_p2(8 downto 5),
      S(3 downto 0) => phi_urem_reg_239_reg(8 downto 5)
    );
\phi_urem_reg_239_reg[0]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[0]_i_10_n_2\,
      CO(3 downto 1) => \NLW_phi_urem_reg_239_reg[0]_i_9_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \phi_urem_reg_239_reg[0]_i_9_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_phi_urem_reg_239_reg[0]_i_9_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => next_urem_fu_306_p2(18 downto 17),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \phi_urem_reg_239_reg__0\(18 downto 17)
    );
\phi_urem_reg_239_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[8]_i_1_n_7\,
      Q => \phi_urem_reg_239_reg__0\(10),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[8]_i_1_n_6\,
      Q => \phi_urem_reg_239_reg__0\(11),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[12]_i_1_n_9\,
      Q => \phi_urem_reg_239_reg__0\(12),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[8]_i_1_n_2\,
      CO(3) => \phi_urem_reg_239_reg[12]_i_1_n_2\,
      CO(2) => \phi_urem_reg_239_reg[12]_i_1_n_3\,
      CO(1) => \phi_urem_reg_239_reg[12]_i_1_n_4\,
      CO(0) => \phi_urem_reg_239_reg[12]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \phi_urem_reg_239_reg[12]_i_1_n_6\,
      O(2) => \phi_urem_reg_239_reg[12]_i_1_n_7\,
      O(1) => \phi_urem_reg_239_reg[12]_i_1_n_8\,
      O(0) => \phi_urem_reg_239_reg[12]_i_1_n_9\,
      S(3 downto 0) => \phi_urem_reg_239_reg__0\(15 downto 12)
    );
\phi_urem_reg_239_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[12]_i_1_n_8\,
      Q => \phi_urem_reg_239_reg__0\(13),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[12]_i_1_n_7\,
      Q => \phi_urem_reg_239_reg__0\(14),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[12]_i_1_n_6\,
      Q => \phi_urem_reg_239_reg__0\(15),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[16]_i_1_n_9\,
      Q => \phi_urem_reg_239_reg__0\(16),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[12]_i_1_n_2\,
      CO(3 downto 2) => \NLW_phi_urem_reg_239_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \phi_urem_reg_239_reg[16]_i_1_n_4\,
      CO(0) => \phi_urem_reg_239_reg[16]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_phi_urem_reg_239_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \phi_urem_reg_239_reg[16]_i_1_n_7\,
      O(1) => \phi_urem_reg_239_reg[16]_i_1_n_8\,
      O(0) => \phi_urem_reg_239_reg[16]_i_1_n_9\,
      S(3) => '0',
      S(2 downto 0) => \phi_urem_reg_239_reg__0\(18 downto 16)
    );
\phi_urem_reg_239_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[16]_i_1_n_8\,
      Q => \phi_urem_reg_239_reg__0\(17),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[16]_i_1_n_7\,
      Q => \phi_urem_reg_239_reg__0\(18),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[0]_i_2_n_8\,
      Q => phi_urem_reg_239_reg(1),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[0]_i_2_n_7\,
      Q => phi_urem_reg_239_reg(2),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[0]_i_2_n_6\,
      Q => phi_urem_reg_239_reg(3),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[4]_i_1_n_9\,
      Q => phi_urem_reg_239_reg(4),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[0]_i_2_n_2\,
      CO(3) => \phi_urem_reg_239_reg[4]_i_1_n_2\,
      CO(2) => \phi_urem_reg_239_reg[4]_i_1_n_3\,
      CO(1) => \phi_urem_reg_239_reg[4]_i_1_n_4\,
      CO(0) => \phi_urem_reg_239_reg[4]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \phi_urem_reg_239_reg[4]_i_1_n_6\,
      O(2) => \phi_urem_reg_239_reg[4]_i_1_n_7\,
      O(1) => \phi_urem_reg_239_reg[4]_i_1_n_8\,
      O(0) => \phi_urem_reg_239_reg[4]_i_1_n_9\,
      S(3 downto 0) => phi_urem_reg_239_reg(7 downto 4)
    );
\phi_urem_reg_239_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[4]_i_1_n_8\,
      Q => phi_urem_reg_239_reg(5),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[4]_i_1_n_7\,
      Q => phi_urem_reg_239_reg(6),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[4]_i_1_n_6\,
      Q => phi_urem_reg_239_reg(7),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[8]_i_1_n_9\,
      Q => phi_urem_reg_239_reg(8),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\phi_urem_reg_239_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_urem_reg_239_reg[4]_i_1_n_2\,
      CO(3) => \phi_urem_reg_239_reg[8]_i_1_n_2\,
      CO(2) => \phi_urem_reg_239_reg[8]_i_1_n_3\,
      CO(1) => \phi_urem_reg_239_reg[8]_i_1_n_4\,
      CO(0) => \phi_urem_reg_239_reg[8]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \phi_urem_reg_239_reg[8]_i_1_n_6\,
      O(2) => \phi_urem_reg_239_reg[8]_i_1_n_7\,
      O(1) => \phi_urem_reg_239_reg[8]_i_1_n_8\,
      O(0) => \phi_urem_reg_239_reg[8]_i_1_n_9\,
      S(3 downto 1) => \phi_urem_reg_239_reg__0\(11 downto 9),
      S(0) => phi_urem_reg_239_reg(8)
    );
\phi_urem_reg_239_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_2280,
      D => \phi_urem_reg_239_reg[8]_i_1_n_8\,
      Q => \phi_urem_reg_239_reg__0\(9),
      R => \phi_urem_reg_239[0]_i_1_n_2\
    );
\result_2_1_1_reg_657[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => lbuf_1_U_n_5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \exitcond1_reg_609_reg_n_2_[0]\,
      O => result_2_1_1_reg_6570
    );
\result_2_1_1_reg_657[11]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => kbuf_1_1_fu_124(3),
      I1 => kbuf_1_0_fu_120(6),
      I2 => kbuf_0_0_fu_108(6),
      O => \result_2_1_1_reg_657[11]_i_10_n_2\
    );
\result_2_1_1_reg_657[11]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => kbuf_1_1_fu_124(2),
      I1 => kbuf_1_0_fu_120(5),
      I2 => kbuf_0_0_fu_108(5),
      O => \result_2_1_1_reg_657[11]_i_11_n_2\
    );
\result_2_1_1_reg_657[11]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => kbuf_1_1_fu_124(1),
      I1 => kbuf_1_0_fu_120(4),
      I2 => kbuf_0_0_fu_108(4),
      O => \result_2_1_1_reg_657[11]_i_12_n_2\
    );
\result_2_1_1_reg_657[11]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => kbuf_1_1_fu_124(0),
      I1 => kbuf_1_0_fu_120(3),
      I2 => kbuf_0_0_fu_108(3),
      O => \result_2_1_1_reg_657[11]_i_13_n_2\
    );
\result_2_1_1_reg_657[11]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \result_2_1_1_reg_657[11]_i_10_n_2\,
      I1 => kbuf_1_1_fu_124(4),
      I2 => kbuf_1_0_fu_120(7),
      I3 => kbuf_0_0_fu_108(7),
      O => \result_2_1_1_reg_657[11]_i_14_n_2\
    );
\result_2_1_1_reg_657[11]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => kbuf_1_1_fu_124(3),
      I1 => kbuf_1_0_fu_120(6),
      I2 => kbuf_0_0_fu_108(6),
      I3 => \result_2_1_1_reg_657[11]_i_11_n_2\,
      O => \result_2_1_1_reg_657[11]_i_15_n_2\
    );
\result_2_1_1_reg_657[11]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => kbuf_1_1_fu_124(2),
      I1 => kbuf_1_0_fu_120(5),
      I2 => kbuf_0_0_fu_108(5),
      I3 => \result_2_1_1_reg_657[11]_i_12_n_2\,
      O => \result_2_1_1_reg_657[11]_i_16_n_2\
    );
\result_2_1_1_reg_657[11]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => kbuf_1_1_fu_124(1),
      I1 => kbuf_1_0_fu_120(4),
      I2 => kbuf_0_0_fu_108(4),
      I3 => \result_2_1_1_reg_657[11]_i_13_n_2\,
      O => \result_2_1_1_reg_657[11]_i_17_n_2\
    );
\result_2_1_1_reg_657[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => kbuf_1_1_fu_124(4),
      I1 => kbuf_1_0_fu_120(7),
      I2 => kbuf_0_0_fu_108(7),
      O => \result_2_1_1_reg_657[11]_i_6_n_2\
    );
\result_2_1_1_reg_657[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => kbuf_1_1_fu_124(7),
      O => \result_2_1_1_reg_657[11]_i_7_n_2\
    );
\result_2_1_1_reg_657[11]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => kbuf_1_1_fu_124(6),
      O => \result_2_1_1_reg_657[11]_i_8_n_2\
    );
\result_2_1_1_reg_657[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => kbuf_0_0_fu_108(7),
      I1 => kbuf_1_0_fu_120(7),
      I2 => kbuf_1_1_fu_124(4),
      I3 => kbuf_1_1_fu_124(5),
      O => \result_2_1_1_reg_657[11]_i_9_n_2\
    );
\result_2_1_1_reg_657[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => kbuf_0_0_fu_108(2),
      I1 => kbuf_1_0_fu_120(2),
      O => \result_2_1_1_reg_657[7]_i_11_n_2\
    );
\result_2_1_1_reg_657[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => kbuf_1_0_fu_120(2),
      I1 => kbuf_0_0_fu_108(2),
      O => \result_2_1_1_reg_657[7]_i_12_n_2\
    );
\result_2_1_1_reg_657[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => kbuf_0_0_fu_108(0),
      I1 => kbuf_1_0_fu_120(0),
      O => \result_2_1_1_reg_657[7]_i_13_n_2\
    );
\result_2_1_1_reg_657[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => kbuf_1_0_fu_120(0),
      I1 => kbuf_0_0_fu_108(0),
      O => \result_2_1_1_reg_657[7]_i_14_n_2\
    );
\result_2_1_1_reg_657[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => kbuf_1_1_fu_124(0),
      I1 => kbuf_1_0_fu_120(3),
      I2 => kbuf_0_0_fu_108(3),
      I3 => \result_2_1_1_reg_657[7]_i_11_n_2\,
      O => \result_2_1_1_reg_657[7]_i_15_n_2\
    );
\result_2_1_1_reg_657[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => kbuf_0_0_fu_108(2),
      I1 => kbuf_1_0_fu_120(2),
      I2 => kbuf_0_0_fu_108(1),
      I3 => kbuf_1_0_fu_120(1),
      O => \result_2_1_1_reg_657[7]_i_16_n_2\
    );
\result_2_1_1_reg_657[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => kbuf_1_0_fu_120(0),
      I1 => kbuf_0_0_fu_108(0),
      I2 => kbuf_1_0_fu_120(1),
      I3 => kbuf_0_0_fu_108(1),
      O => \result_2_1_1_reg_657[7]_i_17_n_2\
    );
\result_2_1_1_reg_657[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => kbuf_0_0_fu_108(0),
      I1 => kbuf_1_0_fu_120(0),
      O => \result_2_1_1_reg_657[7]_i_18_n_2\
    );
\result_2_1_1_reg_657_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(0),
      Q => result_2_1_1_reg_657(0),
      R => '0'
    );
\result_2_1_1_reg_657_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(10),
      Q => result_2_1_1_reg_657(10),
      R => '0'
    );
\result_2_1_1_reg_657_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(11),
      Q => result_2_1_1_reg_657(11),
      R => '0'
    );
\result_2_1_1_reg_657_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_2_1_1_reg_657_reg[11]_i_5_n_2\,
      CO(3) => \NLW_result_2_1_1_reg_657_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \result_2_1_1_reg_657_reg[11]_i_3_n_3\,
      CO(1) => \result_2_1_1_reg_657_reg[11]_i_3_n_4\,
      CO(0) => \result_2_1_1_reg_657_reg[11]_i_3_n_5\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \result_2_1_1_reg_657[11]_i_6_n_2\,
      O(3) => \result_2_1_1_reg_657_reg[11]_i_3_n_6\,
      O(2) => \result_2_1_1_reg_657_reg[11]_i_3_n_7\,
      O(1) => \result_2_1_1_reg_657_reg[11]_i_3_n_8\,
      O(0) => \result_2_1_1_reg_657_reg[11]_i_3_n_9\,
      S(3) => '1',
      S(2) => \result_2_1_1_reg_657[11]_i_7_n_2\,
      S(1) => \result_2_1_1_reg_657[11]_i_8_n_2\,
      S(0) => \result_2_1_1_reg_657[11]_i_9_n_2\
    );
\result_2_1_1_reg_657_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_2_1_1_reg_657_reg[7]_i_10_n_2\,
      CO(3) => \result_2_1_1_reg_657_reg[11]_i_5_n_2\,
      CO(2) => \result_2_1_1_reg_657_reg[11]_i_5_n_3\,
      CO(1) => \result_2_1_1_reg_657_reg[11]_i_5_n_4\,
      CO(0) => \result_2_1_1_reg_657_reg[11]_i_5_n_5\,
      CYINIT => '0',
      DI(3) => \result_2_1_1_reg_657[11]_i_10_n_2\,
      DI(2) => \result_2_1_1_reg_657[11]_i_11_n_2\,
      DI(1) => \result_2_1_1_reg_657[11]_i_12_n_2\,
      DI(0) => \result_2_1_1_reg_657[11]_i_13_n_2\,
      O(3) => \result_2_1_1_reg_657_reg[11]_i_5_n_6\,
      O(2) => \result_2_1_1_reg_657_reg[11]_i_5_n_7\,
      O(1) => \result_2_1_1_reg_657_reg[11]_i_5_n_8\,
      O(0) => \result_2_1_1_reg_657_reg[11]_i_5_n_9\,
      S(3) => \result_2_1_1_reg_657[11]_i_14_n_2\,
      S(2) => \result_2_1_1_reg_657[11]_i_15_n_2\,
      S(1) => \result_2_1_1_reg_657[11]_i_16_n_2\,
      S(0) => \result_2_1_1_reg_657[11]_i_17_n_2\
    );
\result_2_1_1_reg_657_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(1),
      Q => result_2_1_1_reg_657(1),
      R => '0'
    );
\result_2_1_1_reg_657_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(2),
      Q => result_2_1_1_reg_657(2),
      R => '0'
    );
\result_2_1_1_reg_657_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(3),
      Q => result_2_1_1_reg_657(3),
      R => '0'
    );
\result_2_1_1_reg_657_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(4),
      Q => result_2_1_1_reg_657(4),
      R => '0'
    );
\result_2_1_1_reg_657_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(5),
      Q => result_2_1_1_reg_657(5),
      R => '0'
    );
\result_2_1_1_reg_657_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(6),
      Q => result_2_1_1_reg_657(6),
      R => '0'
    );
\result_2_1_1_reg_657_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(7),
      Q => result_2_1_1_reg_657(7),
      R => '0'
    );
\result_2_1_1_reg_657_reg[7]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_2_1_1_reg_657_reg[7]_i_10_n_2\,
      CO(2) => \result_2_1_1_reg_657_reg[7]_i_10_n_3\,
      CO(1) => \result_2_1_1_reg_657_reg[7]_i_10_n_4\,
      CO(0) => \result_2_1_1_reg_657_reg[7]_i_10_n_5\,
      CYINIT => '1',
      DI(3) => \result_2_1_1_reg_657[7]_i_11_n_2\,
      DI(2) => \result_2_1_1_reg_657[7]_i_12_n_2\,
      DI(1) => \result_2_1_1_reg_657[7]_i_13_n_2\,
      DI(0) => \result_2_1_1_reg_657[7]_i_14_n_2\,
      O(3) => \result_2_1_1_reg_657_reg[7]_i_10_n_6\,
      O(2) => \result_2_1_1_reg_657_reg[7]_i_10_n_7\,
      O(1) => \result_2_1_1_reg_657_reg[7]_i_10_n_8\,
      O(0) => \result_2_1_1_reg_657_reg[7]_i_10_n_9\,
      S(3) => \result_2_1_1_reg_657[7]_i_15_n_2\,
      S(2) => \result_2_1_1_reg_657[7]_i_16_n_2\,
      S(1) => \result_2_1_1_reg_657[7]_i_17_n_2\,
      S(0) => \result_2_1_1_reg_657[7]_i_18_n_2\
    );
\result_2_1_1_reg_657_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(8),
      Q => result_2_1_1_reg_657(8),
      R => '0'
    );
\result_2_1_1_reg_657_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => result_2_1_1_fu_457_p2(9),
      Q => result_2_1_1_reg_657(9),
      R => '0'
    );
\sin_V_data_V_0_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => sin_V_data_V_0_sel_wr,
      I1 => sin_V_data_V_0_ack_in,
      I2 => \sin_V_data_V_0_state_reg_n_2_[0]\,
      O => sin_V_data_V_0_load_A
    );
\sin_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(0),
      Q => sin_V_data_V_0_payload_A(0),
      R => '0'
    );
\sin_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(1),
      Q => sin_V_data_V_0_payload_A(1),
      R => '0'
    );
\sin_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(2),
      Q => sin_V_data_V_0_payload_A(2),
      R => '0'
    );
\sin_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(3),
      Q => sin_V_data_V_0_payload_A(3),
      R => '0'
    );
\sin_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(4),
      Q => sin_V_data_V_0_payload_A(4),
      R => '0'
    );
\sin_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(5),
      Q => sin_V_data_V_0_payload_A(5),
      R => '0'
    );
\sin_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(6),
      Q => sin_V_data_V_0_payload_A(6),
      R => '0'
    );
\sin_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_A,
      D => sin_TDATA(7),
      Q => sin_V_data_V_0_payload_A(7),
      R => '0'
    );
\sin_V_data_V_0_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => sin_V_data_V_0_sel_wr,
      I1 => sin_V_data_V_0_ack_in,
      I2 => \sin_V_data_V_0_state_reg_n_2_[0]\,
      O => sin_V_data_V_0_load_B
    );
\sin_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(0),
      Q => sin_V_data_V_0_payload_B(0),
      R => '0'
    );
\sin_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(1),
      Q => sin_V_data_V_0_payload_B(1),
      R => '0'
    );
\sin_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(2),
      Q => sin_V_data_V_0_payload_B(2),
      R => '0'
    );
\sin_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(3),
      Q => sin_V_data_V_0_payload_B(3),
      R => '0'
    );
\sin_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(4),
      Q => sin_V_data_V_0_payload_B(4),
      R => '0'
    );
\sin_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(5),
      Q => sin_V_data_V_0_payload_B(5),
      R => '0'
    );
\sin_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(6),
      Q => sin_V_data_V_0_payload_B(6),
      R => '0'
    );
\sin_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sin_V_data_V_0_load_B,
      D => sin_TDATA(7),
      Q => sin_V_data_V_0_payload_B(7),
      R => '0'
    );
sin_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      I1 => sin_V_data_V_0_sel,
      O => sin_V_data_V_0_sel_rd_i_1_n_2
    );
sin_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sin_V_data_V_0_sel_rd_i_1_n_2,
      Q => sin_V_data_V_0_sel,
      R => reset
    );
sin_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sin_V_data_V_0_ack_in,
      I1 => sin_TVALID,
      I2 => sin_V_data_V_0_sel_wr,
      O => sin_V_data_V_0_sel_wr_i_1_n_2
    );
sin_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sin_V_data_V_0_sel_wr_i_1_n_2,
      Q => sin_V_data_V_0_sel_wr,
      R => reset
    );
\sin_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80AA80"
    )
        port map (
      I0 => ap_rst_n,
      I1 => sin_TVALID,
      I2 => sin_V_data_V_0_ack_in,
      I3 => \sin_V_data_V_0_state_reg_n_2_[0]\,
      I4 => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      O => \sin_V_data_V_0_state[0]_i_1_n_2\
    );
\sin_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \sin_V_data_V_0_state_reg_n_2_[0]\,
      I1 => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      I2 => sin_TVALID,
      I3 => sin_V_data_V_0_ack_in,
      O => sin_V_data_V_0_state(1)
    );
\sin_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sin_V_data_V_0_state[0]_i_1_n_2\,
      Q => \sin_V_data_V_0_state_reg_n_2_[0]\,
      R => '0'
    );
\sin_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sin_V_data_V_0_state(1),
      Q => sin_V_data_V_0_ack_in,
      R => reset
    );
\sin_V_dest_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0F0C000"
    )
        port map (
      I0 => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      I1 => sin_TVALID,
      I2 => ap_rst_n,
      I3 => \^sin_tready\,
      I4 => \sin_V_dest_V_0_state_reg_n_2_[0]\,
      O => \sin_V_dest_V_0_state[0]_i_1_n_2\
    );
\sin_V_dest_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => reset
    );
\sin_V_dest_V_0_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => sin_TVALID,
      I1 => \^sin_tready\,
      I2 => \sin_V_dest_V_0_state_reg_n_2_[0]\,
      I3 => \kbuf_2_1_fu_136[7]_i_1_n_2\,
      O => sin_V_dest_V_0_state(1)
    );
\sin_V_dest_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sin_V_dest_V_0_state[0]_i_1_n_2\,
      Q => \sin_V_dest_V_0_state_reg_n_2_[0]\,
      R => '0'
    );
\sin_V_dest_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sin_V_dest_V_0_state(1),
      Q => \^sin_tready\,
      R => reset
    );
\sout_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(0),
      I1 => sout_V_data_V_1_payload_A(0),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(0)
    );
\sout_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(1),
      I1 => sout_V_data_V_1_payload_A(1),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(1)
    );
\sout_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(2),
      I1 => sout_V_data_V_1_payload_A(2),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(2)
    );
\sout_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(3),
      I1 => sout_V_data_V_1_payload_A(3),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(3)
    );
\sout_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(4),
      I1 => sout_V_data_V_1_payload_A(4),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(4)
    );
\sout_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(5),
      I1 => sout_V_data_V_1_payload_A(5),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(5)
    );
\sout_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(6),
      I1 => sout_V_data_V_1_payload_A(6),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(6)
    );
\sout_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sout_V_data_V_1_payload_B(7),
      I1 => sout_V_data_V_1_payload_A(7),
      I2 => sout_V_data_V_1_sel,
      O => sout_TDATA(7)
    );
\sout_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sout_V_last_V_1_payload_B,
      I1 => sout_V_last_V_1_sel,
      I2 => sout_V_last_V_1_payload_A,
      O => sout_TLAST(0)
    );
\sout_V_data_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_9\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(0)
    );
\sout_V_data_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_8\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(1)
    );
\sout_V_data_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_7\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(2)
    );
\sout_V_data_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_6\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(3)
    );
\sout_V_data_V_1_payload_A[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(2),
      I1 => tmp6_reg_662(2),
      I2 => kbuf_2_0_load_6_reg_652(2),
      O => \sout_V_data_V_1_payload_A[3]_i_3_n_2\
    );
\sout_V_data_V_1_payload_A[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(1),
      I1 => tmp6_reg_662(1),
      I2 => kbuf_2_0_load_6_reg_652(1),
      O => \sout_V_data_V_1_payload_A[3]_i_4_n_2\
    );
\sout_V_data_V_1_payload_A[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(0),
      I1 => tmp6_reg_662(0),
      I2 => kbuf_2_0_load_6_reg_652(0),
      O => \sout_V_data_V_1_payload_A[3]_i_5_n_2\
    );
\sout_V_data_V_1_payload_A[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => result_2_1_1_reg_657(3),
      I1 => tmp6_reg_662(3),
      I2 => kbuf_2_0_load_6_reg_652(3),
      I3 => \sout_V_data_V_1_payload_A[3]_i_3_n_2\,
      O => \sout_V_data_V_1_payload_A[3]_i_6_n_2\
    );
\sout_V_data_V_1_payload_A[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => result_2_1_1_reg_657(2),
      I1 => tmp6_reg_662(2),
      I2 => kbuf_2_0_load_6_reg_652(2),
      I3 => \sout_V_data_V_1_payload_A[3]_i_4_n_2\,
      O => \sout_V_data_V_1_payload_A[3]_i_7_n_2\
    );
\sout_V_data_V_1_payload_A[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => result_2_1_1_reg_657(1),
      I1 => tmp6_reg_662(1),
      I2 => kbuf_2_0_load_6_reg_652(1),
      I3 => \sout_V_data_V_1_payload_A[3]_i_5_n_2\,
      O => \sout_V_data_V_1_payload_A[3]_i_8_n_2\
    );
\sout_V_data_V_1_payload_A[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => result_2_1_1_reg_657(0),
      I1 => tmp6_reg_662(0),
      I2 => kbuf_2_0_load_6_reg_652(0),
      O => \sout_V_data_V_1_payload_A[3]_i_9_n_2\
    );
\sout_V_data_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_9\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(4)
    );
\sout_V_data_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_8\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(5)
    );
\sout_V_data_V_1_payload_A[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_7\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(6)
    );
\sout_V_data_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4500"
    )
        port map (
      I0 => sout_V_data_V_1_sel_wr,
      I1 => sout_V_data_V_1_ack_in,
      I2 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      I3 => tmp_4_fu_507_p4(3),
      O => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => kbuf_2_0_load_6_reg_652(7),
      I1 => tmp6_reg_662(7),
      I2 => result_2_1_1_reg_657(7),
      I3 => result_2_1_1_reg_657(8),
      I4 => tmp6_reg_662(8),
      O => \sout_V_data_V_1_payload_A[7]_i_10_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(6),
      I1 => tmp6_reg_662(6),
      I2 => kbuf_2_0_load_6_reg_652(6),
      O => \sout_V_data_V_1_payload_A[7]_i_11_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(5),
      I1 => tmp6_reg_662(5),
      I2 => kbuf_2_0_load_6_reg_652(5),
      O => \sout_V_data_V_1_payload_A[7]_i_12_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(4),
      I1 => tmp6_reg_662(4),
      I2 => kbuf_2_0_load_6_reg_652(4),
      O => \sout_V_data_V_1_payload_A[7]_i_13_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(3),
      I1 => tmp6_reg_662(3),
      I2 => kbuf_2_0_load_6_reg_652(3),
      O => \sout_V_data_V_1_payload_A[7]_i_14_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A[7]_i_11_n_2\,
      I1 => tmp6_reg_662(7),
      I2 => result_2_1_1_reg_657(7),
      I3 => kbuf_2_0_load_6_reg_652(7),
      O => \sout_V_data_V_1_payload_A[7]_i_15_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => result_2_1_1_reg_657(6),
      I1 => tmp6_reg_662(6),
      I2 => kbuf_2_0_load_6_reg_652(6),
      I3 => \sout_V_data_V_1_payload_A[7]_i_12_n_2\,
      O => \sout_V_data_V_1_payload_A[7]_i_16_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => result_2_1_1_reg_657(5),
      I1 => tmp6_reg_662(5),
      I2 => kbuf_2_0_load_6_reg_652(5),
      I3 => \sout_V_data_V_1_payload_A[7]_i_13_n_2\,
      O => \sout_V_data_V_1_payload_A[7]_i_17_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => result_2_1_1_reg_657(4),
      I1 => tmp6_reg_662(4),
      I2 => kbuf_2_0_load_6_reg_652(4),
      I3 => \sout_V_data_V_1_payload_A[7]_i_14_n_2\,
      O => \sout_V_data_V_1_payload_A[7]_i_18_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => sout_V_data_V_1_sel_wr,
      I1 => sout_V_data_V_1_ack_in,
      I2 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      O => sout_V_data_V_1_load_A
    );
\sout_V_data_V_1_payload_A[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_6\,
      I1 => tmp_4_fu_507_p4(3),
      I2 => tmp_4_fu_507_p4(0),
      I3 => tmp_4_fu_507_p4(1),
      I4 => tmp_4_fu_507_p4(2),
      O => tmp_7_fu_539_p1(7)
    );
\sout_V_data_V_1_payload_A[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result_2_1_1_reg_657(8),
      I1 => tmp6_reg_662(8),
      O => \sout_V_data_V_1_payload_A[7]_i_6_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => result_2_1_1_reg_657(7),
      I1 => tmp6_reg_662(7),
      I2 => kbuf_2_0_load_6_reg_652(7),
      O => \sout_V_data_V_1_payload_A[7]_i_7_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tmp6_reg_662(9),
      I1 => result_2_1_1_reg_657(9),
      I2 => result_2_1_1_reg_657(10),
      O => \sout_V_data_V_1_payload_A[7]_i_8_n_2\
    );
\sout_V_data_V_1_payload_A[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => tmp6_reg_662(8),
      I1 => result_2_1_1_reg_657(8),
      I2 => result_2_1_1_reg_657(9),
      I3 => tmp6_reg_662(9),
      O => \sout_V_data_V_1_payload_A[7]_i_9_n_2\
    );
\sout_V_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(0),
      Q => sout_V_data_V_1_payload_A(0),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(1),
      Q => sout_V_data_V_1_payload_A(1),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(2),
      Q => sout_V_data_V_1_payload_A(2),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(3),
      Q => sout_V_data_V_1_payload_A(3),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_2\,
      CO(2) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_3\,
      CO(1) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_4\,
      CO(0) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_5\,
      CYINIT => '0',
      DI(3) => \sout_V_data_V_1_payload_A[3]_i_3_n_2\,
      DI(2) => \sout_V_data_V_1_payload_A[3]_i_4_n_2\,
      DI(1) => \sout_V_data_V_1_payload_A[3]_i_5_n_2\,
      DI(0) => '0',
      O(3) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_6\,
      O(2) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_7\,
      O(1) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_8\,
      O(0) => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_9\,
      S(3) => \sout_V_data_V_1_payload_A[3]_i_6_n_2\,
      S(2) => \sout_V_data_V_1_payload_A[3]_i_7_n_2\,
      S(1) => \sout_V_data_V_1_payload_A[3]_i_8_n_2\,
      S(0) => \sout_V_data_V_1_payload_A[3]_i_9_n_2\
    );
\sout_V_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(4),
      Q => sout_V_data_V_1_payload_A(4),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(5),
      Q => sout_V_data_V_1_payload_A(5),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(6),
      Q => sout_V_data_V_1_payload_A(6),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_A,
      D => tmp_7_fu_539_p1(7),
      Q => sout_V_data_V_1_payload_A(7),
      R => \sout_V_data_V_1_payload_A[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_A_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_2\,
      CO(3) => \NLW_sout_V_data_V_1_payload_A_reg[7]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \sout_V_data_V_1_payload_A_reg[7]_i_4_n_3\,
      CO(1) => \sout_V_data_V_1_payload_A_reg[7]_i_4_n_4\,
      CO(0) => \sout_V_data_V_1_payload_A_reg[7]_i_4_n_5\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => result_2_1_1_reg_657(10),
      DI(1) => \sout_V_data_V_1_payload_A[7]_i_6_n_2\,
      DI(0) => \sout_V_data_V_1_payload_A[7]_i_7_n_2\,
      O(3 downto 0) => tmp_4_fu_507_p4(3 downto 0),
      S(3) => result_2_1_1_reg_657(11),
      S(2) => \sout_V_data_V_1_payload_A[7]_i_8_n_2\,
      S(1) => \sout_V_data_V_1_payload_A[7]_i_9_n_2\,
      S(0) => \sout_V_data_V_1_payload_A[7]_i_10_n_2\
    );
\sout_V_data_V_1_payload_A_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sout_V_data_V_1_payload_A_reg[3]_i_2_n_2\,
      CO(3) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_2\,
      CO(2) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_3\,
      CO(1) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_4\,
      CO(0) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_5\,
      CYINIT => '0',
      DI(3) => \sout_V_data_V_1_payload_A[7]_i_11_n_2\,
      DI(2) => \sout_V_data_V_1_payload_A[7]_i_12_n_2\,
      DI(1) => \sout_V_data_V_1_payload_A[7]_i_13_n_2\,
      DI(0) => \sout_V_data_V_1_payload_A[7]_i_14_n_2\,
      O(3) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_6\,
      O(2) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_7\,
      O(1) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_8\,
      O(0) => \sout_V_data_V_1_payload_A_reg[7]_i_5_n_9\,
      S(3) => \sout_V_data_V_1_payload_A[7]_i_15_n_2\,
      S(2) => \sout_V_data_V_1_payload_A[7]_i_16_n_2\,
      S(1) => \sout_V_data_V_1_payload_A[7]_i_17_n_2\,
      S(0) => \sout_V_data_V_1_payload_A[7]_i_18_n_2\
    );
\sout_V_data_V_1_payload_B[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => sout_V_data_V_1_sel_wr,
      I1 => sout_V_data_V_1_ack_in,
      I2 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      I3 => tmp_4_fu_507_p4(3),
      O => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => sout_V_data_V_1_sel_wr,
      I1 => sout_V_data_V_1_ack_in,
      I2 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      O => sout_V_data_V_1_load_B
    );
\sout_V_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(0),
      Q => sout_V_data_V_1_payload_B(0),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(1),
      Q => sout_V_data_V_1_payload_B(1),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(2),
      Q => sout_V_data_V_1_payload_B(2),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(3),
      Q => sout_V_data_V_1_payload_B(3),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(4),
      Q => sout_V_data_V_1_payload_B(4),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(5),
      Q => sout_V_data_V_1_payload_B(5),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(6),
      Q => sout_V_data_V_1_payload_B(6),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
\sout_V_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sout_V_data_V_1_load_B,
      D => tmp_7_fu_539_p1(7),
      Q => sout_V_data_V_1_payload_B(7),
      R => \sout_V_data_V_1_payload_B[7]_i_1_n_2\
    );
sout_V_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      I1 => sout_TREADY,
      I2 => sout_V_data_V_1_sel,
      O => sout_V_data_V_1_sel_rd_i_1_n_2
    );
sout_V_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sout_V_data_V_1_sel_rd_i_1_n_2,
      Q => sout_V_data_V_1_sel,
      R => reset
    );
sout_V_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => sout_V_data_V_1_sel_wr,
      O => sout_V_data_V_1_sel_wr_i_1_n_2
    );
sout_V_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sout_V_data_V_1_sel_wr_i_1_n_2,
      Q => sout_V_data_V_1_sel_wr,
      R => reset
    );
\sout_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A00AAAA"
    )
        port map (
      I0 => ap_rst_n,
      I1 => sout_V_data_V_1_ack_in,
      I2 => sout_TREADY,
      I3 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      I4 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      O => \sout_V_data_V_1_state[0]_i_1_n_2\
    );
\sout_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => sout_TREADY,
      I1 => \sout_V_data_V_1_state_reg_n_2_[0]\,
      I2 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I3 => sout_V_data_V_1_ack_in,
      O => \sout_V_data_V_1_state[1]_i_1_n_2\
    );
\sout_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_data_V_1_state[0]_i_1_n_2\,
      Q => \sout_V_data_V_1_state_reg_n_2_[0]\,
      R => '0'
    );
\sout_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_data_V_1_state[1]_i_1_n_2\,
      Q => sout_V_data_V_1_ack_in,
      R => reset
    );
\sout_V_dest_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70F05000"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => sout_TREADY,
      I2 => ap_rst_n,
      I3 => \sout_V_dest_V_1_state_reg_n_2_[1]\,
      I4 => \^sout_tvalid\,
      O => \sout_V_dest_V_1_state[0]_i_1_n_2\
    );
\sout_V_dest_V_1_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => tmp_3_reg_638_pp0_iter1_reg,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => lbuf_1_U_n_5,
      O => \sout_V_dest_V_1_state[0]_i_2_n_2\
    );
\sout_V_dest_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => \sout_V_dest_V_1_state_reg_n_2_[1]\,
      I2 => sout_TREADY,
      I3 => \^sout_tvalid\,
      O => \sout_V_dest_V_1_state[1]_i_1_n_2\
    );
\sout_V_dest_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_dest_V_1_state[0]_i_1_n_2\,
      Q => \^sout_tvalid\,
      R => '0'
    );
\sout_V_dest_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_dest_V_1_state[1]_i_1_n_2\,
      Q => \sout_V_dest_V_1_state_reg_n_2_[1]\,
      R => reset
    );
\sout_V_id_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70F05000"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => sout_TREADY,
      I2 => ap_rst_n,
      I3 => \sout_V_id_V_1_state_reg_n_2_[1]\,
      I4 => \sout_V_id_V_1_state_reg_n_2_[0]\,
      O => \sout_V_id_V_1_state[0]_i_1_n_2\
    );
\sout_V_id_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => \sout_V_id_V_1_state_reg_n_2_[1]\,
      I2 => sout_TREADY,
      I3 => \sout_V_id_V_1_state_reg_n_2_[0]\,
      O => \sout_V_id_V_1_state[1]_i_1_n_2\
    );
\sout_V_id_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_id_V_1_state[0]_i_1_n_2\,
      Q => \sout_V_id_V_1_state_reg_n_2_[0]\,
      R => '0'
    );
\sout_V_id_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_id_V_1_state[1]_i_1_n_2\,
      Q => \sout_V_id_V_1_state_reg_n_2_[1]\,
      R => reset
    );
\sout_V_keep_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70F05000"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => sout_TREADY,
      I2 => ap_rst_n,
      I3 => \sout_V_keep_V_1_state_reg_n_2_[1]\,
      I4 => \sout_V_keep_V_1_state_reg_n_2_[0]\,
      O => \sout_V_keep_V_1_state[0]_i_1_n_2\
    );
\sout_V_keep_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => \sout_V_keep_V_1_state_reg_n_2_[1]\,
      I2 => sout_TREADY,
      I3 => \sout_V_keep_V_1_state_reg_n_2_[0]\,
      O => \sout_V_keep_V_1_state[1]_i_1_n_2\
    );
\sout_V_keep_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_keep_V_1_state[0]_i_1_n_2\,
      Q => \sout_V_keep_V_1_state_reg_n_2_[0]\,
      R => '0'
    );
\sout_V_keep_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_keep_V_1_state[1]_i_1_n_2\,
      Q => \sout_V_keep_V_1_state_reg_n_2_[1]\,
      R => reset
    );
\sout_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => tmp_last_V_reg_642_pp0_iter1_reg,
      I1 => sout_V_last_V_1_sel_wr,
      I2 => sout_V_last_V_1_ack_in,
      I3 => \sout_V_last_V_1_state_reg_n_2_[0]\,
      I4 => sout_V_last_V_1_payload_A,
      O => \sout_V_last_V_1_payload_A[0]_i_1_n_2\
    );
\sout_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_last_V_1_payload_A[0]_i_1_n_2\,
      Q => sout_V_last_V_1_payload_A,
      R => '0'
    );
\sout_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => tmp_last_V_reg_642_pp0_iter1_reg,
      I1 => sout_V_last_V_1_sel_wr,
      I2 => sout_V_last_V_1_ack_in,
      I3 => \sout_V_last_V_1_state_reg_n_2_[0]\,
      I4 => sout_V_last_V_1_payload_B,
      O => \sout_V_last_V_1_payload_B[0]_i_1_n_2\
    );
\sout_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_last_V_1_payload_B[0]_i_1_n_2\,
      Q => sout_V_last_V_1_payload_B,
      R => '0'
    );
sout_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sout_V_last_V_1_state_reg_n_2_[0]\,
      I1 => sout_TREADY,
      I2 => sout_V_last_V_1_sel,
      O => sout_V_last_V_1_sel_rd_i_1_n_2
    );
sout_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sout_V_last_V_1_sel_rd_i_1_n_2,
      Q => sout_V_last_V_1_sel,
      R => reset
    );
sout_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => sout_V_last_V_1_ack_in,
      I2 => sout_V_last_V_1_sel_wr,
      O => sout_V_last_V_1_sel_wr_i_1_n_2
    );
sout_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sout_V_last_V_1_sel_wr_i_1_n_2,
      Q => sout_V_last_V_1_sel_wr,
      R => reset
    );
\sout_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20AAA0A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => sout_TREADY,
      I2 => \sout_V_last_V_1_state_reg_n_2_[0]\,
      I3 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I4 => sout_V_last_V_1_ack_in,
      O => \sout_V_last_V_1_state[0]_i_1_n_2\
    );
\sout_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => sout_TREADY,
      I1 => \sout_V_last_V_1_state_reg_n_2_[0]\,
      I2 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I3 => sout_V_last_V_1_ack_in,
      O => sout_V_last_V_1_state(1)
    );
\sout_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_last_V_1_state[0]_i_1_n_2\,
      Q => \sout_V_last_V_1_state_reg_n_2_[0]\,
      R => '0'
    );
\sout_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sout_V_last_V_1_state(1),
      Q => sout_V_last_V_1_ack_in,
      R => reset
    );
\sout_V_strb_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70F05000"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => sout_TREADY,
      I2 => ap_rst_n,
      I3 => \sout_V_strb_V_1_state_reg_n_2_[1]\,
      I4 => \sout_V_strb_V_1_state_reg_n_2_[0]\,
      O => \sout_V_strb_V_1_state[0]_i_1_n_2\
    );
\sout_V_strb_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => \sout_V_strb_V_1_state_reg_n_2_[1]\,
      I2 => sout_TREADY,
      I3 => \sout_V_strb_V_1_state_reg_n_2_[0]\,
      O => \sout_V_strb_V_1_state[1]_i_1_n_2\
    );
\sout_V_strb_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_strb_V_1_state[0]_i_1_n_2\,
      Q => \sout_V_strb_V_1_state_reg_n_2_[0]\,
      R => '0'
    );
\sout_V_strb_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_strb_V_1_state[1]_i_1_n_2\,
      Q => \sout_V_strb_V_1_state_reg_n_2_[1]\,
      R => reset
    );
\sout_V_user_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70F05000"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => sout_TREADY,
      I2 => ap_rst_n,
      I3 => \sout_V_user_V_1_state_reg_n_2_[1]\,
      I4 => \sout_V_user_V_1_state_reg_n_2_[0]\,
      O => \sout_V_user_V_1_state[0]_i_1_n_2\
    );
\sout_V_user_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \sout_V_dest_V_1_state[0]_i_2_n_2\,
      I1 => \sout_V_user_V_1_state_reg_n_2_[1]\,
      I2 => sout_TREADY,
      I3 => \sout_V_user_V_1_state_reg_n_2_[0]\,
      O => \sout_V_user_V_1_state[1]_i_1_n_2\
    );
\sout_V_user_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_user_V_1_state[0]_i_1_n_2\,
      Q => \sout_V_user_V_1_state_reg_n_2_[0]\,
      R => '0'
    );
\sout_V_user_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \sout_V_user_V_1_state[1]_i_1_n_2\,
      Q => \sout_V_user_V_1_state_reg_n_2_[1]\,
      R => reset
    );
\tmp6_reg_662_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(0),
      Q => tmp6_reg_662(0),
      R => '0'
    );
\tmp6_reg_662_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(1),
      Q => tmp6_reg_662(1),
      R => '0'
    );
\tmp6_reg_662_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(2),
      Q => tmp6_reg_662(2),
      R => '0'
    );
\tmp6_reg_662_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(3),
      Q => tmp6_reg_662(3),
      R => '0'
    );
\tmp6_reg_662_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(4),
      Q => tmp6_reg_662(4),
      R => '0'
    );
\tmp6_reg_662_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(5),
      Q => tmp6_reg_662(5),
      R => '0'
    );
\tmp6_reg_662_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(6),
      Q => tmp6_reg_662(6),
      R => '0'
    );
\tmp6_reg_662_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(7),
      Q => tmp6_reg_662(7),
      R => '0'
    );
\tmp6_reg_662_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(8),
      Q => tmp6_reg_662(8),
      R => '0'
    );
\tmp6_reg_662_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_2_1_1_reg_6570,
      D => tmp6_fu_484_p2(9),
      Q => tmp6_reg_662(9),
      R => '0'
    );
\tmp_3_reg_638[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => lbuf_1_U_n_5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => exitcond1_fu_253_p2,
      O => lbuf_0_addr_reg_6180
    );
\tmp_3_reg_638[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \i_reg_228_reg__0\(9),
      I1 => \tmp_3_reg_638[0]_i_3_n_2\,
      I2 => \tmp_3_reg_638[0]_i_4_n_2\,
      O => tmp_3_fu_294_p2
    );
\tmp_3_reg_638[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tmp_3_reg_638[0]_i_5_n_2\,
      I1 => \i_reg_228_reg__0\(2),
      I2 => \i_reg_228_reg__0\(4),
      I3 => \i_reg_228_reg__0\(3),
      I4 => \i_reg_228_reg__0\(0),
      I5 => \i_reg_228_reg__0\(1),
      O => \tmp_3_reg_638[0]_i_3_n_2\
    );
\tmp_3_reg_638[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tmp_3_reg_638[0]_i_6_n_2\,
      I1 => \i_reg_228_reg__0\(17),
      I2 => \i_reg_228_reg__0\(10),
      I3 => i_reg_228_reg(18),
      I4 => \i_reg_228_reg__0\(11),
      I5 => \i_reg_228_reg__0\(12),
      O => \tmp_3_reg_638[0]_i_4_n_2\
    );
\tmp_3_reg_638[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_228_reg__0\(7),
      I1 => \i_reg_228_reg__0\(6),
      I2 => \i_reg_228_reg__0\(8),
      I3 => \i_reg_228_reg__0\(5),
      O => \tmp_3_reg_638[0]_i_5_n_2\
    );
\tmp_3_reg_638[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_228_reg__0\(15),
      I1 => \i_reg_228_reg__0\(14),
      I2 => \i_reg_228_reg__0\(16),
      I3 => \i_reg_228_reg__0\(13),
      O => \tmp_3_reg_638[0]_i_6_n_2\
    );
\tmp_3_reg_638_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => lbuf_1_U_n_5,
      I1 => ap_CS_fsm_pp0_stage0,
      O => exitcond1_reg_6090
    );
\tmp_3_reg_638_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => tmp_3_reg_638,
      Q => tmp_3_reg_638_pp0_iter1_reg,
      R => '0'
    );
\tmp_3_reg_638_pp0_iter2_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => tmp_3_reg_638_pp0_iter1_reg,
      I1 => lbuf_1_U_n_5,
      I2 => tmp_3_reg_638_pp0_iter2_reg,
      O => \tmp_3_reg_638_pp0_iter2_reg[0]_i_1_n_2\
    );
\tmp_3_reg_638_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_3_reg_638_pp0_iter2_reg[0]_i_1_n_2\,
      Q => tmp_3_reg_638_pp0_iter2_reg,
      R => '0'
    );
\tmp_3_reg_638_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => tmp_3_fu_294_p2,
      Q => tmp_3_reg_638,
      R => '0'
    );
\tmp_5_reg_624[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \tmp_3_reg_638[0]_i_4_n_2\,
      I1 => \i_reg_228_reg__0\(9),
      I2 => \tmp_5_reg_624[0]_i_2_n_2\,
      I3 => \i_reg_228_reg__0\(3),
      I4 => \i_reg_228_reg__0\(7),
      I5 => \i_reg_228_reg__0\(4),
      O => tmp_5_fu_271_p2
    );
\tmp_5_reg_624[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \i_reg_228_reg__0\(1),
      I1 => \i_reg_228_reg__0\(0),
      I2 => \i_reg_228_reg__0\(8),
      I3 => \i_reg_228_reg__0\(2),
      I4 => \i_reg_228_reg__0\(5),
      I5 => \i_reg_228_reg__0\(6),
      O => \tmp_5_reg_624[0]_i_2_n_2\
    );
\tmp_5_reg_624_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lbuf_0_addr_reg_6180,
      D => tmp_5_fu_271_p2,
      Q => tmp_5_reg_624,
      R => '0'
    );
\tmp_last_V_reg_642[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003AAAAAAAAAAAA"
    )
        port map (
      I0 => \tmp_last_V_reg_642_reg_n_2_[0]\,
      I1 => \exitcond1_reg_609[0]_i_2_n_2\,
      I2 => \exitcond1_reg_609[0]_i_3_n_2\,
      I3 => \i_reg_228_reg__0\(0),
      I4 => lbuf_0_addr_reg_6180,
      I5 => tmp_3_fu_294_p2,
      O => \tmp_last_V_reg_642[0]_i_1_n_2\
    );
\tmp_last_V_reg_642_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => exitcond1_reg_6090,
      D => \tmp_last_V_reg_642_reg_n_2_[0]\,
      Q => tmp_last_V_reg_642_pp0_iter1_reg,
      R => '0'
    );
\tmp_last_V_reg_642_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_last_V_reg_642[0]_i_1_n_2\,
      Q => \tmp_last_V_reg_642_reg_n_2_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_hw_conv_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    sin_TVALID : in STD_LOGIC;
    sin_TREADY : out STD_LOGIC;
    sin_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sin_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    sin_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TVALID : out STD_LOGIC;
    sout_TREADY : in STD_LOGIC;
    sout_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sout_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    sout_TID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_hw_conv_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_hw_conv_0_0 : entity is "system_hw_conv_0_0,hw_conv,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_hw_conv_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_hw_conv_0_0 : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of system_hw_conv_0_0 : entity is "hw_conv,Vivado 2018.3";
end system_hw_conv_0_0;

architecture STRUCTURE of system_hw_conv_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF sin:sout, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  attribute x_interface_info of sin_TREADY : signal is "xilinx.com:interface:axis:1.0 sin TREADY";
  attribute x_interface_info of sin_TVALID : signal is "xilinx.com:interface:axis:1.0 sin TVALID";
  attribute x_interface_parameter of sin_TVALID : signal is "XIL_INTERFACENAME sin, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of sout_TREADY : signal is "xilinx.com:interface:axis:1.0 sout TREADY";
  attribute x_interface_info of sout_TVALID : signal is "xilinx.com:interface:axis:1.0 sout TVALID";
  attribute x_interface_parameter of sout_TVALID : signal is "XIL_INTERFACENAME sout, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of sin_TDATA : signal is "xilinx.com:interface:axis:1.0 sin TDATA";
  attribute x_interface_info of sin_TDEST : signal is "xilinx.com:interface:axis:1.0 sin TDEST";
  attribute x_interface_info of sin_TID : signal is "xilinx.com:interface:axis:1.0 sin TID";
  attribute x_interface_info of sin_TKEEP : signal is "xilinx.com:interface:axis:1.0 sin TKEEP";
  attribute x_interface_info of sin_TLAST : signal is "xilinx.com:interface:axis:1.0 sin TLAST";
  attribute x_interface_info of sin_TSTRB : signal is "xilinx.com:interface:axis:1.0 sin TSTRB";
  attribute x_interface_info of sin_TUSER : signal is "xilinx.com:interface:axis:1.0 sin TUSER";
  attribute x_interface_info of sout_TDATA : signal is "xilinx.com:interface:axis:1.0 sout TDATA";
  attribute x_interface_info of sout_TDEST : signal is "xilinx.com:interface:axis:1.0 sout TDEST";
  attribute x_interface_info of sout_TID : signal is "xilinx.com:interface:axis:1.0 sout TID";
  attribute x_interface_info of sout_TKEEP : signal is "xilinx.com:interface:axis:1.0 sout TKEEP";
  attribute x_interface_info of sout_TLAST : signal is "xilinx.com:interface:axis:1.0 sout TLAST";
  attribute x_interface_info of sout_TSTRB : signal is "xilinx.com:interface:axis:1.0 sout TSTRB";
  attribute x_interface_info of sout_TUSER : signal is "xilinx.com:interface:axis:1.0 sout TUSER";
begin
U0: entity work.system_hw_conv_0_0_hw_conv
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      sin_TDATA(7 downto 0) => sin_TDATA(7 downto 0),
      sin_TDEST(0) => sin_TDEST(0),
      sin_TID(0) => sin_TID(0),
      sin_TKEEP(0) => sin_TKEEP(0),
      sin_TLAST(0) => sin_TLAST(0),
      sin_TREADY => sin_TREADY,
      sin_TSTRB(0) => sin_TSTRB(0),
      sin_TUSER(0) => sin_TUSER(0),
      sin_TVALID => sin_TVALID,
      sout_TDATA(7 downto 0) => sout_TDATA(7 downto 0),
      sout_TDEST(0) => sout_TDEST(0),
      sout_TID(0) => sout_TID(0),
      sout_TKEEP(0) => sout_TKEEP(0),
      sout_TLAST(0) => sout_TLAST(0),
      sout_TREADY => sout_TREADY,
      sout_TSTRB(0) => sout_TSTRB(0),
      sout_TUSER(0) => sout_TUSER(0),
      sout_TVALID => sout_TVALID
    );
end STRUCTURE;
