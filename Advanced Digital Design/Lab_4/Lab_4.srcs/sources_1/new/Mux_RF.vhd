library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity Mux_RF is

    Port ( A : in STD_LOGIC_VECTOR (1023 downto 0);
           ReadReg : in STD_LOGIC_VECTOR(4 downto 0);
           S : out STD_LOGIC_VECTOR(31 downto 0));
end Mux_RF;

architecture Behavioral of Mux_RF is

signal index: integer;


begin

index <= to_integer(unsigned(ReadReg));

S <= A(31+32*index downto 32*index);


end Behavioral;