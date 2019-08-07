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


       
entity Stimulator is
Generic (
           Adresswidth  : natural := 7;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := 8;
           TransmitterWordwith: natural:=16;
           MultiplierWordwith: natural:=8;
           Clock : natural :=50000000;
           SPI_Clock: natural :=1000000;
           NWave: natural :=1;
           MaxDelay: natural :=4095;
           NeurtralDW: std_logic_vector(15 downto 0):= x"8000";   
           NChannels: natural:=2
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
    contStim: in STD_LOGIC;     --later optinal with generate
    trig:    in STD_LOGIC;
   MOSI     : out STD_LOGIC;                           
   SCLK     : out STD_LOGIC;
   SS       : out STD_LOGIC;
   Din : in std_logic_vector(Wordwidth-1 downto 0); -- Eingabe
   InterInterval: in integer range 0 to MaxDelay-1;
   InterPeriods: in integer range 0 to MaxDelay-1;
   WFDivider: in integer range 0 to MaxDelay-1;
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


---------------------------Signals-------------------------------------------

signal locRESET    : std_logic_vector(NChannels - 1 downto 0):= (others=> '0');
signal locWriteConf: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');
signal locWrite: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');
signal locEnWrite: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');

signal locTrig: std_logic_vector(NChannels - 1 downto 0):= (others=> '0');

signal ChanAddressReg: integer range 0 to NChannels-1; 

------------------------Arrays----------------------------------------------------
	type WaveAdressArray is array (NChannels - 1 downto 0) of integer range 0 to 2*NWave-1;
	signal WaveAdressA : WaveAdressArray; -- Eingabe
	
	type IntervalArray is array (NChannels - 1 downto 0) of integer range 0 to MaxDelay - 1;
	signal IIntervalA : IntervalArray; 
	signal IPeriodA : IntervalArray; 
	
	type AmplitudeArray is array (NChannels - 1 downto 0) of std_logic_vector(MultiplierWordwith-1 downto 0);
	signal AmplitudeA: AmplitudeArray;
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
        Din=>Din, MOSI=>MOSI(I), SCLK=>SCLK(I), SS=>SS(I), trig=>locTrig(I), contStim=>'0', InterInterval=>IIntervalA(I), WFDivider=>0, InterPeriods=>IPeriodA(I), Amplitude=>AmplitudeA(I));
	end generate ChannelArray;
	
	
AdressMux : process (CLK)
	begin
		if CLK = '1' and CLK'EVENT then
			ChanAddressReg <= ChanAddr after 5 ns;
		end if;
	end process AdressMux;
	
	DEMUX : process (ChanAddressReg,WriteConfig , Write, EnWrite, RESET, RESET_CH)
	begin
		 locWriteConf<=(others => '0') after 5 ns;
		 locWriteConf(ChanAddressReg)<=WriteConfig after 5ns;
		 
		 locWrite<=(others => '0') after 5 ns;
		 locWrite(ChanAddressReg)<=Write after 5ns;
		 
		 locEnWrite<=(others => '0') after 5 ns;
		 locEnWrite(ChanAddressReg)<=EnWrite after 5ns;
		 
		 locRESET<=(others => RESET) after 5 ns;
		 locRESET(ChanAddressReg)<= RESET_CH after 5ns;

	end process DEMUX;
	
	

end Behavioral;
