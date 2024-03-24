library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity controller is
generic(n: integer:= 5); 
    Port ( Q_0 : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Load : out STD_LOGIC;
           Shift : out STD_LOGIC;
           Add : out STD_LOGIC;
           Done : out STD_LOGIC);
end controller;

architecture Behavioral of controller is

type states is (Init, Temp, AddS, ShiftS,Finish);
signal state: states:=Finish;
signal counter: unsigned(n-1 downto 0);
begin

process(clk)
begin
    if rising_edge(Clk) then
        case state is
        
            when Init => state <= Temp; 
            when Temp => if (Q_0 = '1') then state <= AddS; 
                                        else state <= ShiftS; end if;
            when AddS => state <= ShiftS; 
            when ShiftS => if (counter = 2**n - 1) then state <= Finish; 
                           else state <= Temp; end if;
            when Finish => if rst = '0' then state <= Init; end if;
        end case;
    end if;
end process;




process(state)
begin 
    case state is 
        when Init =>Load<='1';
                     Shift<='0';
                     Add<='0';
                     Done<='0';
                     
        when Temp => Load<='0';
                     Shift<='0';
                     Add<='0';
                     Done<='0';
                     
        when AddS => Load<='0';
                     Shift<='0';
                     Add<='1';
                     Done<='0';
                     
        when ShiftS =>Load<='0';
                     Shift<='1';
                     Add<='0';
                     Done<='0';
                     
         when Finish =>Load<='0';
                     Shift<='0';
                     Add<='0';
                     Done<='1';
     end case;
 end process;
       
                       
process(CLK)
begin
    if rising_edge(CLK) then
        if state = Finish then
            counter <= to_unsigned(0,n); -- Reset 
        elsif state = ShiftS then
            counter <= counter + 1; 
        end if;
    end if;
end process;

end Behavioral;
