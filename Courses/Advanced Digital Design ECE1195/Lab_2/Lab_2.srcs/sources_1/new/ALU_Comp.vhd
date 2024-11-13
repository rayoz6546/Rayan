library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Comp is
    Port ( A_31 : in STD_LOGIC;
           B_31 : in STD_LOGIC;
           S_31 : in STD_LOGIC;
           CO : in STD_LOGIC;
           ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
           CompR : out STD_LOGIC_VECTOR (31 downto 0));
end ALU_Comp;

architecture Behavioral of ALU_Comp is

begin

CompR(0) <=(ALUOp(1) and (not ALUOp(0)) and (not B_31) and S_31) or 
(ALUOp(1) and (not B_31) and S_31 and (not CO)) or 
(ALUOp(1) and (not ALUOp(0)) and A_31 and (not B_31)) or 
(ALUOp(1) and (not ALUOp(0)) and A_31 and B_31 and S_31) or
(ALUOp(1) and ALUOp(0) and (not B_31) and (not S_31) and (not CO)) or 
(ALUOp(1) and ALUOp(0) and B_31 and S_31 and (not CO)) or 
(ALUOp(1) and ALUOp(0) and B_31 and (not S_31) and (not CO));

CompR(31 downto 1) <= "0000000000000000000000000000000";
end Behavioral;
