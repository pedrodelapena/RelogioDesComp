-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/01/2018 13:17:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pulsoSegundo IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	clk_sec : BUFFER std_logic
	);
END pulsoSegundo;

ARCHITECTURE structure OF pulsoSegundo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk_sec : std_logic;
SIGNAL \clk_sec~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \B0|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \B0|Add0~1\ : std_logic;
SIGNAL \B0|Add0~2_combout\ : std_logic;
SIGNAL \cnt_in~1_combout\ : std_logic;
SIGNAL \B0|Add0~3\ : std_logic;
SIGNAL \B0|Add0~4_combout\ : std_logic;
SIGNAL \B0|Add0~5\ : std_logic;
SIGNAL \B0|Add0~6_combout\ : std_logic;
SIGNAL \cnt_in~0_combout\ : std_logic;
SIGNAL \B0|Add0~7\ : std_logic;
SIGNAL \B0|Add0~8_combout\ : std_logic;
SIGNAL \B0|Add0~9\ : std_logic;
SIGNAL \B0|Add0~10_combout\ : std_logic;
SIGNAL \B0|Add0~11\ : std_logic;
SIGNAL \B0|Add0~12_combout\ : std_logic;
SIGNAL \B0|Add0~13\ : std_logic;
SIGNAL \B0|Add0~14_combout\ : std_logic;
SIGNAL \B0|Add0~15\ : std_logic;
SIGNAL \B0|Add0~16_combout\ : std_logic;
SIGNAL \B0|Add0~17\ : std_logic;
SIGNAL \B0|Add0~18_combout\ : std_logic;
SIGNAL \B0|Add0~19\ : std_logic;
SIGNAL \B0|Add0~20_combout\ : std_logic;
SIGNAL \B0|Add0~21\ : std_logic;
SIGNAL \B0|Add0~22_combout\ : std_logic;
SIGNAL \B0|Add0~23\ : std_logic;
SIGNAL \B0|Add0~24_combout\ : std_logic;
SIGNAL \B0|Add0~25\ : std_logic;
SIGNAL \B0|Add0~26_combout\ : std_logic;
SIGNAL \B0|Add0~27\ : std_logic;
SIGNAL \B0|Add0~28_combout\ : std_logic;
SIGNAL \B0|Add0~29\ : std_logic;
SIGNAL \B0|Add0~30_combout\ : std_logic;
SIGNAL \B0|Add0~31\ : std_logic;
SIGNAL \B0|Add0~32_combout\ : std_logic;
SIGNAL \B0|Add0~33\ : std_logic;
SIGNAL \B0|Add0~34_combout\ : std_logic;
SIGNAL \B0|Add0~35\ : std_logic;
SIGNAL \B0|Add0~36_combout\ : std_logic;
SIGNAL \B0|Add0~37\ : std_logic;
SIGNAL \B0|Add0~38_combout\ : std_logic;
SIGNAL \B0|Add0~39\ : std_logic;
SIGNAL \B0|Add0~40_combout\ : std_logic;
SIGNAL \B0|Add0~41\ : std_logic;
SIGNAL \B0|Add0~42_combout\ : std_logic;
SIGNAL \B0|Add0~43\ : std_logic;
SIGNAL \B0|Add0~44_combout\ : std_logic;
SIGNAL \B0|Add0~45\ : std_logic;
SIGNAL \B0|Add0~46_combout\ : std_logic;
SIGNAL \B0|Add0~47\ : std_logic;
SIGNAL \B0|Add0~48_combout\ : std_logic;
SIGNAL \B0|Add0~49\ : std_logic;
SIGNAL \B0|Add0~50_combout\ : std_logic;
SIGNAL \B0|Add0~51\ : std_logic;
SIGNAL \B0|Add0~52_combout\ : std_logic;
SIGNAL \B0|Add0~53\ : std_logic;
SIGNAL \B0|Add0~54_combout\ : std_logic;
SIGNAL \B0|Add0~55\ : std_logic;
SIGNAL \B0|Add0~56_combout\ : std_logic;
SIGNAL \B0|Add0~57\ : std_logic;
SIGNAL \B0|Add0~58_combout\ : std_logic;
SIGNAL \B0|Add0~59\ : std_logic;
SIGNAL \B0|Add0~60_combout\ : std_logic;
SIGNAL \B0|Add0~61\ : std_logic;
SIGNAL \B0|Add0~62_combout\ : std_logic;
SIGNAL \B0|Equal1~0_combout\ : std_logic;
SIGNAL \B0|Equal1~1_combout\ : std_logic;
SIGNAL \B0|Equal1~2_combout\ : std_logic;
SIGNAL \B0|Equal1~3_combout\ : std_logic;
SIGNAL \B0|Equal1~4_combout\ : std_logic;
SIGNAL \B0|Equal1~5_combout\ : std_logic;
SIGNAL \B0|Equal1~6_combout\ : std_logic;
SIGNAL \B0|Equal1~7_combout\ : std_logic;
SIGNAL \B0|Equal1~8_combout\ : std_logic;
SIGNAL \B0|Equal1~9_combout\ : std_logic;
SIGNAL \B0|Equal1~10_combout\ : std_logic;
SIGNAL \clk_sec~0_combout\ : std_logic;
SIGNAL \clk_sec~reg0_q\ : std_logic;
SIGNAL cnt_in : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
clk_sec <= ww_clk_sec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

