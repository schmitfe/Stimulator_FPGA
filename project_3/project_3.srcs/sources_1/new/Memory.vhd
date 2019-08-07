----------------------------------------------------------------------------------
-- Engineer: Felix Schmitt
--
-- Create Date: 04/05/2019 02:33:44 PM
-- Design Name: Memory - Waveform
-- Module Name: Memory - Behavioral
-- Project Name: Stimulator
-- Target Devices: Artix-35
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Memory is
	generic (
		Adresswidth : natural := 3; -- Speicherlänge = 2^Adresswidth
		Wordwidth : natural := 4
	);
	port (
		CLK : in STD_LOGIC;
		Addr0 : in STD_LOGIC;
		RESET : in STD_LOGIC;
		Din : in STD_LOGIC_VECTOR (Wordwidth - 1 downto 0);
		Write : in STD_LOGIC;
		Read : in STD_LOGIC;
		-----------------------------------------------------
		Dout : out STD_LOGIC_VECTOR (Wordwidth - 1 downto 0);
		Empty : out STD_LOGIC;
		Full : out STD_LOGIC;
		WRCNT : out integer range 0 to (2 ** Adresswidth) - 1 := 0;
		Nullflag : out STD_LOGIC
	);
end Memory;
architecture Behavioral of Memory is
	signal rdcnt : unsigned (Adresswidth - 1 downto 0) := (others => '0');
	type speicher is array(0 to (2 ** Adresswidth) - 1) of unsigned(Wordwidth - 1 downto 0); -- Datatype of Memory
	signal memory : speicher := (others => (others => '0'));
	signal full_loc : std_logic;
	signal empty_loc : std_logic;
	signal WRCNT_loc : integer range 0 to (2 ** Adresswidth) - 1 := 0;
	signal Write_Z1 : std_logic;
	signal Read_Z1 : std_logic;
	signal loadReg0 : std_logic := '0';
begin
	process begin
	wait until rising_edge(CLK);
	loadReg0 <= '0';
	if (RESET = '1') then
		WRCNT_loc <= 0 after 5 ns;
		rdcnt <= (others => '0') after 5 ns;
		empty_loc <= '1' after 5 ns;
	else
		if (Addr0 = '1') then
			rdcnt <= (others => '0') after 5 ns;
			loadReg0 <= '1';
		elsif (Write = '1' and Write_Z1 = '0' and full_loc = '0') then
			memory(WRCNT_loc) <= unsigned(Din) after 5 ns;
			WRCNT_loc <= WRCNT_loc + 1 after 5 ns;
			empty_loc <= '0' after 5 ns;
		end if;
		if (Read = '1' and Read_Z1 = '0' and empty_loc = '0') then -- Readable during writing?
			Dout <= std_logic_vector(memory(to_integer(rdcnt))) after 5 ns; -- Adress clocked --> BRAM
			if rdcnt = WRCNT_loc - 1 then
				Nullflag <= '1';
			else
				Nullflag <= '0';
			end if;
			rdcnt <= rdcnt + 1 after 5 ns;
			if (to_integer(rdcnt) > WRCNT_loc) then
				rdcnt <= (others => '0') after 5 ns;
			end if;
		end if;
		if (loadReg0 = '1') then -- Readable during writing?
			Dout <= std_logic_vector(memory(to_integer(rdcnt))) after 5 ns; -- Adress clocked --> BRAM
		end if;
	end if;
	-- if rdcnt=0 then
	Write_Z1 <= Write after 5 ns;
	Read_Z1 <= Read after 5 ns;
end process;
full_loc <= '1' when WRCNT_loc = (2 ** Adresswidth) else '0' after 5 ns;
Full <= full_loc after 5 ns;
Empty <= empty_loc after 5 ns;
WRCNT <= WRCNT_loc after 5 ns;
end Behavioral;