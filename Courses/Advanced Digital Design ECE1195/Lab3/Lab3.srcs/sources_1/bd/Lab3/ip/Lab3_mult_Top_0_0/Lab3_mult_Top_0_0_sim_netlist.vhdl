-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct  6 17:42:38 2022
-- Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/RAYAN/Lab3/Lab3.srcs/sources_1/bd/Lab3/ip/Lab3_mult_Top_0_0/Lab3_mult_Top_0_0_sim_netlist.vhdl
-- Design      : Lab3_mult_Top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab3_mult_Top_0_0_controller is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    load : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \A[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \QL_inter_reg[31]\ : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab3_mult_Top_0_0_controller : entity is "controller";
end Lab3_mult_Top_0_0_controller;

architecture STRUCTURE of Lab3_mult_Top_0_0_controller is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^load\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal shift : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair20";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010";
  attribute SOFT_HLUTNM of \QL_inter[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \QL_inter[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \QL_inter[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \QL_inter[12]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \QL_inter[13]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \QL_inter[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \QL_inter[15]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \QL_inter[16]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \QL_inter[17]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \QL_inter[18]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \QL_inter[19]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \QL_inter[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \QL_inter[20]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \QL_inter[21]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \QL_inter[22]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \QL_inter[23]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \QL_inter[24]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \QL_inter[25]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \QL_inter[26]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \QL_inter[27]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \QL_inter[28]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \QL_inter[29]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \QL_inter[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \QL_inter[30]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \QL_inter[31]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \QL_inter[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \QL_inter[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \QL_inter[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \QL_inter[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \QL_inter[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \QL_inter[8]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \QL_inter[9]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \QR_inter[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \QR_inter[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \QR_inter[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \QR_inter[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \QR_inter[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \QR_inter[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \QR_inter[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \QR_inter[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \QR_inter[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \QR_inter[18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \QR_inter[19]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \QR_inter[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \QR_inter[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \QR_inter[21]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \QR_inter[22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \QR_inter[23]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \QR_inter[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \QR_inter[25]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \QR_inter[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \QR_inter[27]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \QR_inter[28]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \QR_inter[29]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \QR_inter[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \QR_inter[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \QR_inter[31]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \QR_inter[31]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \QR_inter[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \QR_inter[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \QR_inter[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \QR_inter[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \QR_inter[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \QR_inter[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \QR_inter[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \RP_inter[63]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair16";
begin
  \FSM_onehot_state_reg[3]_0\ <= \^fsm_onehot_state_reg[3]_0\;
  SR(0) <= \^sr\(0);
  load <= \^load\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => shift,
      I1 => \FSM_onehot_state[0]_i_2_n_0\,
      I2 => \FSM_onehot_state[0]_i_3_n_0\,
      I3 => \^sr\(0),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(4),
      I4 => \counter_reg__0\(2),
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => shift,
      I1 => \^fsm_onehot_state_reg[3]_0\,
      I2 => \^load\,
      I3 => add,
      I4 => rst,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sr\(0),
      I1 => rst,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_2_n_0\,
      I1 => shift,
      I2 => \^load\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Q(0),
      I1 => \^fsm_onehot_state_reg[3]_0\,
      I2 => add,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \^sr\(0),
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^load\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[3]_0\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg[4]_1\,
      Q => add,
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => shift,
      R => '0'
    );
\QL_inter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^load\,
      I1 => A(0),
      O => \A[31]\(0)
    );
\QL_inter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(10),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(9),
      O => \A[31]\(10)
    );
\QL_inter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(11),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(10),
      O => \A[31]\(11)
    );
\QL_inter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(12),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(11),
      O => \A[31]\(12)
    );
\QL_inter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(13),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(12),
      O => \A[31]\(13)
    );
\QL_inter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(14),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(13),
      O => \A[31]\(14)
    );
\QL_inter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(15),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(14),
      O => \A[31]\(15)
    );
\QL_inter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(16),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(15),
      O => \A[31]\(16)
    );
\QL_inter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(17),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(16),
      O => \A[31]\(17)
    );
\QL_inter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(18),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(17),
      O => \A[31]\(18)
    );
\QL_inter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(19),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(18),
      O => \A[31]\(19)
    );
\QL_inter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(1),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(0),
      O => \A[31]\(1)
    );
\QL_inter[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(20),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(19),
      O => \A[31]\(20)
    );
\QL_inter[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(21),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(20),
      O => \A[31]\(21)
    );
\QL_inter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(22),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(21),
      O => \A[31]\(22)
    );
\QL_inter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(23),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(22),
      O => \A[31]\(23)
    );
\QL_inter[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(24),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(23),
      O => \A[31]\(24)
    );
\QL_inter[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(25),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(24),
      O => \A[31]\(25)
    );
\QL_inter[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(26),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(25),
      O => \A[31]\(26)
    );
\QL_inter[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(27),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(26),
      O => \A[31]\(27)
    );
\QL_inter[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(28),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(27),
      O => \A[31]\(28)
    );
\QL_inter[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(29),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(28),
      O => \A[31]\(29)
    );
\QL_inter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(2),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(1),
      O => \A[31]\(2)
    );
\QL_inter[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(30),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(29),
      O => \A[31]\(30)
    );
\QL_inter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(31),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(30),
      O => \A[31]\(31)
    );
\QL_inter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(3),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(2),
      O => \A[31]\(3)
    );
\QL_inter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(4),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(3),
      O => \A[31]\(4)
    );
\QL_inter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(5),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(4),
      O => \A[31]\(5)
    );
\QL_inter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(6),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(5),
      O => \A[31]\(6)
    );
\QL_inter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(7),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(6),
      O => \A[31]\(7)
    );
\QL_inter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(8),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(7),
      O => \A[31]\(8)
    );
\QL_inter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(9),
      I1 => \^load\,
      I2 => \QL_inter_reg[31]\(8),
      O => \A[31]\(9)
    );
\QR_inter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(0),
      I1 => \^load\,
      I2 => Q(1),
      O => D(0)
    );
\QR_inter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(10),
      I1 => \^load\,
      I2 => Q(11),
      O => D(10)
    );
\QR_inter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(11),
      I1 => \^load\,
      I2 => Q(12),
      O => D(11)
    );
\QR_inter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(12),
      I1 => \^load\,
      I2 => Q(13),
      O => D(12)
    );
\QR_inter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(13),
      I1 => \^load\,
      I2 => Q(14),
      O => D(13)
    );
\QR_inter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(14),
      I1 => \^load\,
      I2 => Q(15),
      O => D(14)
    );
\QR_inter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(15),
      I1 => \^load\,
      I2 => Q(16),
      O => D(15)
    );
\QR_inter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(16),
      I1 => \^load\,
      I2 => Q(17),
      O => D(16)
    );
\QR_inter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(17),
      I1 => \^load\,
      I2 => Q(18),
      O => D(17)
    );
\QR_inter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(18),
      I1 => \^load\,
      I2 => Q(19),
      O => D(18)
    );
\QR_inter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(19),
      I1 => \^load\,
      I2 => Q(20),
      O => D(19)
    );
\QR_inter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(1),
      I1 => \^load\,
      I2 => Q(2),
      O => D(1)
    );
\QR_inter[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(20),
      I1 => \^load\,
      I2 => Q(21),
      O => D(20)
    );
\QR_inter[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(21),
      I1 => \^load\,
      I2 => Q(22),
      O => D(21)
    );
\QR_inter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(22),
      I1 => \^load\,
      I2 => Q(23),
      O => D(22)
    );
\QR_inter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(23),
      I1 => \^load\,
      I2 => Q(24),
      O => D(23)
    );
\QR_inter[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(24),
      I1 => \^load\,
      I2 => Q(25),
      O => D(24)
    );
\QR_inter[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(25),
      I1 => \^load\,
      I2 => Q(26),
      O => D(25)
    );
\QR_inter[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(26),
      I1 => \^load\,
      I2 => Q(27),
      O => D(26)
    );
\QR_inter[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(27),
      I1 => \^load\,
      I2 => Q(28),
      O => D(27)
    );
