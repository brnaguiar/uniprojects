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

-- DATE "12/07/2020 18:50:58"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
	checker_flag : OUT std_logic;
	rem_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END checker;

-- Design Ports Information
-- checker_flag	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_out[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_checker_flag : std_logic;
SIGNAL ww_rem_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \checker_flag~output_o\ : std_logic;
SIGNAL \rem_out[0]~output_o\ : std_logic;
SIGNAL \rem_out[1]~output_o\ : std_logic;
SIGNAL \rem_out[2]~output_o\ : std_logic;
SIGNAL \rem_out[3]~output_o\ : std_logic;
SIGNAL \rem_out[4]~output_o\ : std_logic;
SIGNAL \rem_out[5]~output_o\ : std_logic;
SIGNAL \rem_out[6]~output_o\ : std_logic;
SIGNAL \rem_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cR1|s_clkCounter[0]~12_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[1]~4_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[1]~5\ : std_logic;
SIGNAL \cR1|s_clkCounter[2]~6_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[2]~7\ : std_logic;
SIGNAL \cR1|s_clkCounter[3]~8_combout\ : std_logic;
SIGNAL \cR1|s_clkCounter[3]~9\ : std_logic;
SIGNAL \cR1|s_clkCounter[4]~10_combout\ : std_logic;
SIGNAL \cR1|flag~2_combout\ : std_logic;
SIGNAL \xor5|out0~0_combout\ : std_logic;
SIGNAL \flipFlop6|Q~q\ : std_logic;
SIGNAL \flipFlop7|Q~q\ : std_logic;
SIGNAL \flipFlop8|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlop8|Q~q\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \xor1|out0~0_combout\ : std_logic;
SIGNAL \flipFlop1|Q~q\ : std_logic;
SIGNAL \xor2|out0~0_combout\ : std_logic;
SIGNAL \flipFlop2|Q~q\ : std_logic;
SIGNAL \xor3|out0~0_combout\ : std_logic;
SIGNAL \flipFlop3|Q~q\ : std_logic;
SIGNAL \xor4|out0~0_combout\ : std_logic;
SIGNAL \flipFlop4|Q~q\ : std_logic;
SIGNAL \flipFlop5|Q~q\ : std_logic;
SIGNAL \cR1|flag~1_combout\ : std_logic;
SIGNAL \cR1|flag~0_combout\ : std_logic;
SIGNAL \cR1|flag~3_combout\ : std_logic;
SIGNAL \cR1|flag~4_combout\ : std_logic;
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
checker_flag <= ww_checker_flag;
rem_out <= ww_rem_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y24_N2
\checker_flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cR1|flag~q\,
	devoe => ww_devoe,
	o => \checker_flag~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\rem_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop1|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\rem_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop2|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\rem_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop3|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\rem_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop4|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\rem_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop5|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[4]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\rem_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop6|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\rem_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop7|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[6]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\rem_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlop8|Q~q\,
	devoe => ww_devoe,
	o => \rem_out[7]~output_o\);

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

-- Location: LCCOMB_X32_Y20_N2
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

-- Location: FF_X32_Y20_N3
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

-- Location: LCCOMB_X32_Y20_N6
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

-- Location: FF_X32_Y20_N7
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

-- Location: LCCOMB_X32_Y20_N8
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

-- Location: FF_X32_Y20_N9
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

