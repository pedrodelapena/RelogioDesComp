library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity SM1 is
    port(
		  reset: in std_logic;
		  clock: in std_logic;
		  A: in std_logic;
		  B: in std_logic;
		  cmd: in std_logic_vector(15 downto 0);
		  passo: in std_logic_vector(3 downto 0);
		  rst: in std_logic;
		  rstFSM: in std_logic
        );
end entity;

architecture statem of SM1 is
    signal tick : std_logic;
begin
    
end architecture;
