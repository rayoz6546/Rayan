library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    Port ( MemoryDataIn : in STD_LOGIC_VECTOR (31 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           MemoryAddress : out STD_LOGIC_VECTOR (31 downto 0);
           MemoryDataOut : out STD_LOGIC_VECTOR (31 downto 0);
           MemWrite : out STD_LOGIC);
end top_level;

architecture Behavioral of top_level is

component control_unit is 
    Port ( Opcode : in STD_LOGIC_VECTOR (5 downto 0);
           func : in STD_LOGIC_VECTOR (5 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Zero: in STD_LOGIC;
           PCWrite: out std_logic;
           IorD: out std_logic;
           MemWrite: out std_logic;
           MemtoReg: out std_logic_vector(2 downto 0);
           IRWrite: out std_logic;
           PCSource: out std_logic_vector(2 downto 0);
           ALUOp: out std_logic_vector(5 downto 0); 
           ALUSrcB: out std_logic_vector(1 downto 0);
           ALUSrcA: out std_logic;
           RegWrite: out std_logic;
           RegDst: out std_logic;
           LoadA: out std_logic;
           LoadB: out std_logic;
           LoadALUout: out std_logic;
           LoadMemDataReg: out std_logic;
           selHi: out std_logic;
           selLo: out std_logic
           );
end component; 

component ALU_control is
    Port ( Opcode : in STD_LOGIC_VECTOR (5 downto 0);
           func : in STD_LOGIC_VECTOR (15 downto 0);
           ALUOp : out STD_LOGIC_VECTOR (3 downto 0);
           SHAMT: out std_logic_vector(4 downto 0);
           shift: out std_logic
           );
end component; 

component RegisterFile is 
    Port ( ReadReg1 : in STD_LOGIC_VECTOR (4 downto 0);
           ReadReg2 : in STD_LOGIC_VECTOR (4 downto 0);
           RegWrite : in STD_LOGIC;
           WriteReg : in STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in STD_LOGIC_VECTOR (31 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           ReadData1 : out STD_LOGIC_VECTOR (31 downto 0);
           ReadData2 : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

component ALU is 
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Shift: in std_logic;
           ALUOp : in STD_LOGIC_VECTOR (3 downto 0);
           SHAMT : in STD_LOGIC_VECTOR(4 downto 0);
           Zero: out STD_LOGIC;
           R : out STD_LOGIC_VECTOR (31 downto 0)
);
end component; 

component reg is 
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           En : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           B : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component shiftleft2_28 is 
    Port ( A : in STD_LOGIC_VECTOR (25 downto 0);
           B : out STD_LOGIC_VECTOR (27 downto 0));
end component; 

component shiftleft2_32 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

component signExtend is 
    Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

component mux2to1 is 
        Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

component mux2to1_5 is 
    Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
           B : in STD_LOGIC_VECTOR (4 downto 0);
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component mux3to1 is 
        Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

component mux4to1 is 
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (31 downto 0);
           D : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

component mux5to1 is 
    Port ( A : in STD_LOGIC_VECTOR(31 downto 0);
           B : in STD_LOGIC_VECTOR(31 downto 0);
           C : in STD_LOGIC_VECTOR(31 downto 0);
           D : in STD_LOGIC_VECTOR(31 downto 0);
           E : in STD_LOGIC_VECTOR(31 downto 0);
           sel : in STD_LOGIC_VECTOR(2 downto 0);
           Z : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component Multiplier_AM is

	port (
		A     : in  std_logic_vector(4 downto 0);
		B     : in  std_logic_vector(4 downto 0);
		R     : out std_logic_vector(63 downto 0)
	);
end component;

component CLO is 
    port ( A     : in  std_logic_vector(31 downto 0);
           Count : out std_logic_vector(31 downto 0)
    );
end component;


signal reset, MemWrite_sig, PCWrite, IorD, IRWrite, ALUSrcA, RegWrite, RegDst, LoadA, LoadB, LoadALUout, LoadMemDataReg, selhilo, sello, selhi: std_logic;
signal ALUSrcB : std_logic_vector(1 downto 0);
signal MemtoReg, PCSource: std_logic_vector(2 downto 0);
signal ALUOp: std_logic_vector(5 downto 0);
signal z,en_PC, do, shift_sig: std_logic;
signal PC_in, PC_out, ALUout_out, instr, MemDataReg_out, WriteData_in, A_in, B_in, A_out, B_out: std_logic_vector(31 downto 0);
signal ALU_in1, ALU_in2, ALU_out, signextend_out, shiftl32_out, shiftl28_conc, MemoryAddr, MemoryData, HILOout, LOcount_out: std_logic_vector(31 downto 0);
signal WriteReg, SHAMT_sig: std_logic_vector(4 downto 0);
signal Op :std_logic_vector(3 downto 0);
signal shiftl28_out: std_logic_vector(27 downto 0);
signal HIout, LOout, CLOout: std_logic_vector(31 downto 0);
signal Multout: std_logic_vector(63 downto 0);

begin


control: control_unit PORT MAP (Opcode => instr(31 downto 26),
                                func => instr(5 downto 0),
                                CLK => CLK,
                                RST => RST,
                                Zero => z,
                                PCWrite => PCWrite,
                                IorD => IorD,
                                MemWrite => MemWrite_sig,
                                MemtoReg => MemtoReg,
                                IRWrite => IRWrite,
                                PCSource => PCSource,
                                ALUOp => ALUOp,
                                ALUSrcB => ALUSrcB,
                                ALUSrcA => ALUSrcA,
                                RegWrite => RegWrite,
                                RegDst => RegDst,
                                LoadA => LoadA,
                                LoadB => LoadB,
                                LoadALUout => LoadALUout,
                                LoadMemDataReg => LoadMemDataReg,
                                selHi => selhi,
                                selLo => sello);
          
                                

PC: reg PORT MAP (A => PC_in,
                  En => PCWrite,
                  CLK => CLK,
                  RST => RST,
                  B => PC_out);
                  
mux1: mux2to1 PORT MAP (A => PC_out,
                        B => ALUout_out,
                        sel => IorD,
                        S => MemoryAddr);

MemoryAddress <= MemoryAddr;
MemWrite <= MemWrite_sig;

MemoryData <= MemoryDataIn;
                        
InstructionFile: reg PORT MAP (A => MemoryData,
                               En => IRWrite,
                               CLK => CLK,
                               RST => RST,
                               B => instr);
                               
                               
mux2: mux2to1_5 PORT MAP (A => instr(20 downto 16),
                        B => instr(15 downto 11),
                        sel => RegDst,
                        S => WriteReg);

MemoryDataReg: reg PORT MAP (A => MemoryData, 
                             En => LoadMemDataReg,
                             CLK => CLK,
                             RST => RST,
                             B => MemDataReg_out);

mux3: mux5to1 PORT MAP (A => ALUout_out,
                        B => MemDataReg_out,
                        C => HIout,
                        D => CLOout,
                        E => LOout,
                        sel => MemtoReg,
                        Z => WriteData_in);
                        
RegFile: RegisterFile PORT MAP (ReadReg1 => instr(25 downto 21),
                                ReadReg2 => instr(20 downto 16),
                                RegWrite => RegWrite,
                                WriteReg => WriteReg,
                                WriteData => WriteData_in,
                                CLK => CLK,
                                RST => RST,
                                ReadData1 => A_in,
                                ReadData2 => B_in);

A: reg PORT MAP (A => A_in,
                 En => LoadA,
                 CLK => CLK,
                 RST => RST,
                 B => A_out);
                 
B: reg PORT MAP (A => B_in,
                 En => LoadB,
                 CLK => CLK,
                 RST => RST,
                 B => B_out);
                 
mux4: mux2to1 PORT MAP (A => PC_out,
                        B => A_out,
                        sel => ALUSrcA,
                        S => ALU_in1);
                        
signExt: signExtend PORT MAP (A => instr(15 downto 0),
                              B => signextend_out);  
                              
shiftl_32: shiftleft2_32 PORT MAP (A => signextend_out,
                                   B => shiftl32_out);
                                   
shiftl_28: shiftleft2_28 PORT MAP (A => instr(25 downto 0),
                                   B => shiftl28_out);
                                   
shiftl28_conc <= PC_out(31 downto 28) & shiftl28_out;

mux5: mux4to1 PORT MAP (A => B_out,
                        B => "00000000000000000000000000000100",
                        C => signextend_out,
                        D => shiftl32_out,
                        sel => ALUSrcB,
                        S => ALU_in2);
                        
ALUunit: ALU PORT MAP (A => ALU_in1,
                       B => ALU_in2,
                       Shift => shift_sig,
                       ALUOp => Op,
                       SHAMT => SHAMT_sig,
                       Zero => z,
                       R => ALU_out);
                        
ALUcontrol: ALU_control PORT MAP (Opcode => ALUOp,
                                  func => instr(15 downto 0),
                                  ALUOp => Op,
                                  SHAMT => SHAMT_sig,
                                  Shift => Shift_sig);
                                  
ALUoutReg: reg PORT MAP (A => ALU_out,
                         En => LoadALUout,
                         CLK => CLK,
                         RST => RST,
                         B => ALUout_out);
                         
mux6: mux5to1 PORT MAP (A => ALU_out,
                        B => ALUout_out,
                        C => shiftl28_conc,
                        D => HIout,
                        E => LOout,
                        sel => PCSource,
                        Z => PC_in);
                        
Mult: Multiplier_AM PORT MAP (A => instr(25 downto 21),
                              B => instr(20 downto 16),
                              R => Multout);
                              
                           
CLOunit: CLO PORT MAP (A => A_out,
                            count => CLOout);
                            
HI: reg PORT MAP (A => Multout(63 downto 32),
                  En => selhi,
                  CLK => CLK,
                  RST => RST,
                  B => HIout);
                  
LO: reg PORT MAP (A => Multout(31 downto 0),
                  En => sello,
                  CLK => CLK,
                  RST => RST,
                  B => LOout);
                  
                  

                        
MemoryDataOut <= B_out;                       
                               
end Behavioral;
