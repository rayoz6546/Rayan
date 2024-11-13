library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity slicer_A is
    Port ( a : in STD_LOGIC_VECTOR (63 downto 0);
           b : out STD_LOGIC_VECTOR ( 31 downto 0));
end slicer_A;

architecture Behavioral of slicer_A is

begin

b<=a(63 downto 31);
end Behavioral;
