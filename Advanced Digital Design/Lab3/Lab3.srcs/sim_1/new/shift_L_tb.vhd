----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2022 06:38:39 PM
-- Design Name: 
-- Module Name: shift_L_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_L_tb is
--  Port ( );
end shift_L_tb;

architecture Behavioral of shift_L_tb is

component shiftreg_L is generic (n: integer := 64);
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

t1: shiftreg_L generic map (n=>n)
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
