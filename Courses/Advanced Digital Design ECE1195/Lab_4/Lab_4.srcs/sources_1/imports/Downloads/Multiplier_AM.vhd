library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Multiplier_AM is

	port (
		A     : in  std_logic_vector(4 downto 0);
		B     : in  std_logic_vector(4 downto 0);
		R     : out std_logic_vector(63 downto 0)
	);
end entity;

architecture Behavioral of Multiplier_AM is
signal R_inter: std_logic_vector(9 downto 0);
signal zeros: std_logic_vector(63 downto 10);
begin

R_inter <= std_logic_vector(unsigned(A) * unsigned(B));
zeros <= (others=> '0');
R <= zeros & R_inter;

end architecture;