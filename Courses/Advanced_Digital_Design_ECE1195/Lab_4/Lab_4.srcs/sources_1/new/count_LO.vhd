library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity count_LO is
    port ( A     : in  std_logic_vector(31 downto 0);
           Count : out std_logic_vector(31 downto 0)
    );
end count_LO;

architecture Behavioral of count_LO is

begin
process (A)
    variable Counter     : integer;
    variable Run           : boolean;
    begin
        Counter     := 0;
        Run           := true;
        for i in 31 downto 0 loop
            if (Run = true) then
                if (A(i) = '1') then
                    Counter := Counter + 1;
                elsif (A(i) = '0') then
                    Run := false;
                end if;
            end if;
        end loop;
        Count <= std_logic_vector(to_unsigned(Counter, 32));
    end process;



end Behavioral;
