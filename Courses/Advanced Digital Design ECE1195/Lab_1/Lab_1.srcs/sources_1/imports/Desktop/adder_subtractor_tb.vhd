library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_subtractor_tb is
end adder_subtractor_tb;

architecture add_Sub_TB of adder_subtractor_tb is
component adder_subtractor is
GENERIC (n :Integer :=32);
port (
        A,B : in STD_LOGIC_VECTOR(n-1 downto 0);
           k : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(n-1 downto 0);
           Cout : out STD_LOGIC);
end component adder_subtractor;

CONSTANT WIDTH : Integer :=32;
signal A, B, S: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal k, Cout: STD_LOGIC;
begin

G: adder_subtractor GENERIC MAP (n => WIDTH)
PORT MAP (A => A, 
          B => B, 
          k => k, 
          S => S, 
          Cout => Cout);
          
process 

begin
A <= std_logic_vector(to_unsigned(1,WIDTH));
B <= std_logic_vector(to_unsigned(2,WIDTH)); 
k <= '0';
-- A+B (no carry out)
wait for 10 ns;


A <= std_logic_vector(to_unsigned(2147483647,WIDTH)); 
B <= std_logic_vector(to_unsigned(2147483647,WIDTH)); 
k <= '0';
 --A+B (carry out)
wait for 10 ns ;


A <= std_logic_vector(to_unsigned(4,WIDTH));
B <= std_logic_vector(to_unsigned(2,WIDTH)); 
k <= '1';
-- A-B is positive (carry out)
wait for 10 ns;


A <= std_logic_vector(to_unsigned(2,WIDTH));
B <= std_logic_vector(to_unsigned(2,WIDTH)); 
k <= '1';
--A-B is zero (carry out)
wait for 10 ns;

A <= std_logic_vector(to_unsigned(2,WIDTH));
B <= std_logic_vector(to_unsigned(4,WIDTH)); 
k <= '1';
--A-B is negative (no carry out)
wait for 10 ns;

end process; 

end add_Sub_TB;
