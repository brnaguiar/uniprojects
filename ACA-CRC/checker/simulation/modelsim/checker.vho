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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/08/2020 14:48:32"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	checker IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic;
	error : OUT std_logic
	);
END checker;

-- Design Ports Information
-- error	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF checker IS
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
SIGNAL ww_data_in : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cR1|s_clkCounter[0]~12_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[1]~4_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[1]~5\ : std_logic;
SIGNAL \cR1|s_clkCounter[2]~6_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[2]~7\ : std_logic;
SIGNAL \cR1|s_clkCounter[3]~8_combout\ : std_logic;
SIGNAL \cR1|Equal0~0_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[3]~9\ : std_logic;
SIGNAL \cR1|s_clkCounter[4]~10_combout\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \xor3|out0~0_combout\ : std_logic;
SIGNAL \flipFlop3|Q~q\ : std_logic;
SIGNAL \xor4|out0~0_combout\ : std_logic;
SIGNAL \flipFlop4|Q~q\ : std_logic;
SIGNAL \flipFlop5|Q~q\ : std_logic;
SIGNAL \xor5|out0~0_combout\ : std_logic;
SIGNAL \flipFlop6|Q~q\ : std_logic;
SIGNAL \flipFlop7|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlop7|Q~q\ : std_logic;
SIGNAL \flipFlop8|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlop8|Q~q\ : std_logic;
SIGNAL \xor1|out0~0_combout\ : std_logic;
SIGNAL \flipFlop1|Q~q\ : std_logic;
SIGNAL \xor2|out0~0_combout\ : std_logic;
SIGNAL \flipFlop2|Q~q\ : std_logic;
SIGNAL \cR1|flag~0_combout\ : std_logic;
SIGNAL \cR1|flag~1_combout\ : std_logic;
SIGNAL \cR1|flag~2_combout\ : std_logic;
SIGNAL \cR1|flag~3_combout\ : std_logic;
SIGNAL \cR1|flag~q\ : std_logic;
SIGNAL \cR1|s_clkCounter\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y0_N9
\error~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cR1|flag~q\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y1_N14
\cR1|s_clkCounter[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|s_clkCounter[0]~12_combout\ = !\cR1|s_clkCounter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cR1|s_clkCounter\(0),
	combout => \cR1|s_clkCounter[0]~12_combout\);

-- Location: FF_X14_Y1_N15
\cR1|s_clkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cR1|s_clkCounter[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cR1|s_clkCounter\(0));

-- Location: LCCOMB_X14_Y1_N6
\cR1|s_clkCounter[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|s_clkCounter[1]~4_combout\ = (\cR1|s_clkCounter\(1) & (\cR1|s_clkCounter\(0) $ (VCC))) # (!\cR1|s_clkCounter\(1) & (\cR1|s_clkCounter\(0) & VCC))
-- \cR1|s_clkCounter[1]~5\ = CARRY((\cR1|s_clkCounter\(1) & \cR1|s_clkCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cR1|s_clkCounter\(1),
	datab => \cR1|s_clkCounter\(0),
	datad => VCC,
	combout => \cR1|s_clkCounter[1]~4_combout\,
	cout => \cR1|s_clkCounter[1]~5\);

-- Location: FF_X14_Y1_N7
\cR1|s_clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cR1|s_clkCounter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cR1|s_clkCounter\(1));

-- Location: LCCOMB_X14_Y1_N8
\cR1|s_clkCounter[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|s_clkCounter[2]~6_combout\ = (\cR1|s_clkCounter\(2) & (!\cR1|s_clkCounter[1]~5\)) # (!\cR1|s_clkCounter\(2) & ((\cR1|s_clkCounter[1]~5\) # (GND)))
-- \cR1|s_clkCounter[2]~7\ = CARRY((!\cR1|s_clkCounter[1]~5\) # (!\cR1|s_clkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cR1|s_clkCounter\(2),
	datad => VCC,
	cin => \cR1|s_clkCounter[1]~5\,
	combout => \cR1|s_clkCounter[2]~6_combout\,
	cout => \cR1|s_clkCounter[2]~7\);

-- Location: FF_X14_Y1_N9
\cR1|s_clkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cR1|s_clkCounter[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cR1|s_clkCounter\(2));

-- Location: LCCOMB_X14_Y1_N10
\cR1|s_clkCounter[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|s_clkCounter[3]~8_combout\ = (\cR1|s_clkCounter\(3) & (\cR1|s_clkCounter[2]~7\ $ (GND))) # (!\cR1|s_clkCounter\(3) & (!\cR1|s_clkCounter[2]~7\ & VCC))
-- \cR1|s_clkCounter[3]~9\ = CARRY((\cR1|s_clkCounter\(3) & !\cR1|s_clkCounter[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cR1|s_clkCounter\(3),
	datad => VCC,
	cin => \cR1|s_clkCounter[2]~7\,
	combout => \cR1|s_clkCounter[3]~8_combout\,
	cout => \cR1|s_clkCounter[3]~9\);

-- Location: FF_X14_Y1_N11
\cR1|s_clkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cR1|s_clkCounter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cR1|s_clkCounter\(3));

-- Location: LCCOMB_X14_Y1_N30
\cR1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|Equal0~0_combout\ = (!\cR1|s_clkCounter\(1) & (!\cR1|s_clkCounter\(0) & (!\cR1|s_clkCounter\(2) & \cR1|s_clkCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cR1|s_clkCounter\(1),
	datab => \cR1|s_clkCounter\(0),
	datac => \cR1|s_clkCounter\(2),
	datad => \cR1|s_clkCounter\(3),
	combout => \cR1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y1_N12
\cR1|s_clkCounter[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|s_clkCounter[4]~10_combout\ = \cR1|s_clkCounter[3]~9\ $ (\cR1|s_clkCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cR1|s_clkCounter\(4),
	cin => \cR1|s_clkCounter[3]~9\,
	combout => \cR1|s_clkCounter[4]~10_combout\);

-- Location: FF_X14_Y1_N13
\cR1|s_clkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cR1|s_clkCounter[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cR1|s_clkCounter\(4));

-- Location: IOIBUF_X14_Y0_N8
\data_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LCCOMB_X14_Y1_N24
\xor3|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor3|out0~0_combout\ = \flipFlop2|Q~q\ $ (\flipFlop8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipFlop2|Q~q\,
	datad => \flipFlop8|Q~q\,
	combout => \xor3|out0~0_combout\);

-- Location: FF_X14_Y1_N25
\flipFlop3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor3|out0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop3|Q~q\);

-- Location: LCCOMB_X14_Y1_N4
\xor4|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4|out0~0_combout\ = \flipFlop3|Q~q\ $ (\flipFlop8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipFlop3|Q~q\,
	datad => \flipFlop8|Q~q\,
	combout => \xor4|out0~0_combout\);

-- Location: FF_X14_Y1_N5
\flipFlop4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor4|out0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop4|Q~q\);

-- Location: FF_X14_Y1_N17
\flipFlop5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \flipFlop4|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop5|Q~q\);

-- Location: LCCOMB_X15_Y1_N24
\xor5|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor5|out0~0_combout\ = \flipFlop8|Q~q\ $ (\flipFlop5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlop8|Q~q\,
	datac => \flipFlop5|Q~q\,
	combout => \xor5|out0~0_combout\);

-- Location: FF_X15_Y1_N25
\flipFlop6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor5|out0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop6|Q~q\);

-- Location: LCCOMB_X14_Y1_N0
\flipFlop7|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlop7|Q~feeder_combout\ = \flipFlop6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlop6|Q~q\,
	combout => \flipFlop7|Q~feeder_combout\);

-- Location: FF_X14_Y1_N1
\flipFlop7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlop7|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop7|Q~q\);

-- Location: LCCOMB_X14_Y1_N2
\flipFlop8|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlop8|Q~feeder_combout\ = \flipFlop7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlop7|Q~q\,
	combout => \flipFlop8|Q~feeder_combout\);

-- Location: FF_X14_Y1_N3
\flipFlop8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlop8|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop8|Q~q\);