\clk_sec~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_sec~reg0_q\,
	devoe => ww_devoe,
	o => \clk_sec~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\B0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~0_combout\ = cnt_in(0) $ (VCC)
-- \B0|Add0~1\ = CARRY(cnt_in(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(0),
	datad => VCC,
	combout => \B0|Add0~0_combout\,
	cout => \B0|Add0~1\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\cnt_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(0));

\B0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~2_combout\ = (cnt_in(1) & (!\B0|Add0~1\)) # (!cnt_in(1) & ((\B0|Add0~1\) # (GND)))
-- \B0|Add0~3\ = CARRY((!\B0|Add0~1\) # (!cnt_in(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(1),
	datad => VCC,
	cin => \B0|Add0~1\,
	combout => \B0|Add0~2_combout\,
	cout => \B0|Add0~3\);

\cnt_in~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_in~1_combout\ = (\B0|Add0~2_combout\ & !\B0|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0|Add0~2_combout\,
	datad => \B0|Equal1~10_combout\,
	combout => \cnt_in~1_combout\);

\cnt_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt_in~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(1));

\B0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~4_combout\ = (cnt_in(2) & (\B0|Add0~3\ $ (GND))) # (!cnt_in(2) & (!\B0|Add0~3\ & VCC))
-- \B0|Add0~5\ = CARRY((cnt_in(2) & !\B0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(2),
	datad => VCC,
	cin => \B0|Add0~3\,
	combout => \B0|Add0~4_combout\,
	cout => \B0|Add0~5\);

\cnt_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(2));

\B0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~6_combout\ = (cnt_in(3) & (!\B0|Add0~5\)) # (!cnt_in(3) & ((\B0|Add0~5\) # (GND)))
-- \B0|Add0~7\ = CARRY((!\B0|Add0~5\) # (!cnt_in(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(3),
	datad => VCC,
	cin => \B0|Add0~5\,
	combout => \B0|Add0~6_combout\,
	cout => \B0|Add0~7\);

\cnt_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_in~0_combout\ = (\B0|Add0~6_combout\ & !\B0|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0|Add0~6_combout\,
	datad => \B0|Equal1~10_combout\,
	combout => \cnt_in~0_combout\);

\cnt_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt_in~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(3));

\B0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~8_combout\ = (cnt_in(4) & (\B0|Add0~7\ $ (GND))) # (!cnt_in(4) & (!\B0|Add0~7\ & VCC))
-- \B0|Add0~9\ = CARRY((cnt_in(4) & !\B0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(4),
	datad => VCC,
	cin => \B0|Add0~7\,
	combout => \B0|Add0~8_combout\,
	cout => \B0|Add0~9\);

\cnt_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(4));

