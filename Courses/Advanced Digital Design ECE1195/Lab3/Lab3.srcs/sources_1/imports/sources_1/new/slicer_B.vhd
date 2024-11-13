library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity slicer_B is
    Port ( a: in STD_LOGIC_VECTOR (63 downto 0);
           b : out STD_LOGIC_VECTOR (31 downto 0));
end slicer_B;

architecture Behavioral of slicer_B is

begin

b<=a(31 downto 0);
end Behavioral;