\QR_inter[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(28),
      I1 => \^load\,
      I2 => Q(29),
      O => D(28)
    );
\QR_inter[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(29),
      I1 => \^load\,
      I2 => Q(30),
      O => D(29)
    );
\QR_inter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(2),
      I1 => \^load\,
      I2 => Q(3),
      O => D(2)
    );
\QR_inter[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(30),
      I1 => \^load\,
      I2 => Q(31),
      O => D(30)
    );
\QR_inter[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^load\,
      I1 => shift,
      O => E(0)
    );
\QR_inter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^load\,
      I1 => B(31),
      O => D(31)
    );
\QR_inter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(3),
      I1 => \^load\,
      I2 => Q(4),
      O => D(3)
    );
\QR_inter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(4),
      I1 => \^load\,
      I2 => Q(5),
      O => D(4)
    );
\QR_inter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(5),
      I1 => \^load\,
      I2 => Q(6),
      O => D(5)
    );
\QR_inter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(6),
      I1 => \^load\,
      I2 => Q(7),
      O => D(6)
    );
\QR_inter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(7),
      I1 => \^load\,
      I2 => Q(8),
      O => D(7)
    );
\QR_inter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(8),
      I1 => \^load\,
      I2 => Q(9),
      O => D(8)
    );
\QR_inter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(9),
      I1 => \^load\,
      I2 => Q(10),
      O => D(9)
    );
\RP_inter[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add,
      I1 => \^sr\(0),
      O => \FSM_onehot_state_reg[4]_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => \^sr\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => \^sr\(0)
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift,
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg__0\(2),
      R => \^sr\(0)
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => \^sr\(0)
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab3_mult_Top_0_0_product_reg is
  port (
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \RP_inter_reg[63]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    \RP_inter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[19]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[27]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[31]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[35]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[39]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[43]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[47]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[51]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[55]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[59]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RP_inter_reg[63]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab3_mult_Top_0_0_product_reg : entity is "product_reg";
end Lab3_mult_Top_0_0_product_reg;

architecture STRUCTURE of Lab3_mult_Top_0_0_product_reg is
begin
\RP_inter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => O(0),
      Q => R(0)
    );
\RP_inter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[11]_0\(2),
      Q => R(10)
    );
\RP_inter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[11]_0\(3),
      Q => R(11)
    );
\RP_inter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[15]_0\(0),
      Q => R(12)
    );
\RP_inter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[15]_0\(1),
      Q => R(13)
    );
\RP_inter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[15]_0\(2),
      Q => R(14)
    );
\RP_inter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[15]_0\(3),
      Q => R(15)
    );
\RP_inter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[19]_0\(0),
      Q => R(16)
    );
\RP_inter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[19]_0\(1),
      Q => R(17)
    );
\RP_inter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[19]_0\(2),
      Q => R(18)
    );
\RP_inter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[19]_0\(3),
      Q => R(19)
    );
\RP_inter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => O(1),
      Q => R(1)
    );
\RP_inter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[23]_0\(0),
      Q => R(20)
    );
\RP_inter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[23]_0\(1),
      Q => R(21)
    );
\RP_inter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[23]_0\(2),
      Q => R(22)
    );
\RP_inter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[23]_0\(3),
      Q => R(23)
    );
\RP_inter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[27]_0\(0),
      Q => R(24)
    );
\RP_inter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[27]_0\(1),
      Q => R(25)
    );
\RP_inter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[27]_0\(2),
      Q => R(26)
    );
\RP_inter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[27]_0\(3),
      Q => R(27)
    );
\RP_inter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[31]_0\(0),
      Q => R(28)
    );
\RP_inter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[31]_0\(1),
      Q => R(29)
    );
\RP_inter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => O(2),
      Q => R(2)
    );
\RP_inter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[31]_0\(2),
      Q => R(30)
    );
\RP_inter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[31]_0\(3),
      Q => R(31)
    );
\RP_inter_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[35]_0\(0),
      Q => R(32)
    );
\RP_inter_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[35]_0\(1),
      Q => R(33)
    );
\RP_inter_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[35]_0\(2),
      Q => R(34)
    );
\RP_inter_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[35]_0\(3),
      Q => R(35)
    );
\RP_inter_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[39]_0\(0),
      Q => R(36)
    );
\RP_inter_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[39]_0\(1),
      Q => R(37)
    );
\RP_inter_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[39]_0\(2),
      Q => R(38)
    );
\RP_inter_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[39]_0\(3),
      Q => R(39)
    );
\RP_inter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => O(3),
      Q => R(3)
    );
\RP_inter_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[43]_0\(0),
      Q => R(40)
    );
\RP_inter_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[43]_0\(1),
      Q => R(41)
    );
\RP_inter_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[43]_0\(2),
      Q => R(42)
    );
\RP_inter_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[43]_0\(3),
      Q => R(43)
    );
\RP_inter_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[47]_0\(0),
      Q => R(44)
    );
\RP_inter_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[47]_0\(1),
      Q => R(45)
    );
\RP_inter_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[47]_0\(2),
      Q => R(46)
    );
\RP_inter_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[47]_0\(3),
      Q => R(47)
    );
\RP_inter_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[51]_0\(0),
      Q => R(48)
    );
\RP_inter_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[51]_0\(1),
      Q => R(49)
    );
\RP_inter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[7]_0\(0),
      Q => R(4)
    );
\RP_inter_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[51]_0\(2),
      Q => R(50)
    );
\RP_inter_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[51]_0\(3),
      Q => R(51)
    );
\RP_inter_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[55]_0\(0),
      Q => R(52)
    );
\RP_inter_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[55]_0\(1),
      Q => R(53)
    );
\RP_inter_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[55]_0\(2),
      Q => R(54)
    );
\RP_inter_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[55]_0\(3),
      Q => R(55)
    );
\RP_inter_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[59]_0\(0),
      Q => R(56)
    );
\RP_inter_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[59]_0\(1),
      Q => R(57)
    );
\RP_inter_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[59]_0\(2),
      Q => R(58)
    );
\RP_inter_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[59]_0\(3),
      Q => R(59)
    );
\RP_inter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[7]_0\(1),
      Q => R(5)
    );
\RP_inter_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[63]_1\(0),
      Q => R(60)
    );
\RP_inter_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[63]_1\(1),
      Q => R(61)
    );
\RP_inter_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[63]_1\(2),
      Q => R(62)
    );
\RP_inter_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[63]_1\(3),
      Q => R(63)
    );
\RP_inter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[7]_0\(2),
      Q => R(6)
    );
\RP_inter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[7]_0\(3),
      Q => R(7)
    );
\RP_inter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[11]_0\(0),
      Q => R(8)
    );
