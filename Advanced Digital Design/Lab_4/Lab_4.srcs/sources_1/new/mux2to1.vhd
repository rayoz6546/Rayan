library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (31 downto 0));
end mux2to1;

architecture Behavioral of mux2to1 is

begin

with sel select 
    S <= A when '0',
         B when others;
         
         
end Behavioral;
