library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity product_reg is
generic (n: integer:=64);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           add: in std_logic;
           done : in STD_LOGIC;
           R: out std_logic_vector(n-1 downto 0));
end product_reg;

architecture Behavioral of product_reg is

signal RP_inter: std_logic_vector(n-1 downto 0);

begin

process(CLK,RST)

begin
    if (RST='1') then RP_inter<= (others=>'0');
    elsif rising_edge(CLK) then
        if (add='1' or done='1') then 
         RP_inter<=D;
          end if;
      end if;
end process;
    
R<= RP_inter;


end Behavioral;
