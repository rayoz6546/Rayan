
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLO is
        port ( A     : in  std_logic_vector(31 downto 0);
           Count : out std_logic_vector(31 downto 0)
    );
end CLO;

architecture Behavioral of CLO is

begin
    
process(A)
variable B_inter: integer := 0;
begin 
B_inter:=0;
for i in 31 downto 0 loop 
    if (A(i)='1') then B_inter := B_inter +1;
    else exit;
    end if;
end loop;
Count <= std_logic_vector(to_unsigned(B_inter, 32));
end process;
end Behavioral;
