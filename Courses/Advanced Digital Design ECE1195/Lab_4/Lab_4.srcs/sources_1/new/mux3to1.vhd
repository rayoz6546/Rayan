library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux3to1 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (31 downto 0));
end mux3to1;

architecture Behavioral of mux3to1 is

begin

with sel select 
    S <= A when "00",
         B when "01",
         C when others; 
         

end Behavioral;
