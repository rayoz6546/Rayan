library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           En : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           B : out STD_LOGIC_VECTOR (31 downto 0));
end reg;

architecture Behavioral of reg is
signal B_inter: std_logic_vector(31 downto 0);
begin

process(CLK, RST)
begin
    if RST = '1' then B_inter <=(others=>'0');
    elsif rising_edge(CLK) then 
        if En = '1' then B_inter <= A; 
        end if;
    end if;
end process;

B <= B_inter;
end Behavioral;
