library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Comp_tb is
--  Port ( );
end ALU_Comp_tb;

architecture comp_tb of ALU_Comp_tb is

component ALU_Comp is 
    Port ( A_31 : in STD_LOGIC;
           B_31 : in STD_LOGIC;
           S_31 : in STD_LOGIC;
           CO : in STD_LOGIC;
           ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
           CompR : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal A_31, B_31, S_31, CO: std_logic;
signal ALUOp: std_logic_vector(1 downto 0);
signal CompR: std_logic_vector(31 downto 0);
begin
UUT: ALU_Comp PORT MAP (A_31 => A_31,
                       B_31 => B_31,
                       S_31 => S_31,
                       CO => CO,
                       ALUOp => ALUOp,
                       CompR => CompR);
process 
begin
A_31<='-';
B_31<='-';
S_31<='-';
CO<='-';
ALUOp<="00";
wait for 10 ns;

A_31<='-';
B_31<='-';
S_31<='-';
CO<='-';
ALUOp<="01";
wait for 10 ns;

A_31<='0';
B_31<='0';
S_31<='0';
CO<='-';
ALUOp<="10";
wait for 10 ns;

A_31<='0';
B_31<='0';
S_31<='1';
CO<='-';
ALUOp<="10";
wait for 10 ns;

A_31<='1';
B_31<='1';
S_31<='0';
CO<='-';
ALUOp<="10";
wait for 10 ns;

A_31<='1';
B_31<='1';
S_31<='1';
CO<='-';
ALUOp<="10";
wait for 10 ns;

A_31<='1';
B_31<='0';
S_31<='-';
CO<='-';
ALUOp<="10";
wait for 10 ns;

A_31<='0';
B_31<='1';
S_31<='-';
CO<='-';
ALUOp<="10";
wait for 10 ns;

A_31<='-';
B_31<='-';
S_31<='-';
CO<='1';
ALUOp<="11";
wait for 10 ns;

A_31<='-';
B_31<='-';
S_31<='-';
CO<='0';
ALUOp<="11";
wait for 10 ns;

end process;                       

end architecture;
