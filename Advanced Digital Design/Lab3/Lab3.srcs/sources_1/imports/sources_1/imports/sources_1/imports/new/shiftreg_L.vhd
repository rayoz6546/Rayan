library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftreg_L is
generic (n: integer := 64);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Load : in STD_LOGIC;
           Shift : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end shiftreg_L;

architecture Behavioral of shiftreg_L is

signal QL_inter: STD_LOGIC_VECTOR(n-1 downto 0);

begin

process(CLK,RST)
 begin
    if (RST = '1') then QL_inter <= (others=>'0');
    elsif rising_edge(CLK) then 
        if Load ='1' then
            QL_inter<=D;
        elsif Shift = '1' then 
            QL_inter<= QL_inter(n-2 downto 0) & '0';
       
        end if;
    end if;
end process;

Q <= QL_inter;


end Behavioral;
