LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorSegundo is
	-- Recebe um pulso de 1 segundo
	-- Quebra em divisões relevantes

	generic(
		MAXCNT: natural := 60*60/2
	);
    port(
			clk: in std_logic;
			reset: in std_logic;
        
			clk_10sec: out std_logic;
			clk_min: out std_logic;
			clk_10min: out std_logic;
			clk_hour: out std_logic
        );
end entity;

architecture divide of divisorSegundo is
	signal cnt: UNSIGNED(12 downto 0); --depois trocar pro min necessario
	signal cnt_clear: std_logic;
	
	function to_sl(condition : BOOLEAN) return STD_LOGIC is
	begin
		 if condition then
			  return '1';
		 else
			  return '0';
		 end if;
	end function;
		
begin
	
		
	process(clk, reset)
	begin
		if rising_edge(clk) then
			if reset= '1' then
				cnt <= (others => '0');
				clk_10sec <= '0';
				clk_min <= '0';
				clk_10min <= '0';
				clk_hour <= '0';
				
				cnt_clear<= '0';
			elsif(cnt_clear = '1') then
				cnt <= (others => '0');
				clk_10sec <= clk_10sec;
				clk_min <= clk_min;
				clk_10min <= clk_10min;
				clk_hour <= clk_hour;
				
				cnt_clear <= '0';
			else
				cnt <= cnt + 1;
				clk_10sec <= to_sl( (cnt mod (10/2)) = 0) XOR clk_10sec;
				clk_min <= to_sl( (cnt mod (60/2)) = 0) XOR clk_min;
				clk_10min <= to_sl( (cnt mod (60*10/2)) = 0) XOR clk_10min;
				clk_hour <= to_sl( (cnt mod (60*60/2)) = 0) XOR clk_hour;
				
				
				cnt_clear <= to_sl(cnt = MAXCNT);
			end if;
			
		end if;

		
	end process;
end architecture;