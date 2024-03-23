library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_tb is
end ALU_tb;

architecture TB of ALU_tb is 
component ALU is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (3 downto 0);
           SHAMT : in STD_LOGIC_VECTOR(4 downto 0);
           R : out STD_LOGIC_VECTOR (31 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end component;
signal A,B,R: std_logic_vector(31 downto 0);
signal ALUOp: std_logic_vector(3 downto 0);
signal SHAMT: std_logic_vector(4 downto 0);
signal Overflow, Zero: std_logic;

begin 
UUT: ALU PORT MAP(A => A,
                 B => B,
                 ALUOp => ALUOp,
                 SHAMT => SHAMT,
                 R => R,
                 Overflow => Overflow,
                 Zero => Zero);

--process 
--begin


----test logical operations first (so ALUOp(3 downto 2)="00")
--A<=X"0000000A";
--B<=X"00000012";
--ALUOp<="0000"; --A and B
--wait for 10 ns;
--assert (R=(A AND B)) report "logical AND operation failed";

--ALUOP<="0001"; --A or B
--wait for 10 ns;
--assert (R=(A OR B)) report "logical OR operation failed";

--ALUOp<="0010"; --A xor B
--wait for 10 ns;
--assert (R=(A xor B)) report "logical xor operation failed";

--ALUOp<="0011"; --A nor B
--wait for 10 ns;
--assert (R=(A nor B)) report "logical nor operation failed";


-- now test comparator (ALUOp(3 downto 2)="10")
--A<="10000000000000000000000000000001";
--B<="10000000000000000000000000000010";
--ALUOp <= "1010"; --SLT
--assert (R(0)='1') report "comparison failed";
--wait for 10 ns;


-- test shift unit
--A<=X"FEDCBA98";

--ALUOp<="1100"; --SLL
--SHAMT<="00101";
--wait for 10 ns;

--ALUOp<="1110"; --SRL
--SHAMT<="00101";
--wait for 10ns;

--ALUOp<="1111"; --SRA
--SHAMT<="00101";
--wait for 10ns;
--end process;

end TB;




