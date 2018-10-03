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
-- Generated on "09/27/2018 20:01:53"
                                                             
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
SIGNAL state : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT pulsoSegundo
	PORT (
	clk : IN STD_LOGIC;
	clk_sec : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	state : INOUT STD_LOGIC_VECTOR(2 DOWNTO 0)
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
