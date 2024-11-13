library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterFile is
    Port ( ReadReg1 : in STD_LOGIC_VECTOR (4 downto 0);
           ReadReg2 : in STD_LOGIC_VECTOR (4 downto 0);
           RegWrite : in STD_LOGIC;
           WriteReg : in STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in STD_LOGIC_VECTOR (31 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           ReadData1 : out STD_LOGIC_VECTOR (31 downto 0);
           ReadData2 : out STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

component Decoder_RF is     
    Port ( WriteReg : in STD_LOGIC_VECTOR (4 downto 0);
           RegWrite : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component Mux_RF is 
    Port ( A : in STD_LOGIC_VECTOR (1023 downto 0);
           ReadReg : in STD_LOGIC_VECTOR(4 downto 0);
           S : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component reg is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           En : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           B : out STD_LOGIC_VECTOR (31 downto 0));
end component; 

signal reg_en: std_logic_vector(31 downto 0);
signal mux_in: std_logic_vector(1023 downto 0);

begin

dec: Decoder_RF PORT MAP (WriteReg => WriteReg,
                          RegWrite => RegWrite,
                          Q => reg_en);
                          
G1: for i in 0 to 31 GENERATE
registers: reg PORT MAP (A => WriteData,
                         En => reg_en(i),
                         CLK => CLK,
                         RST => RST,
                         B => mux_in(32*i + 31 downto 32*i));
END GENERATE;

mux1: Mux_RF PORT MAP (A => mux_in,
                       ReadReg => ReadReg1,
                       S => ReadData1);
                       
mux2: Mux_RF PORT MAP (A => mux_in,
                       ReadReg => ReadReg2,
                       S => ReadData2);

end Behavioral;
