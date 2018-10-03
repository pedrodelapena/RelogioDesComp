library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity menu_controller is	
	port(
		clk: in STD_LOGIC;
		rst: in STD_LOGIC;
		
		state: in STD_LOGIC_VECTOR(31 downto 0);
		
		mask: out STD_LOGIC_VECTOR(5 downto 0)
	);
end entity;

architecture control of menu_controller is

signal blink: STD_LOGIC;

begin

	process(clk, rst)
	begin
	
		if(rst = '1') then
			blink <= '0';
			
		elsif (rising_edge(clk)) then
			blink <= not blink;
				case state(2 downto 0) is
					when "001" =>
						mask(0) <= '0'; --unused
						mask(1) <= blink; --sec
						mask(2) <= '0'; --decsec
						mask(3) <= '0'; --min
						mask(4) <= '0'; --decmin
						mask(5) <= '0'; --hour
					when "010" =>
						mask(0) <= '0'; --unused
						mask(1) <= '0'; --sec
						mask(2) <= blink; --decsec
						mask(3) <= '0'; --min
						mask(4) <= '0'; --decmin
						mask(5) <= '0'; --hour
					when "011" =>
						mask(0) <= '0'; --unused
						mask(1) <= '0'; --sec
						mask(2) <= '0'; --decsec
						mask(3) <= blink; --min
						mask(4) <= '0'; --decmin
						mask(5) <= '0'; --hour
					when "100" =>
						mask(0) <= '0'; --unused
						mask(1) <= '0'; --sec
						mask(2) <= '0'; --decsec
						mask(3) <= '0'; --min
						mask(4) <= blink; --decmin
						mask(5) <= '0'; --hour
					when "101" =>
						mask(0) <= '0'; --unused
						mask(1) <= '0'; --sec
						mask(2) <= '0'; --decsec
						mask(3) <= '0'; --min
						mask(4) <= '0'; --decmin
						mask(5) <= blink; --hour
					when others =>
						mask(0) <= blink; --unused
						mask(1) <= '0'; --sec
						mask(2) <= '0'; --decsec
						mask(3) <= '0'; --min
						mask(4) <= '0'; --decmin
						mask(5) <= '0'; --hour
				end case;
			end if;
	end process;
end architecture;