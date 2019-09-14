library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity ChannelTB is
    Generic (   
           Adresswidth  : natural := 3;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := 8;
           TransmitterWordwith: natural:=16;
           MultiplierWordwith: natural:=6;
           Clock : natural :=100000000;
           SPI_Clock: natural :=50000000;
           NWave: natural :=1;
           MaxDelay: natural :=4095;
           NeurtralDW: std_logic_vector(15 downto 0):= x"8000" 
             ); 
end ChannelTB;


architecture arch of ChannelTB is

component  Channel
Generic (
           Adresswidth  : natural := Adresswidth;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := Wordwidth;
           TransmitterWordwith: natural:=TransmitterWordwith;
           MultiplierWordwith: natural:=MultiplierWordwith;
           Clock : natural :=Clock;
           SPI_Clock: natural :=SPI_Clock;
           NWave: natural :=NWave;
           MaxDelay: natural :=MaxDelay;
           NeurtralDW: std_logic_vector(15 downto 0):= NeurtralDW 
           );
port(
    
    WaveAddr: in integer range 0 to 2*NWave-1;
    CLK : in std_logic; -- Systemtakt
    RESET : in std_logic; -- asynchroner Reset (alles auf Null)
    Write:  in std_logic;
    EnWrite: in std_logic;
    trig:    in STD_LOGIC;
   MOSI     : out STD_LOGIC;                           
   SCLK     : out STD_LOGIC;
   SS       : out STD_LOGIC;
   Din : in std_logic_vector(Wordwidth-1 downto 0); -- Eingabe
   InterInterval: in integer range 0 to MaxDelay-1;
   InterPeriods: in integer range 0 to MaxDelay-1;
   SamplingTime: in integer range 0 to MaxDelay-1;
   Amplitude: in std_logic_vector(MultiplierWordwith-1 downto 0)
    );
    
end component;
    
    
     
   signal CLK :  std_logic; -- Systemtakt
   signal RESET :  std_logic; -- asynchroner Reset (alles auf Null)
   signal Write:   std_logic;
   signal EnWrite:  std_logic;
   signal Din :  std_logic_vector(Wordwidth-1 downto 0); -- Eingabe
   signal MOSI     :  STD_LOGIC;                           
   signal SCLK     :  STD_LOGIC;
   signal SS       :  STD_LOGIC;
   signal WaveAddr:  integer range 0 to 2*NWave-1;
   signal trig:     STD_LOGIC;
   signal InterInterval: integer range 0 to MaxDelay-1;
   signal InterPeriods: integer range 0 to MaxDelay-1;
   signal SamplingTime: integer range 0 to MaxDelay-1;
   signal Amplitude:  std_logic_vector(MultiplierWordwith-1 downto 0);
    
    constant T : time := 10 ns;
    
begin

        UUT: Channel  generic map (Adresswidth => Adresswidth, Wordwidth=>Wordwidth) --no semicolon here 
        port map (WaveAddr=>WaveAddr, CLK=>CLK, RESET=>RESET, Write=>Write, EnWrite=>EnWrite, Din=>Din, MOSI=>MOSI, SCLK=>SCLK, SS=>SS, trig=>trig, InterInterval=>InterInterval, InterPeriods=>InterPeriods, SamplingTime=>SamplingTime, Amplitude=>Amplitude);--Dout=>Dout);

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
   InterInterval<=20;
   InterPeriods<=40;
   SamplingTime<=0;
   Amplitude<="001000";
   
   trig<='0';
   WaveAddr<=0;
   Write<='0';
   RESET <= '1', '0' after 2*T;
   wait for 5*T;
   EnWrite<='1';
   wait for 5*T;
   
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
        Din <= "00000100";
        Write<='0';
        wait for 3*T;
        Write<='1';
        wait for 3*T;
        Din <= "00001000";
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
        EnWrite<='1';
        wait for 5*T;
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
        
        
        
        WaveAddr<=0;
        wait for 10*T;
        wait for 1000*T;
           InterInterval<=20;
           InterPeriods<=40;
           SamplingTime<=1;

        wait for 16000*T;
        
        InterInterval<=200;
        InterPeriods<=100;
        SamplingTime<=4;
        Amplitude<="001000";
        wait for 16000*T;
        
        Amplitude<="111000";
        wait for 16000*T;
        InterInterval<=20;
        InterPeriods<=0;
        SamplingTime<=1;
        
    
        wait for 200*T;

        trig<='0';
        wait for 1000*T;
        trig<='1';
        wait for 10*T;
        trig<='0';
        wait for 1000*T;
        wait for 10*T;
        trig<='1';
        wait for 10*T;
        trig<='0';
        wait for 1000*T;
        WaveAddr<=1;
        wait for 10*T;
        trig<='1';
        wait for 10*T;
        trig<='0';
        wait for 1000*T;        
   
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