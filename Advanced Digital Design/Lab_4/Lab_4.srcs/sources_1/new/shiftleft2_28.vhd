library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftleft2_28 is
    Port ( A : in STD_LOGIC_VECTOR (25 downto 0);
           B : out STD_LOGIC_VECTOR (27 downto 0));
end shiftleft2_28;

architecture Behavioral of shiftleft2_28 is

begin

B <= A&"00";

end Behavioral;
