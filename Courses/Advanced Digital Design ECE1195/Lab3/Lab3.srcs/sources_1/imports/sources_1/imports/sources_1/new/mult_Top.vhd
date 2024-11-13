library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_Top is
generic(n: integer := 32);
    Port ( A : in STD_LOGIC_VECTOR (n-1 downto 0);
           B : in STD_LOGIC_VECTOR (n-1 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           R : out STD_LOGIC_VECTOR (2*n-1 downto 0);
           done : out STD_LOGIC);
end mult_Top;

architecture Behavioral of mult_Top is

component adder is generic (n: integer:= 64);
    Port ( A : in STD_LOGIC_VECTOR (n-1 downto 0);
           B : in STD_LOGIC_VECTOR (n-1 downto 0);
           S : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component shiftreg_L is generic (n: integer := 64);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Load : in STD_LOGIC;
           Shift : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component shiftreg_R is generic (n: integer := 32);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Load : in STD_LOGIC;
           Shift : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end component; 

component product_reg is generic (n: integer:=64);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Add : in STD_LOGIC;
           Done: in std_logic;
           R: out std_logic_vector(n-1 downto 0));
end component; 

component controller is generic(n: integer:= 5); 
    Port ( Q_0 : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Load : out STD_LOGIC;
           Shift : out STD_LOGIC;
           Add : out STD_LOGIC;
           Done : out STD_LOGIC);
end component; 


signal extended_A: std_logic_vector(2*n-1 downto 0);
signal shiftL_out, product_in, product_out , R_out: std_logic_vector(2*n-1 downto 0):=(others=>'0');
signal shiftR_out, Q0: std_logic_vector(n-1 downto 0);
signal load, add, shift,d: std_logic;


begin

extended_A(2*n-1 downto n)<=(others=>'0');
extended_A(n-1 downto 0) <= A;


t1: shiftreg_L port map(D => extended_A,
                              CLK => clk,
                              RST => rst,
                              Load => load,
                              Shift=>shift,
                              Q => shiftL_out );

                                      
t2: shiftreg_R  port map(D=> B,
                          CLK => clk,
                          RST => rst,
                          Load => Load,
                          Shift=>shift,
                          Q=> Q0);

                                          
t3: adder port map (A => product_out,
                   B => shiftL_out,
                   S => product_in);
          
                            
t4: product_reg   port map (D => product_in,
                                 CLK => clk,
                                 RST => rst,
                                 Add => add,
                                 Done => d,
                                 R => product_out);
                       
t5: controller  port map(Q_0 => Q0(0),
                           CLK => CLK,
                           RST => RST,
                           Load => load,
                           Shift => shift,
                           Add => Add,
                           Done => d);
done<=d;
R<=product_out;                           

end Behavioral;
