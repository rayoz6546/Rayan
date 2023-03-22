library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signExtend is
    Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0));
end signExtend;

architecture Behavioral of signExtend is

begin

B <= "0000000000000000"&A when A(15)='0' else
     "1111111111111111"&A;

end Behavioral;