-- Location: LCCOMB_X14_Y1_N20
\xor1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor1|out0~0_combout\ = \data_in~input_o\ $ (\flipFlop8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in~input_o\,
	datad => \flipFlop8|Q~q\,
	combout => \xor1|out0~0_combout\);

-- Location: FF_X14_Y1_N21
\flipFlop1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor1|out0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop1|Q~q\);

-- Location: LCCOMB_X14_Y1_N22
\xor2|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor2|out0~0_combout\ = \flipFlop1|Q~q\ $ (\flipFlop8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipFlop1|Q~q\,
	datad => \flipFlop8|Q~q\,
	combout => \xor2|out0~0_combout\);

-- Location: FF_X14_Y1_N23
\flipFlop2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor2|out0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop2|Q~q\);

-- Location: LCCOMB_X14_Y1_N18
\cR1|flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~0_combout\ = (\flipFlop2|Q~q\) # ((\flipFlop1|Q~q\) # ((\flipFlop4|Q~q\) # (\flipFlop3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlop2|Q~q\,
	datab => \flipFlop1|Q~q\,
	datac => \flipFlop4|Q~q\,
	datad => \flipFlop3|Q~q\,
	combout => \cR1|flag~0_combout\);

-- Location: LCCOMB_X14_Y1_N16
\cR1|flag~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~1_combout\ = (\flipFlop7|Q~q\) # ((\flipFlop8|Q~q\) # ((\flipFlop5|Q~q\) # (\flipFlop6|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlop7|Q~q\,
	datab => \flipFlop8|Q~q\,
	datac => \flipFlop5|Q~q\,
	datad => \flipFlop6|Q~q\,
	combout => \cR1|flag~1_combout\);

-- Location: LCCOMB_X14_Y1_N28
\cR1|flag~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~2_combout\ = (\cR1|s_clkCounter\(4) & (\cR1|Equal0~0_combout\ & ((\cR1|flag~0_combout\) # (\cR1|flag~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cR1|s_clkCounter\(4),
	datab => \cR1|flag~0_combout\,
	datac => \cR1|Equal0~0_combout\,
	datad => \cR1|flag~1_combout\,
	combout => \cR1|flag~2_combout\);

-- Location: LCCOMB_X14_Y1_N26
\cR1|flag~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~3_combout\ = (\cR1|flag~2_combout\) # ((\cR1|flag~q\ & ((!\cR1|s_clkCounter\(4)) # (!\cR1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cR1|Equal0~0_combout\,
	datab => \cR1|s_clkCounter\(4),
	datac => \cR1|flag~q\,
	datad => \cR1|flag~2_combout\,
	combout => \cR1|flag~3_combout\);

-- Location: FF_X14_Y1_N27
\cR1|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cR1|flag~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cR1|flag~q\);

ww_error <= \error~output_o\;
END structure;


