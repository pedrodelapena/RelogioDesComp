library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Relogio is
	--meu top-level
	
	generic(
		FREQFPGA: STD_LOGIC_VECTOR(31 downto 0):= std_logic_vector(to_unsigned(50000000, 32 )); --Freq FPGA
		FREQBLINK: STD_LOGIC_VECTOR(31 downto 0):= std_logic_vector(to_unsigned(10000000, 32 ));
		
		SEC: STD_LOGIC_VECTOR(31 downto 0):= std_logic_vector(to_unsigned(1, 32 ));
		DECSEC: STD_LOGIC_VECTOR(31 downto 0):= std_logic_vector(to_unsigned(10, 32 ));
		MIN: STD_LOGIC_VECTOR(31 downto 0):= std_logic_vector(to_unsigned(6, 32 ));
		DECMIN: STD_LOGIC_VECTOR(31 downto 0):= std_logic_vector(to_unsigned(10, 32 ));
		HOUR: STD_LOGIC_VECTOR(31 downto 0):= std_logic_vector(to_unsigned(6, 32 ))
	);
	port(
		CLOCK_50: in STD_LOGIC;
		SW: in STD_LOGIC_VECTOR(17 downto 0);
		KEY: in STD_LOGIC_VECTOR(3 downto 0);
	
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

	signal rst: STD_LOGIC:= not KEY(0);
	signal speed_select: STD_LOGIC:= not KEY(1);
	signal debounced_speed_select: STD_LOGIC;
	signal increment_select: STD_LOGIC:= not KEY(2);
	signal debounced_increment_select: STD_LOGIC;
	signal option_select: STD_LOGIC:= not KEY(3);
	signal debounced_option_select: STD_LOGIC;
	signal simulated_freq: STD_LOGIC_VECTOR(31 downto 0);
	
	signal pulse_us_root: STD_LOGIC;
	signal pulse_ds_root: STD_LOGIC;
	signal pulse_um_root: STD_LOGIC;
	signal pulse_dm_root: STD_LOGIC;
	signal pulse_uh_root: STD_LOGIC;
	signal pulse_blink: STD_LOGIC;
	
	signal acc_option: STD_LOGIC_VECTOR(31 downto 0);
	signal acc_speed: STD_LOGIC_VECTOR(31 downto 0);
	signal acc_us: STD_LOGIC_VECTOR(31 downto 0);
	signal acc_ds: STD_LOGIC_VECTOR(31 downto 0);
	signal acc_um: STD_LOGIC_VECTOR(31 downto 0);
	signal acc_dm: STD_LOGIC_VECTOR(31 downto 0);
	signal acc_uh: STD_LOGIC_VECTOR(31 downto 0);
	
	signal led_us: STD_LOGIC_VECTOR(6 downto 0);
	signal led_ds: STD_LOGIC_VECTOR(6 downto 0);
	signal led_um: STD_LOGIC_VECTOR(6 downto 0);
	signal led_dm: STD_LOGIC_VECTOR(6 downto 0);
	signal led_uh: STD_LOGIC_VECTOR(6 downto 0);
	signal led_dh: STD_LOGIC_VECTOR(6 downto 0);
	
	signal mask: STD_LOGIC_VECTOR(5 downto 0);
	
	signal pulse_us: STD_LOGIC;
	signal pulse_ds: STD_LOGIC;
	signal pulse_um: STD_LOGIC;
	signal pulse_dm: STD_LOGIC;
	signal pulse_uh: STD_LOGIC;
begin
	pulsoBlink: entity work.pulsoDivisor port map(CLOCK_50, rst, FREQBLINK, pulse_blink);
	
	debounceIncrement: entity work.debouncer port map(pulse_blink, rst, increment_select, debounced_increment_select);
	
	debounceSpeed: entity work.debouncer port map(pulse_blink, rst, speed_select, debounced_speed_select);
	speedFactor: entity work.acumulador generic map(MAXVAL => 9) port map(debounced_speed_select, rst, acc_speed);
	getFreq: entity work.ULA port map(STD_LOGIC_VECTOR(FREQFPGA), acc_speed, "00", simulated_freq);
	pulsoSegundo: entity work.pulsoDivisor port map(CLOCK_50, rst, simulated_freq, pulse_us_root);
	
	pulse_us <= pulse_us_root XOR (mask(1) AND debounced_increment_select);
	pulsoDecSegundo: entity work.pulsoDivisor port map(pulse_us, rst, DECSEC, pulse_ds_root);
	pulse_ds <= pulse_ds_root XOR (mask(2) AND debounced_increment_select);
	pulsoMinuto: entity work.pulsoDivisor port map(pulse_ds, rst, MIN, pulse_um_root);
	pulse_um <= pulse_um_root XOR (mask(3) AND debounced_increment_select);
	pulsoDecMinuto: entity work.pulsoDivisor port map(pulse_um, rst, DECMIN, pulse_dm_root);
	pulse_dm <= pulse_dm_root XOR (mask(4) AND debounced_increment_select);
	pulsoHora: entity work.pulsoDivisor port map(pulse_dm, rst, HOUR, pulse_uh_root);
	pulse_uh <= pulse_uh_root XOR (mask(5) AND debounced_increment_select);
	
	debounceOption: entity work.debouncer port map(pulse_blink, rst, option_select, debounced_option_select);
	controlOption: entity work.acumulador generic map(MAXVAL => 5) port map(debounced_option_select, rst, acc_option);
	menuControl: entity work.menu_controller port map(pulse_blink, rst, acc_option, mask);
	
	segundo: entity work.acumulador generic map(MAXVAL => 9) port map(pulse_us, rst, acc_us);
	decSegundo: entity work.acumulador generic map(MAXVAL => 5) port map(pulse_ds, rst, acc_ds);
	minuto: entity work.acumulador generic map(MAXVAL => 9) port map(pulse_um, rst, acc_um);
	decMinuto: entity work.acumulador generic map(MAXVAL => 5) port map(pulse_dm, rst, acc_dm);
	hora: entity work.acumulador generic map(MAXVAL => 23) port map(pulse_uh, rst, acc_uh);
	
	--
	
	A6: entity work.conversorHex7seg port map(acc_us(3 downto 0), led_us);
	A7: entity work.conversorHex7seg port map(acc_ds(3 downto 0), led_ds);
	
	A8: entity work.conversorHex7seg port map(acc_um(3 downto 0), led_um);
	A9: entity work.conversorHex7seg port map(acc_dm(3 downto 0), led_dm);
	
	outputHour: entity work.hourDecoder port map(acc_uh, SW(0), led_uh, led_dh, HEX1);
	outputSpeed: entity work.conversorHex7seg port map(acc_speed(3 downto 0), HEX0);
	
	HEX2 <= led_us OR (6 downto 0 => mask(1));
	HEX3 <= led_ds OR (6 downto 0 => mask(2));
	HEX4 <= led_um OR (6 downto 0 => mask(3));
	HEX5 <= led_dm OR (6 downto 0 => mask(4));
	HEX6 <= led_uh OR (6 downto 0 => mask(5));
	HEX7 <= led_dh OR (6 downto 0 => mask(5)); --repetido propositalmente
end architecture;