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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/27/2018 19:39:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pulsoSegundo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pulsoSegundo_vhd_vec_tst IS
END pulsoSegundo_vhd_vec_tst;
ARCHITECTURE pulsoSegundo_arch OF pulsoSegundo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_sec : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(30 DOWNTO 0);
COMPONENT pulsoSegundo
	PORT (
	clk : IN STD_LOGIC;
	clk_sec : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	state : INOUT STD_LOGIC_VECTOR(30 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pulsoSegundo
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_sec => clk_sec,
	rst => rst,
	state => state
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- state[30]
t_prcs_state_30: PROCESS
BEGIN
	state(30) <= 'Z';
WAIT;
END PROCESS t_prcs_state_30;
-- state[29]
t_prcs_state_29: PROCESS
BEGIN
	state(29) <= 'Z';
WAIT;
END PROCESS t_prcs_state_29;
-- state[28]
t_prcs_state_28: PROCESS
BEGIN
	state(28) <= 'Z';
WAIT;
END PROCESS t_prcs_state_28;
-- state[27]
t_prcs_state_27: PROCESS
BEGIN
	state(27) <= 'Z';
WAIT;
END PROCESS t_prcs_state_27;
-- state[26]
t_prcs_state_26: PROCESS
BEGIN
	state(26) <= 'Z';
WAIT;
END PROCESS t_prcs_state_26;
-- state[25]
t_prcs_state_25: PROCESS
BEGIN
	state(25) <= 'Z';
WAIT;
END PROCESS t_prcs_state_25;
-- state[24]
t_prcs_state_24: PROCESS
BEGIN
	state(24) <= 'Z';
WAIT;
END PROCESS t_prcs_state_24;
-- state[23]
t_prcs_state_23: PROCESS
BEGIN
	state(23) <= 'Z';
WAIT;
END PROCESS t_prcs_state_23;
-- state[22]
t_prcs_state_22: PROCESS
BEGIN
	state(22) <= 'Z';
WAIT;
END PROCESS t_prcs_state_22;
-- state[21]
t_prcs_state_21: PROCESS
BEGIN
	state(21) <= 'Z';
WAIT;
END PROCESS t_prcs_state_21;
-- state[20]
t_prcs_state_20: PROCESS
BEGIN
	state(20) <= 'Z';
WAIT;
END PROCESS t_prcs_state_20;
-- state[19]
t_prcs_state_19: PROCESS
BEGIN
	state(19) <= 'Z';
WAIT;
END PROCESS t_prcs_state_19;
-- state[18]
t_prcs_state_18: PROCESS
BEGIN
	state(18) <= 'Z';
WAIT;
END PROCESS t_prcs_state_18;
-- state[17]
t_prcs_state_17: PROCESS
BEGIN
	state(17) <= 'Z';
WAIT;
END PROCESS t_prcs_state_17;
-- state[16]
t_prcs_state_16: PROCESS
BEGIN
	state(16) <= 'Z';
WAIT;
END PROCESS t_prcs_state_16;
-- state[15]
t_prcs_state_15: PROCESS
BEGIN
	state(15) <= 'Z';
WAIT;
END PROCESS t_prcs_state_15;
-- state[14]
t_prcs_state_14: PROCESS
BEGIN
	state(14) <= 'Z';
WAIT;
END PROCESS t_prcs_state_14;
-- state[13]
t_prcs_state_13: PROCESS
BEGIN
	state(13) <= 'Z';
WAIT;
END PROCESS t_prcs_state_13;
-- state[12]
t_prcs_state_12: PROCESS
BEGIN
	state(12) <= 'Z';
WAIT;
END PROCESS t_prcs_state_12;
-- state[11]
t_prcs_state_11: PROCESS
BEGIN
	state(11) <= 'Z';
WAIT;
END PROCESS t_prcs_state_11;
-- state[10]
t_prcs_state_10: PROCESS
BEGIN
	state(10) <= 'Z';
WAIT;
END PROCESS t_prcs_state_10;
-- state[9]
t_prcs_state_9: PROCESS
BEGIN
	state(9) <= 'Z';
WAIT;
END PROCESS t_prcs_state_9;
-- state[8]
t_prcs_state_8: PROCESS
BEGIN
	state(8) <= 'Z';
WAIT;
END PROCESS t_prcs_state_8;
-- state[7]
t_prcs_state_7: PROCESS
BEGIN
	state(7) <= 'Z';
WAIT;
END PROCESS t_prcs_state_7;
-- state[6]
t_prcs_state_6: PROCESS
BEGIN
	state(6) <= 'Z';
WAIT;
END PROCESS t_prcs_state_6;
-- state[5]
t_prcs_state_5: PROCESS
BEGIN
	state(5) <= 'Z';
WAIT;
END PROCESS t_prcs_state_5;
-- state[4]
t_prcs_state_4: PROCESS
BEGIN
	state(4) <= 'Z';
WAIT;
END PROCESS t_prcs_state_4;
-- state[3]
t_prcs_state_3: PROCESS
BEGIN
	state(3) <= 'Z';
WAIT;
END PROCESS t_prcs_state_3;
-- state[2]
t_prcs_state_2: PROCESS
BEGIN
	state(2) <= 'Z';
WAIT;
END PROCESS t_prcs_state_2;
-- state[1]
t_prcs_state_1: PROCESS
BEGIN
	state(1) <= 'Z';
WAIT;
END PROCESS t_prcs_state_1;
-- state[0]
t_prcs_state_0: PROCESS
BEGIN
	state(0) <= 'Z';
WAIT;
END PROCESS t_prcs_state_0;
END pulsoSegundo_arch;
