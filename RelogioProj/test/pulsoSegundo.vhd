LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity pulsoSegundo is
	-- Recebe o clock da FPGAstd_logic_vector(0)
	-- Traduz em pulso de segundo
	
	generic(
		WORDSIZE: natural := 32;
		--HALFFPGACLK: natural := 25000000
		HALFFPGACLK: natural := 9
	);
	
	port(
		clk: in std_logic;
		rst: in std_logic;
        
		clk_sec: out std_logic
		-- dh tratado à parte na ULA
	);
end entity;

architecture pulsosec of pulsoSegundo is

	/*
	component fluxoDados
		port(
			clk, rst:  in std_logic;
			entrada : in std_logic_vector(31 downto 0);
			funcaoULA: in std_logic_vector(1 downto 0);
			carregaA:  in std_logic;
			carregaB:  in std_logic;
			carregaC: in std_logic;
			carregaD: in std_logic;

			--entradaA: out std_logic_vector(31 downto 0);
			--entradaB: out std_logic_vector(31 downto 0);
			saidaC : out std_logic_vector(31 downto 0);
			saidaD : out std_logic_vector(31 downto 0)
		);
	end component;
	*/
	
	component ULA
		port(
			a:  in std_logic_vector(31 downto 0); --entrada 1
			b:  in std_logic_vector(31 downto 0); --entrada 2
			sel: in std_logic_vector(1 downto 0);
			
			c: out std_logic_vector(31 downto 0); --saída 1
			d: out std_logic_vector(31 downto 0) -- saída 2
				  
			--overflow: out std_logic
			--Feitas apenas somas de 1 em 1, carry a principo nao sera necessario
		);
	end component;
	
	--setar um incrementador
	signal cnt_out: STD_LOGIC_VECTOR(31 downto 0);
	signal cnt_clear: STD_LOGIC_VECTOR(31 downto 0);
	
	signal cnt_in: STD_LOGIC_VECTOR(31 downto 0);
	
begin
	
	--B0: fluxoDados port map(clk, rst, inputval, "11",  resetCnt, resetTrgt, '1', '1', cnt, cnt_clear);
	B0: ULA port map(cnt_in, STD_LOGIC_VECTOR(to_unsigned(HALFFPGACLK, 32)), "11", cnt_out, cnt_clear);
		
	process(clk, rst)
	begin
	
		if (rst= '1') then
				cnt_in <= "00000000000000000000000000000000";
				
				clk_sec <= '0';
		elsif rising_edge(clk) then
		
			if(cnt_clear(0) ='1') then
				cnt_in <= "00000000000000000000000000000000";
				
				clk_sec <= not clk_sec;
			else
				cnt_in <= cnt_out;
				
			end if;
			/*
			if (state = "000") then
				resetCnt <= '0';
				resetTrgt <= '0';
				--inputval <= std_logic_vector(to_unsigned(25000000, inputval'length)); --meio periodo
				inputval <= "00000000000100000000000000000000";
				
				clk_sec <= '0';
				
				state <= "001";
				
			elsif(state = "001") then
				resetTrgt <= '1';
				
				state <= "011";
				
			elsif(state = "011" ) then
				resetTrgt <= '0';
				
				state <= "010";
				
			elsif(state = "010") then
				inputval <= (others => '0');
				resetTrgt <= '1';
			
				state <= "110";
				
			elsif(cnt_clear(0) = '1') then
				inputval <= (others => '0');
				
				clk_sec <= not clk_sec;
				
			else
				--inputval <= cnt;
				
				--clk_sec <= clk_sec;

			end if;
			*/
		end if;

		
	end process;
end architecture;