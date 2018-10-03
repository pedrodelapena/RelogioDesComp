library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is	
	port(
		clk: in STD_LOGIC;
		rst: in STD_LOGIC;
		
		button: in STD_LOGIC;
		
		debounced_press: out STD_LOGIC
	);
end entity;

architecture debounce of debouncer is
begin

	process(clk, rst)
	begin
		if(rst= '1') then
			debounced_press <= '0';
		elsif(rising_edge(clk)) then
			debounced_press <= button;
		end if;
	end process;
end architecture;