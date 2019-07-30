-- OneChannel
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;




Entity Channel is
Generic (
           Adresswidth  : natural := 7;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := 16;
           Clock : natural :=50000000;
           SPI_Clock: natural :=1000000;
           NWave: natural :=2;
           MaxDelay: natural :=4095
           );
port(
    
   WaveAddr: in integer range 0 to NWave-1;
    
   CLK : in std_logic; -- Systemtakt
   RESET : in std_logic; -- asynchroner Reset (alles auf Null)
   Write:  in std_logic;
   EnWrite: in std_logic;
    
   contStim: in STD_LOGIC;
   trig:    in STD_LOGIC;
   MOSI     : out STD_LOGIC;                           
   SCLK     : out STD_LOGIC;
   SS       : out STD_LOGIC;
   Din : in std_logic_vector(Wordwidth-1 downto 0); -- Eingabe
   
   InterInterval: in integer range 0 to MaxDelay;
   InterPeriods: in integer range 0 to MaxDelay
   
    
       );
    
end Channel;


architecture Behavioral of Channel is

    component  Memory
    Generic (
           Adresswidth  : natural:=Adresswidth;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural:=Wordwidth
           );
    Port ( 
           CLK   : in  STD_LOGIC;
           Addr0 : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Din   : in  STD_LOGIC_VECTOR (Wordwidth-1 downto 0);
           Write : in  STD_LOGIC;
           Read  : in  STD_LOGIC;

     
           -----------------------------------------------------
           Dout  : out STD_LOGIC_VECTOR (Wordwidth-1 downto 0);
           Empty : out STD_LOGIC;
           Full  : out STD_LOGIC;
           WRCNT : out integer range 0 to (2**Adresswidth)-1 :=0; 
           Nullflag: out STD_LOGIC          
           );
    end component;
    
    
    component SPI_Master  -- SPI-Modus 0: CPOL=0, CPHA=0
    Generic ( Quarz_Taktfrequenz : integer   := 100000000;  -- Hertz 
              SPI_Taktfrequenz   : integer   :=  50000000;  -- Hertz / zur Berechnung des Reload-Werts für Taktteiler
              Laenge             : integer   :=   Wordwidth        -- Anzahl der zu übertragenden Bits
             ); 
    Port ( TX_Data  : in  STD_LOGIC_VECTOR (Laenge-1 downto 0); -- Sendedaten
           MOSI     : out STD_LOGIC;                           
           SCLK     : out STD_LOGIC;
           SS       : out STD_LOGIC;
           TX_Start : in  STD_LOGIC;
           TX_Done  : out STD_LOGIC;
           clk      : in  STD_LOGIC
         );
end component;
    
    


type States is (Init, W1, W1T, W2, TWAIT, T1, T1T, T2, T2T, T3, T4, T5, T5T, T_WF_Change); -- Aufzählungstyp 
-- Init: Initialization
--
---------Wirte to meory:---------
--Resets the memory and then passes signals from Din to memory
----------------------------------
-- W1: Resets counter and memory
-- W1T: Holds resest of memory
-- W2: Write Data to Memory, passes signals from input to memory


---------Output waveform:---------
-- TWAIT: synchronizing state, waits for trigger if cont. run is not set; reads naext datword form memory
-- T1: start transmission of last fetched word, if coming from TWAIT, otherwise start fetching word
-- T1T:
-- T2:
-- T2T:
-- T3: start transmission of last fetched word
-- T4:
-- T5: prepare memory to read next word
-- T5T: 
signal State, FolState: States;


signal counter: integer range 0 to 31 :=0;
signal counterReset :std_logic :='0';


signal    RST:     std_logic;


signal    StartTx:  std_logic;
signal    TX_Done: std_logic;
signal    Dout :  std_logic_vector(Wordwidth-1 downto 0); -- Ausgabebit: 1 wenn Folge erkannt


signal trigLoc: std_logic;

--------------------Declaration of Arrays for MemoryMux------------------------
type WordArray is array (2*NWave-1 downto 0) of std_logic_vector(Wordwidth-1 downto 0);
type BitArray is array (2*NWave-1 downto 0) of std_logic;
type IntegerArray is array (2*NWave-1 downto 0) of integer range 0 to (2**Adresswidth)-1;




