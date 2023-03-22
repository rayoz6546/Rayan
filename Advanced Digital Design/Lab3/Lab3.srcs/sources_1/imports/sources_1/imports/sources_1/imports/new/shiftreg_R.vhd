library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftreg_R is
generic (n: integer := 32);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Load : in STD_LOGIC;
           Shift : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end shiftreg_R;

architecture Behavioral of shiftreg_R is

signal QR_inter: STD_LOGIC_VECTOR(n-1 downto 0);

begin

process(CLK,RST)
 begin
    if (RST = '1') then QR_inter <= (others=>'0');
    elsif rising_edge(CLK) then 
        if Load = '1' then 
            QR_inter<=D;
        elsif Shift = '1' then
            QR_inter<='0' & QR_inter(n-1 downto 1);
            
        end if;
    end if;
end process;

Q <= QR_inter;


end Behavioral;

