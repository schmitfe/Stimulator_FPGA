----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Felix Schmitt
-- 
-- Create Date: 01/05/2019 01:34:38 PM
-- Design Name: 
-- Module Name: Channel - Behavioral
-- Project Name: Stimulator
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- SPI-Interace is IP of http://www.lothar-miller.de/s9y/categories/45-SPI-Master am 04.05.2019 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity Channel is
	generic (
		Adresswidth : natural := 7; -- Speicherlänge = 2^Adresswidth
		Wordwidth : natural := 10;
		TransmitterWordwith : natural := 16;
		MultiplierWordwith : natural := 5;
		Clock : natural := 50000000;
		SPI_Clock : natural := 1000000;
		NWave : natural := 2;
		MaxDelay : natural := 4095;
		NeurtralDW : std_logic_vector(15 downto 0) := x"8000"
	);
	port (
		WaveAddr       : in integer range 0 to (2 * NWave) - 1;
		CLK            : in std_logic; -- Systemtakt
		RESET          : in std_logic; -- asynchroner Reset (alles auf Null)
		Write          : in std_logic;
		EnWrite        : in std_logic;
		contStim       : in STD_LOGIC;
		trig           : in STD_LOGIC;
		MOSI           : out STD_LOGIC;
		SCLK           : out STD_LOGIC;
		SS             : out STD_LOGIC;
		Din            : in std_logic_vector(Wordwidth - 1 downto 0); -- Eingabe
		InterInterval  : in integer range 0 to MaxDelay - 1;
		InterPeriods   : in integer range 0 to MaxDelay - 1;
		WFDivider      : in integer range 0 to MaxDelay - 1;
		Amplitude      : in std_logic_vector(MultiplierWordwith - 1 downto 0)
	);
end Channel;
architecture Behavioral of Channel is
	component Memory
		generic (
			Adresswidth    : natural :=Adresswidth;
			Wordwidth      : natural :=Wordwidth
		);
		port (
			CLK                 : in STD_LOGIC;
			Addr0               : in STD_LOGIC;
			RESET               : in STD_LOGIC;
			Din                 : in STD_LOGIC_VECTOR (Wordwidth - 1 downto 0);
			Write               : in STD_LOGIC;
			Read                : in STD_LOGIC;
			-----------------------------------------------------
			Dout                : out STD_LOGIC_VECTOR (Wordwidth - 1 downto 0);
			Empty               : out STD_LOGIC;
			Full                : out STD_LOGIC;
			WRCNT               : out integer range 0 to (2 ** Adresswidth) - 1 :=0;
			Nullflag            : out STD_LOGIC
		);
	end component;
	component SPI_Master -- SPI-Modus 0: CPOL=0, CPHA=0
		generic (
			Quarz_Taktfrequenz  : integer :=Clock;
			SPI_Taktfrequenz    : integer := SPI_Clock;
			Laenge              : integer :=TransmitterWordwith
		);
		port (
			TX_Data   : in STD_LOGIC_VECTOR (Laenge - 1 downto 0); -- Sendedaten
			MOSI      : out STD_LOGIC;
			SCLK      : out STD_LOGIC;
			SS        : out STD_LOGIC;
			TX_Start  : in STD_LOGIC;
			TX_Done   : out STD_LOGIC;
			clk       : in STD_LOGIC
		);
	end component;
	
	type States is (WriteInit, WriteTrans, WriteEnable,TWAIT_WF1, TStartTX_WF1, TCountR_WF1, TRead_WF1, CounterR_II, InterInt, 
	CounterR_II2, TStartTX_WF2, TRead_WF2, TCountR_WF2); -- Aufzählungstyp

	signal State, FolState : States:=WriteInit;
	signal counter : integer range 0 to 2*MaxDelay := 0;
	signal counterReset : std_logic := '0';
	signal RST : std_logic;		--Reset of Memory
	signal StartTx : std_logic;
	signal TX_Done : std_logic;
	signal Dout : std_logic_vector(TransmitterWordwith - 1 downto 0); -- Ausgabebit: 1 wenn Folge erkannt
	signal trigLoc : std_logic;
	signal EnableOutput : std_logic := '0';
	signal DinMem : std_logic_vector(Wordwidth - 1 downto 0);
	signal Read : std_logic;	--Read Memory
	signal WriteMem : std_logic;
	signal Addr0 : std_logic;	 --Reset Memory to first element
	signal Nullflag : std_logic; --signals if Memory has reached first element
	signal WaveAddrZ1 : integer range 0 to NWave - 1;
	signal WaveID : integer range 0 to 2 * NWave - 1 := 0;
	signal WaveIDZ : integer range 0 to 2 * NWave - 1 := 0;
	signal StimulusID : std_logic := '0';

	signal A : signed(TransmitterWordwith downto 0) := (others => '0');
	signal B : signed(TransmitterWordwith downto 0) := (others => '0');
	signal C : signed(2 * TransmitterWordwith + 1 downto 0) := (others => '0');
	
	
	------------------to remove and replace----------------------------
	signal SamplingTime      : integer range 0 to MaxDelay - 1;
	
	--------------------Declaration of Arrays for MemoryMux------------------------
	type WordArray is array (2 * NWave - 1 downto 0) of std_logic_vector(Wordwidth - 1 downto 0);
	type BitArray is array (2 * NWave - 1 downto 0) of std_logic;
	type IntegerArray is array (2 * NWave - 1 downto 0) of integer range 0 to (2 ** Adresswidth) - 1;

	---Arays to connect to Memories-------
	signal DoutMemA : WordArray; -- 
	signal ReadA : BitArray;
	signal WriteMemA : BitArray;
	signal NullflagA : BitArray;
	
