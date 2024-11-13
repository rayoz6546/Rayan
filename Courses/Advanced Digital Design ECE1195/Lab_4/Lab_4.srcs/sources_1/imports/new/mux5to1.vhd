library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux5to1 is
    Port ( A : in STD_LOGIC_VECTOR(31 downto 0);
           B : in STD_LOGIC_VECTOR(31 downto 0);
           C : in STD_LOGIC_VECTOR(31 downto 0);
           D : in STD_LOGIC_VECTOR(31 downto 0);
           E : in STD_LOGIC_VECTOR(31 downto 0);
           sel : in STD_LOGIC_VECTOR(2 downto 0);
           Z : out STD_LOGIC_VECTOR(31 downto 0));
end mux5to1;

architecture Behavioral of mux5to1 is

begin

with sel select 
    Z <= A when "000",
         B when "001",
         C when "010",
         D when "011",
         E when others;
         
end Behavioral;
