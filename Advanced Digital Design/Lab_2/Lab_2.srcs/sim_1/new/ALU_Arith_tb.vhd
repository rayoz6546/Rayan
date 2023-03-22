LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity ALU_Arith_tb is 
end ALU_Arith_tb;

architecture arith_tb of ALU_Arith_tb is 

component arith_tb is
    GENERIC (
      n       : positive := 32);
   PORT( 
      A       : IN     std_logic_vector (n-1 DOWNTO 0);
      B       : IN     std_logic_vector (n-1 DOWNTO 0);
      ALUOp    : IN     std_logic_vector (1 DOWNTO 0);
      CO      : OUT    std_logic;
      Overflow: OUT    std_logic;
      ArithR  : OUT    std_logic_vector (n-1 DOWNTO 0);
      Zero    : OUT    std_logic
   );
end component;
CONSTANT n: positive :=32;
signal A,B,ArithR: std_logic_vector(n-1 downto 0);
signal ALUOp: std_logic_vector(1 downto 0);
signal CO, Overflow, Zero: std_logic;

begin 
U: arith_tb PORT MAP(A => A,
                     B => B,
                     ALUOp => ALUOp,
                     CO => CO,
                     Overflow => Overflow,
                     ArithR => ArithR,
                     Zero => Zero);
process 
begin

end process;
end arith_tb;