-- Location: LCCOMB_X32_Y20_N10
\cR1|s_clkCounter[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|s_clkCounter[3]~8_combout\ = (\cR1|s_clkCounter\(3) & (\cR1|s_clkCounter[2]~7\ $ (GND))) # (!\cR1|s_clkCounter\(3) & (!\cR1|s_clkCounter[2]~7\ & VCC))
-- \cR1|s_clkCounter[3]~9\ = CARRY((\cR1|s_clkCounter\(3) & !\cR1|s_clkCounter[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cR1|s_clkCounter\(3),
	datad => VCC,
	cin => \cR1|s_clkCounter[2]~7\,
	combout => \cR1|s_clkCounter[3]~8_combout\,
	cout => \cR1|s_clkCounter[3]~9\);

-- Location: FF_X32_Y20_N11
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

-- Location: LCCOMB_X32_Y20_N12
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

-- Location: FF_X32_Y20_N13
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

-- Location: LCCOMB_X32_Y20_N4
\cR1|flag~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~2_combout\ = (!\cR1|s_clkCounter\(1) & (!\cR1|s_clkCounter\(0) & (!\cR1|s_clkCounter\(2) & \cR1|s_clkCounter\(3))))

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
	combout => \cR1|flag~2_combout\);

-- Location: LCCOMB_X32_Y20_N16
\xor5|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor5|out0~0_combout\ = \flipFlop5|Q~q\ $ (\flipFlop8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipFlop5|Q~q\,
	datad => \flipFlop8|Q~q\,
	combout => \xor5|out0~0_combout\);

-- Location: FF_X32_Y20_N17
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

-- Location: FF_X32_Y20_N15
\flipFlop7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \flipFlop6|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlop7|Q~q\);

-- Location: LCCOMB_X32_Y20_N28
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

-- Location: FF_X32_Y20_N29
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

-- Location: IOIBUF_X33_Y14_N1
\data_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LCCOMB_X32_Y20_N20
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

-- Location: FF_X32_Y20_N21
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

-- Location: LCCOMB_X32_Y20_N22
\xor2|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor2|out0~0_combout\ = \flipFlop8|Q~q\ $ (\flipFlop1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipFlop8|Q~q\,
	datad => \flipFlop1|Q~q\,
	combout => \xor2|out0~0_combout\);

-- Location: FF_X32_Y20_N23
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

-- Location: LCCOMB_X32_Y20_N18
\xor3|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor3|out0~0_combout\ = \flipFlop2|Q~q\ $ (\flipFlop8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipFlop2|Q~q\,
	datad => \flipFlop8|Q~q\,
	combout => \xor3|out0~0_combout\);

-- Location: FF_X32_Y20_N19
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

-- Location: LCCOMB_X32_Y20_N26
\xor4|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4|out0~0_combout\ = \flipFlop3|Q~q\ $ (\flipFlop8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipFlop3|Q~q\,
	datad => \flipFlop8|Q~q\,
	combout => \xor4|out0~0_combout\);

-- Location: FF_X32_Y20_N27
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

-- Location: FF_X32_Y20_N1
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

-- Location: LCCOMB_X32_Y20_N14
\cR1|flag~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~1_combout\ = (!\flipFlop5|Q~q\ & (!\flipFlop6|Q~q\ & (!\flipFlop7|Q~q\ & !\flipFlop8|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlop5|Q~q\,
	datab => \flipFlop6|Q~q\,
	datac => \flipFlop7|Q~q\,
	datad => \flipFlop8|Q~q\,
	combout => \cR1|flag~1_combout\);

-- Location: LCCOMB_X32_Y20_N0
\cR1|flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~0_combout\ = (!\flipFlop2|Q~q\ & (!\flipFlop1|Q~q\ & (!\flipFlop4|Q~q\ & !\flipFlop3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlop2|Q~q\,
	datab => \flipFlop1|Q~q\,
	datac => \flipFlop4|Q~q\,
	datad => \flipFlop3|Q~q\,
	combout => \cR1|flag~0_combout\);

-- Location: LCCOMB_X32_Y20_N24
\cR1|flag~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~3_combout\ = (\cR1|s_clkCounter\(4) & (\cR1|flag~2_combout\ & (\cR1|flag~1_combout\ & \cR1|flag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cR1|s_clkCounter\(4),
	datab => \cR1|flag~2_combout\,
	datac => \cR1|flag~1_combout\,
	datad => \cR1|flag~0_combout\,
	combout => \cR1|flag~3_combout\);

-- Location: LCCOMB_X32_Y20_N30
\cR1|flag~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cR1|flag~4_combout\ = (\cR1|flag~q\) # (\cR1|flag~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cR1|flag~q\,
	datad => \cR1|flag~3_combout\,
	combout => \cR1|flag~4_combout\);

-- Location: FF_X32_Y20_N31
\cR1|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cR1|flag~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cR1|flag~q\);

ww_checker_flag <= \checker_flag~output_o\;

ww_rem_out(0) <= \rem_out[0]~output_o\;

ww_rem_out(1) <= \rem_out[1]~output_o\;

ww_rem_out(2) <= \rem_out[2]~output_o\;

ww_rem_out(3) <= \rem_out[3]~output_o\;

ww_rem_out(4) <= \rem_out[4]~output_o\;

ww_rem_out(5) <= \rem_out[5]~output_o\;

ww_rem_out(6) <= \rem_out[6]~output_o\;

ww_rem_out(7) <= \rem_out[7]~output_o\;
END structure;


