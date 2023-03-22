library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (3 downto 0);
           SHAMT : in STD_LOGIC_VECTOR(4 downto 0);
           R : out STD_LOGIC_VECTOR (31 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end ALU;

architecture Structural of ALU is

component ALU_Logical 
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
           LogicalR : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

component ALU_Arith
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

component ALU_Comp 
    Port ( A_31 : in STD_LOGIC;
           B_31 : in STD_LOGIC;
           S_31 : in STD_LOGIC;
           CO : in STD_LOGIC;
           ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
           CompR : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU_Shift
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           SHAMT : in STD_LOGIC_VECTOR (4 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (3 downto 0);
           ShiftR : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU_Mux
    Port ( LogicalR : in STD_LOGIC_VECTOR (31 downto 0);
           ArithR : in STD_LOGIC_VECTOR (31 downto 0);
           CompR : in STD_LOGIC_VECTOR (31 downto 0);
           ShiftR : in STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in STD_LOGIC_VECTOR (3 downto 2);
           R : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal temp_logicalR: std_logic_vector(31 downto 0);
signal temp_arithR: std_logic_vector(31 downto 0);
signal temp_compR: std_logic_vector(31 downto 0);
signal temp_shiftR: std_logic_vector(31 downto 0);
signal temp_CO: std_logic;

begin


Logical: ALU_Logical PORT MAP(A => A,
                              B => B,
                              ALUOp => ALUOp(1 downto 0),
                              LogicalR => temp_logicalR);
                              
Arith: ALU_Arith PORT MAP (A=> A,
                           B => B,
                           ALUOp =>ALUOp(1 downto 0),
                           CO => temp_CO,
                           Overflow => Overflow,
                           ArithR => temp_arithR,
                           Zero => Zero);
                           
Comp: ALU_Comp PORT MAP(A_31 => A(31),
                        B_31 => B(31),
                        S_31 => temp_arithR(31),
                        CO => temp_CO,
                        ALUOp => ALUOp(1 downto 0),
                        CompR => temp_compR);
                        
Shift: ALU_Shift PORT MAP (A => A,
                           SHAMT => SHAMT,
                           ALUOp => ALUOp,
                           ShiftR => temp_shiftR);
                       
Mux: ALU_Mux PORT MAP (LogicalR => temp_logicalR,
                       ArithR => temp_arithR,
                       CompR => temp_compR,
                       ShiftR => temp_shiftR,
                       ALUOp => ALUOp(3 downto 2),
                       R => R);
                        

                        

end Structural;
