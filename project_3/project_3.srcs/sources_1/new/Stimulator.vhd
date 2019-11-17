----------------------------------------------------------------------------------
-- Company: 
-- Engineer:  Felix SChmitt
-- 
-- Create Date: 08/05/2019 10:05:45 AM
-- Design Name: 
-- Module Name: Stimulator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE ieee.math_real.log2;
USE ieee.math_real.ceil;


       
entity Stimulator is
Generic (
           Adresswidth  : natural := 10;  -- Adresswidth of Memories in CHannels
           Wordwidth  : natural := 8;   -- Wordwidth og Memories
           TransmitterWordwith: natural:=16;    --Wordwidth of Interface in each channel
           MultiplierWordwith: natural:=4;      --Wordwidth of Gain for each channel
           Clock : natural :=100000000;         --Clock of platform
           SPI_Clock: natural :=25000000;        --Clock of SPI signal
           NWave: natural :=1;                   -- Number of complete waveforms in each channel. Each Waveform consists of two parts (WF1 + WF2)
           MaxDelay: natural :=255;            --Max*delay*1/Clock:= max delay between WF1 and 2, WF2 to WF1 and between transmitted words
           NeurtralDW: std_logic_vector(15 downto 0):= x"8000";     -- Neutral word of Interface: 0V
           NChannels: natural:=2                -- Number of channels of stimulator
           );

port(
    
   WaveAddr: in integer range 0 to (2*NWave)-1;  
   
   ChanAddr: in integer range 0 to NChannels-1;  
   ChanAddr2: in integer range 0 to NChannels-1; 
   ChanAddr3: in integer range 0 to NChannels-1;
    
   CLK : in std_logic; -- Systemtakt
   RESET : in std_logic; -- asynchroner Reset (alles auf Null)
   RESET_CH: in std_logic;
   Write:  in std_logic_vector(2 downto 0);
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
       
       
end Stimulator;

architecture Behavioral of Stimulator is

-------------------------Components-------------------------------------------
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

component ila_0 is
PORT (
clk : IN STD_LOGIC;
probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
probe1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;





---------------------------Signals-------------------------------------------

signal locRESET    : std_logic_vector(NChannels - 1 downto 0):= (others=> '0');
signal locWriteConf: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');
signal locWrite: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');
signal locEnWrite: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');

signal locTrig: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');

signal ChanAddressReg: integer range 0 to NChannels-1; 

--signal ClockDiv: std_logic;
--attribute MARK_DEBUG : string;
--attribute MARK_DEBUG of locWrite : signal is "TRUE";

------------------------Arrays----------------------------------------------------
	type WaveAdressArray is array (NChannels - 1 downto 0) of integer range 0 to 2*NWave-1;
	signal WaveAdressA : WaveAdressArray; -- Eingabe
	
	type IntervalArray is array (NChannels - 1 downto 0) of integer range 0 to MaxDelay - 1;
	signal IIntervalA : IntervalArray; 
	signal IPeriodA : IntervalArray; 
	
	type AmplitudeArray is array (NChannels - 1 downto 0) of std_logic_vector(MultiplierWordwith-1 downto 0);
	signal AmplitudeA: AmplitudeArray;
	
	signal DecodeWrite: std_logic;
begin


ChannelArray : for I in 0 to NChannels-1 generate

        locTrig(I)<=trig_CH(I) or trig_all;
       
        ChannelREG: ChannelConfigReg  generic map (MultiplierWordwith => MultiplierWordwith, MaxDelay=>MaxDelay, NWave=>NWave)
        port map (CLK=>CLK, RESET=>RESET, WriteConf=>locWriteConf(I), IN_WaveAddr=>WaveAddr, IN_RESET=>RESET_CH, 
        IN_InterInterval=>InterInterval, IN_InterPeriods=>InterPeriods, IN_Amplitude=>Amplitude,
        
        OUT_WaveAddr=>WaveAdressA(I), OUT_RESET=>open, 
        OUT_InterInterval=>IIntervalA(I), OUT_InterPeriods=>IPeriodA(I),OUT_Amplitude=>AmplitudeA(I));

		ChannelX : Channel
        port map (
        WaveAddr=>WaveAdressA(I), CLK=>CLK, RESET=>locRESET(I), Write=>locWrite(I), EnWrite=>locEnWrite(I), 
        Din=>Din, MOSI=>MOSI(I), SCLK=>SCLK(I), SS=>SS(I), trig=>locTrig(I), InterInterval=>IIntervalA(I), SamplingTime=>0, InterPeriods=>IPeriodA(I), Amplitude=>AmplitudeA(I));
	end generate ChannelArray;

	
AdressMux : process (CLK)
	begin
		if CLK = '1' and CLK'EVENT then
		      if    ChanAddr=ChanAddr2 or ChanAddr=ChanAddr3 then
			        ChanAddressReg <= ChanAddr after 5 ns;
			  elsif ChanAddr2=ChanAddr3 then
			        ChanAddressReg <= ChanAddr2 after 5 ns;
			  else
			        ChanAddressReg <=ChanAddressReg after 5 ns;
			  end if;
			        
		end if;
	end process AdressMux;
	
	DEMUX : process (ChanAddressReg,WriteConfig , DecodeWrite, EnWrite, RESET, RESET_CH)
	begin
		 locWriteConf<=(others => '0') after 5 ns;
		 locWriteConf(ChanAddressReg)<=WriteConfig after 5ns;
		 
		 locWrite<=(others => '0') after 5 ns;
		 locWrite(ChanAddressReg)<=DecodeWrite after 5ns;
		 
		 locEnWrite<=(others => '0') after 5 ns;
		 locEnWrite(ChanAddressReg)<=EnWrite after 5ns;
		 
		 locRESET<=(others => RESET) after 5 ns;
		 locRESET(ChanAddressReg)<= RESET_CH after 5ns;

	end process DEMUX;
	
	
	DecWrite: process(Write)
	begin
	   DecodeWrite<=(Write(0)and Write(1)) or (Write(1)and Write(2)) or (Write(2)and Write(0));
	end process DecWrite;
	
	

end Behavioral;
