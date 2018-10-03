library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity pulsoDivisor is
	-- Recebe o clock da FPGAstd_logic_vector(0)
	-- Traduz em pulso de segundo
	
	generic(
		WORDSIZE: natural := 32
	);
	
	port(
		clk: in std_logic;
		rst: in std_logic;
		
		divfactor: in std_logic_vector(WORDSIZE-1 downto 0);
        
		clk_sec: out std_logic
		-- dh tratado à parte na ULA
	);
end entity;

architecture pulso of pulsoDivisor is
	
	--setar um incrementador
	signal cnt_out: STD_LOGIC_VECTOR(31 downto 0);
	signal cnt_clear: STD_LOGIC_VECTOR(31 downto 0);
	
	signal cnt_in: STD_LOGIC_VECTOR(31 downto 0);
	
	signal target: STD_LOGIC_VECTOR(WORDSIZE-1 downto 0); --Seja X o fator de divisão, essa variável guarda (X/2)-1
begin

	B0: entity work.ULA port map(cnt_in, target, "11", cnt_out, cnt_clear);
	
	process(clk, rst)
	begin
	
		if (rst= '1') then
				cnt_in <= (others => '0');
				
				clk_sec <= '1';
		elsif rising_edge(clk) then
		
			if(cnt_clear(0) ='1') then
				cnt_in <= (others => '0');
				target <= STD_LOGIC_VECTOR( (unsigned(divfactor)/2) - 1 ); --fazer isto na ULA later

				
				clk_sec <= not clk_sec;
			else
				cnt_in <= cnt_out;
			end if;
		end if;
		
	end process;
end architecture;