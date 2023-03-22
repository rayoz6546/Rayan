library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Shift_tb is
end ALU_Shift_tb;

architecture shift_tb of ALU_Shift_tb is

component ALU_Shift is 
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           SHAMT : in STD_LOGIC_VECTOR (4 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (3 downto 0);
           ShiftR : out STD_LOGIC_VECTOR (31 downto 0));
end component;
signal A,ShiftR: std_logic_vector(31 downto 0);
signal SHAMT: std_logic_vector(4 downto 0);
signal ALUOp: std_logic_vector(3 downto 0);

begin 
UUT: ALU_Shift PORT MAP (A => A,
                        SHAMT => SHAMT,
                        ALUOp => ALUOp,
                        ShiftR => ShiftR);
                        
process
begin 
A<=X"FEDCBA98" ;
SHAMT<="00000";
ALUOp <= "1100";
-- SLL
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="00000";
ALUOp <= "1110";
-- SRL
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="00000";
ALUOp <= "1111";
-- SRA
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="11001";
ALUOp <= "1100";
-- SLL
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="11001";
ALUOp <= "1110";
-- SRL
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="11001";
ALUOp <= "1111";
-- SRA
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="01010";
ALUOp <= "1100";
-- SLL
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="01010";
ALUOp <= "1110";
-- SRL
wait for 10ns;

A<=X"FEDCBA98" ;
SHAMT<="01010";
ALUOp <= "1111";
-- SRA
wait for 10ns;

end process;

end architecture;