signal    DoutMemA :  WordArray; -- Eingabe
signal    ReadA:   BitArray;
signal    WriteMemA:  BitArray;
signal    WRCNTA :  IntegerArray;
signal  NullflagA: BitArray;


signal DinMem: std_logic_vector(Wordwidth-1 downto 0);
signal Read:    std_logic;
signal WriteMem:    std_logic;
signal Addr0:   std_logic;
signal WRCNT:   integer range 0 to (2**Adresswidth)-1;
signal Nullflag: std_logic;

signal  WaveAddrZ1:  integer range 0 to NWave-1;
signal WaveID: integer range 0 to 2*NWave-1:=0;
signal WaveIDZ: integer range 0 to 2*NWave-1:=0;
signal StimulusID:  std_logic:='0';

signal WaveRST: std_logic:='0';
signal WaveDFF_D: std_logic:='0';

signal DelayCounter: integer range 0 to MaxDelay :=0;
signal DelayCounterReset :std_logic :='0';

begin

MemArray: for I in 0 to 2*NWave-1 generate
      MemoryX : Memory  generic map (Adresswidth => Adresswidth, Wordwidth=>Wordwidth) --no semicolon here 
     port map (CLK=>CLK, Addr0=>Addr0, RESET=>RST, Din=>DinMem, Write=>WriteMemA(I), Read=>ReadA(I), Dout=>DoutMemA(I), Empty=>open, Full=>open, WRCNT=>WRCNTA(I), Nullflag=>NullflagA(I));
end generate MemArray;
        
Interface: SPI_Master generic map(Quarz_Taktfrequenz=>Clock, SPI_Taktfrequenz=>SPI_Clock, Laenge=>Wordwidth)
    port map (TX_Data=>Dout, MOSI=>MOSI, SCLK=>SCLK, SS=>SS, TX_Start=>StartTx, TX_Done=>TX_Done, clk=>CLK); 
    
AdressMux: process (CLK)
begin
    if CLK='1' and CLK'event then
       WaveID<=WaveIDZ;
        if EnWrite='1' then
            WaveIDZ<=WaveAddr;
        else
            
            if StimulusID='0' then
                WaveIDZ<=(WaveAddr/2)*2;
            elsif StimulusID='1' then
                WaveIDZ<=(WaveAddr/2)*2+1;
            end if;
      end if;
    end if;
     
end process AdressMux;    

      

MemoryMUX: process (WaveID, DoutMemA, Read, WriteMem, WRCNTA, NullflagA)
begin
    WriteMemA<= (others=>'0');
    WriteMemA<= (others=>'0');
    
    Dout<=DoutMemA(WaveID);
    WriteMemA(WaveID)<=WriteMem;
    ReadA(WaveID)<=Read;
    WRCNT<=WRCNTA(WaveID);
    Nullflag<=NullflagA(WaveID);
end process MemoryMUX;

MemoryStartAdress: process (CLK)
begin
    if CLK = '1' and CLK'event then
        if state=TWAIT then
           Addr0<='1';
        else
            if (WaveID/=WaveAddrZ1) then
                Addr0<='1';
            else
                Addr0<='0';
            end if;
         end if;
        WaveAddrZ1<=WaveID;

    end if;
end process MemoryStartAdress;


Trigger:  process (CLK)
begin
    if CLK = '1' and CLK'event then
        trigLoc<=trig after 5ns;
    end if;
end process Trigger;

--------------------FSM-------------------
-- More automat as 3-process modell with Counter to reduce states

TransistionCounter: process (CLK)       --counter for delay in state transition
begin
    if CLK = '1' and CLK'event then
        if counterReset='1' then
            counter<=0 after 5 ns;
        else
            if counter<31 then
                counter<=counter+1 after 5 ns;
            end if;
        end if;
       end if;
end process TransistionCounter;


CountDelay: process (CLK)       --counter for interinterval delay and interperiod delay
begin
    if CLK = '1' and CLK'event then
        if DelayCounterReset='1' then
            DelayCounter<=0 after 5 ns;
        else
            if DelayCounter<MaxDelay then
                DelayCounter<=DelayCounter+1 after 5 ns;
            end if;
        end if;
       end if;
end process CountDelay;

