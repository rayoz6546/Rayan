library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity decoder is
generic (n: integer :=5);
    Port ( WriteReg : in STD_LOGIC_VECTOR (n-1 downto 0);
           RegWrite : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2**n-1 downto 0));
end decoder;

architecture Behavioral of decoder is

signal writeReg_decimal: integer;
begin

writeReg_decimal <= to_integer(unsigned(WriteReg));

process(RegWrite, writeReg_decimal)
variable Q_inter: std_logic_vector(31 downto 0):=(others=>'0');
begin
Q_inter:=(others=>'0');
for i in 0 to 31 loop
    if i = writeReg_decimal then 
        if RegWrite='1' then Q_inter(i):='1';
        end if; 
    end if;
    end loop;
Q<=Q_inter;
end process;
end Behavioral;

