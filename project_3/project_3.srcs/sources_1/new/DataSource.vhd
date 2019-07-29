-- OneChannel
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;




Entity Channel is
Generic (
           Adresswidth  : natural := 10;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural := 16;
           Clock : natural :=50000000;
           SPI_Clock: natural :=1000000;
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
    
end Channel;


architecture Behavioral of Channel is

    component  Memory
    Generic (
           Adresswidth  : natural:=3;  -- Speicherlänge = 2^Adresswidth
           Wordwidth  : natural:=4
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
              Laenge             : integer   :=   16        -- Anzahl der zu übertragenden Bits
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
    
    


type States is (Init, W1, W1T, W2, TWAIT, T1, T1T, T2, T2T, T3, T4, T5, T5T); -- Aufzählungstyp 
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
type WordArray is array (NWave-1 downto 0) of std_logic_vector(Wordwidth-1 downto 0);
type BitArray is array (NWave-1 downto 0) of std_logic;
type IntegerArray is array (NWave-1 downto 0) of integer range 0 to (2**Adresswidth)-1;



--signal    DinMemA:  WordArray;
signal    DoutMemA :  WordArray; -- Eingabe

signal    ReadA:   BitArray;
signal    WriteMemA:  BitArray;
--signal   Addr0A: BitArray;
signal    WRCNTA :  IntegerArray;
signal  NullflagA: BitArray;


signal DinMem: std_logic_vector(Wordwidth-1 downto 0);
--signal DoutMem: std_logic_vector(Wordwidth-1 downto 0);
signal Read:    std_logic;
signal WriteMem:    std_logic;
signal Addr0:   std_logic;
signal WRCNT:   integer range 0 to (2**Adresswidth)-1;
signal Nullflag: std_logic;

signal  WaveAddrZ1:  integer range 0 to NWave-1;

begin

MemArray: for I in 0 to NWave-1 generate
      MemoryX : Memory  generic map (Adresswidth => Adresswidth, Wordwidth=>Wordwidth) --no semicolon here 
     port map (CLK=>CLK, Addr0=>Addr0, RESET=>RST, Din=>DinMem, Write=>WriteMemA(I), Read=>ReadA(I), Dout=>DoutMemA(I), Empty=>open, Full=>open, WRCNT=>WRCNTA(I), Nullflag=>NullflagA(I));
end generate MemArray;
        
Interface: SPI_Master generic map(Quarz_Taktfrequenz=>Clock, SPI_Taktfrequenz=>SPI_Clock, Laenge=>Wordwidth)
    port map (TX_Data=>Dout, MOSI=>MOSI, SCLK=>SCLK, SS=>SS, TX_Start=>StartTx, TX_Done=>TX_Done, clk=>CLK);  

MemoryMUX: process (WaveAddr, DoutMemA, Read, WriteMem, WRCNTA)
begin
    WriteMemA<= (others=>'0');
    WriteMemA<= (others=>'0');
    
    Dout<=DoutMemA(WaveAddr);
    WriteMemA(WaveAddr)<=WriteMem;
    ReadA(WaveAddr)<=Read;
    WRCNT<=WRCNTA(WaveAddr);
    Nullflag<=NullflagA(WaveAddr);
end process MemoryMUX;

MemoryStartAdress: process (CLK)
begin
    if CLK = '1' and CLK'event then
        if (WaveAddr/=WaveAddrZ1) then
            Addr0<='1';
        else
            Addr0<='0';
        end if;
        WaveAddrZ1<=WaveAddr;
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



StateCalculation: process (State, EnWrite, counter, TX_Done,contStim, trigLoc, trig)
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
            if Nullflag='1' and counter>2 then FolState<=TWAIT;
            elsif counter>3 then FolState<=T1 after 5 ns;
            end if;
                
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
    
    case State is
        when Init => 
        
        
        when W1 =>  
            RST<='1' after 5 ns;
            counterReset<='1' after 5 ns;
        
        
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
                
    end case;

end process Output;

   -- Dout<=DoutMem after 5 ns;

end Behavioral;