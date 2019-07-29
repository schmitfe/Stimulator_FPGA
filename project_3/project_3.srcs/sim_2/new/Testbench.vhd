library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity TB is
end TB;


architecture arch of TB is

    component MOORE
     port(
    CLK : in std_logic; -- Systemtakt
    RST : in std_logic; -- asynchroner Reset (alles auf Null)
    ENABLE: in std_logic; -- Übergangsaktivierung
    E : in std_logic_vector(1 downto 0); -- Eingabe
    DATA : out std_logic_vector(7 downto 0)); -- Ausgabebit: 1 wenn Folge erkannt
    end component;
    
    
     
    signal CLK, RST, ENABLE : std_logic;  -- input
    signal E :  std_logic_vector(1 downto 0); -- Eingabe
    signal DATA : std_logic_vector(7 downto 0); -- Ausgabebit: 1 wenn Folge erkannt
    constant T : time := 5 ps;
    
begin

        UUT: MOORE  port map (CLK=>CLK, RST=>RST, ENABLE=>ENABLE, E=>E,   DATA=>DATA);

    -- continuous clock
    process 
    begin
        CLK <= '0';
        wait for T;
        CLK <= '1';
        wait for T;
       
    end process;


    -- reset = 1 for first clock cycle and then 0
    RST <= '1', '0' after T/2;
    ENABLE<='1';

end arch;