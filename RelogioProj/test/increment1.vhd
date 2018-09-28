library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity increment1 is
    port(
        from_ASMD_State_reg : in std_logic_vector(7 downto 0);
        reset, clk : in std_logic;
        to_mux : out std_logic_vector(7 downto 0)
    );
end increment1;

architecture Behavioral of increment1 is
signal r_reg : unsigned(7 downto 0);
signal r_inc : unsigned(7 downto 0);
begin
process(clk, reset, r_reg)
begin
    r_reg <= unsigned(from_ASMD_State_reg);

    if(reset = '1') then
        r_reg <= (others => '0');
    elsif( rising_edge(clk) ) then
        r_reg <= r_inc;
    end if;
end process;

r_inc <= r_reg + 1;

to_mux <= std_logic_vector(r_inc);

end Behavioral;