LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY ALU_Arith IS
   GENERIC (
      n       : positive := 32);
   PORT( 
      A       : IN     std_logic_vector (n-1 DOWNTO 0);
      B       : IN     std_logic_vector (n-1 DOWNTO 0);
      ALUOp    : IN     std_logic_vector (1 DOWNTO 0);
      CO      : OUT    std_logic;
      --Overflow: OUT    std_logic;
      ArithR  : OUT    std_logic_vector (n-1 DOWNTO 0);
      Zero    : OUT    std_logic
   );

-- Declarations

END ALU_Arith ;

--
ARCHITECTURE struct OF ALU_Arith IS   
signal ATEMP, BTEMP, CITEMP : std_logic_vector(n DOWNTO 0);
signal STEMP1, STEMP2: std_logic_vector(n DOWNTO 0);
--signal OVERFLOWM, OVERFLOWP : std_logic;
signal ZERO_TEMP : std_logic_vector(n-1 DOWNTO 0);

BEGIN

     -- modified statements
     BTEMP <= ('0' & B) WHEN (ALUOp(1) = '0') ELSE ('0' & not(B)); -- B or B' depedning on the operation
     ATEMP <= '0' & A;
     CITEMP <= "00000000000000000000000000000000" & ALUOp(1);
     STEMP1 <= ATEMP + CITEMP;
     STEMP2 <= STEMP1 + BTEMP;
     ArithR <= STEMP2(n-1 DOWNTO 0);
     --OVERFLOWP <= not(A(n-1)) AND not(BTEMP(n-1)) AND STEMP2(n-1);
     --OVERFLOWM <= A(n-1) AND BTEMP(n-1) AND not(STEMP2(n-1));
     --Overflow <= (OVERFLOWP OR OVERFLOWM) AND not(ALUOp(0));
     CO <= STEMP2(n);
     
     -- zero signal generation
     ZERO_TEMP(0) <= STEMP2(0);
     Zero_for: FOR i IN 1 to n-1 GENERATE
            ZERO_TEMP(i) <= ZERO_TEMP(i-1) OR STEMP2(i);
     Zero <= not(ZERO_TEMP(n-1));
     END GENERATE;
END struct;