\B0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~10_combout\ = (cnt_in(5) & (!\B0|Add0~9\)) # (!cnt_in(5) & ((\B0|Add0~9\) # (GND)))
-- \B0|Add0~11\ = CARRY((!\B0|Add0~9\) # (!cnt_in(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(5),
	datad => VCC,
	cin => \B0|Add0~9\,
	combout => \B0|Add0~10_combout\,
	cout => \B0|Add0~11\);

\cnt_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(5));

\B0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~12_combout\ = (cnt_in(6) & (\B0|Add0~11\ $ (GND))) # (!cnt_in(6) & (!\B0|Add0~11\ & VCC))
-- \B0|Add0~13\ = CARRY((cnt_in(6) & !\B0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(6),
	datad => VCC,
	cin => \B0|Add0~11\,
	combout => \B0|Add0~12_combout\,
	cout => \B0|Add0~13\);

\cnt_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(6));

\B0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~14_combout\ = (cnt_in(7) & (!\B0|Add0~13\)) # (!cnt_in(7) & ((\B0|Add0~13\) # (GND)))
-- \B0|Add0~15\ = CARRY((!\B0|Add0~13\) # (!cnt_in(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(7),
	datad => VCC,
	cin => \B0|Add0~13\,
	combout => \B0|Add0~14_combout\,
	cout => \B0|Add0~15\);

\cnt_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(7));

\B0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~16_combout\ = (cnt_in(8) & (\B0|Add0~15\ $ (GND))) # (!cnt_in(8) & (!\B0|Add0~15\ & VCC))
-- \B0|Add0~17\ = CARRY((cnt_in(8) & !\B0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(8),
	datad => VCC,
	cin => \B0|Add0~15\,
	combout => \B0|Add0~16_combout\,
	cout => \B0|Add0~17\);

\cnt_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(8));

\B0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~18_combout\ = (cnt_in(9) & (!\B0|Add0~17\)) # (!cnt_in(9) & ((\B0|Add0~17\) # (GND)))
-- \B0|Add0~19\ = CARRY((!\B0|Add0~17\) # (!cnt_in(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(9),
	datad => VCC,
	cin => \B0|Add0~17\,
	combout => \B0|Add0~18_combout\,
	cout => \B0|Add0~19\);

\cnt_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(9));

\B0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~20_combout\ = (cnt_in(10) & (\B0|Add0~19\ $ (GND))) # (!cnt_in(10) & (!\B0|Add0~19\ & VCC))
-- \B0|Add0~21\ = CARRY((cnt_in(10) & !\B0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(10),
	datad => VCC,
	cin => \B0|Add0~19\,
	combout => \B0|Add0~20_combout\,
	cout => \B0|Add0~21\);

\cnt_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(10));

\B0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~22_combout\ = (cnt_in(11) & (!\B0|Add0~21\)) # (!cnt_in(11) & ((\B0|Add0~21\) # (GND)))
-- \B0|Add0~23\ = CARRY((!\B0|Add0~21\) # (!cnt_in(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(11),
	datad => VCC,
	cin => \B0|Add0~21\,
	combout => \B0|Add0~22_combout\,
	cout => \B0|Add0~23\);

\cnt_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(11));

\B0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~24_combout\ = (cnt_in(12) & (\B0|Add0~23\ $ (GND))) # (!cnt_in(12) & (!\B0|Add0~23\ & VCC))
-- \B0|Add0~25\ = CARRY((cnt_in(12) & !\B0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(12),
	datad => VCC,
	cin => \B0|Add0~23\,
	combout => \B0|Add0~24_combout\,
	cout => \B0|Add0~25\);

\cnt_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(12));

\B0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~26_combout\ = (cnt_in(13) & (!\B0|Add0~25\)) # (!cnt_in(13) & ((\B0|Add0~25\) # (GND)))
-- \B0|Add0~27\ = CARRY((!\B0|Add0~25\) # (!cnt_in(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(13),
	datad => VCC,
	cin => \B0|Add0~25\,
	combout => \B0|Add0~26_combout\,
	cout => \B0|Add0~27\);

