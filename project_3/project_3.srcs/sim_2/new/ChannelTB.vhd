library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity ChannelTB is
    Generic (   
    Wordwidth : natural   := 4;  -- Hertz 
    Adresswith : natural   := 3;  -- Hertz           
    NWave: natural :=4
             ); 
end ChannelTB;


architecture arch of ChannelTB is

    component  Channel
Generic (
           Adresswidth  : natural := 5;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := 16;
           Clock : natural :=50000000;
           SPI_Clock: natural :=10000000;
           NWave: natural :=4
          -- AdressWaves: natural :=2
           );
port(
    
    WaveAddr: in integer range 0 to NWave-1;
    CLK : in std_logic; -- Systemtakt
    RESET : in std_logic; -- asynchroner Reset (alles auf Null)
    Write:  in std_logic;
    EnWrite: in std_logic;
    contStim: in STD_LOGIC;     --later optinal with generate
    trig:    in STD_LOGIC;
  --  Dout : out std_logic_vector(Wordwidth-1 downto 0); -- Ausgabebit: 1 wenn Folge erkannt
   MOSI     : out STD_LOGIC;                           
   SCLK     : out STD_LOGIC;
   SS       : out STD_LOGIC;
   Din : in std_logic_vector(Wordwidth-1 downto 0) -- Eingabe
    );
    
end component;
    
    
     
    signal CLK :  std_logic; -- Systemtakt
    signal RESET :  std_logic; -- asynchroner Reset (alles auf Null)
    signal Write:   std_logic;
    signal EnWrite:  std_logic;
    signal Din :  std_logic_vector(Wordwidth-1 downto 0); -- Eingabe
    signal  MOSI     :  STD_LOGIC;                           
   signal SCLK     :  STD_LOGIC;
   signal SS       :  STD_LOGIC;
   signal WaveAddr:  integer range 0 to NWave-1;
   signal     contStim:  STD_LOGIC;     --later optinal with generate
   signal  trig:     STD_LOGIC;
    --signal Dout :  std_logic_vector(Wordwidth-1 downto 0); -- Ausgabebit: 1 wenn Folge erkannt
    
    constant T : time := 10 ns;
    
begin

        UUT: Channel  generic map (Adresswidth => Adresswith, Wordwidth=>Wordwidth) --no semicolon here 
        port map (WaveAddr=>WaveAddr, CLK=>CLK, RESET=>RESET, Write=>Write, EnWrite=>EnWrite, Din=>Din, MOSI=>MOSI, SCLK=>SCLK, SS=>SS, trig=>trig, contStim=>contStim);--Dout=>Dout);

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
   trig<='0';
   contStim<='1';
   WaveAddr<=0;
   Write<='0';
   RESET <= '1', '0' after 2*T;
   wait for 5*T;
   EnWrite<='1';
   
   --Memory 0 0-7
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
        
        WaveAddr<=3;
   --Memory 3 8-15
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
        wait for 3*T;
        Din <= "1010";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "1011";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "1100";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "1101";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "1110";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "1111";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "0000";
        Write<='0';
        wait for 3*T;        
        EnWrite<='0';
        
        wait for 301.5*T;
        WaveAddr<=0;
        wait for 20*T;
        WaveAddr<=3;
        contStim<='0';
        wait for 50*T;
        trig<='1';
        wait for 500*T;
        trig<='0';
        wait for 5*T;
        trig<='1';
        wait for 500*T;
   
   
   end process; 
    
--    process
--        begin
--        WaveAddr<=0;
--        wait for 501*T;
--        WaveAddr<=1;
--        wait for 501*T;
--        WaveAddr<=2;
--        wait for 501*T;
--        WaveAddr<=3;
--        wait for 501*T;
--    end process;
    
--    process
--    begin
--        EnWrite<='0';
--        Write<='0';
        
        
        
--        RESET <= '1', '0' after 2*T;
--        wait for 5.5*T;
--        EnWrite<='1';
--        wait for 5*T;
       
--        wait for 3*T;
--        Din <= "0000";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "0001";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "0010";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "0011";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "0100";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "0101";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "0110";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "0111";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "1000";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
--        wait for 3*T;
--        Din <= "1001";
--        Write<='0';
--        wait for 3*T;
--        Write<='1';
        
--        wait for 5*T;
--        EnWrite<='0';
--        wait for 5000*T;
                              
--    end process;


    -- reset = 1 for first clock cycle and then 0

    
    

end arch;