library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxoDados is
    Port ( entrada : in std_logic_vector(7 downto 0);
        funcaoULA: in std_logic_vector(1 downto 0);
        clk, rst:  in std_logic;
        carregaA:  in std_logic;
        carregaB:  in std_logic;
        carregaSaida: in std_logic;

        entradaA_ULA: out std_logic_vector(7 downto 0);
        entradaB_ULA: out std_logic_vector(7 downto 0);
        saida : out std_logic_vector(7 downto 0);
        overflow: out std_logic
   );
end entity;

architecture simples of fluxoDados is
  signal ULA_IN_A, ULA_IN_B, ULA_OUT, REG_ULA  : std_logic_vector(7 downto 0);
  signal overflowLocal : std_logic;
begin
    ULA         : entity work.ULA Port map (A => ULA_IN_A, B => ULA_IN_B, C => ULA_OUT, Sel => funcaoULA, overflow => overflowLocal);
    regEntradaA : entity work.registrador port map (DIN => entrada, DOUT => ULA_IN_A, CLK => clk, RST => rst, ENABLE => carregaA);
    regEntradaB : entity work.registrador port map (DIN => entrada, DOUT => ULA_IN_B, CLK => clk, RST => rst, ENABLE => carregaB);
    regSaida    : entity work.registrador generic map (larguraDados => 9) port map (DIN => overflowLocal & ULA_OUT, DOUT(7 downto 0) => saida, DOUT(8) => overflow, CLK => clk, RST => rst, ENABLE => carregaSaida);
    entradaA_ULA <= ULA_IN_A;
    entradaB_ULA <= ULA_IN_B;    
end architecture;