\RP_inter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \RP_inter_reg[63]_0\,
      CLR => rst,
      D => \RP_inter_reg[11]_0\(1),
      Q => R(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab3_mult_Top_0_0_shiftreg_L is
  port (
    Q : out STD_LOGIC_VECTOR ( 30 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[35]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[39]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[43]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[47]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[51]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[55]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[59]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \QL_inter_reg[62]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    R : in STD_LOGIC_VECTOR ( 63 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    load : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab3_mult_Top_0_0_shiftreg_L : entity is "shiftreg_L";
end Lab3_mult_Top_0_0_shiftreg_L;

architecture STRUCTURE of Lab3_mult_Top_0_0_shiftreg_L is
  signal \^q\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal QL_inter : STD_LOGIC_VECTOR ( 63 downto 31 );
  signal \RP_inter[11]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[11]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[11]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[11]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[15]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[15]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[15]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[15]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[19]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[19]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[19]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[19]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[23]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[23]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[23]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[23]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[27]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[27]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[27]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[27]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[31]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[31]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[31]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[31]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[35]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[35]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[35]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[35]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[39]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[39]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[39]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[39]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[3]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[3]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[3]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[3]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[43]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[43]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[43]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[43]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[47]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[47]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[47]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[47]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[51]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[51]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[51]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[51]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[55]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[55]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[55]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[55]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[59]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[59]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[59]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[59]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[63]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[63]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[63]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter[63]_i_6_n_0\ : STD_LOGIC;
  signal \RP_inter[7]_i_2_n_0\ : STD_LOGIC;
  signal \RP_inter[7]_i_3_n_0\ : STD_LOGIC;
  signal \RP_inter[7]_i_4_n_0\ : STD_LOGIC;
  signal \RP_inter[7]_i_5_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \RP_inter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \RP_inter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \RP_inter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \RP_inter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \NLW_RP_inter_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \QL_inter[32]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \QL_inter[33]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \QL_inter[34]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \QL_inter[35]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \QL_inter[36]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \QL_inter[37]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \QL_inter[38]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QL_inter[39]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QL_inter[40]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \QL_inter[41]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \QL_inter[42]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \QL_inter[43]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \QL_inter[44]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \QL_inter[45]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \QL_inter[46]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \QL_inter[47]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \QL_inter[48]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \QL_inter[49]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \QL_inter[50]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \QL_inter[51]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \QL_inter[52]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \QL_inter[53]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \QL_inter[54]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \QL_inter[55]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \QL_inter[56]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \QL_inter[57]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \QL_inter[58]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \QL_inter[59]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \QL_inter[60]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \QL_inter[61]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \QL_inter[62]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \QL_inter[63]_i_1\ : label is "soft_lutpair0";
begin
  Q(30 downto 0) <= \^q\(30 downto 0);
\QL_inter[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(31),
      I1 => load,
      O => p_1_in(32)
    );
\QL_inter[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(32),
      I1 => load,
      O => p_1_in(33)
    );
\QL_inter[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(33),
      I1 => load,
      O => p_1_in(34)
    );
\QL_inter[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(34),
      I1 => load,
      O => p_1_in(35)
    );
\QL_inter[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(35),
      I1 => load,
      O => p_1_in(36)
    );
\QL_inter[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(36),
      I1 => load,
      O => p_1_in(37)
    );
\QL_inter[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(37),
      I1 => load,
      O => p_1_in(38)
    );
\QL_inter[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(38),
      I1 => load,
      O => p_1_in(39)
    );
\QL_inter[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(39),
      I1 => load,
      O => p_1_in(40)
    );
\QL_inter[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(40),
      I1 => load,
      O => p_1_in(41)
    );
\QL_inter[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(41),
      I1 => load,
      O => p_1_in(42)
    );
\QL_inter[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(42),
      I1 => load,
      O => p_1_in(43)
    );
\QL_inter[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(43),
      I1 => load,
      O => p_1_in(44)
    );
\QL_inter[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(44),
      I1 => load,
      O => p_1_in(45)
    );
\QL_inter[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(45),
      I1 => load,
      O => p_1_in(46)
    );
\QL_inter[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(46),
      I1 => load,
      O => p_1_in(47)
    );
\QL_inter[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(47),
      I1 => load,
      O => p_1_in(48)
    );
\QL_inter[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(48),
      I1 => load,
      O => p_1_in(49)
    );
\QL_inter[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(49),
      I1 => load,
      O => p_1_in(50)
    );
\QL_inter[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(50),
      I1 => load,
      O => p_1_in(51)
    );
\QL_inter[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(51),
      I1 => load,
      O => p_1_in(52)
    );
\QL_inter[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(52),
      I1 => load,
      O => p_1_in(53)
    );
\QL_inter[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(53),
      I1 => load,
      O => p_1_in(54)
    );
\QL_inter[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(54),
      I1 => load,
      O => p_1_in(55)
    );
\QL_inter[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(55),
      I1 => load,
      O => p_1_in(56)
    );
\QL_inter[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(56),
      I1 => load,
      O => p_1_in(57)
    );
\QL_inter[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(57),
      I1 => load,
      O => p_1_in(58)
    );
\QL_inter[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(58),
      I1 => load,
      O => p_1_in(59)
    );
\QL_inter[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(59),
      I1 => load,
      O => p_1_in(60)
    );
\QL_inter[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(60),
      I1 => load,
      O => p_1_in(61)
    );
\QL_inter[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(61),
      I1 => load,
      O => p_1_in(62)
    );
\QL_inter[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => QL_inter(62),
      I1 => load,
      O => p_1_in(63)
    );
\QL_inter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(0),
      Q => \^q\(0)
    );
\QL_inter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(10),
      Q => \^q\(10)
    );
\QL_inter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(11),
      Q => \^q\(11)
    );
\QL_inter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(12),
      Q => \^q\(12)
    );
\QL_inter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(13),
      Q => \^q\(13)
    );
\QL_inter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(14),
      Q => \^q\(14)
    );
\QL_inter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(15),
      Q => \^q\(15)
    );
\QL_inter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(16),
      Q => \^q\(16)
    );
\QL_inter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(17),
      Q => \^q\(17)
    );
\QL_inter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(18),
      Q => \^q\(18)
    );
\QL_inter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(19),
      Q => \^q\(19)
    );
\QL_inter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(1),
      Q => \^q\(1)
    );
\QL_inter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(20),
      Q => \^q\(20)
    );
\QL_inter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(21),
      Q => \^q\(21)
    );
\QL_inter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(22),
      Q => \^q\(22)
    );
\QL_inter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(23),
      Q => \^q\(23)
    );
\QL_inter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(24),
      Q => \^q\(24)
    );
\QL_inter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(25),
      Q => \^q\(25)
    );
\QL_inter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(26),
      Q => \^q\(26)
    );
\QL_inter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(27),
      Q => \^q\(27)
    );
\QL_inter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(28),
      Q => \^q\(28)
    );
\QL_inter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(29),
      Q => \^q\(29)
    );
\QL_inter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(2),
      Q => \^q\(2)
    );
\QL_inter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(30),
      Q => \^q\(30)
    );
\QL_inter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(31),
      Q => QL_inter(31)
    );
\QL_inter_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(32),
      Q => QL_inter(32)
    );
\QL_inter_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(33),
      Q => QL_inter(33)
    );
\QL_inter_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(34),
      Q => QL_inter(34)
    );
\QL_inter_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(35),
      Q => QL_inter(35)
    );
\QL_inter_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(36),
      Q => QL_inter(36)
    );
\QL_inter_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(37),
      Q => QL_inter(37)
    );
\QL_inter_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(38),
      Q => QL_inter(38)
    );
\QL_inter_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(39),
      Q => QL_inter(39)
    );
\QL_inter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(3),
      Q => \^q\(3)
    );
\QL_inter_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(40),
      Q => QL_inter(40)
    );
\QL_inter_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(41),
      Q => QL_inter(41)
    );
\QL_inter_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(42),
      Q => QL_inter(42)
    );
\QL_inter_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(43),
      Q => QL_inter(43)
    );
\QL_inter_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(44),
      Q => QL_inter(44)
    );
\QL_inter_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(45),
      Q => QL_inter(45)
    );
\QL_inter_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(46),
      Q => QL_inter(46)
    );
\QL_inter_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(47),
      Q => QL_inter(47)
    );
\QL_inter_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(48),
      Q => QL_inter(48)
    );
\QL_inter_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(49),
      Q => QL_inter(49)
    );
\QL_inter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(4),
      Q => \^q\(4)
    );
\QL_inter_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(50),
      Q => QL_inter(50)
    );
\QL_inter_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(51),
      Q => QL_inter(51)
    );
\QL_inter_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(52),
      Q => QL_inter(52)
    );
\QL_inter_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(53),
      Q => QL_inter(53)
    );
\QL_inter_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(54),
      Q => QL_inter(54)
    );
\QL_inter_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(55),
      Q => QL_inter(55)
    );
\QL_inter_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(56),
      Q => QL_inter(56)
    );
\QL_inter_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(57),
      Q => QL_inter(57)
    );
\QL_inter_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(58),
      Q => QL_inter(58)
    );
\QL_inter_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(59),
      Q => QL_inter(59)
    );
\QL_inter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(5),
      Q => \^q\(5)
    );
