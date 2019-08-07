library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity ConfigRegTB is
    Generic (   
		MultiplierWordwith : natural := 5;
		MaxDelay : natural := 4095;
		NWave : natural := 2
             ); 
end ConfigRegTB;


architecture arch of ConfigRegTB is

component  ChannelConfigReg is
generic (
		MultiplierWordwith : natural := MultiplierWordwith;
		MaxDelay : natural := MaxDelay;
		NWave : natural := NWave
	);
	port (
		CLK               : in std_logic; -- Systemtakt
		RESET             : in std_logic; 
		WriteConf         : in std_logic; 
		IN_WaveAddr       : in integer range 0 to (2 * NWave) - 1;
		IN_RESET          : in std_logic; -- asynchroner Reset (alles auf Null)
		IN_InterInterval  : in integer range 0 to MaxDelay - 1;
		IN_InterPeriods   : in integer range 0 to MaxDelay - 1;
		IN_Amplitude      : in std_logic_vector(MultiplierWordwith - 1 downto 0);
		
	    OUT_WaveAddr       : out integer range 0 to (2 * NWave) - 1;
		OUT_RESET          : out std_logic; -- asynchroner Reset (alles auf Null)
		OUT_InterInterval  : out integer range 0 to MaxDelay - 1;
		OUT_InterPeriods   : out integer range 0 to MaxDelay - 1;
		OUT_Amplitude      : out std_logic_vector(MultiplierWordwith - 1 downto 0)
	);
	
    
end component;
    
    
     
signal		CLK               :  std_logic; -- Systemtakt
signal		RESET             :  std_logic:='0'; 
signal		WriteConf         :  std_logic:='0'; 
signal		IN_WaveAddr       :  integer range 0 to (2 * NWave) - 1;
signal		IN_RESET          :  std_logic:='0'; -- asynchroner Reset (alles auf Null)
signal		IN_InterInterval  :  integer range 0 to MaxDelay - 1;
signal		IN_InterPeriods   :  integer range 0 to MaxDelay - 1;
signal		IN_Amplitude      :  std_logic_vector(MultiplierWordwith - 1 downto 0);
		
signal	    OUT_WaveAddr       :  integer range 0 to (2 * NWave) - 1;
signal		OUT_RESET          :  std_logic; -- asynchroner Reset (alles auf Null)
signal		OUT_InterInterval  :  integer range 0 to MaxDelay - 1;
signal		OUT_InterPeriods   :  integer range 0 to MaxDelay - 1;
signal		OUT_Amplitude      :  std_logic_vector(MultiplierWordwith - 1 downto 0);
    
    constant T : time := 10 ns;
    
begin

        UUT: ChannelConfigReg  generic map (MultiplierWordwith => MultiplierWordwith, MaxDelay=>MaxDelay, NWave=>NWave)
        port map (CLK=>CLK, RESET=>RESET, WriteConf=>WriteConf, IN_WaveAddr=>IN_WaveAddr, IN_RESET=>IN_RESET, IN_InterInterval=>IN_InterInterval, IN_InterPeriods=>IN_InterPeriods, IN_Amplitude=>IN_Amplitude,
        OUT_WaveAddr=>OUT_WaveAddr, OUT_RESET=>OUT_RESET, OUT_InterInterval=>OUT_InterInterval, OUT_InterPeriods=>OUT_InterPeriods, OUT_Amplitude=>OUT_Amplitude);

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
   wait for 10.5*T;
   IN_RESET<='1';
   wait for 10*T;
   RESET<='1';
   wait for 5*T;
   RESET<='0';
   IN_RESET<='0';
   wait for 5*T;
   IN_WaveAddr<=1;
   IN_InterInterval<=2;
   IN_InterPeriods<=3;
   IN_Amplitude<=(others => '1');
   WriteConf<='1';
   wait for 1*T;
   IN_WaveAddr<=1;
   IN_InterInterval<=2;
   IN_InterPeriods<=18;
   IN_Amplitude<=(others => '1');
   WriteConf<='0';
   wait for 10*T;
   WriteConf<='1';
   wait for 20*T;
   
   
   
    
   end process; 
    


    
    

end arch;