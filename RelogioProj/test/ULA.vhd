library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
	--usando palavra de 32 bits
	port(
		a:  in std_logic_vector(31 downto 0); --entrada 1
		b:  in std_logic_vector(31 downto 0); --entrada 2
		sel: in std_logic_vector(1 downto 0);
		
		c: out std_logic_vector(31 downto 0); --saída 1
		d: out std_logic_vector(31 downto 0) -- saída 2
			  
		--overflow: out std_logic
		--Feitas apenas somas de 1 em 1, carry a principo nao sera necessario
	);
end entity;

architecture comportamento of ULA is

	function minimizar(inword : std_logic_vector(31 downto 0)) return STD_LOGIC is
	begin
		 if (inword = "00000000000000000000000000000000") then
			  return '1';
		 else
			  return '0';
		 end if;
	end function;
	
begin
	process (a, b, sel) is
	begin
		case sel is
		-- regra 00: Adicionar 1 a A, retornar no C
			when "00" => c <= std_logic_vector( unsigned(a)+1 );
		-- regra 01: Comparar A e B, se iguais retornar C(0)='1', else C(0)='0', demais bits indefinidos
			when "01" => c(0) <= minimizar(a XOR b);
		--regra 10: Recebe A representando hora, devolve C representando casa decimal da dezena, D casa decimal da unidade
			when "10" => c <= c; --implementar depois
		-- regra 11: Adicionar 1 a A, retornar no C, comparar A e B, retornar no bit 1 do D (primeira e segunda instrucoes juntas)
			when "11" => c <= std_logic_vector( unsigned(a)+1 ); d(0) <= minimizar(a XOR b);
		end case;
	end process;
end architecture;