\cnt_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(13));

\B0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~28_combout\ = (cnt_in(14) & (\B0|Add0~27\ $ (GND))) # (!cnt_in(14) & (!\B0|Add0~27\ & VCC))
-- \B0|Add0~29\ = CARRY((cnt_in(14) & !\B0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(14),
	datad => VCC,
	cin => \B0|Add0~27\,
	combout => \B0|Add0~28_combout\,
	cout => \B0|Add0~29\);

\cnt_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(14));

\B0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~30_combout\ = (cnt_in(15) & (!\B0|Add0~29\)) # (!cnt_in(15) & ((\B0|Add0~29\) # (GND)))
-- \B0|Add0~31\ = CARRY((!\B0|Add0~29\) # (!cnt_in(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(15),
	datad => VCC,
	cin => \B0|Add0~29\,
	combout => \B0|Add0~30_combout\,
	cout => \B0|Add0~31\);

\cnt_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(15));

\B0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~32_combout\ = (cnt_in(16) & (\B0|Add0~31\ $ (GND))) # (!cnt_in(16) & (!\B0|Add0~31\ & VCC))
-- \B0|Add0~33\ = CARRY((cnt_in(16) & !\B0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(16),
	datad => VCC,
	cin => \B0|Add0~31\,
	combout => \B0|Add0~32_combout\,
	cout => \B0|Add0~33\);

\cnt_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(16));

\B0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~34_combout\ = (cnt_in(17) & (!\B0|Add0~33\)) # (!cnt_in(17) & ((\B0|Add0~33\) # (GND)))
-- \B0|Add0~35\ = CARRY((!\B0|Add0~33\) # (!cnt_in(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(17),
	datad => VCC,
	cin => \B0|Add0~33\,
	combout => \B0|Add0~34_combout\,
	cout => \B0|Add0~35\);

\cnt_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(17));

\B0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~36_combout\ = (cnt_in(18) & (\B0|Add0~35\ $ (GND))) # (!cnt_in(18) & (!\B0|Add0~35\ & VCC))
-- \B0|Add0~37\ = CARRY((cnt_in(18) & !\B0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(18),
	datad => VCC,
	cin => \B0|Add0~35\,
	combout => \B0|Add0~36_combout\,
	cout => \B0|Add0~37\);

\cnt_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(18));

\B0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~38_combout\ = (cnt_in(19) & (!\B0|Add0~37\)) # (!cnt_in(19) & ((\B0|Add0~37\) # (GND)))
-- \B0|Add0~39\ = CARRY((!\B0|Add0~37\) # (!cnt_in(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(19),
	datad => VCC,
	cin => \B0|Add0~37\,
	combout => \B0|Add0~38_combout\,
	cout => \B0|Add0~39\);

\cnt_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(19));

\B0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~40_combout\ = (cnt_in(20) & (\B0|Add0~39\ $ (GND))) # (!cnt_in(20) & (!\B0|Add0~39\ & VCC))
-- \B0|Add0~41\ = CARRY((cnt_in(20) & !\B0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(20),
	datad => VCC,
	cin => \B0|Add0~39\,
	combout => \B0|Add0~40_combout\,
	cout => \B0|Add0~41\);

\cnt_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(20));

\B0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~42_combout\ = (cnt_in(21) & (!\B0|Add0~41\)) # (!cnt_in(21) & ((\B0|Add0~41\) # (GND)))
-- \B0|Add0~43\ = CARRY((!\B0|Add0~41\) # (!cnt_in(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(21),
	datad => VCC,
	cin => \B0|Add0~41\,
	combout => \B0|Add0~42_combout\,
	cout => \B0|Add0~43\);

\cnt_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(21));

