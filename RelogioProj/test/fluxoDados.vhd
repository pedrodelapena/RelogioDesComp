library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxoDados is
	--palavra de 32 bits
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
end entity;

architecture simples of fluxoDados is
  signal ULA_IN_A, ULA_IN_B, ULA_OUT_C, ULA_OUT_D, REG_ULA  : std_logic_vector(31 downto 0);
begin
	regEntradaA : entity work.registrador port map (entrada, ULA_IN_A, carregaA, clk, rst);
	regEntradaB : entity work.registrador port map (entrada, ULA_IN_B, carregaB, clk, rst);
	
	regSaidaC   : entity work.registrador port map (ULA_OUT_C, saidaC, carregaC, clk, rst);
	regSaidaD   : entity work.registrador port map (ULA_OUT_D, saidaD, carregaD, clk, rst);
	
	ULA         : entity work.ULA port map (ULA_IN_A, ULA_IN_B, funcaoULA, ULA_OUT_C, ULA_OUT_D);
    
	--entradaA <= ULA_IN_A;
	--entradaB <= ULA_IN_B;    
end architecture;