\QL_inter_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(60),
      Q => QL_inter(60)
    );
\QL_inter_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(61),
      Q => QL_inter(61)
    );
\QL_inter_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(62),
      Q => QL_inter(62)
    );
\QL_inter_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(63),
      Q => QL_inter(63)
    );
\QL_inter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(6),
      Q => \^q\(6)
    );
\QL_inter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(7),
      Q => \^q\(7)
    );
\QL_inter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(8),
      Q => \^q\(8)
    );
\QL_inter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(9),
      Q => \^q\(9)
    );
\RP_inter[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => R(11),
      O => \RP_inter[11]_i_2_n_0\
    );
\RP_inter[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => R(10),
      O => \RP_inter[11]_i_3_n_0\
    );
\RP_inter[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => R(9),
      O => \RP_inter[11]_i_4_n_0\
    );
\RP_inter[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => R(8),
      O => \RP_inter[11]_i_5_n_0\
    );
\RP_inter[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(15),
      I1 => R(15),
      O => \RP_inter[15]_i_2_n_0\
    );
\RP_inter[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(14),
      I1 => R(14),
      O => \RP_inter[15]_i_3_n_0\
    );
\RP_inter[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(13),
      I1 => R(13),
      O => \RP_inter[15]_i_4_n_0\
    );
\RP_inter[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => R(12),
      O => \RP_inter[15]_i_5_n_0\
    );
\RP_inter[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(19),
      I1 => R(19),
      O => \RP_inter[19]_i_2_n_0\
    );
\RP_inter[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(18),
      I1 => R(18),
      O => \RP_inter[19]_i_3_n_0\
    );
\RP_inter[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(17),
      I1 => R(17),
      O => \RP_inter[19]_i_4_n_0\
    );
\RP_inter[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(16),
      I1 => R(16),
      O => \RP_inter[19]_i_5_n_0\
    );
\RP_inter[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(23),
      I1 => R(23),
      O => \RP_inter[23]_i_2_n_0\
    );
\RP_inter[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(22),
      I1 => R(22),
      O => \RP_inter[23]_i_3_n_0\
    );
\RP_inter[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(21),
      I1 => R(21),
      O => \RP_inter[23]_i_4_n_0\
    );
\RP_inter[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(20),
      I1 => R(20),
      O => \RP_inter[23]_i_5_n_0\
    );
\RP_inter[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(27),
      I1 => R(27),
      O => \RP_inter[27]_i_2_n_0\
    );
\RP_inter[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(26),
      I1 => R(26),
      O => \RP_inter[27]_i_3_n_0\
    );
\RP_inter[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(25),
      I1 => R(25),
      O => \RP_inter[27]_i_4_n_0\
    );
\RP_inter[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(24),
      I1 => R(24),
      O => \RP_inter[27]_i_5_n_0\
    );
\RP_inter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(31),
      I1 => R(31),
      O => \RP_inter[31]_i_2_n_0\
    );
\RP_inter[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(30),
      I1 => R(30),
      O => \RP_inter[31]_i_3_n_0\
    );
\RP_inter[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(29),
      I1 => R(29),
      O => \RP_inter[31]_i_4_n_0\
    );
\RP_inter[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(28),
      I1 => R(28),
      O => \RP_inter[31]_i_5_n_0\
    );
\RP_inter[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(35),
      I1 => R(35),
      O => \RP_inter[35]_i_2_n_0\
    );
\RP_inter[35]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(34),
      I1 => R(34),
      O => \RP_inter[35]_i_3_n_0\
    );
\RP_inter[35]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(33),
      I1 => R(33),
      O => \RP_inter[35]_i_4_n_0\
    );
\RP_inter[35]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(32),
      I1 => R(32),
      O => \RP_inter[35]_i_5_n_0\
    );
\RP_inter[39]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(39),
      I1 => R(39),
      O => \RP_inter[39]_i_2_n_0\
    );
\RP_inter[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(38),
      I1 => R(38),
      O => \RP_inter[39]_i_3_n_0\
    );
\RP_inter[39]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(37),
      I1 => R(37),
      O => \RP_inter[39]_i_4_n_0\
    );
\RP_inter[39]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(36),
      I1 => R(36),
      O => \RP_inter[39]_i_5_n_0\
    );
\RP_inter[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => R(3),
      O => \RP_inter[3]_i_2_n_0\
    );
\RP_inter[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => R(2),
      O => \RP_inter[3]_i_3_n_0\
    );
\RP_inter[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => R(1),
      O => \RP_inter[3]_i_4_n_0\
    );
\RP_inter[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => R(0),
      O => \RP_inter[3]_i_5_n_0\
    );
\RP_inter[43]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(43),
      I1 => R(43),
      O => \RP_inter[43]_i_2_n_0\
    );
\RP_inter[43]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(42),
      I1 => R(42),
      O => \RP_inter[43]_i_3_n_0\
    );
\RP_inter[43]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(41),
      I1 => R(41),
      O => \RP_inter[43]_i_4_n_0\
    );
\RP_inter[43]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(40),
      I1 => R(40),
      O => \RP_inter[43]_i_5_n_0\
    );
\RP_inter[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(47),
      I1 => R(47),
      O => \RP_inter[47]_i_2_n_0\
    );
\RP_inter[47]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(46),
      I1 => R(46),
      O => \RP_inter[47]_i_3_n_0\
    );
\RP_inter[47]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(45),
      I1 => R(45),
      O => \RP_inter[47]_i_4_n_0\
    );
\RP_inter[47]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(44),
      I1 => R(44),
      O => \RP_inter[47]_i_5_n_0\
    );
\RP_inter[51]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(51),
      I1 => R(51),
      O => \RP_inter[51]_i_2_n_0\
    );
\RP_inter[51]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(50),
      I1 => R(50),
      O => \RP_inter[51]_i_3_n_0\
    );
\RP_inter[51]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(49),
      I1 => R(49),
      O => \RP_inter[51]_i_4_n_0\
    );
\RP_inter[51]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(48),
      I1 => R(48),
      O => \RP_inter[51]_i_5_n_0\
    );
\RP_inter[55]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(55),
      I1 => R(55),
      O => \RP_inter[55]_i_2_n_0\
    );
\RP_inter[55]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(54),
      I1 => R(54),
      O => \RP_inter[55]_i_3_n_0\
    );
\RP_inter[55]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(53),
      I1 => R(53),
      O => \RP_inter[55]_i_4_n_0\
    );
\RP_inter[55]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(52),
      I1 => R(52),
      O => \RP_inter[55]_i_5_n_0\
    );
\RP_inter[59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(59),
      I1 => R(59),
      O => \RP_inter[59]_i_2_n_0\
    );
\RP_inter[59]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(58),
      I1 => R(58),
      O => \RP_inter[59]_i_3_n_0\
    );
\RP_inter[59]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(57),
      I1 => R(57),
      O => \RP_inter[59]_i_4_n_0\
    );
\RP_inter[59]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(56),
      I1 => R(56),
      O => \RP_inter[59]_i_5_n_0\
    );
\RP_inter[63]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(63),
      I1 => R(63),
      O => \RP_inter[63]_i_3_n_0\
    );
\RP_inter[63]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(62),
      I1 => R(62),
      O => \RP_inter[63]_i_4_n_0\
    );
\RP_inter[63]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(61),
      I1 => R(61),
      O => \RP_inter[63]_i_5_n_0\
    );
\RP_inter[63]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => QL_inter(60),
      I1 => R(60),
      O => \RP_inter[63]_i_6_n_0\
    );
\RP_inter[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => R(7),
      O => \RP_inter[7]_i_2_n_0\
    );
\RP_inter[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => R(6),
      O => \RP_inter[7]_i_3_n_0\
    );
\RP_inter[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => R(5),
      O => \RP_inter[7]_i_4_n_0\
    );
\RP_inter[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => R(4),
      O => \RP_inter[7]_i_5_n_0\
    );
