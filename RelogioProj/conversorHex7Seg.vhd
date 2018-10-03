library ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity conversorHex7Seg is
	port(
		hex: in  std_logic_vector(3 downto 0);
	 
		saida7seg : out std_logic_vector(6 downto 0)
	);
end entity;

architecture comportamento of conversorHex7Seg is
   --
   --       0
   --      ---
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---
   --     |   |
   --    4|   |2
   --     |   |
   --      ---
   --       3
   --
	
	type memory_t is array (15 downto 0) of std_logic_vector(6 downto 0);
	function init_rom
		return memory_t is
		variable tmp : memory_t := (others => (others => '0'));
		begin
		tmp(0) := "1000000"; --0
		tmp(1) := "1111001"; --1
		tmp(2) := "0100100"; --2
		tmp(3) := "0110000"; --3
		tmp(4) := "0011001"; --4
		tmp(5) := "0010010"; --5
		tmp(6) := "0000010"; --6
		tmp(7) := "1111000"; --7
		tmp(8) := "0000000"; --8
		tmp(9) := "0010000"; --9
		tmp(10) := "0001000"; --A
		tmp(11) := "0001100"; --P
		tmp(12) := "1111111"; --" "
		tmp(13) := "1111111"; --" "
		tmp(14) := "1111111"; --" "
		tmp(15) := "1111111"; --" "
		return tmp;
	end init_rom;
	signal content: memory_t := init_rom;
	
begin
	saida7seg <= content(  to_integer(unsigned(hex))  );

	/*
	process(hex, rst)
	begin
		if (rst= '1') then
			saida7seg <= "1111111";
		else
			saida7seg <= content(  to_integer(unsigned(hex))  );
		end if;
	end process;
	*/
end architecture;