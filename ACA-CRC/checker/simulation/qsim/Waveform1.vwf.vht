-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/07/2020 18:46:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          checker
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY checker_vhd_vec_tst IS
END checker_vhd_vec_tst;
ARCHITECTURE checker_arch OF checker_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL checker_flag : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC;
SIGNAL rem_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT checker
	PORT (
	checker_flag : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC;
	rem_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : checker
	PORT MAP (
-- list connections between master ports and signals
	checker_flag => checker_flag,
	clk => clk,
	data_in => data_in,
	rem_out => rem_out
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

-- data_in
t_prcs_data_in: PROCESS
BEGIN
	data_in <= '1';
	WAIT FOR 20000 ps;
	data_in <= '0';
	WAIT FOR 20000 ps;
	data_in <= '1';
	WAIT FOR 20000 ps;
	data_in <= '0';
	WAIT FOR 20000 ps;
	data_in <= '1';
	WAIT FOR 20000 ps;
	data_in <= '0';
	WAIT FOR 20000 ps;
	data_in <= '1';
	WAIT FOR 20000 ps;
	data_in <= '0';
	WAIT FOR 40000 ps;
	data_in <= '1';
	WAIT FOR 10000 ps;
	data_in <= '0';
	WAIT FOR 10000 ps;
	data_in <= '1';
	WAIT FOR 20000 ps;
	data_in <= '0';
WAIT;
END PROCESS t_prcs_data_in;
END checker_arch;