\RP_inter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[7]_i_1_n_0\,
      CO(3) => \RP_inter_reg[11]_i_1_n_0\,
      CO(2) => \RP_inter_reg[11]_i_1_n_1\,
      CO(1) => \RP_inter_reg[11]_i_1_n_2\,
      CO(0) => \RP_inter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 0) => \QL_inter_reg[11]_0\(3 downto 0),
      S(3) => \RP_inter[11]_i_2_n_0\,
      S(2) => \RP_inter[11]_i_3_n_0\,
      S(1) => \RP_inter[11]_i_4_n_0\,
      S(0) => \RP_inter[11]_i_5_n_0\
    );
\RP_inter_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[11]_i_1_n_0\,
      CO(3) => \RP_inter_reg[15]_i_1_n_0\,
      CO(2) => \RP_inter_reg[15]_i_1_n_1\,
      CO(1) => \RP_inter_reg[15]_i_1_n_2\,
      CO(0) => \RP_inter_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(15 downto 12),
      O(3 downto 0) => \QL_inter_reg[15]_0\(3 downto 0),
      S(3) => \RP_inter[15]_i_2_n_0\,
      S(2) => \RP_inter[15]_i_3_n_0\,
      S(1) => \RP_inter[15]_i_4_n_0\,
      S(0) => \RP_inter[15]_i_5_n_0\
    );
\RP_inter_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[15]_i_1_n_0\,
      CO(3) => \RP_inter_reg[19]_i_1_n_0\,
      CO(2) => \RP_inter_reg[19]_i_1_n_1\,
      CO(1) => \RP_inter_reg[19]_i_1_n_2\,
      CO(0) => \RP_inter_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(19 downto 16),
      O(3 downto 0) => \QL_inter_reg[19]_0\(3 downto 0),
      S(3) => \RP_inter[19]_i_2_n_0\,
      S(2) => \RP_inter[19]_i_3_n_0\,
      S(1) => \RP_inter[19]_i_4_n_0\,
      S(0) => \RP_inter[19]_i_5_n_0\
    );
\RP_inter_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[19]_i_1_n_0\,
      CO(3) => \RP_inter_reg[23]_i_1_n_0\,
      CO(2) => \RP_inter_reg[23]_i_1_n_1\,
      CO(1) => \RP_inter_reg[23]_i_1_n_2\,
      CO(0) => \RP_inter_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(23 downto 20),
      O(3 downto 0) => \QL_inter_reg[23]_0\(3 downto 0),
      S(3) => \RP_inter[23]_i_2_n_0\,
      S(2) => \RP_inter[23]_i_3_n_0\,
      S(1) => \RP_inter[23]_i_4_n_0\,
      S(0) => \RP_inter[23]_i_5_n_0\
    );
\RP_inter_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[23]_i_1_n_0\,
      CO(3) => \RP_inter_reg[27]_i_1_n_0\,
      CO(2) => \RP_inter_reg[27]_i_1_n_1\,
      CO(1) => \RP_inter_reg[27]_i_1_n_2\,
      CO(0) => \RP_inter_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(27 downto 24),
      O(3 downto 0) => \QL_inter_reg[27]_0\(3 downto 0),
      S(3) => \RP_inter[27]_i_2_n_0\,
      S(2) => \RP_inter[27]_i_3_n_0\,
      S(1) => \RP_inter[27]_i_4_n_0\,
      S(0) => \RP_inter[27]_i_5_n_0\
    );
\RP_inter_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[27]_i_1_n_0\,
      CO(3) => \RP_inter_reg[31]_i_1_n_0\,
      CO(2) => \RP_inter_reg[31]_i_1_n_1\,
      CO(1) => \RP_inter_reg[31]_i_1_n_2\,
      CO(0) => \RP_inter_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => QL_inter(31),
      DI(2 downto 0) => \^q\(30 downto 28),
      O(3 downto 0) => \QL_inter_reg[31]_0\(3 downto 0),
      S(3) => \RP_inter[31]_i_2_n_0\,
      S(2) => \RP_inter[31]_i_3_n_0\,
      S(1) => \RP_inter[31]_i_4_n_0\,
      S(0) => \RP_inter[31]_i_5_n_0\
    );
\RP_inter_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[31]_i_1_n_0\,
      CO(3) => \RP_inter_reg[35]_i_1_n_0\,
      CO(2) => \RP_inter_reg[35]_i_1_n_1\,
      CO(1) => \RP_inter_reg[35]_i_1_n_2\,
      CO(0) => \RP_inter_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => QL_inter(35 downto 32),
      O(3 downto 0) => \QL_inter_reg[35]_0\(3 downto 0),
      S(3) => \RP_inter[35]_i_2_n_0\,
      S(2) => \RP_inter[35]_i_3_n_0\,
      S(1) => \RP_inter[35]_i_4_n_0\,
      S(0) => \RP_inter[35]_i_5_n_0\
    );
\RP_inter_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[35]_i_1_n_0\,
      CO(3) => \RP_inter_reg[39]_i_1_n_0\,
      CO(2) => \RP_inter_reg[39]_i_1_n_1\,
      CO(1) => \RP_inter_reg[39]_i_1_n_2\,
      CO(0) => \RP_inter_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => QL_inter(39 downto 36),
      O(3 downto 0) => \QL_inter_reg[39]_0\(3 downto 0),
      S(3) => \RP_inter[39]_i_2_n_0\,
      S(2) => \RP_inter[39]_i_3_n_0\,
      S(1) => \RP_inter[39]_i_4_n_0\,
      S(0) => \RP_inter[39]_i_5_n_0\
    );
\RP_inter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \RP_inter_reg[3]_i_1_n_0\,
      CO(2) => \RP_inter_reg[3]_i_1_n_1\,
      CO(1) => \RP_inter_reg[3]_i_1_n_2\,
      CO(0) => \RP_inter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3) => \RP_inter[3]_i_2_n_0\,
      S(2) => \RP_inter[3]_i_3_n_0\,
      S(1) => \RP_inter[3]_i_4_n_0\,
      S(0) => \RP_inter[3]_i_5_n_0\
    );
\RP_inter_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[39]_i_1_n_0\,
      CO(3) => \RP_inter_reg[43]_i_1_n_0\,
      CO(2) => \RP_inter_reg[43]_i_1_n_1\,
      CO(1) => \RP_inter_reg[43]_i_1_n_2\,
      CO(0) => \RP_inter_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => QL_inter(43 downto 40),
      O(3 downto 0) => \QL_inter_reg[43]_0\(3 downto 0),
      S(3) => \RP_inter[43]_i_2_n_0\,
      S(2) => \RP_inter[43]_i_3_n_0\,
      S(1) => \RP_inter[43]_i_4_n_0\,
      S(0) => \RP_inter[43]_i_5_n_0\
    );
\RP_inter_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[43]_i_1_n_0\,
      CO(3) => \RP_inter_reg[47]_i_1_n_0\,
      CO(2) => \RP_inter_reg[47]_i_1_n_1\,
      CO(1) => \RP_inter_reg[47]_i_1_n_2\,
      CO(0) => \RP_inter_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => QL_inter(47 downto 44),
      O(3 downto 0) => \QL_inter_reg[47]_0\(3 downto 0),
      S(3) => \RP_inter[47]_i_2_n_0\,
      S(2) => \RP_inter[47]_i_3_n_0\,
      S(1) => \RP_inter[47]_i_4_n_0\,
      S(0) => \RP_inter[47]_i_5_n_0\
    );
\RP_inter_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[47]_i_1_n_0\,
      CO(3) => \RP_inter_reg[51]_i_1_n_0\,
      CO(2) => \RP_inter_reg[51]_i_1_n_1\,
      CO(1) => \RP_inter_reg[51]_i_1_n_2\,
      CO(0) => \RP_inter_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => QL_inter(51 downto 48),
      O(3 downto 0) => \QL_inter_reg[51]_0\(3 downto 0),
      S(3) => \RP_inter[51]_i_2_n_0\,
      S(2) => \RP_inter[51]_i_3_n_0\,
      S(1) => \RP_inter[51]_i_4_n_0\,
      S(0) => \RP_inter[51]_i_5_n_0\
    );
