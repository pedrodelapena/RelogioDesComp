library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador is
	generic (
		WORDSIZE: natural := 32
	);
	port (
		din: in    std_logic_vector(WORDSIZE-1 downto 0);
		dout: out   std_logic_vector(WORDSIZE-1 downto 0);
		enable: in  std_logic;
		clk, rst: in std_logic
	);
end entity;

architecture comportamento of registrador is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
	process(clk, rst)
	begin
        -- The asynchronous reset signal has the highest priority
		if (rst = '1') then
			DOUT <= (others => '0');
		else
			-- At a clock edge, if asynchronous signals have not taken priority,
			-- respond to the appropriate synchronous signal.
			-- Check for synchronous reset, then synchronous load.
			-- If none of these takes precedence, update the register output
			-- to be the register input.
			if (rising_edge(CLK)) then
				if (ENABLE = '1') then
					DOUT <= DIN;
				end if;
			end if;
		end if;
	end process;
end architecture;