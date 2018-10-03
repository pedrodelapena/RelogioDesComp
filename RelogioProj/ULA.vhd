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
			  return '0';
		 else
			  return '1';
		 end if;
	end function;
	
begin
	process (a, b, sel) is
	begin
		case sel is
		-- regra 00: No C, retornar A/2^B, no D retornar A/2^B-1
			when "00" => c <= STD_LOGIC_VECTOR( shift_right( unsigned(a), to_integer(unsigned(b)) ) ); d <= STD_LOGIC_VECTOR( unsigned(c) - 1 );
		-- regra 01: Recebe A representando a hora, devolve C represtando a casa decimal da dezena levando AM/PM em conta (bit mais significativo indica qual, 0-AM e 1-PM), D casa decimal da unidade
			when "01" => c(31 downto 31) <= STD_LOGIC_VECTOR( unsigned(a)/12 )(0 downto 0); c(30 downto 0) <= STD_LOGIC_VECTOR( (unsigned(a) mod 12)/10 )(30 downto 0); d <= STD_LOGIC_VECTOR( (unsigned(a) mod 12) mod 10 );
		-- regra 10: Recebe A representando hora, devolve C representando casa decimal da dezena, D casa decimal da unidade
			when "10" => c <= STD_LOGIC_VECTOR( unsigned(a)/10 ); d <= STD_LOGIC_VECTOR( unsigned(a) mod 10 );
		-- regra 11: Adicionar 1 a A, retornar no C, comparar A e B, retornar no bit 1 do D (se 1, iguais)
			when "11" => c <= std_logic_vector( unsigned(a)+1 ); d(0) <= not( minimizar(a XOR b) );
		end case;
	end process;
end architecture;