\RP_inter_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[51]_i_1_n_0\,
      CO(3) => \RP_inter_reg[55]_i_1_n_0\,
      CO(2) => \RP_inter_reg[55]_i_1_n_1\,
      CO(1) => \RP_inter_reg[55]_i_1_n_2\,
      CO(0) => \RP_inter_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => QL_inter(55 downto 52),
      O(3 downto 0) => \QL_inter_reg[55]_0\(3 downto 0),
      S(3) => \RP_inter[55]_i_2_n_0\,
      S(2) => \RP_inter[55]_i_3_n_0\,
      S(1) => \RP_inter[55]_i_4_n_0\,
      S(0) => \RP_inter[55]_i_5_n_0\
    );
\RP_inter_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[55]_i_1_n_0\,
      CO(3) => \RP_inter_reg[59]_i_1_n_0\,
      CO(2) => \RP_inter_reg[59]_i_1_n_1\,
      CO(1) => \RP_inter_reg[59]_i_1_n_2\,
      CO(0) => \RP_inter_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => QL_inter(59 downto 56),
      O(3 downto 0) => \QL_inter_reg[59]_0\(3 downto 0),
      S(3) => \RP_inter[59]_i_2_n_0\,
      S(2) => \RP_inter[59]_i_3_n_0\,
      S(1) => \RP_inter[59]_i_4_n_0\,
      S(0) => \RP_inter[59]_i_5_n_0\
    );
\RP_inter_reg[63]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[59]_i_1_n_0\,
      CO(3) => \NLW_RP_inter_reg[63]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \RP_inter_reg[63]_i_2_n_1\,
      CO(1) => \RP_inter_reg[63]_i_2_n_2\,
      CO(0) => \RP_inter_reg[63]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => QL_inter(62 downto 60),
      O(3 downto 0) => \QL_inter_reg[62]_0\(3 downto 0),
      S(3) => \RP_inter[63]_i_3_n_0\,
      S(2) => \RP_inter[63]_i_4_n_0\,
      S(1) => \RP_inter[63]_i_5_n_0\,
      S(0) => \RP_inter[63]_i_6_n_0\
    );
\RP_inter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RP_inter_reg[3]_i_1_n_0\,
      CO(3) => \RP_inter_reg[7]_i_1_n_0\,
      CO(2) => \RP_inter_reg[7]_i_1_n_1\,
      CO(1) => \RP_inter_reg[7]_i_1_n_2\,
      CO(0) => \RP_inter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => \QL_inter_reg[7]_0\(3 downto 0),
      S(3) => \RP_inter[7]_i_2_n_0\,
      S(2) => \RP_inter[7]_i_3_n_0\,
      S(1) => \RP_inter[7]_i_4_n_0\,
      S(0) => \RP_inter[7]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab3_mult_Top_0_0_shiftreg_R is
  port (
    \QR_inter_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab3_mult_Top_0_0_shiftreg_R : entity is "shiftreg_R";
end Lab3_mult_Top_0_0_shiftreg_R;

architecture STRUCTURE of Lab3_mult_Top_0_0_shiftreg_R is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg[4]\,
      O => \QR_inter_reg[0]_0\
    );
\QR_inter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(0),
      Q => \^q\(0)
    );
\QR_inter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(10),
      Q => \^q\(10)
    );
\QR_inter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(11),
      Q => \^q\(11)
    );
\QR_inter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(12),
      Q => \^q\(12)
    );
\QR_inter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(13),
      Q => \^q\(13)
    );
\QR_inter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(14),
      Q => \^q\(14)
    );
\QR_inter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(15),
      Q => \^q\(15)
    );
\QR_inter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(16),
      Q => \^q\(16)
    );
\QR_inter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(17),
      Q => \^q\(17)
    );
\QR_inter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(18),
      Q => \^q\(18)
    );
\QR_inter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(19),
      Q => \^q\(19)
    );
\QR_inter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(1),
      Q => \^q\(1)
    );
\QR_inter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(20),
      Q => \^q\(20)
    );
\QR_inter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(21),
      Q => \^q\(21)
    );
\QR_inter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(22),
      Q => \^q\(22)
    );
\QR_inter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(23),
      Q => \^q\(23)
    );
\QR_inter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(24),
      Q => \^q\(24)
    );
\QR_inter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(25),
      Q => \^q\(25)
    );
\QR_inter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(26),
      Q => \^q\(26)
    );
\QR_inter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(27),
      Q => \^q\(27)
    );
\QR_inter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(28),
      Q => \^q\(28)
    );
\QR_inter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(29),
      Q => \^q\(29)
    );
\QR_inter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(2),
      Q => \^q\(2)
    );
\QR_inter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(30),
      Q => \^q\(30)
    );
\QR_inter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(31),
      Q => \^q\(31)
    );
\QR_inter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(3),
      Q => \^q\(3)
    );
\QR_inter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(4),
      Q => \^q\(4)
    );
\QR_inter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(5),
      Q => \^q\(5)
    );
\QR_inter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(6),
      Q => \^q\(6)
    );
\QR_inter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(7),
      Q => \^q\(7)
    );
\QR_inter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(8),
      Q => \^q\(8)
    );
