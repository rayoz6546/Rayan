library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Logical_tb is
end ALU_Logical_tb;

architecture logical_tb of ALU_Logical_tb is 

component ALU_Logical is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
               B : in STD_LOGIC_VECTOR (31 downto 0);
               ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
               LogicalR : out STD_LOGIC_VECTOR (31 downto 0));
end component; 
signal A,B,LogicalR: std_logic_vector(31 downto 0);
signal ALUOp: std_logic_vector(1 downto 0);
begin
UUT: ALU_Logical 
PORT MAP (A => A,
          B => B,
          ALUOp => ALUOp,
          LogicalR => LogicalR);
          
process
begin
A<=X"FEDCBA98";
B<=X"968732AB";
ALUOp<="01";
wait for 10ns;

A<=X"456732DC";
B<=X"2454A782";
ALUOp<="11";
wait for 10ns;
end process;
end architecture;