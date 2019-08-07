library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity StimulatorTB is
    Generic (   
           Adresswidth  : natural := 7;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := 8;
           TransmitterWordwith: natural:=16;
           MultiplierWordwith: natural:=6;
           Clock : natural :=100000000;
           SPI_Clock: natural :=50000000;
           NWave: natural :=1;
           MaxDelay: natural :=4095;
           NeurtralDW: std_logic_vector(15 downto 0):= x"8000";   
           NChannels: natural:=2
             ); 
end StimulatorTB;


architecture arch of StimulatorTB is

component  Stimulator is
Generic (
           Adresswidth  : natural := Adresswidth;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := Wordwidth;
           TransmitterWordwith: natural:=TransmitterWordwith;
           MultiplierWordwith: natural:=MultiplierWordwith;
           Clock : natural :=Clock;
           SPI_Clock: natural :=SPI_Clock;
           NWave: natural :=NWave;
           MaxDelay: natural :=MaxDelay;
           NeurtralDW: std_logic_vector(15 downto 0):= NeurtralDW;   
           NChannels: natural:=NChannels
           );

port(
    
   WaveAddr: in integer range 0 to (2*NWave)-1;  
   ChanAddr: in integer range 0 to NChannels-1;  
   CLK : in std_logic; -- Systemtakt
   RESET : in std_logic; -- asynchroner Reset (alles auf Null)
   RESET_CH: in std_logic;
   Write:  in std_logic;
   EnWrite: in std_logic;
   
   WriteConfig: in std_logic;

   trig_all:    in STD_LOGIC;
   trig_CH: in std_logic_vector(NChannels-1 downto 0);
   
   Din : in std_logic_vector(Wordwidth-1 downto 0); -- Eingabe
   
   MOSI     : out std_logic_vector(NChannels-1 downto 0);                           
   SCLK     : out std_logic_vector(NChannels-1 downto 0);
   SS       : out std_logic_vector(NChannels-1 downto 0);
   
   
   InterInterval: in integer range 0 to MaxDelay-1;
   InterPeriods: in integer range 0 to MaxDelay-1;
   Amplitude: in std_logic_vector(MultiplierWordwith-1 downto 0)
    
       );
    
end component;
    
    
     
signal   WaveAddr:  integer range 0 to (2*NWave)-1:=0;  
signal   ChanAddr:  integer range 0 to NChannels-1:=0;  
signal   CLK :  std_logic:='0'; -- Systemtakt
signal   RESET :  std_logic:='0'; -- asynchroner Reset (alles auf Null)
signal   RESET_CH:  std_logic:='0';
signal   Write:   std_logic:='0';
signal   EnWrite:  std_logic:='0';
   
signal   WriteConfig: std_logic:='0';

signal   trig_all:     STD_LOGIC:='0';
signal   trig_CH:  std_logic_vector(NChannels-1 downto 0):=(others=>'0');
   
signal   Din :  std_logic_vector(Wordwidth-1 downto 0):=(others=>'0'); -- Eingabe
   
signal   MOSI     :  std_logic_vector(NChannels-1 downto 0);                           
signal   SCLK     :  std_logic_vector(NChannels-1 downto 0);
signal   SS       :  std_logic_vector(NChannels-1 downto 0);
   
   
signal   InterInterval:  integer range 0 to MaxDelay-1:=0;
signal   InterPeriods:  integer range 0 to MaxDelay-1:=0;
signal   Amplitude:  std_logic_vector(MultiplierWordwith-1 downto 0):=(others=>'0');
   
constant T : time := 10 ns;
    