begin

	SamplingTime<=WFDivider;
	
	MemArray : for I in 0 to 2 * NWave - 1 generate
		MemoryX : Memory
		port map(CLK => CLK, Addr0 => Addr0, RESET => RST, Din => DinMem, Write => WriteMemA(I), Read => ReadA(I), Dout => DoutMemA(I), Empty => open, Full => open, WRCNT =>  open, Nullflag => NullflagA(I)); --Read=>
	end generate MemArray;
	
	Interface : SPI_Master
	port map(TX_Data => Dout, MOSI => MOSI, SCLK => SCLK, SS => SS, TX_Start => StartTx, TX_Done => TX_Done, clk => CLK);
	
	--------WF-selector to cut last bit of ID and hand control to FSM during Transmit---------------------
	WFSelect : process (CLK)
	begin
		if CLK = '1' and CLK'EVENT then
			WaveID <= WaveIDZ;
			if EnWrite = '1' then
				WaveIDZ <= WaveAddr;
			else
				if StimulusID = '0' then
					WaveIDZ <= (WaveAddr/2) * 2;
				elsif StimulusID = '1' then
					WaveIDZ <= (WaveAddr/2) * 2 + 1;
				end if;
			end if;
			
			--- Reset Readcounter if WaveAddr is changed---------------
			if state = TWAIT_WF1 or state= InterInt then
				Addr0 <= '1' after 5 ns;
			else
				if (WaveID /= WaveIDZ) then
					Addr0 <= '1' after 5 ns;
				else
					Addr0 <= '0' after 5 ns;
				end if;
			end if;	
			
		end if;
	end process WFSelect;
	
	-----------Memory Mux to connect Memories with Interface-------
	MemoryMUX : process (WaveID, DoutMemA, Read, WriteMem, NullflagA, EnableOutput, Amplitude)
	begin
		WriteMemA <= (others => '0') after 5 ns;
		WriteMemA(WaveID) <= WriteMem after 5 ns;
		ReadA <= (others => '0');
		ReadA(WaveID) <= Read;
		Nullflag <= NullflagA(WaveID) after 5 ns;
	end process MemoryMUX;
	
	----------Output-Mux with Offset and Enable--------
	OutputMUX : process(CLK)
	begin
		if CLK = '1' and CLK'EVENT then
			if EnableOutput = '1' then
				A <= RESIZE(signed('0' & DoutMemA(WaveID)), TransmitterWordwith + 1) after 5ns;
				B <= RESIZE(signed('0' & Amplitude), TransmitterWordwith + 1) after 5ns;
				C <= (A - (2 ** (Wordwidth - 1) - 1)) * B + RESIZE(signed('0' & NeurtralDW), 2 * TransmitterWordwith) after 5 ns;
				Dout <= std_logic_vector(C(TransmitterWordwith - 1 downto 0)) after 5 ns;
			else
				Dout <= NeurtralDW after 5 ns;
			end if;
		end if;
	end process OutputMUX;
	

	-----------Trigger-Edge-Detector-------
	Trigger : process (CLK)
	begin
		if CLK = '1' and CLK'EVENT then
			trigLoc <= trig after 5 ns;
		end if;
	end process Trigger;
	--------------------FSM-------------------
	-- More automat as 3-process modell with Counter to reduce states
	-- See Documentation for State Diagram
	CounterP : process (CLK) 
	begin
		if CLK = '1' and CLK'EVENT then
			if counterReset = '1' then
				counter <= 0 after 5 ns;
			else
					counter <= counter + 1 after 5 ns;
			end if;
		end if;
	end process CounterP;
	
	
	StateTransition : process (CLK)
	begin
		if CLK = '1' and CLK'EVENT then
			if RESET = '1' then
				State <= WriteInit after 5 ns;
			else
				State <= FolState after 5 ns;
			end if;
		end if;
	end process StateTransition;
	
	
	StateCalculation : process (State, EnWrite, counter, TX_Done, trigLoc, trig, Nullflag, InterInterval, InterPeriods, SamplingTime)
	begin
		FolState <= WriteInit;
		case State is
