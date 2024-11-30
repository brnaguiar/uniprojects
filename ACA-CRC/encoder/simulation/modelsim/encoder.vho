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

-- DATE "12/06/2020 17:37:17"

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


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	x : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END encoder;

-- Design Ports Information
-- x[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[4]~output_o\ : std_logic;
SIGNAL \x[5]~output_o\ : std_logic;
SIGNAL \x[6]~output_o\ : std_logic;
SIGNAL \x[7]~output_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \Z1|out0~1_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Z1|out0~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Z1|out0~2_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \E1|out0~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \E1|out0~1_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \V1|out0~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \H1|out0~0_combout\ : std_logic;
SIGNAL \N1|out0~0_combout\ : std_logic;
SIGNAL \R1|out0~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \B1|out0~0_combout\ : std_logic;
SIGNAL \R1|out0~1_combout\ : std_logic;
SIGNAL \N1|out0~1_combout\ : std_logic;
SIGNAL \L1|out0~0_combout\ : std_logic;
SIGNAL \L1|out0~1_combout\ : std_logic;
SIGNAL \D0|out0~0_combout\ : std_logic;
SIGNAL \H1|out0~1_combout\ : std_logic;
SIGNAL \E1|out0~2_combout\ : std_logic;
SIGNAL \B1|out0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X22_Y0_N2
\x[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Z1|out0~2_combout\,
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\x[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|out0~0_combout\,
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\x[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|out0~1_combout\,
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\x[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N1|out0~1_combout\,
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\x[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|out0~1_combout\,
	devoe => ww_devoe,
	o => \x[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\x[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|out0~1_combout\,
	devoe => ww_devoe,
	o => \x[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\x[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1|out0~2_combout\,
	devoe => ww_devoe,
	o => \x[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\x[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|out0~1_combout\,
	devoe => ww_devoe,
	o => \x[7]~output_o\);

-- Location: IOIBUF_X33_Y10_N1
\a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X27_Y4_N26
\Z1|out0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Z1|out0~1_combout\ = \a[8]~input_o\ $ (\a[11]~input_o\ $ (\a[10]~input_o\ $ (\a[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \a[11]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[9]~input_o\,
	combout => \Z1|out0~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
\a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X27_Y4_N8
\Z1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Z1|out0~0_combout\ = \a[5]~input_o\ $ (\a[15]~input_o\ $ (\a[12]~input_o\ $ (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \a[15]~input_o\,
	datac => \a[12]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Z1|out0~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X27_Y4_N28
\Z1|out0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Z1|out0~2_combout\ = \Z1|out0~1_combout\ $ (\a[7]~input_o\ $ (\Z1|out0~0_combout\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z1|out0~1_combout\,
	datab => \a[7]~input_o\,
	datac => \Z1|out0~0_combout\,
	datad => \a[0]~input_o\,
	combout => \Z1|out0~2_combout\);

-- Location: IOIBUF_X33_Y11_N8
\a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X27_Y4_N14
\E1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \E1|out0~0_combout\ = \a[5]~input_o\ $ (\a[7]~input_o\ $ (\a[6]~input_o\ $ (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[3]~input_o\,
	combout => \E1|out0~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X29_Y4_N24
\E1|out0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \E1|out0~1_combout\ = \E1|out0~0_combout\ $ (\a[13]~input_o\ $ (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|out0~0_combout\,
	datab => \a[13]~input_o\,
	datad => \a[1]~input_o\,
	combout => \E1|out0~1_combout\);

-- Location: IOIBUF_X26_Y0_N8
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X27_Y4_N0
\V1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V1|out0~0_combout\ = \E1|out0~1_combout\ $ (\a[15]~input_o\ $ (\a[4]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|out0~1_combout\,
	datab => \a[15]~input_o\,
	datac => \a[4]~input_o\,
	datad => \a[0]~input_o\,
	combout => \V1|out0~0_combout\);

-- Location: IOIBUF_X31_Y0_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X27_Y4_N18
\H1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|out0~0_combout\ = \a[0]~input_o\ $ (\a[4]~input_o\ $ (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \a[4]~input_o\,
	datad => \a[2]~input_o\,
	combout => \H1|out0~0_combout\);

-- Location: LCCOMB_X27_Y4_N12
\N1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N1|out0~0_combout\ = \H1|out0~0_combout\ $ (\a[1]~input_o\ $ (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|out0~0_combout\,
	datac => \a[1]~input_o\,
	datad => \a[9]~input_o\,
	combout => \N1|out0~0_combout\);

-- Location: LCCOMB_X27_Y4_N24
\R1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R1|out0~0_combout\ = \a[6]~input_o\ $ (\a[12]~input_o\ $ (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datac => \a[12]~input_o\,
	datad => \a[15]~input_o\,
	combout => \R1|out0~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X27_Y4_N30
\B1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B1|out0~0_combout\ = \a[11]~input_o\ $ (\a[10]~input_o\ $ (\a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[11]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[14]~input_o\,
	combout => \B1|out0~0_combout\);

-- Location: LCCOMB_X27_Y4_N10
\R1|out0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R1|out0~1_combout\ = \N1|out0~0_combout\ $ (\R1|out0~0_combout\ $ (\B1|out0~0_combout\ $ (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N1|out0~0_combout\,
	datab => \R1|out0~0_combout\,
	datac => \B1|out0~0_combout\,
	datad => \a[3]~input_o\,
	combout => \R1|out0~1_combout\);

-- Location: LCCOMB_X29_Y4_N2
\N1|out0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N1|out0~1_combout\ = \a[13]~input_o\ $ (\N1|out0~0_combout\ $ (\a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[13]~input_o\,
	datac => \N1|out0~0_combout\,
	datad => \a[8]~input_o\,
	combout => \N1|out0~1_combout\);

-- Location: LCCOMB_X27_Y4_N20
\L1|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|out0~0_combout\ = \a[5]~input_o\ $ (\a[9]~input_o\ $ (\a[1]~input_o\ $ (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \L1|out0~0_combout\);

-- Location: LCCOMB_X27_Y4_N6
\L1|out0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|out0~1_combout\ = \a[14]~input_o\ $ (\L1|out0~0_combout\ $ (\a[10]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \L1|out0~0_combout\,
	datac => \a[10]~input_o\,
	datad => \a[2]~input_o\,
	combout => \L1|out0~1_combout\);

-- Location: LCCOMB_X27_Y4_N16
\D0|out0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0|out0~0_combout\ = \a[8]~input_o\ $ (\a[7]~input_o\ $ (\a[6]~input_o\ $ (\a[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[9]~input_o\,
	combout => \D0|out0~0_combout\);

-- Location: LCCOMB_X27_Y4_N2
\H1|out0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|out0~1_combout\ = \a[5]~input_o\ $ (\D0|out0~0_combout\ $ (\a[12]~input_o\ $ (\H1|out0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \D0|out0~0_combout\,
	datac => \a[12]~input_o\,
	datad => \H1|out0~0_combout\,
	combout => \H1|out0~1_combout\);

-- Location: LCCOMB_X27_Y4_N4
\E1|out0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \E1|out0~2_combout\ = \E1|out0~1_combout\ $ (\a[9]~input_o\ $ (\a[10]~input_o\ $ (\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|out0~1_combout\,
	datab => \a[9]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[8]~input_o\,
	combout => \E1|out0~2_combout\);

-- Location: LCCOMB_X27_Y4_N22
\B1|out0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B1|out0~1_combout\ = \B1|out0~0_combout\ $ (\D0|out0~0_combout\ $ (\a[4]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|out0~0_combout\,
	datab => \D0|out0~0_combout\,
	datac => \a[4]~input_o\,
	datad => \a[2]~input_o\,
	combout => \B1|out0~1_combout\);

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(4) <= \x[4]~output_o\;

ww_x(5) <= \x[5]~output_o\;

ww_x(6) <= \x[6]~output_o\;

ww_x(7) <= \x[7]~output_o\;
END structure;


