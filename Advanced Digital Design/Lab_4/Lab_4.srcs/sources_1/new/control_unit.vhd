library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
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
end control_unit;

architecture Behavioral of control_unit is

type states is (Start,InstrF, InstrD, ExeR, ExeI, Rcompl, Icompl,BranchExe, BranchTemp, Bcompl, 
JumpCompl, Multcompl, CLOcompl, LoadExe, LoadTemp, Loadcompl, StoreExe, StoreCompl);

signal pr_state, nx_state: states := InstrF;

begin

process(CLK,RST) 
begin 
    if RST ='1' then pr_state <= Start;
    elsif rising_edge(CLK) then
        pr_state <= nx_state;
    end if;
end process;


process(Opcode, func,pr_state)
begin
    case pr_state is 
        when Start => nx_state <= InstrF;
        when InstrF => nx_state <= InstrD;       
        when InstrD => if Opcode = "000000" then  --R-type
                            if func = "001000" then nx_state <= JumpCompl; --JR
                            elsif func = "011001" then nx_state <= InstrF;
                            elsif (func = "010000" or func = "010010") then nx_state <= MultCompl;  --MULTU, MFHI, MFLO
                            else -- all other R intructions
                                nx_state <= ExeR; end if;  
                        elsif (Opcode = "001000" or Opcode = "001111" or Opcode = "001101" or Opcode = "001010") then nx_state <= ExeI; --I type and LUI
                        elsif Opcode = "000010" then nx_state <= JumpCompl; -- J
                        elsif Opcode = "000101" then nx_state <= BranchExe; -- BNE
                        elsif Opcode = "011100" then nx_state <= CLOcompl;  --CLO
                        elsif (Opcode = "100001" or Opcode = "100011") then nx_state <= LoadExe;--LH, LW 
                        elsif Opcode = "101011" then nx_state <= StoreExe; -- SW
                        end if;
        when ExeR => nx_state <= Rcompl;
        when Rcompl => nx_state <= InstrF;
        when ExeI => nx_state <= Icompl;
        when Icompl => nx_state <= InstrF;
        when BranchExe => nx_state <= BranchTemp;
        when BranchTemp => nx_state <= Bcompl;
        when Bcompl => nx_state <= InstrF;
        when JumpCompl => nx_state<= InstrF;
        when MultCompl =>  nx_state <= InstrF; 
                        
        when CLOcompl => nx_state <= InstrF;
        when LoadExe => nx_state <= LoadTemp;
        when LoadTemp => nx_state <= Loadcompl; 
        when Loadcompl => nx_state <= InstrF;
        when StoreExe => nx_state <= StoreCompl;
        when StoreCompl => nx_state <= InstrF;
        
    end case;
end process;
        
            
process(Opcode, func, pr_state) 
begin 

case pr_state is
        
        when Start =>                 
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "00";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
            
        when InstrF => 
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '1';
                PCSource <= "000";
                ALUOp <= Opcode;
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
                
        when InstrD =>  
                if (Opcode = "000000" and func = "011001") then --for MULTU              
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= Opcode;
                ALUSrcB <= "00";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '1';
                LoadB <= '1';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '1';
                selLo <= '1';
                
               else PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= Opcode;
                ALUSrcB <= "00";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '1';
                LoadB <= '1';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
                end if; 
                
        when ExeR => 
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= Opcode;
                ALUSrcB <= "00";
                ALUSrcA <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '1';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
                
                
        when Rcompl => 
                PCWrite <= '1';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                RegWrite <= '1';
                RegDst <= '1';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
            
                
        when ExeI => 
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= Opcode;
                ALUSrcB <= "10";
                ALUSrcA <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '1';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
           
        
        when Icompl => 
                PCWrite <= '1';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                RegWrite <= '1';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
             
                
        when BranchExe => 
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "101011";
                ALUSrcB <= "11";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '1';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
          
                
        when BranchTemp => 
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= Opcode;
                ALUSrcB <= "00";
                ALUSrcA <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
        
                
        when Bcompl => 
                PCWrite <= '1';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                if (Zero = '0') then
                    PCSource <= "001";
                else
                    PCSource <= "000";
                end if;
                ALUOp <= "001000";
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
      
        
        when JumpCompl => 
                PCWrite <= '1';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                if (Opcode = "000000") then -- JR
                    ALUOp <= Opcode;
                else -- J
                    ALUOp <= "101011";
                end if;
                ALUSrcB <= "11";
                ALUSrcA <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
    
        
        when MultCompl => 
                PCWrite <= '1';
                IorD <= '0';
                MemWrite <= '0';
                IRWrite <= '0';
                ALUOp <= "001000";
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                PCSource <= "000";
             
                if (func = "010000") then -- MFHI
                    MemtoReg <= "010";
                    RegWrite <= '1';
                    RegDst <= '1';
                elsif (func = "010010") then -- MFLO
                    MemtoReg <= "100";
                    RegWrite <= '1';
                    RegDst <= '1';
              
                end if;
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
                
        when CLOcompl => 
                PCWrite <= '1';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "011";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                RegWrite <= '1';
                RegDst <= '1';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
  
                
        when LoadExe => 
                PCWrite <= '0';
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";  
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "10";
                ALUSrcA <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '1';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';

                
        when LoadTemp => 
                PCWrite <= '0';
                IorD <= '1';
                MemWrite <= '0';
                MemtoReg <= "000";  
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= Opcode;
                ALUSrcB <= "00";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '1';
                selHi <= '0';
                selLo <= '0';
                
                
        when LoadCompl =>   
                PCWrite <= '0'; --  was 1 
                IorD <= '0';
                MemWrite <= '0';
                MemtoReg <= "001";  
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                RegWrite <= '1';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '0';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
                
        when StoreExe => 
                PCWrite <= '0';
                IorD <= '1';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "10";
                ALUSrcA <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '1';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
                
        when StoreCompl => 
                PCWrite <= '1';
                IorD <= '1';
                MemWrite <= '1';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "000";
                ALUOp <= "001000";
                ALUSrcB <= "01";
                ALUSrcA <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                LoadA <= '0';
                LoadB <= '0';
                LoadALUout <= '1';
                LoadMemDataReg <= '0';
                selHi <= '0';
                selLo <= '0';
   
       end case;
end process;
            

end Behavioral;
