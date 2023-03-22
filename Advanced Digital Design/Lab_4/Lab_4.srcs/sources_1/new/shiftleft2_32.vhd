library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftleft2_32 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0));
end shiftleft2_32;

architecture Behavioral of shiftleft2_32 is

begin

B <= A(31 downto 2)&"00";

end Behavioral;
