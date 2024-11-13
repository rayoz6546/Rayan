library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Logical is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
           LogicalR : out STD_LOGIC_VECTOR (31 downto 0));
end ALU_Logical;

architecture Behavioral of ALU_Logical is
begin
WITH ALUOp SELECT
    LogicalR <= (A and B) when "00",
         (A or B) when "01",
         (A xor B) when "10",
         (A nor B) when "11",
         (others =>'0') when others;
end Behavioral;
