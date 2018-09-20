library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity clock_test is
   port(
      clk       : in std_logic;
		reset		 : in std_logic;
      saida_clk : out std_logic
   );
end entity;

architecture arch of clock_test is

begin
dividePor2: entity work.divisor(
            generic map (divisor => 5)   -- divide por 2^6.
            port map (clk => clk, saida_clk => saida_clk));

divideint: entity work.divisor(
            generic map (divisor => 5)   -- divide por 10.
            port map (clk => clk, saida_clk => saida_clk));

registrador: entity work.registrador(
				 port map (DIN => , DOUT => , ENABLE => '1', CLK => clk, RST => reset));

end architecture;
