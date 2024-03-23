library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Word is
    port ( A   : in  std_logic_vector(31 downto 0);
           sel : in  std_logic_vector(1 downto 0);
           R   : out std_logic_vector(31 downto 0)
    );
end Word;

architecture Behavioral of Word is

signal hw, w, Upper_Imm, byte : std_logic_vector(31 downto 0);

begin
    hw <= A(31 downto 16) & X"0000";
    w <= A;
    Upper_Imm <= A(31 downto 16) & X"0000";
    byte <= A(31 downto 24) & x"000000";
    
    R <= Upper_Imm when sel = "00" else
         w when sel = "01" else
         hw when sel = "10" else
         byte when sel = "11" else
         X"00000000";



end Behavioral;