library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity multiplexer is
generic (n:integer := 5);
    Port ( A : in STD_LOGIC_VECTOR (1023 downto 0);
           ReadReg : in STD_LOGIC_VECTOR(n-1 downto 0);
           S : out STD_LOGIC_VECTOR(2**n-1 downto 0));
end multiplexer;

architecture Behavioral of multiplexer is

signal index: integer;


begin

index <= to_integer(unsigned(ReadReg));

S <= A(31+32*index downto 32*index);


end Behavioral;
