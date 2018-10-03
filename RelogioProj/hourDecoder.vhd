library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity hourDecoder is
	generic(
		WORDSIZE: natural:= 32;
		LEDSIZE: natural:= 4
	);
	
	port(
		hour: in STD_LOGIC_VECTOR(WORDSIZE-1 downto 0);
		displayMode: in STD_LOGIC; --0 para 24h, 1 para AM/PM
		
		HEX6: out STD_LOGIC_VECTOR(6 downto 0);
		HEX7: out STD_LOGIC_VECTOR(6 downto 0);
		
		HEXAMPM: out STD_LOGIC_VECTOR(6 downto 0)
	);
end entity;

architecture decode of hourDecoder is

	signal dec: STD_LOGIC_VECTOR(WORDSIZE-1 downto 0);
	signal unit: STD_LOGIC_VECTOR(WORDSIZE-1 downto 0);
	
	-- Setar as ROMs para não precisar de um process
	-- ROM para setar o modo da ULA
	
	type mem_sel is array (1 downto 0) of STD_LOGIC_VECTOR(1 downto 0);
	function init_rom_sel
		return mem_sel is
		variable tmp : mem_sel := (others => (others => '0'));
		begin
		tmp(0) := "10"; -- equivalente à função quebra de 24h na ULA
		tmp(1) := "01"; -- equivalente à função de quebra de 12hAMPM na ULA
		return tmp;
	end init_rom_sel;
	signal sel: mem_sel := init_rom_sel;
	
	-- ROM para setar a exibição de AM/PM
	
	type mem_ampm is array(3 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
	function init_rom_ampm
		return mem_ampm is
		variable tmp: mem_ampm := (others => (others => '0'));
		begin
			tmp(0) := "1110"; -- Exibir nada na tela
			tmp(1) := "1110"; -- Exibir nada na tela
			tmp(2) := "1010"; -- Exibir A na tela
			tmp(3) := "1111"; -- Exibir P na tela
		return tmp;
	end init_rom_ampm;
	signal ampm: mem_ampm := init_rom_ampm;
	--
	
	/*
	function concat(
		a: STD_LOGIC;
		b: STD_LOGIC
	) return INTEGER is
	begin
		if(a = '0') then
			if(b = '0') then
				return 0;
			else
				return 1;
			end if;
		else
			if(b = '0') then
				return 2;
			else
				return 3;
			end if;
		end if;
	end function;
	*/
	
	--signal ampm_f: STD_LOGIC_VECTOR(3 downto 0) := ampm(to_integer(unsigned(displaymode & dec(31 downto 31))));
	--signal ampm_f: STD_LOGIC_VECTOR(3 downto 0) := ampm(to_integer(to_unsigned(displaymode, 1) & unsigned(0)));
	
	--signal ampm_f: STD_LOGIC_VECTOR(3 downto 0) := ampm(  concat(displaymode, '0')  );
begin

	hourULA: entity work.ULA port map(hour, STD_LOGIC_VECTOR(to_unsigned(0, 32)), sel(to_integer(unsigned'('0' & displaymode))), dec, unit);

	outputUnitHour: entity work.conversorHex7seg port map(unit(3 downto 0), HEX6);
	outputDecHour: entity work.conversorHex7seg port map(dec(3 downto 0), HEX7);
	
	--outputAMPM: entity work.conversorHex7seg port map(ampm_f, HEX0);
	--HEX0 <= ("0001" & displaymode & "00");
	HEXAMPM(0) <= not displaymode;
	HEXAMPM(1) <= not displaymode;
	HEXAMPM(2) <= dec(31) OR (NOT displaymode);
	HEXAMPM(3) <= '1';
	HEXAMPM(4) <= not displaymode;
	HEXAMPM(5) <= not displaymode;
	HEXAMPM(6) <= not displaymode;
	
	
end architecture;