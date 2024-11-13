library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_control is
    Port ( Opcode : in STD_LOGIC_VECTOR (5 downto 0);
           func : in STD_LOGIC_VECTOR (15 downto 0);
           ALUOp : out STD_LOGIC_VECTOR (3 downto 0);
           SHAMT: out std_logic_vector(4 downto 0);
           shift: out std_logic
           );
end ALU_control;

architecture Behavioral of ALU_control is

begin

process(Opcode, func)
    begin
        SHAMT <= "00000";
        Shift <= '0';
        if (Opcode = "001000") then -- ADDI
            ALUOp <= "0100";
        elsif (Opcode = "000000" and func(5 downto 0) = "100001") then -- ADDU
            ALUOp <= "0101";
        elsif (Opcode = "000000" and func(5 downto 0) = "100100") then -- AND
            ALUOp <= "0000";
        elsif (Opcode = "000000" and func(5 downto 0) = "011001") then --MULTU
            ALUOP <= "0100";
        elsif (Opcode = "000101") then -- BNE
            ALUOp <= "0110";
        elsif (Opcode = "000010") OR (Opcode = "000000" and func(5 downto 0) = "001000") then -- J and JR
            ALUOp <= "1001"; 
        elsif (Opcode = "001111") then -- LUI
            ALUOp <= "1100";
            SHAMT <= "10000";
            Shift <= '1';
        elsif (Opcode = "001101") then -- ORI
            ALUOp <= "0001";
        elsif (Opcode = "000000" and func(5 downto 0) = "000000") then -- SLL
            ALUOp <= "1100";
            SHAMT <= func(10 downto 6);
            Shift <= '1';
        elsif (Opcode = "000000" and func(5 downto 0) = "000100") then -- SLLLV
            ALUOp <= "1000";
            Shift <= '1';
        elsif (Opcode = "001010") then -- SLTI
            ALUOp <= "1010";
            Shift <= '1';
        elsif (Opcode = "000000" and func(5 downto 0) = "000011") then -- SRA
            ALUOp <= "1111";
            SHAMT <= func(10 downto 6);
            Shift <= '1';
        elsif (Opcode = "000000" and func(5 downto 0) = "100010") then -- SUB
            ALUOp <= "0110";
        elsif (Opcode = "101011") then -- SW
            ALUOp <= "1001"; 
            Shift <= '1';
        end if;
    end process;

end Behavioral;