WaveDFF: process (CLK)
begin
    if CLK='1' and CLK'event then
        if WaveRST='1' then
            StimulusID<='0';
        
        elsif WaveDFF_D='0' then
            StimulusID<=(StimulusID);
         else
            StimulusID<=not(StimulusID);
        end if;
    end if;
end process WaveDFF;




StateTransition: process (CLK)
begin
    if CLK = '1' and CLK'event then
        if RESET='1' then
            State<=Init after 5 ns;
         else
            State<=FolState after 5 ns;
        end if;
    end if;
end process StateTransition;



StateCalculation: process (State, EnWrite, counter, TX_Done,contStim, trigLoc, trig, Nullflag,StimulusID)
begin
    FolState<=Init;
    case State is
        when Init => if EnWrite='1' then FolState <= W1 after 5 ns;
            else FolState <= Init after 5 ns;
            end if;
        
        when W1 => FolState <= W1T;
        
        when W1T => FolState <= W1T after 5 ns;
            if counter>2 then FolState <= W2 after 5 ns;
            end if;
        
        when W2 => FolState <= W2 after 5 ns;
            if EnWrite='0' then FolState <= TWAIT after 5 ns;
            end if;
            
        when TWAIT =>  FolState<=TWAIT after 5 ns;
        if trig='1' and trigLoc='0' then FolState<=T1 after 5 ns;
        end if;
        if contStim='1' then FolState <= T1 after 5 ns;
        end if;
        if StimulusID='1' then FolState <= T1 after 5 ns;
        end if;
        
            
        when T1 =>  FolState <= T1T after 5 ns;
            
        when T1T => FolState <= T2 after 5 ns;
        
        when T2 =>  FolState<=T2 after 5ns;
            if TX_Done='1' then FolState<=T2T;
            end if;
            
            
        when T2T => FolState <= T2T after 5 ns;
            if counter>1 then FolState <= T3 after 5 ns;
            elsif EnWrite='1' then FolState<=W1 after 5 ns;
            end if;
            
        when T3 =>  FolState <= T4 after 5 ns;
        
        when T4 =>  FolState <= T5 after 5 ns;
        
        when T5 =>  FolState <= T5T after 5 ns;
        
        when T5T =>  FolState <= T5T after 5 ns;
            if Nullflag='1' and counter>1 then FolState<=T_WF_Change;
            elsif counter>3 then FolState<=T1 after 5 ns;
            end if;
       when T_WF_Change => FolState <= TWAIT after 5ns;
                
    end case;
end process StateCalculation;


Output: process (State,Write,Din)
begin
    Read<='0' after 5 ns;
    RST<='0' after 5 ns;
    counterReset<='0' after 5 ns;
    WriteMem<='0' after 5 ns;
    DinMem<= (others => '0') after 5 ns;
    StartTx<='0' after 5 ns;
    WaveRST<='0' after 4 ns;
    WaveDFF_D <= '0' after 5 ns;
    
    case State is
        when Init => 
                    WaveRST<='1' after 5ns;
                    RST<='1' after 5 ns;
        
        when W1 =>  
            RST<='1' after 5 ns;
            counterReset<='1' after 5 ns;
            WaveRST<='1' after 5ns;
        
        
        when W1T => 
            RST<='1' after 5 ns;
        
        when W2 => 
            WriteMem<=Write after 5 ns;
            DinMem<=Din after 5 ns;
            
        when TWAIT => Read<='1' after 5 ns;--StartTx<='1' after 5 ns;
                      
            
        when T1 =>  Read<='1' after 5 ns;
                    StartTx<='1' after 5 ns;
            
        when T1T => Read<='1' after 5 ns;
                    StartTx<='1' after 5 ns;
        
        when T2 => counterReset<='1' after 5 ns;  
                   Read<='1' after 5 ns;  
                   StartTx<='1' after 5 ns;
        
        when T2T => Read<='1' after 5 ns;
        
        when T3 =>  StartTx<='1' after 5 ns;
                    Read<='1' after 5 ns;
        when T4 =>  StartTx<='1' after 5 ns;
        
        when T5 =>  counterReset<='1' after 5 ns;
                    StartTx<='1' after 5 ns;
        
        when T5T => StartTx<='1' after 5 ns;
        
        when T_WF_Change => WaveDFF_D <= '1' after 5ns;
                
    end case;

end process Output;

end Behavioral;