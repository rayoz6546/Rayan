library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Mux is
    Port ( LogicalR : in STD_LOGIC_VECTOR (31 downto 0);
           ArithR : in STD_LOGIC_VECTOR (31 downto 0);
           CompR : in STD_LOGIC_VECTOR (31 downto 0);
           ShiftR : in STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (3 downto 2);
           R : out STD_LOGIC_VECTOR (31 downto 0));
end ALU_Mux;

architecture Behavioral of ALU_Mux is
begin

with ALUOp select
    R<=LogicalR when "00",
       ArithR when "01",
       CompR when "10",
       ShiftR when "11",
       (others => 'Z') when others;

end Behavioral;
