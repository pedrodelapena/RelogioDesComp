LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity acc05 is
	--registrador que guarda uma palavra de 0 a 5, numérico
	generic(
		WORDSIZE: natural:= 4 --deixar 4 pra interfaceiar com os leds7segs
	);
	port(
		clk:in STD_LOGIC;
		reset:in STD_LOGIC;
		
		mem:out STD_LOGIC_VECTOR(WORDSIZE-1 downto 0)
	);
	
end entity;

architecture acc of acc05 is
	
begin

	process(clk, reset)
	begin
	
		if ( rising_edge(clk) ) then
			if(reset='1') then
				mem <= "0000";
			elsif(unsigned(mem) = 5) then
				mem <= "0000";
			else
				mem <= std_logic_vector(unsigned(mem) + 1);
			end if;
		end if;
		
	end process;
	
end architecture;