begin

        UUT: Stimulator
        port map (WaveAddr=>WaveAddr, ChanAddr=>ChanAddr, CLK=>CLK, RESET=>RESET, RESET_CH=>RESET_CH, Write=>Write, EnWrite=>EnWrite, WriteConfig=>WriteConfig,  trig_all=>trig_all, trig_CH=>trig_CH, Din=>Din, MOSI=>MOSI, SCLK=>SCLK, SS=>SS, InterInterval=>InterInterval, InterPeriods=>InterPeriods, Amplitude=>Amplitude);

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
   ChanAddr<=0;
   InterInterval<=20;
   InterPeriods<=40;
   Amplitude<="101000";
   

   WaveAddr<=0;
   Write<='0';
   RESET <= '1', '0' after 2*T;
   wait for 5*T;
   EnWrite<='1';
   wait for 5*T;
   WriteConfig<='1';
     wait for 10*T;
   
   --Memory 0 0-7
        wait for 3*T;
        Din <= "10000000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "10000010";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "10000100";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "10001000";
        wait for 3*T;
        WriteConfig<='0';
        Write<='0';
   
   
   
        RESET_CH <= '1', '0' after 10*T;
        wait for 5*T;
        EnWrite<='1';
        wait for 5*T;
        WriteConfig<='1';
        wait for 10*T;
     
     
   
        wait for 3*T;
        Din <= "00000000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00000010";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00000100";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00001000";
        wait for 3*T;
        WriteConfig<='0';
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00010000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00100000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "01000000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "11111101";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00000001";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;      
        Write<='0';
        wait for 3*T;
        WaveAddr<=1;
        wait for T;
        WriteConfig<='1';
        wait for T;

   --Memory 3 8-15

        Din <= "11111110";  
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "11111000";   
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "11011001";    
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "10111010";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <="10011011"; 
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "01111100";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <=  "01011101";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <=  "00001110";
        Write<='0';
        wait for 3*T;  
        Write<='1';
        wait for 3*T;      
        EnWrite<='0';
        wait for 5*T;
        wait for 3*T;
        WriteConfig<='0';
        
        trig_all<='1';
        
   ChanAddr<=1;
   InterInterval<=1;
   InterPeriods<=4;
   Amplitude<="111000";
   

   WaveAddr<=0;
   Write<='0';
   wait for 5*T;
   EnWrite<='1';
   wait for 5*T;
   WriteConfig<='1';
   wait for 10*T;
   
   --Memory 0 0-7
        wait for 3*T;
        Din <= "00000000";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00000010";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "01000000";
        WriteConfig<='0';
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "11111101";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00000001";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;      
        Write<='0';
        wait for 3*T;
        
        WaveAddr<=1;
        wait for T;
        WriteConfig<='1';
        wait for T;
        EnWrite<='1';
        wait for 5*T;
   --Memory 3 8-15

        Din <= "01111100";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <=  "01011101";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <=  "00001110";
        Write<='0';
        wait for 3*T;  
        Write<='1';
        wait for 3*T;      
        EnWrite<='0';
        wait for 5*T;
        wait for 3*T;
        WriteConfig<='0';
        
        
        
        
        
        ---------------------------------------
        
        
        WaveAddr<=0;
        wait for 3*T;
        WriteConfig<='1';
        wait for 10*T;
        trig_all<='1';
        wait for 100*T;
        trig_all<='0';
        wait for 900*T;
        trig_all<='1';
        wait for 100*T;
        trig_all<='0';
        wait for 900*T;
        

        wait for 3*T;
        WriteConfig<='1';
        wait for 3*T;
        WriteConfig<='0';

        wait for 16000*T;
        


        Amplitude<="001000";
         wait for 3*T;
        WriteConfig<='1';
        wait for 3*T;
        WriteConfig<='0';
        wait for 16000*T;
        
        Amplitude<="111000";
        wait for 16000*T;
        InterInterval<=0;
        InterPeriods<=0;
        wait for 3*T;
        WriteConfig<='1';
        wait for 3*T;
        WriteConfig<='0';
        
        wait for 200*T;

        trig_all<='0';
        wait for 1000*T;
        trig_all<='1';
        wait for 10*T;
        trig_all<='0';
        wait for 1000*T;
        wait for 10*T;
        trig_all<='1';
        wait for 10*T;
        trig_all<='0';
        wait for 1000*T;
        WaveAddr<=1;
        wait for 10*T;
        trig_CH(0)<='1';
        wait for 25*T;
        trig_CH(0)<='0';
        wait for 150*T;     
        trig_CH(1)<='1';
        wait for 25*T;
        trig_CH(1)<='0';
        wait for 1500*T;    
   
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