LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity acc09 is
	--registrador que guarda uma palavra de 0 a 9, numérico
	generic(
		WORDSIZE: natural:= 4
	);
	port(
		clk:in STD_LOGIC;
		reset:in STD_LOGIC;
		
		mem:out STD_LOGIC_VECTOR(WORDSIZE-1 downto 0)
	);
	
end entity;

architecture acc of acc09 is
	
begin

	process(clk, reset)
	begin
	
		if ( rising_edge(clk) ) then
			if(reset='1') then
				mem <= "0000";
			elsif(unsigned(mem) = 9) then
				mem <= "0000";
			else
				mem <= std_logic_vector(unsigned(mem) + 1);
			end if;
		end if;
		
	end process;
	
end architecture;