library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_tb is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC);
end cpu_tb;

architecture Behavioral of cpu_tb is

component top_level is     
    Port ( MemoryDataIn : in STD_LOGIC_VECTOR (31 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           MemoryAddress : out STD_LOGIC_VECTOR (31 downto 0);
           MemoryDataOut : out STD_LOGIC_VECTOR (31 downto 0);
           MemWrite : out STD_LOGIC);
end component; 

component CPU_memory is    
PORT( 
      Clk      : IN     std_logic;
      MemWrite : IN     std_logic;
      addr     : IN     std_logic_vector (31 DOWNTO 0);
      dataIn   : IN     std_logic_vector (31 DOWNTO 0);
      dataOut  : OUT    std_logic_vector (31 DOWNTO 0)
   );
end component;

signal m_write: std_logic;
signal d_in, d_out, addr_sig: std_logic_vector(31 downto 0);
begin

U_0: top_level PORT MAP (
                   MemoryDataIn => d_out,
                   CLK => clock,
                   RST => reset,
                   MemoryAddress => addr_sig,
                   MemoryDataOut => d_in,
                   MemWrite => m_write);
                   
U_1: CPU_memory PORT MAP (Clk => clock,
                          MemWrite => m_write,
                          addr => addr_sig,
                          dataIn => d_in,
                          dataOut => d_out);

end Behavioral;
