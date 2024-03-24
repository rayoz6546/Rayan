library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity adder_subtractor is
GENERIC (
         n :Integer := 32
         );
    Port ( A,B : in STD_LOGIC_VECTOR(n-1 downto 0);
           k : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(n-1 downto 0);
           Cout : out STD_LOGIC);
end adder_subtractor;

architecture Structural of adder_subtractor is

component full_adder
Port ( A,B, Cin : in STD_LOGIC;
           S, Cout : out STD_LOGIC);
           
end component; 
signal tmp: STD_lOGIC_VECTOR(n-1 downto 0);
signal C: STD_LOGIC_VECTOR(n downto 0);


begin
C(0) <= k;
Cout <= C(n);

G: FOR i IN 0 to n-1 GENERATE 
    BEGIN 
    tmp(i)<=B(i) xor k;
    u: full_adder PORT MAP (A => A(i), 
                            B => tmp(i), 
                            Cin => C(i), 
                            S => S(i), 
                            Cout => C(i+1));
    END GENERATE G;
     
end Structural;
