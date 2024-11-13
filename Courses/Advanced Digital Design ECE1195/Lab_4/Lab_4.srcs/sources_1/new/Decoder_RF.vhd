library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decoder_RF is
    Port ( WriteReg : in STD_LOGIC_VECTOR (4 downto 0);
           RegWrite : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(31 downto 0));
end Decoder_RF;

architecture Behavioral of Decoder_RF is

begin


process (WriteReg, RegWrite)
begin 
    if (RegWrite = '1') then 
        for i in 31 downto 0 loop
            if (to_integer(unsigned(WriteReg)) = i) then Q(i)<='1';
            else Q(i) <= '0';
            end if;
        end loop;
    else 
        Q <= (others=>'0');
    end if;
end process;

end Behavioral;