\QR_inter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab3_mult_Top_0_0_mult_Top is
  port (
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab3_mult_Top_0_0_mult_Top : entity is "mult_Top";
end Lab3_mult_Top_0_0_mult_Top;

architecture STRUCTURE of Lab3_mult_Top_0_0_mult_Top is
  signal Q0 : STD_LOGIC;
  signal QL_inter : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal QR_inter : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^r\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal load : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal t1_n_31 : STD_LOGIC;
  signal t1_n_32 : STD_LOGIC;
  signal t1_n_33 : STD_LOGIC;
  signal t1_n_34 : STD_LOGIC;
  signal t1_n_35 : STD_LOGIC;
  signal t1_n_36 : STD_LOGIC;
  signal t1_n_37 : STD_LOGIC;
  signal t1_n_38 : STD_LOGIC;
  signal t1_n_39 : STD_LOGIC;
  signal t1_n_40 : STD_LOGIC;
  signal t1_n_41 : STD_LOGIC;
  signal t1_n_42 : STD_LOGIC;
  signal t1_n_43 : STD_LOGIC;
  signal t1_n_44 : STD_LOGIC;
  signal t1_n_45 : STD_LOGIC;
  signal t1_n_46 : STD_LOGIC;
  signal t1_n_47 : STD_LOGIC;
  signal t1_n_48 : STD_LOGIC;
  signal t1_n_49 : STD_LOGIC;
  signal t1_n_50 : STD_LOGIC;
  signal t1_n_51 : STD_LOGIC;
  signal t1_n_52 : STD_LOGIC;
  signal t1_n_53 : STD_LOGIC;
  signal t1_n_54 : STD_LOGIC;
  signal t1_n_55 : STD_LOGIC;
  signal t1_n_56 : STD_LOGIC;
  signal t1_n_57 : STD_LOGIC;
  signal t1_n_58 : STD_LOGIC;
  signal t1_n_59 : STD_LOGIC;
  signal t1_n_60 : STD_LOGIC;
  signal t1_n_61 : STD_LOGIC;
  signal t1_n_62 : STD_LOGIC;
  signal t1_n_63 : STD_LOGIC;
  signal t1_n_64 : STD_LOGIC;
  signal t1_n_65 : STD_LOGIC;
  signal t1_n_66 : STD_LOGIC;
  signal t1_n_67 : STD_LOGIC;
  signal t1_n_68 : STD_LOGIC;
  signal t1_n_69 : STD_LOGIC;
  signal t1_n_70 : STD_LOGIC;
  signal t1_n_71 : STD_LOGIC;
  signal t1_n_72 : STD_LOGIC;
  signal t1_n_73 : STD_LOGIC;
  signal t1_n_74 : STD_LOGIC;
  signal t1_n_75 : STD_LOGIC;
  signal t1_n_76 : STD_LOGIC;
  signal t1_n_77 : STD_LOGIC;
  signal t1_n_78 : STD_LOGIC;
  signal t1_n_79 : STD_LOGIC;
  signal t1_n_80 : STD_LOGIC;
  signal t1_n_81 : STD_LOGIC;
  signal t1_n_82 : STD_LOGIC;
  signal t1_n_83 : STD_LOGIC;
  signal t1_n_84 : STD_LOGIC;
  signal t1_n_85 : STD_LOGIC;
  signal t1_n_86 : STD_LOGIC;
  signal t1_n_87 : STD_LOGIC;
  signal t1_n_88 : STD_LOGIC;
  signal t1_n_89 : STD_LOGIC;
  signal t1_n_90 : STD_LOGIC;
  signal t1_n_91 : STD_LOGIC;
  signal t1_n_92 : STD_LOGIC;
  signal t1_n_93 : STD_LOGIC;
  signal t1_n_94 : STD_LOGIC;
  signal t2_n_0 : STD_LOGIC;
  signal t5_n_10 : STD_LOGIC;
  signal t5_n_11 : STD_LOGIC;
  signal t5_n_12 : STD_LOGIC;
  signal t5_n_13 : STD_LOGIC;
  signal t5_n_14 : STD_LOGIC;
  signal t5_n_15 : STD_LOGIC;
  signal t5_n_16 : STD_LOGIC;
  signal t5_n_17 : STD_LOGIC;
  signal t5_n_18 : STD_LOGIC;
  signal t5_n_19 : STD_LOGIC;
  signal t5_n_2 : STD_LOGIC;
  signal t5_n_20 : STD_LOGIC;
  signal t5_n_21 : STD_LOGIC;
  signal t5_n_22 : STD_LOGIC;
  signal t5_n_23 : STD_LOGIC;
  signal t5_n_24 : STD_LOGIC;
  signal t5_n_25 : STD_LOGIC;
  signal t5_n_26 : STD_LOGIC;
  signal t5_n_27 : STD_LOGIC;
  signal t5_n_28 : STD_LOGIC;
  signal t5_n_29 : STD_LOGIC;
  signal t5_n_3 : STD_LOGIC;
  signal t5_n_30 : STD_LOGIC;
  signal t5_n_31 : STD_LOGIC;
  signal t5_n_32 : STD_LOGIC;
  signal t5_n_33 : STD_LOGIC;
  signal t5_n_34 : STD_LOGIC;
  signal t5_n_35 : STD_LOGIC;
  signal t5_n_36 : STD_LOGIC;
  signal t5_n_4 : STD_LOGIC;
  signal t5_n_5 : STD_LOGIC;
  signal t5_n_6 : STD_LOGIC;
  signal t5_n_7 : STD_LOGIC;
  signal t5_n_8 : STD_LOGIC;
  signal t5_n_9 : STD_LOGIC;
begin
  R(63 downto 0) <= \^r\(63 downto 0);
t1: entity work.Lab3_mult_Top_0_0_shiftreg_L
     port map (
      D(31 downto 0) => p_1_in(31 downto 0),
      E(0) => t5_n_3,
      O(3) => t1_n_31,
      O(2) => t1_n_32,
      O(1) => t1_n_33,
      O(0) => t1_n_34,
      Q(30 downto 0) => QL_inter(30 downto 0),
      \QL_inter_reg[11]_0\(3) => t1_n_39,
      \QL_inter_reg[11]_0\(2) => t1_n_40,
      \QL_inter_reg[11]_0\(1) => t1_n_41,
      \QL_inter_reg[11]_0\(0) => t1_n_42,
      \QL_inter_reg[15]_0\(3) => t1_n_43,
      \QL_inter_reg[15]_0\(2) => t1_n_44,
      \QL_inter_reg[15]_0\(1) => t1_n_45,
      \QL_inter_reg[15]_0\(0) => t1_n_46,
      \QL_inter_reg[19]_0\(3) => t1_n_47,
      \QL_inter_reg[19]_0\(2) => t1_n_48,
      \QL_inter_reg[19]_0\(1) => t1_n_49,
      \QL_inter_reg[19]_0\(0) => t1_n_50,
      \QL_inter_reg[23]_0\(3) => t1_n_51,
      \QL_inter_reg[23]_0\(2) => t1_n_52,
      \QL_inter_reg[23]_0\(1) => t1_n_53,
      \QL_inter_reg[23]_0\(0) => t1_n_54,
      \QL_inter_reg[27]_0\(3) => t1_n_55,
      \QL_inter_reg[27]_0\(2) => t1_n_56,
      \QL_inter_reg[27]_0\(1) => t1_n_57,
      \QL_inter_reg[27]_0\(0) => t1_n_58,
      \QL_inter_reg[31]_0\(3) => t1_n_59,
      \QL_inter_reg[31]_0\(2) => t1_n_60,
      \QL_inter_reg[31]_0\(1) => t1_n_61,
      \QL_inter_reg[31]_0\(0) => t1_n_62,
      \QL_inter_reg[35]_0\(3) => t1_n_63,
      \QL_inter_reg[35]_0\(2) => t1_n_64,
      \QL_inter_reg[35]_0\(1) => t1_n_65,
      \QL_inter_reg[35]_0\(0) => t1_n_66,
      \QL_inter_reg[39]_0\(3) => t1_n_67,
      \QL_inter_reg[39]_0\(2) => t1_n_68,
      \QL_inter_reg[39]_0\(1) => t1_n_69,
      \QL_inter_reg[39]_0\(0) => t1_n_70,
      \QL_inter_reg[43]_0\(3) => t1_n_71,
      \QL_inter_reg[43]_0\(2) => t1_n_72,
      \QL_inter_reg[43]_0\(1) => t1_n_73,
      \QL_inter_reg[43]_0\(0) => t1_n_74,
      \QL_inter_reg[47]_0\(3) => t1_n_75,
      \QL_inter_reg[47]_0\(2) => t1_n_76,
      \QL_inter_reg[47]_0\(1) => t1_n_77,
      \QL_inter_reg[47]_0\(0) => t1_n_78,
      \QL_inter_reg[51]_0\(3) => t1_n_79,
      \QL_inter_reg[51]_0\(2) => t1_n_80,
      \QL_inter_reg[51]_0\(1) => t1_n_81,
      \QL_inter_reg[51]_0\(0) => t1_n_82,
      \QL_inter_reg[55]_0\(3) => t1_n_83,
      \QL_inter_reg[55]_0\(2) => t1_n_84,
      \QL_inter_reg[55]_0\(1) => t1_n_85,
      \QL_inter_reg[55]_0\(0) => t1_n_86,
      \QL_inter_reg[59]_0\(3) => t1_n_87,
      \QL_inter_reg[59]_0\(2) => t1_n_88,
      \QL_inter_reg[59]_0\(1) => t1_n_89,
      \QL_inter_reg[59]_0\(0) => t1_n_90,
      \QL_inter_reg[62]_0\(3) => t1_n_91,
      \QL_inter_reg[62]_0\(2) => t1_n_92,
      \QL_inter_reg[62]_0\(1) => t1_n_93,
      \QL_inter_reg[62]_0\(0) => t1_n_94,
      \QL_inter_reg[7]_0\(3) => t1_n_35,
      \QL_inter_reg[7]_0\(2) => t1_n_36,
      \QL_inter_reg[7]_0\(1) => t1_n_37,
      \QL_inter_reg[7]_0\(0) => t1_n_38,
      R(63 downto 0) => \^r\(63 downto 0),
      clk => clk,
      load => load,
      rst => rst
    );
t2: entity work.Lab3_mult_Top_0_0_shiftreg_R
     port map (
      D(31) => t5_n_5,
      D(30) => t5_n_6,
      D(29) => t5_n_7,
      D(28) => t5_n_8,
      D(27) => t5_n_9,
      D(26) => t5_n_10,
      D(25) => t5_n_11,
      D(24) => t5_n_12,
      D(23) => t5_n_13,
      D(22) => t5_n_14,
      D(21) => t5_n_15,
      D(20) => t5_n_16,
      D(19) => t5_n_17,
      D(18) => t5_n_18,
      D(17) => t5_n_19,
      D(16) => t5_n_20,
      D(15) => t5_n_21,
      D(14) => t5_n_22,
      D(13) => t5_n_23,
      D(12) => t5_n_24,
      D(11) => t5_n_25,
      D(10) => t5_n_26,
      D(9) => t5_n_27,
      D(8) => t5_n_28,
      D(7) => t5_n_29,
      D(6) => t5_n_30,
      D(5) => t5_n_31,
      D(4) => t5_n_32,
      D(3) => t5_n_33,
      D(2) => t5_n_34,
      D(1) => t5_n_35,
      D(0) => t5_n_36,
      E(0) => t5_n_3,
      \FSM_onehot_state_reg[4]\ => t5_n_2,
      Q(31 downto 1) => QR_inter(31 downto 1),
      Q(0) => Q0,
      \QR_inter_reg[0]_0\ => t2_n_0,
      clk => clk,
      rst => rst
    );
t4: entity work.Lab3_mult_Top_0_0_product_reg
     port map (
      O(3) => t1_n_31,
      O(2) => t1_n_32,
      O(1) => t1_n_33,
      O(0) => t1_n_34,
      R(63 downto 0) => \^r\(63 downto 0),
      \RP_inter_reg[11]_0\(3) => t1_n_39,
      \RP_inter_reg[11]_0\(2) => t1_n_40,
      \RP_inter_reg[11]_0\(1) => t1_n_41,
      \RP_inter_reg[11]_0\(0) => t1_n_42,
      \RP_inter_reg[15]_0\(3) => t1_n_43,
      \RP_inter_reg[15]_0\(2) => t1_n_44,
      \RP_inter_reg[15]_0\(1) => t1_n_45,
      \RP_inter_reg[15]_0\(0) => t1_n_46,
      \RP_inter_reg[19]_0\(3) => t1_n_47,
      \RP_inter_reg[19]_0\(2) => t1_n_48,
      \RP_inter_reg[19]_0\(1) => t1_n_49,
      \RP_inter_reg[19]_0\(0) => t1_n_50,
      \RP_inter_reg[23]_0\(3) => t1_n_51,
      \RP_inter_reg[23]_0\(2) => t1_n_52,
      \RP_inter_reg[23]_0\(1) => t1_n_53,
      \RP_inter_reg[23]_0\(0) => t1_n_54,
      \RP_inter_reg[27]_0\(3) => t1_n_55,
      \RP_inter_reg[27]_0\(2) => t1_n_56,
      \RP_inter_reg[27]_0\(1) => t1_n_57,
      \RP_inter_reg[27]_0\(0) => t1_n_58,
      \RP_inter_reg[31]_0\(3) => t1_n_59,
      \RP_inter_reg[31]_0\(2) => t1_n_60,
      \RP_inter_reg[31]_0\(1) => t1_n_61,
      \RP_inter_reg[31]_0\(0) => t1_n_62,
      \RP_inter_reg[35]_0\(3) => t1_n_63,
      \RP_inter_reg[35]_0\(2) => t1_n_64,
      \RP_inter_reg[35]_0\(1) => t1_n_65,
      \RP_inter_reg[35]_0\(0) => t1_n_66,
      \RP_inter_reg[39]_0\(3) => t1_n_67,
      \RP_inter_reg[39]_0\(2) => t1_n_68,
      \RP_inter_reg[39]_0\(1) => t1_n_69,
      \RP_inter_reg[39]_0\(0) => t1_n_70,
      \RP_inter_reg[43]_0\(3) => t1_n_71,
      \RP_inter_reg[43]_0\(2) => t1_n_72,
      \RP_inter_reg[43]_0\(1) => t1_n_73,
      \RP_inter_reg[43]_0\(0) => t1_n_74,
      \RP_inter_reg[47]_0\(3) => t1_n_75,
      \RP_inter_reg[47]_0\(2) => t1_n_76,
      \RP_inter_reg[47]_0\(1) => t1_n_77,
      \RP_inter_reg[47]_0\(0) => t1_n_78,
      \RP_inter_reg[51]_0\(3) => t1_n_79,
      \RP_inter_reg[51]_0\(2) => t1_n_80,
      \RP_inter_reg[51]_0\(1) => t1_n_81,
      \RP_inter_reg[51]_0\(0) => t1_n_82,
      \RP_inter_reg[55]_0\(3) => t1_n_83,
      \RP_inter_reg[55]_0\(2) => t1_n_84,
      \RP_inter_reg[55]_0\(1) => t1_n_85,
      \RP_inter_reg[55]_0\(0) => t1_n_86,
      \RP_inter_reg[59]_0\(3) => t1_n_87,
      \RP_inter_reg[59]_0\(2) => t1_n_88,
      \RP_inter_reg[59]_0\(1) => t1_n_89,
      \RP_inter_reg[59]_0\(0) => t1_n_90,
      \RP_inter_reg[63]_0\ => t5_n_4,
      \RP_inter_reg[63]_1\(3) => t1_n_91,
      \RP_inter_reg[63]_1\(2) => t1_n_92,
      \RP_inter_reg[63]_1\(1) => t1_n_93,
      \RP_inter_reg[63]_1\(0) => t1_n_94,
      \RP_inter_reg[7]_0\(3) => t1_n_35,
      \RP_inter_reg[7]_0\(2) => t1_n_36,
      \RP_inter_reg[7]_0\(1) => t1_n_37,
      \RP_inter_reg[7]_0\(0) => t1_n_38,
      clk => clk,
      rst => rst
    );
t5: entity work.Lab3_mult_Top_0_0_controller
     port map (
      A(31 downto 0) => A(31 downto 0),
      \A[31]\(31 downto 0) => p_1_in(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      D(31) => t5_n_5,
      D(30) => t5_n_6,
      D(29) => t5_n_7,
      D(28) => t5_n_8,
      D(27) => t5_n_9,
      D(26) => t5_n_10,
      D(25) => t5_n_11,
      D(24) => t5_n_12,
      D(23) => t5_n_13,
      D(22) => t5_n_14,
      D(21) => t5_n_15,
      D(20) => t5_n_16,
      D(19) => t5_n_17,
      D(18) => t5_n_18,
      D(17) => t5_n_19,
      D(16) => t5_n_20,
      D(15) => t5_n_21,
      D(14) => t5_n_22,
      D(13) => t5_n_23,
      D(12) => t5_n_24,
      D(11) => t5_n_25,
      D(10) => t5_n_26,
      D(9) => t5_n_27,
      D(8) => t5_n_28,
      D(7) => t5_n_29,
      D(6) => t5_n_30,
      D(5) => t5_n_31,
      D(4) => t5_n_32,
      D(3) => t5_n_33,
      D(2) => t5_n_34,
      D(1) => t5_n_35,
      D(0) => t5_n_36,
      E(0) => t5_n_3,
      \FSM_onehot_state_reg[3]_0\ => t5_n_2,
      \FSM_onehot_state_reg[4]_0\ => t5_n_4,
      \FSM_onehot_state_reg[4]_1\ => t2_n_0,
      Q(31 downto 1) => QR_inter(31 downto 1),
      Q(0) => Q0,
      \QL_inter_reg[31]\(30 downto 0) => QL_inter(30 downto 0),
      SR(0) => \FSM_onehot_state_reg[0]\,
      clk => clk,
      load => load,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab3_mult_Top_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lab3_mult_Top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lab3_mult_Top_0_0 : entity is "Lab3_mult_Top_0_0,mult_Top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Lab3_mult_Top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Lab3_mult_Top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Lab3_mult_Top_0_0 : entity is "mult_Top,Vivado 2018.3";
end Lab3_mult_Top_0_0;

architecture STRUCTURE of Lab3_mult_Top_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Lab3_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Lab3_mult_Top_0_0_mult_Top
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      \FSM_onehot_state_reg[0]\ => done,
      R(63 downto 0) => R(63 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