\B0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~44_combout\ = (cnt_in(22) & (\B0|Add0~43\ $ (GND))) # (!cnt_in(22) & (!\B0|Add0~43\ & VCC))
-- \B0|Add0~45\ = CARRY((cnt_in(22) & !\B0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(22),
	datad => VCC,
	cin => \B0|Add0~43\,
	combout => \B0|Add0~44_combout\,
	cout => \B0|Add0~45\);

\cnt_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(22));

\B0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~46_combout\ = (cnt_in(23) & (!\B0|Add0~45\)) # (!cnt_in(23) & ((\B0|Add0~45\) # (GND)))
-- \B0|Add0~47\ = CARRY((!\B0|Add0~45\) # (!cnt_in(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(23),
	datad => VCC,
	cin => \B0|Add0~45\,
	combout => \B0|Add0~46_combout\,
	cout => \B0|Add0~47\);

\cnt_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(23));

\B0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~48_combout\ = (cnt_in(24) & (\B0|Add0~47\ $ (GND))) # (!cnt_in(24) & (!\B0|Add0~47\ & VCC))
-- \B0|Add0~49\ = CARRY((cnt_in(24) & !\B0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(24),
	datad => VCC,
	cin => \B0|Add0~47\,
	combout => \B0|Add0~48_combout\,
	cout => \B0|Add0~49\);

\cnt_in[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(24));

\B0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~50_combout\ = (cnt_in(25) & (!\B0|Add0~49\)) # (!cnt_in(25) & ((\B0|Add0~49\) # (GND)))
-- \B0|Add0~51\ = CARRY((!\B0|Add0~49\) # (!cnt_in(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(25),
	datad => VCC,
	cin => \B0|Add0~49\,
	combout => \B0|Add0~50_combout\,
	cout => \B0|Add0~51\);

\cnt_in[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(25));

\B0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~52_combout\ = (cnt_in(26) & (\B0|Add0~51\ $ (GND))) # (!cnt_in(26) & (!\B0|Add0~51\ & VCC))
-- \B0|Add0~53\ = CARRY((cnt_in(26) & !\B0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(26),
	datad => VCC,
	cin => \B0|Add0~51\,
	combout => \B0|Add0~52_combout\,
	cout => \B0|Add0~53\);

\cnt_in[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(26));

\B0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~54_combout\ = (cnt_in(27) & (!\B0|Add0~53\)) # (!cnt_in(27) & ((\B0|Add0~53\) # (GND)))
-- \B0|Add0~55\ = CARRY((!\B0|Add0~53\) # (!cnt_in(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(27),
	datad => VCC,
	cin => \B0|Add0~53\,
	combout => \B0|Add0~54_combout\,
	cout => \B0|Add0~55\);

\cnt_in[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(27));

\B0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~56_combout\ = (cnt_in(28) & (\B0|Add0~55\ $ (GND))) # (!cnt_in(28) & (!\B0|Add0~55\ & VCC))
-- \B0|Add0~57\ = CARRY((cnt_in(28) & !\B0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(28),
	datad => VCC,
	cin => \B0|Add0~55\,
	combout => \B0|Add0~56_combout\,
	cout => \B0|Add0~57\);

\cnt_in[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(28));

\B0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~58_combout\ = (cnt_in(29) & (!\B0|Add0~57\)) # (!cnt_in(29) & ((\B0|Add0~57\) # (GND)))
-- \B0|Add0~59\ = CARRY((!\B0|Add0~57\) # (!cnt_in(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(29),
	datad => VCC,
	cin => \B0|Add0~57\,
	combout => \B0|Add0~58_combout\,
	cout => \B0|Add0~59\);

\cnt_in[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(29));

\B0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~60_combout\ = (cnt_in(30) & (\B0|Add0~59\ $ (GND))) # (!cnt_in(30) & (!\B0|Add0~59\ & VCC))
-- \B0|Add0~61\ = CARRY((cnt_in(30) & !\B0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(30),
	datad => VCC,
	cin => \B0|Add0~59\,
	combout => \B0|Add0~60_combout\,
	cout => \B0|Add0~61\);

\cnt_in[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(30));

\B0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Add0~62_combout\ = cnt_in(31) $ (\B0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(31),
	cin => \B0|Add0~61\,
	combout => \B0|Add0~62_combout\);

\cnt_in[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B0|Add0~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_in(31));

\B0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~0_combout\ = (!cnt_in(31) & (!cnt_in(30) & (!cnt_in(29) & !cnt_in(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(31),
	datab => cnt_in(30),
	datac => cnt_in(29),
	datad => cnt_in(28),
	combout => \B0|Equal1~0_combout\);

\B0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~1_combout\ = (!cnt_in(27) & (!cnt_in(26) & (!cnt_in(25) & !cnt_in(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(27),
	datab => cnt_in(26),
	datac => cnt_in(25),
	datad => cnt_in(24),
	combout => \B0|Equal1~1_combout\);

\B0|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~2_combout\ = (!cnt_in(23) & (!cnt_in(22) & (!cnt_in(21) & !cnt_in(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(23),
	datab => cnt_in(22),
	datac => cnt_in(21),
	datad => cnt_in(20),
	combout => \B0|Equal1~2_combout\);

\B0|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~3_combout\ = (!cnt_in(19) & (!cnt_in(18) & (!cnt_in(17) & !cnt_in(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(19),
	datab => cnt_in(18),
	datac => cnt_in(17),
	datad => cnt_in(16),
	combout => \B0|Equal1~3_combout\);

\B0|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~4_combout\ = (\B0|Equal1~0_combout\ & (\B0|Equal1~1_combout\ & (\B0|Equal1~2_combout\ & \B0|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0|Equal1~0_combout\,
	datab => \B0|Equal1~1_combout\,
	datac => \B0|Equal1~2_combout\,
	datad => \B0|Equal1~3_combout\,
	combout => \B0|Equal1~4_combout\);

\B0|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~5_combout\ = (!cnt_in(15) & (!cnt_in(14) & (!cnt_in(13) & !cnt_in(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(15),
	datab => cnt_in(14),
	datac => cnt_in(13),
	datad => cnt_in(12),
	combout => \B0|Equal1~5_combout\);

\B0|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~6_combout\ = (!cnt_in(11) & !cnt_in(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_in(11),
	datad => cnt_in(10),
	combout => \B0|Equal1~6_combout\);

\B0|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~7_combout\ = (\B0|Equal1~5_combout\ & (\B0|Equal1~6_combout\ & (!cnt_in(9) & !cnt_in(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0|Equal1~5_combout\,
	datab => \B0|Equal1~6_combout\,
	datac => cnt_in(9),
	datad => cnt_in(8),
	combout => \B0|Equal1~7_combout\);

\B0|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~8_combout\ = (!cnt_in(7) & (!cnt_in(6) & (!cnt_in(5) & !cnt_in(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(7),
	datab => cnt_in(6),
	datac => cnt_in(5),
	datad => cnt_in(4),
	combout => \B0|Equal1~8_combout\);

\B0|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~9_combout\ = (cnt_in(3) & (cnt_in(0) & (!cnt_in(2) & !cnt_in(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_in(3),
	datab => cnt_in(0),
	datac => cnt_in(2),
	datad => cnt_in(1),
	combout => \B0|Equal1~9_combout\);

\B0|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B0|Equal1~10_combout\ = (\B0|Equal1~4_combout\ & (\B0|Equal1~7_combout\ & (\B0|Equal1~8_combout\ & \B0|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0|Equal1~4_combout\,
	datab => \B0|Equal1~7_combout\,
	datac => \B0|Equal1~8_combout\,
	datad => \B0|Equal1~9_combout\,
	combout => \B0|Equal1~10_combout\);

\clk_sec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_sec~0_combout\ = \clk_sec~reg0_q\ $ (\B0|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_sec~reg0_q\,
	datad => \B0|Equal1~10_combout\,
	combout => \clk_sec~0_combout\);

\clk_sec~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_sec~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_sec~reg0_q\);

ww_clk_sec <= \clk_sec~output_o\;
END structure;


