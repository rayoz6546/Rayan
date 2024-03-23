library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Shift is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           SHAMT : in STD_LOGIC_VECTOR (4 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (3 downto 0);
           ShiftR : out STD_LOGIC_VECTOR (31 downto 0));
end ALU_Shift;

architecture Behavioral of ALU_Shift is


signal L0: std_logic_vector(31 downto 0);
signal L1: std_logic_vector(31 downto 0);
signal L2: std_logic_vector(31 downto 0);
signal L3: std_logic_vector(31 downto 0);
signal L4: std_logic_vector(31 downto 0);
signal R0: std_logic_vector(31 downto 0);
signal R1: std_logic_vector(31 downto 0);
signal R2: std_logic_vector(31 downto 0);
signal R3: std_logic_vector(31 downto 0);
signal R4: std_logic_vector(31 downto 0);
signal Fill: std_logic_vector(15 downto 0);

begin

L0<=A when SHAMT(0)='0' else A(30 downto 0)&'0';
L1<=L0 when SHAMT(1)='0' else L0(29 downto 0)&"00";
L2<=L1 when SHAMT(2)='0' else L1(27 downto 0)&"0000";
L3<=L2 when SHAMT(3)='0' else L2(23 downto 0)& "00000000";
L4<=L3 when SHAMT(4)='0' else L3(15 downto 0)& "0000000000000000";

Fill <= (others => ALUOp(0) and A(31));
R0<=A when SHAMT(0)='0' else Fill(0)&A(31 downto 1);
R1<=R0 when SHAMT(1)='0' else Fill(1 downto 0) & R0(31 downto 2);
R2<=R1 when SHAMT(2)='0' else Fill(3 downto 0) & R1(31 downto 4);
R3<=R2 when SHAMT(3)='0' else Fill(7 downto 0) & R2(31 downto 8);
R4<=R3 when SHAMT(4)='0' else Fill(15 downto 0) & R3(31 downto 16);

ShiftR<=L4 when ALUOp(1)='0' else R4;
end Behavioral;
