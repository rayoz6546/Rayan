library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.std_logic_unsigned.all;
entity shiftR_tb is
--  Port ( );
end shiftR_tb;

architecture Behavioral of shiftR_tb is

component shiftreg_R is generic (n: integer := 32);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Load : in STD_LOGIC;
           Shift : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;
constant n: integer :=32;
signal D,Q: std_logic_vector(n-1 downto 0);
signal RST, Load, Shift: std_logic;

signal CLK: std_logic:='0';
signal clk_period: time:=1ns;
begin

t1: shiftreg_R generic map (n=>n)
port map (D => D,
          CLK => CLK ,
          RST => RST,
          Load => Load,
          Shift => Shift,
          Q => Q);
          
process
begin
--clk<= not clk after clk_period/2;
--D<=std_logic_vector(to_unsigned(12,32));
--RST <= '0';
--Load <= '1';
--Shift <= '0';
--wait for 10ns;

clk<= not clk after clk_period/2;
D<=std_logic_vector(to_unsigned(12,32));
RST <='0';
Load <='0';
Shift <='1';
wait for 5 ns;

--clk<= not clk after clk_period/2;
--D<=std_logic_vector(to_unsigned(12,32));
--RST <='1';
--Load <='0';
--Shift <='0';
--wait for 10 ns;


end process;

end Behavioral;
