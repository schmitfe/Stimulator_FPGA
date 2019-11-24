----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/06/2019 02:34:38 PM
-- Design Name: 
-- Module Name: ChannelConfigReg - Behavioral
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
-- assumes higher freq. of FPGA as of uC.
entity ChannelConfigReg is
generic (
		MultiplierWordwith : natural := 5;
		MaxDelay : natural := 4095;
		NWave : natural := 2
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
		
	    OUT_WaveAddr       : out integer range 0 to (2 * NWave) - 1 := 0;
		OUT_RESET          : out std_logic :='0';
		OUT_InterInterval  : out integer range 0 to MaxDelay - 1 := 0;
		OUT_InterPeriods   : out integer range 0 to MaxDelay - 1 := 0;
		OUT_Amplitude      : out std_logic_vector(MultiplierWordwith - 1 downto 0) := (others=>'0')
	);
	
end ChannelConfigReg;

architecture Behavioral of ChannelConfigReg is
signal WriteConfZ1      : std_logic;    --register to implement rising edge detection



begin

ConfigRegister : process (CLK)
	begin
		if CLK = '1' and CLK'EVENT then
		    
		    if RESET='1' then
		         OUT_WaveAddr <= 0 after 5ns;
			     OUT_RESET <= '1' after 5ns;
			     OUT_InterInterval <= 0 after 5ns;
			     OUT_InterPeriods <= 0 after 5ns;
			     OUT_Amplitude <= (others=>'0') after 5ns;
			elsif WriteConfZ1='0' and WriteConf='1' then
			     OUT_WaveAddr <= IN_WaveAddr after 5ns;
			     OUT_RESET <= IN_RESET or RESET after 5ns;
			     OUT_InterInterval <= IN_InterInterval after 5ns;
			     OUT_InterPeriods <= IN_InterPeriods after 5ns;
			     OUT_Amplitude <= IN_Amplitude after 5ns;
			end if;
			WriteConfZ1<=WriteConf after 5ns;
		end if;
	end process ConfigRegister;
	    

end Behavioral;
