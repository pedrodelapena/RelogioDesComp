library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity acumulador is
	--registrador que guarda uma palavra de 0 a 5, numérico
	generic(
		WORDSIZE: natural:= 32;
		MAXVAL: natural --valor até o qual eu pretendo contar
	);
	port(
		clk:in STD_LOGIC;
		rst:in STD_LOGIC;
		
		mem:out STD_LOGIC_VECTOR(WORDSIZE-1 downto 0)
	);
	
end entity;

architecture update of acumulador is
	
	signal cnt_out: STD_LOGIC_VECTOR(31 downto 0);
	signal cnt_clear: STD_LOGIC_VECTOR(31 downto 0);
	
	signal cnt_in: STD_LOGIC_VECTOR(31 downto 0);
begin

accULA: entity work.ULA port map(cnt_in, STD_LOGIC_VECTOR(to_unsigned(MAXVAL, 32)), "11", cnt_out, cnt_clear);
mem <= cnt_in;
	process(clk, rst)
	begin
		
		if (rst= '1') then
				cnt_in <= (others => '0');
				
		elsif rising_edge(clk) then
			
			if(cnt_clear(0) ='1') then
				cnt_in <= (others => '0');

			else
				cnt_in <= cnt_out;

			end if;
		end if;
		
	end process;
	
end architecture;