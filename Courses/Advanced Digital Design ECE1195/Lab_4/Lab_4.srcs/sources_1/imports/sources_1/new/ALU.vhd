library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Shift: in std_logic;
           ALUOp : in STD_LOGIC_VECTOR (3 downto 0);
           SHAMT : in STD_LOGIC_VECTOR(4 downto 0);
           Zero: out STD_LOGIC;
           R : out STD_LOGIC_VECTOR (31 downto 0)
);
end ALU;

architecture Structural of ALU is

begin


    process(A, B, ALUOp, SHAMT, Shift)
    begin
        case ALUOp is
            when "0000" =>  R <= A and B; -- AND
            when "0001" => R <= A or B; --OR
            when "0010" => R <= A xor B;  --XOR
            when "0011" => R <= A nor B;  --NOR
            
            when "0100" => R <= std_logic_vector(signed(A) + signed(B)); --ADD
            when "0101" => R <= std_logic_vector(unsigned(A) + unsigned(B));  --ADDU
            when "0110" => R <= std_logic_vector(signed(A) - signed(B));  --SUB
            when "0111" => R <= std_logic_vector(unsigned(A) - unsigned(B));  --SUB
            when "1000" => -- SLLV
                if (Shift = '0') then R <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(B))));
                else R <= std_logic_vector(shift_left(unsigned(B), to_integer(unsigned(A)))); end if;
                
            when "1001" => -- J or JR or SW
                if (Shift = '0') then R <= A;
                else R <= B; end if;
                
            when "1010" => -- SLT
                if (Shift = '1') then
                    if (signed(A) < signed(B)) then R <= X"00000001";
                    else R <= X"00000000"; end if;
                else
                    if (signed(A) < to_signed(0, 32)) then R <= X"00000001";
                    else R <= X"00000000"; end if;
                end if;
                
            when "1011" => -- SLTU
                if (unsigned(A) < unsigned(B)) then R <= X"00000001";
                else R <= X"00000000"; end if;
                
            when "1100" => -- SLL
                if (Shift = '0') then R <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(SHAMT))));
                else R <= std_logic_vector(shift_left(unsigned(B), to_integer(unsigned(SHAMT))));
                end if;
                
            when "1101" => -- SLA
                if (Shift = '0') then R <= std_logic_vector(shift_left(signed(A), to_integer(unsigned(SHAMT))));
                else R <= std_logic_vector(shift_left(signed(B), to_integer(unsigned(SHAMT))));
                end if;
                
            when "1110" => -- SRL
                if (Shift = '0') then R <= std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(SHAMT))));
                else R <= std_logic_vector(shift_right(unsigned(B), to_integer(unsigned(SHAMT))));
                end if;
                
            when "1111" => -- SRA
                if (Shift = '0') then R <= std_logic_vector(shift_right(signed(A), to_integer(unsigned(SHAMT))));
                else R <= std_logic_vector(shift_right(signed(B), to_integer(unsigned(SHAMT))));
                end if;
                
            when others => R <= (others => '0');
            
        end case;
    end process;

                        

                        

end Structural;
