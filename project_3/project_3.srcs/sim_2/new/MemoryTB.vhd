library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity MemoryTB is
end MemoryTB;


architecture arch of MemoryTB is

    component  Memory
    Generic (
           Adresswidth  : natural:=3;  -- Speicherlänge = 2^Adresswidth
           Wordwith  : natural:=4
           );
    Port ( 
           CLK   : in  STD_LOGIC;
           Addr0 : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Din   : in  STD_LOGIC_VECTOR (Wordwith-1 downto 0);
           Write : in  STD_LOGIC;
           Read  : in  STD_LOGIC;
           -----------------------------------------------------
           Dout  : out STD_LOGIC_VECTOR (Wordwith-1 downto 0);
           Empty : out STD_LOGIC;
           Full  : out STD_LOGIC;
           WRCNT : out integer range 0 to (2**Adresswidth)-1 :=0          
           );
    end component;
    
    
     
    signal CLK, Addr0, RESET, Write, READ : std_logic;  -- input
    signal Din :  std_logic_vector(3 downto 0); -- Eingabe
    signal Dout : std_logic_vector(3 downto 0); -- Ausgabebit: 1 wenn Folge erkannt
    signal Empty, Full : std_logic;
    signal WRCNT: integer range 0 to 7;
    constant T : time := 5 ps;
    
begin

        UUT: Memory  generic map (Adresswidth => 3, Wordwith=>4) --no semicolon here 
        port map (CLK=>CLK, Addr0=>Addr0, RESET=>RESET, Din=>Din, Write=>Write, Read=>Read, Dout=>Dout, Empty=>Empty, Full=>Full, WRCNT=>WRCNT);

    -- continuous clock
    process 
    begin
        CLK <= '0';
        wait for T;
        CLK <= '1';
        wait for T;
       
    end process;
    
    process
    begin
        RESET <= '1', '0' after 2*T;
        Read<='0';
        wait for 3*T;
        Din <= "0000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0001";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0010";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0011";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0100";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0101";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0110";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0111";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "1000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "1001";
        Write<='0';
        wait for 3*T;
        Write<='1';
        
        
        wait for 4*T;
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
          Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;       
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
          Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
          Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;       
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
          Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;       
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
          Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;       
         Read<='0';
        wait for 3*T;
         Read<='1';
        wait for 3*T;
        wait for 10*T;
        RESET <= '1', '0' after T/2;
        wait for 10*T;
                              
    end process;


    -- reset = 1 for first clock cycle and then 0
   
    Addr0 <='0';
    
    

end arch;