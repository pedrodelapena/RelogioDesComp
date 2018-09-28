library ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity Relogio is
	--meu top-level
	
	port(
		CLOCK_50: in STD_LOGIC;
		SW: in STD_LOGIC_VECTOR(17 downto 0);
	
		HEX0: out STD_LOGIC_VECTOR(6 downto 0);
		HEX1: out STD_LOGIC_VECTOR(6 downto 0);	
		HEX2: out STD_LOGIC_VECTOR(6 downto 0);
		HEX3: out STD_LOGIC_VECTOR(6 downto 0);
		
		HEX4: out STD_LOGIC_VECTOR(6 downto 0);
		HEX5: out STD_LOGIC_VECTOR(6 downto 0);
		
		HEX6: out STD_LOGIC_VECTOR(6 downto 0);
		HEX7: out STD_LOGIC_VECTOR(6 downto 0)
	);
end entity;

architecture main of Relogio is

	component pulsoSegundo
		port(
			clk: in std_logic;
			rst: in std_logic;
        
			clk_sec: out std_logic
        );
	end component;
	
	component divisorSegundo
		port(
			clk: in std_logic;
			reset: in std_logic;
        
			clk_10sec: out std_logic;
			clk_min: out std_logic;
			clk_10min: out std_logic;
			clk_hour: out std_logic
        );
	end component;
	
	component acc09
		port(
			clk:in STD_LOGIC;
			reset:in STD_LOGIC;
			
			mem:out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;
		
	component acc05
		port(
			clk:in STD_LOGIC;
			reset:in STD_LOGIC;
			
			mem:out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;
	
	component conversorHex7Seg
		port(
			hex  : in  std_logic_vector(3 downto 0);
			reset: in std_logic;

			saida7seg : out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal pulse_us: STD_LOGIC;
	signal pulse_ds: STD_LOGIC;
	signal pulse_um: STD_LOGIC;
	signal pulse_dm: STD_LOGIC;
	signal pulse_uh: STD_LOGIC;
	
	signal acc_us: STD_LOGIC_VECTOR(3 downto 0);
	signal acc_ds: STD_LOGIC_VECTOR(3 downto 0);
	signal acc_um: STD_LOGIC_VECTOR(3 downto 0);
	signal acc_dm: STD_LOGIC_VECTOR(3 downto 0);
	--signal acc_uh: STD_LOGIC;
	
begin
	A0: pulsoSegundo port map(CLOCK_50, SW(0), pulse_us);
	A1: divisorSegundo port map(pulse_us, SW(0), pulse_ds, pulse_um, pulse_dm, pulse_uh);
	
	A2: acc09 port map(pulse_us, SW(0), acc_us);
	A3: acc05 port map(pulse_ds, SW(0), acc_ds);
	A4: acc09 port map(pulse_um, SW(0), acc_um);
	A5: acc05 port map(pulse_dm, SW(0), acc_dm);
	
	--
	
	A6: conversorHex7seg port map(acc_us, SW(0), HEX2);
	A7: conversorHex7seg port map(acc_ds, SW(0), HEX3);
	
	A8: conversorHex7seg port map(acc_um, SW(0), HEX4);
	A9: conversorHex7seg port map(acc_dm, SW(0), HEX5);
end architecture;