-------------------WriteMemory------------------------------------		
			when WriteInit => if EnWrite = '1' then
				FolState <= WriteTrans after 5 ns;
				else FolState <= WriteInit after 5 ns;
			end if;
			when WriteTrans => FolState <= WriteEnable after 5 ns;
			when WriteEnable => FolState <= WriteEnable after 5 ns;
				if EnWrite = '0' then
					FolState <= TWAIT_WF1 after 5 ns;
				end if;
-------------------Transmit---------------------------------------								
			when TWAIT_WF1 => FolState <= TWAIT_WF1 after 5 ns;
				if trig = '1' and trigLoc = '0' then
					FolState <= TStartTX_WF1 after 5 ns;
				end if;
				if EnWrite = '1' then
					FolState <= WriteInit after 5 ns;
				end if;
			when TStartTX_WF1 => FolState <= TStartTX_WF1 after 5 ns;
				if Counter >= 2 then
					FolState <= TRead_WF1 after 5ns;
				end if;
			when TRead_WF1 => FolState <= TRead_WF1 after 5ns;
				if TX_Done = '1' and  Nullflag='0' and counter>=SamplingTime then
					FolState <= TCountR_WF1 after 5 ns;
				end if;
				if TX_Done = '1' and  Nullflag='1' and counter>=SamplingTime then
					FolState <= CounterR_II after 5 ns;
				end if;
			when TCountR_WF1 => FolState <= TStartTX_WF1 after 5ns;
			when CounterR_II => FolState <= InterInt after 5 ns;
			when InterInt => FolState <= InterInt after 5 ns;
				if Counter >= InterInterval then
					FolState <= CounterR_II2 after 5ns;
				end if;
				if EnWrite = '1' then
					FolState <= WriteInit after 5 ns;
				end if;
			when CounterR_II2 => FolState <= TStartTX_WF2 after 5 ns;	
				
			when TStartTX_WF2 => FolState <= TStartTX_WF2 after 5 ns;
				if Counter >= 2 then
					FolState <= TRead_WF2 after 5ns;
				end if;
			when TRead_WF2 => FolState <= TRead_WF2 after 5ns;
				if TX_Done = '1' and  Nullflag='0' and counter>=SamplingTime then
					FolState <= TCountR_WF2 after 5 ns;
				end if;
				if TX_Done = '1' and  Nullflag='1' and counter>=SamplingTime+InterPeriods then
					FolState <= TWAIT_WF1 after 5 ns;
				end if;
			when TCountR_WF2 => FolState <= TStartTX_WF2 after 5ns;	
		end case;
	end process StateCalculation;
	
	
	Output : process (State, Write, Din)
	begin
		Read <= '0' after 5 ns;
		RST <= '0' after 5 ns;
		counterReset <= '1' after 5 ns;
		WriteMem <= '0' after 5 ns;
		DinMem <= (others => '0') after 5 ns;
		StartTx <= '0' after 5 ns;
		EnableOutput <= '1' after 5 ns;
		StimulusID <= '0' after 5 ns;
		
		case State is
			when WriteInit =>
				RST <= '1' after 5 ns;
				EnableOutput <= '0' after 5 ns;	
			when WriteTrans =>
				counterReset <= '0' after 5 ns;
				EnableOutput <= '0' after 5 ns;
				StartTx <= '1' after 5 ns;
			when WriteEnable =>
				WriteMem <= Write after 5 ns;
				DinMem <= Din after 5 ns;
				EnableOutput <= '0' after 5 ns;
				StartTx <= '1' after 5 ns;
-----------------------Transmit---------WF1---------------------------				
			when TWAIT_WF1 => Read <= '1' after 5 ns;
				EnableOutput <= '0' after 5 ns;
			when TStartTX_WF1 => Read <= '0' after 5 ns;
				StartTx <= '1' after 5 ns;
				counterReset <= '0' after 5 ns;
			when TRead_WF1 => Read <= '1' after 5 ns;
				StartTx <= '1' after 5 ns;
				counterReset <= '0' after 5 ns;
			when TCountR_WF1 => Null;
			when CounterR_II => Null;			
-----------------------Transmit---------WF2---------------------------			
			when InterInt => StimulusID <= '1' after 5 ns;
				counterReset <= '0' after 5 ns;
				EnableOutput <= '0' after 5 ns;			 
			when CounterR_II2 => StimulusID <= '1' after 5 ns;
				 Read <= '1' after 5 ns;
				 EnableOutput <= '0' after 5 ns;
			when TStartTX_WF2 => StimulusID <= '1' after 5 ns;
				StartTx <= '1' after 5 ns;
				Read <= '0' after 5 ns;
				counterReset <= '0' after 5 ns;
			when TRead_WF2 => StimulusID <= '1' after 5 ns;
				Read <= '1' after 5 ns;
				StartTx <= '1' after 5 ns;
				counterReset <= '0' after 5 ns;
			when TCountR_WF2 => StimulusID <= '1' after 5 ns;				
		end case;
	end process Output;
end Behavioral;
