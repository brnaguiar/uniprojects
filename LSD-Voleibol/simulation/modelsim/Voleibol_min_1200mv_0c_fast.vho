-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "06/03/2017 00:33:09"

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

ENTITY 	Voleibol IS
    PORT (
	lcd_on : OUT std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	lcd_blon : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	i2c_sclk : OUT std_logic;
	i2c_sdat : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END Voleibol;

-- Design Ports Information
-- lcd_on	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_blon	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2c_sclk	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2c_sdat	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Voleibol IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_lcd_blon : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_i2c_sclk : std_logic;
SIGNAL ww_i2c_sdat : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_on~output_o\ : std_logic;
SIGNAL \lcd_blon~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \i2c_sclk~output_o\ : std_logic;
SIGNAL \i2c_sdat~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|ca|reset_counter[0]~0_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~1_cout\ : std_logic;
SIGNAL \inst2|ca|Add0~2_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~3\ : std_logic;
SIGNAL \inst2|ca|Add0~4_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~5\ : std_logic;
SIGNAL \inst2|ca|Add0~6_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~7\ : std_logic;
SIGNAL \inst2|ca|Add0~8_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~9\ : std_logic;
SIGNAL \inst2|ca|Add0~10_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~11\ : std_logic;
SIGNAL \inst2|ca|Add0~12_combout\ : std_logic;
SIGNAL \inst2|ca|reset_counter[6]~5_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~13\ : std_logic;
SIGNAL \inst2|ca|Add0~14_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~15\ : std_logic;
SIGNAL \inst2|ca|Add0~16_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~17\ : std_logic;
SIGNAL \inst2|ca|Add0~18_combout\ : std_logic;
SIGNAL \inst2|ca|reset_counter[9]~7_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~19\ : std_logic;
SIGNAL \inst2|ca|Add0~20_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~21\ : std_logic;
SIGNAL \inst2|ca|Add0~22_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~23\ : std_logic;
SIGNAL \inst2|ca|Add0~24_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~25\ : std_logic;
SIGNAL \inst2|ca|Add0~26_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~27\ : std_logic;
SIGNAL \inst2|ca|Add0~28_combout\ : std_logic;
SIGNAL \inst2|ca|reset_counter[14]~8_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~29\ : std_logic;
SIGNAL \inst2|ca|Add0~30_combout\ : std_logic;
SIGNAL \inst2|ca|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~31\ : std_logic;
SIGNAL \inst2|ca|Add0~32_combout\ : std_logic;
SIGNAL \inst2|ca|reset_counter[16]~1_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~33\ : std_logic;
SIGNAL \inst2|ca|Add0~34_combout\ : std_logic;
SIGNAL \inst2|ca|reset_counter[17]~2_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~35\ : std_logic;
SIGNAL \inst2|ca|Add0~36_combout\ : std_logic;
SIGNAL \inst2|ca|reset_counter[18]~3_combout\ : std_logic;
SIGNAL \inst2|ca|Add0~37\ : std_logic;
SIGNAL \inst2|ca|Add0~38_combout\ : std_logic;
SIGNAL \inst2|ca|reset_counter[19]~4_combout\ : std_logic;
SIGNAL \inst2|ca|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|ca|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|ca|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|ca|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|ca|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|ca|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|ca|state~16_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase1~q\ : std_logic;
SIGNAL \inst2|ca|state~17_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase2~q\ : std_logic;
SIGNAL \inst2|ca|state~19_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase3~q\ : std_logic;
SIGNAL \inst2|ca|state~18_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase4~q\ : std_logic;
SIGNAL \inst2|ca|state~20_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase5~q\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase1~4_combout\ : std_logic;
SIGNAL \inst2|ca|state~23_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase6~q\ : std_logic;
SIGNAL \inst2|ca|state~22_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase7~q\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase1~1_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase1~0_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase1~2_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase1~3_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~4_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase1~5_combout\ : std_logic;
SIGNAL \inst2|ca|state~14_combout\ : std_logic;
SIGNAL \inst2|ca|state~21_combout\ : std_logic;
SIGNAL \inst2|ca|state.power_on_phase8~q\ : std_logic;
SIGNAL \inst2|index[0]~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|index[1]~9\ : std_logic;
SIGNAL \inst2|index[2]~10_combout\ : std_logic;
SIGNAL \inst2|ca|txd_accepted~0_combout\ : std_logic;
SIGNAL \inst2|ca|txd_accepted~q\ : std_logic;
SIGNAL \inst2|index[2]~11\ : std_logic;
SIGNAL \inst2|index[3]~12_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|index[3]~13\ : std_logic;
SIGNAL \inst2|index[4]~14_combout\ : std_logic;
SIGNAL \inst2|index[4]~15\ : std_logic;
SIGNAL \inst2|index[5]~16_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|index[0]~7\ : std_logic;
SIGNAL \inst2|index[1]~8_combout\ : std_logic;
SIGNAL \inst2|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|line1[72]~feeder_combout\ : std_logic;
SIGNAL \inst23|timer_counter[0]~23_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst23|sampled_dirty~0_combout\ : std_logic;
SIGNAL \inst23|sampled_dirty~q\ : std_logic;
SIGNAL \inst23|level~0_combout\ : std_logic;
SIGNAL \inst23|level~q\ : std_logic;
SIGNAL \inst23|timer_counter[1]~25_combout\ : std_logic;
SIGNAL \inst23|timer_counter[0]~24\ : std_logic;
SIGNAL \inst23|timer_counter[1]~26_combout\ : std_logic;
SIGNAL \inst23|timer_counter[1]~27\ : std_logic;
SIGNAL \inst23|timer_counter[2]~28_combout\ : std_logic;
SIGNAL \inst23|timer_counter[2]~29\ : std_logic;
SIGNAL \inst23|timer_counter[3]~30_combout\ : std_logic;
SIGNAL \inst23|timer_counter[3]~31\ : std_logic;
SIGNAL \inst23|timer_counter[4]~32_combout\ : std_logic;
SIGNAL \inst23|timer_counter[4]~33\ : std_logic;
SIGNAL \inst23|timer_counter[5]~34_combout\ : std_logic;
SIGNAL \inst23|timer_counter[5]~35\ : std_logic;
SIGNAL \inst23|timer_counter[6]~36_combout\ : std_logic;
SIGNAL \inst23|timer_counter[6]~37\ : std_logic;
SIGNAL \inst23|timer_counter[7]~38_combout\ : std_logic;
SIGNAL \inst23|timer_counter[7]~39\ : std_logic;
SIGNAL \inst23|timer_counter[8]~40_combout\ : std_logic;
SIGNAL \inst23|timer_counter[8]~41\ : std_logic;
SIGNAL \inst23|timer_counter[9]~42_combout\ : std_logic;
SIGNAL \inst23|timer_counter[9]~43\ : std_logic;
SIGNAL \inst23|timer_counter[10]~44_combout\ : std_logic;
SIGNAL \inst23|timer_counter[10]~45\ : std_logic;
SIGNAL \inst23|timer_counter[11]~46_combout\ : std_logic;
SIGNAL \inst23|timer_counter[11]~47\ : std_logic;
SIGNAL \inst23|timer_counter[12]~48_combout\ : std_logic;
SIGNAL \inst23|timer_counter[12]~49\ : std_logic;
SIGNAL \inst23|timer_counter[13]~50_combout\ : std_logic;
SIGNAL \inst23|timer_counter[13]~51\ : std_logic;
SIGNAL \inst23|timer_counter[14]~52_combout\ : std_logic;
SIGNAL \inst23|timer_counter[14]~53\ : std_logic;
SIGNAL \inst23|timer_counter[15]~54_combout\ : std_logic;
SIGNAL \inst23|timer_counter[15]~55\ : std_logic;
SIGNAL \inst23|timer_counter[16]~56_combout\ : std_logic;
SIGNAL \inst23|timer_counter[16]~57\ : std_logic;
SIGNAL \inst23|timer_counter[17]~58_combout\ : std_logic;
SIGNAL \inst23|timer_counter[17]~59\ : std_logic;
SIGNAL \inst23|timer_counter[18]~60_combout\ : std_logic;
SIGNAL \inst23|timer_counter[18]~61\ : std_logic;
SIGNAL \inst23|timer_counter[19]~62_combout\ : std_logic;
SIGNAL \inst23|Equal0~5_combout\ : std_logic;
SIGNAL \inst23|timer_counter[19]~63\ : std_logic;
SIGNAL \inst23|timer_counter[20]~64_combout\ : std_logic;
SIGNAL \inst23|timer_counter[20]~65\ : std_logic;
SIGNAL \inst23|timer_counter[21]~66_combout\ : std_logic;
SIGNAL \inst23|timer_counter[21]~67\ : std_logic;
SIGNAL \inst23|timer_counter[22]~68_combout\ : std_logic;
SIGNAL \inst23|Equal0~6_combout\ : std_logic;
SIGNAL \inst23|Equal0~3_combout\ : std_logic;
SIGNAL \inst23|Equal0~1_combout\ : std_logic;
SIGNAL \inst23|Equal0~2_combout\ : std_logic;
SIGNAL \inst23|Equal0~0_combout\ : std_logic;
SIGNAL \inst23|Equal0~4_combout\ : std_logic;
SIGNAL \inst23|Equal0~7_combout\ : std_logic;
SIGNAL \inst23|zero_to_one_pulse~0_combout\ : std_logic;
SIGNAL \inst23|zero_to_one_pulse~q\ : std_logic;
SIGNAL \inst3|s_pont2[0]~33_combout\ : std_logic;
SIGNAL \inst3|s_pont1[0]~32_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|internalReset~feeder_combout\ : std_logic;
SIGNAL \inst|internalReset~q\ : std_logic;
SIGNAL \inst22|timer_counter[0]~23_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst22|sampled_dirty~0_combout\ : std_logic;
SIGNAL \inst22|sampled_dirty~q\ : std_logic;
SIGNAL \inst22|timer_counter[0]~25_combout\ : std_logic;
SIGNAL \inst22|timer_counter[0]~24\ : std_logic;
SIGNAL \inst22|timer_counter[1]~26_combout\ : std_logic;
SIGNAL \inst22|timer_counter[1]~27\ : std_logic;
SIGNAL \inst22|timer_counter[2]~28_combout\ : std_logic;
SIGNAL \inst22|timer_counter[2]~29\ : std_logic;
SIGNAL \inst22|timer_counter[3]~30_combout\ : std_logic;
SIGNAL \inst22|timer_counter[3]~31\ : std_logic;
SIGNAL \inst22|timer_counter[4]~32_combout\ : std_logic;
SIGNAL \inst22|timer_counter[4]~33\ : std_logic;
SIGNAL \inst22|timer_counter[5]~34_combout\ : std_logic;
SIGNAL \inst22|timer_counter[5]~35\ : std_logic;
SIGNAL \inst22|timer_counter[6]~36_combout\ : std_logic;
SIGNAL \inst22|timer_counter[6]~37\ : std_logic;
SIGNAL \inst22|timer_counter[7]~38_combout\ : std_logic;
SIGNAL \inst22|timer_counter[7]~39\ : std_logic;
SIGNAL \inst22|timer_counter[8]~40_combout\ : std_logic;
SIGNAL \inst22|timer_counter[8]~41\ : std_logic;
SIGNAL \inst22|timer_counter[9]~42_combout\ : std_logic;
SIGNAL \inst22|timer_counter[9]~43\ : std_logic;
SIGNAL \inst22|timer_counter[10]~44_combout\ : std_logic;
SIGNAL \inst22|timer_counter[10]~45\ : std_logic;
SIGNAL \inst22|timer_counter[11]~46_combout\ : std_logic;
SIGNAL \inst22|timer_counter[11]~47\ : std_logic;
SIGNAL \inst22|timer_counter[12]~48_combout\ : std_logic;
SIGNAL \inst22|timer_counter[12]~49\ : std_logic;
SIGNAL \inst22|timer_counter[13]~50_combout\ : std_logic;
SIGNAL \inst22|timer_counter[13]~51\ : std_logic;
SIGNAL \inst22|timer_counter[14]~52_combout\ : std_logic;
SIGNAL \inst22|timer_counter[14]~53\ : std_logic;
SIGNAL \inst22|timer_counter[15]~54_combout\ : std_logic;
SIGNAL \inst22|timer_counter[15]~55\ : std_logic;
SIGNAL \inst22|timer_counter[16]~56_combout\ : std_logic;
SIGNAL \inst22|timer_counter[16]~57\ : std_logic;
SIGNAL \inst22|timer_counter[17]~58_combout\ : std_logic;
SIGNAL \inst22|timer_counter[17]~59\ : std_logic;
SIGNAL \inst22|timer_counter[18]~60_combout\ : std_logic;
SIGNAL \inst22|timer_counter[18]~61\ : std_logic;
SIGNAL \inst22|timer_counter[19]~62_combout\ : std_logic;
SIGNAL \inst22|Equal0~5_combout\ : std_logic;
SIGNAL \inst22|Equal0~1_combout\ : std_logic;
SIGNAL \inst22|Equal0~2_combout\ : std_logic;
SIGNAL \inst22|Equal0~0_combout\ : std_logic;
SIGNAL \inst22|Equal0~3_combout\ : std_logic;
SIGNAL \inst22|Equal0~4_combout\ : std_logic;
SIGNAL \inst22|timer_counter[19]~63\ : std_logic;
SIGNAL \inst22|timer_counter[20]~64_combout\ : std_logic;
SIGNAL \inst22|timer_counter[20]~65\ : std_logic;
SIGNAL \inst22|timer_counter[21]~66_combout\ : std_logic;
SIGNAL \inst22|timer_counter[21]~67\ : std_logic;
SIGNAL \inst22|timer_counter[22]~68_combout\ : std_logic;
SIGNAL \inst22|Equal0~6_combout\ : std_logic;
SIGNAL \inst22|Equal0~7_combout\ : std_logic;
SIGNAL \inst22|level~0_combout\ : std_logic;
SIGNAL \inst22|level~q\ : std_logic;
SIGNAL \inst22|zero_to_one_pulse~0_combout\ : std_logic;
SIGNAL \inst22|zero_to_one_pulse~q\ : std_logic;
SIGNAL \inst3|Equal1~9_combout\ : std_logic;
SIGNAL \inst3|s_pont2[4]~44\ : std_logic;
SIGNAL \inst3|s_pont2[5]~45_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst25|sampled_dirty~0_combout\ : std_logic;
SIGNAL \inst25|sampled_dirty~q\ : std_logic;
SIGNAL \inst25|timer_counter[0]~23_combout\ : std_logic;
SIGNAL \inst25|level~0_combout\ : std_logic;
SIGNAL \inst25|level~q\ : std_logic;
SIGNAL \inst25|timer_counter[20]~25_combout\ : std_logic;
SIGNAL \inst25|timer_counter[0]~24\ : std_logic;
SIGNAL \inst25|timer_counter[1]~26_combout\ : std_logic;
SIGNAL \inst25|timer_counter[1]~27\ : std_logic;
SIGNAL \inst25|timer_counter[2]~28_combout\ : std_logic;
SIGNAL \inst25|timer_counter[2]~29\ : std_logic;
SIGNAL \inst25|timer_counter[3]~30_combout\ : std_logic;
SIGNAL \inst25|timer_counter[3]~31\ : std_logic;
SIGNAL \inst25|timer_counter[4]~32_combout\ : std_logic;
SIGNAL \inst25|timer_counter[4]~33\ : std_logic;
SIGNAL \inst25|timer_counter[5]~34_combout\ : std_logic;
SIGNAL \inst25|timer_counter[5]~35\ : std_logic;
SIGNAL \inst25|timer_counter[6]~36_combout\ : std_logic;
SIGNAL \inst25|timer_counter[6]~37\ : std_logic;
SIGNAL \inst25|timer_counter[7]~38_combout\ : std_logic;
SIGNAL \inst25|timer_counter[7]~39\ : std_logic;
SIGNAL \inst25|timer_counter[8]~40_combout\ : std_logic;
SIGNAL \inst25|timer_counter[8]~41\ : std_logic;
SIGNAL \inst25|timer_counter[9]~42_combout\ : std_logic;
SIGNAL \inst25|timer_counter[9]~43\ : std_logic;
SIGNAL \inst25|timer_counter[10]~44_combout\ : std_logic;
SIGNAL \inst25|timer_counter[10]~45\ : std_logic;
SIGNAL \inst25|timer_counter[11]~46_combout\ : std_logic;
SIGNAL \inst25|timer_counter[11]~47\ : std_logic;
SIGNAL \inst25|timer_counter[12]~48_combout\ : std_logic;
SIGNAL \inst25|timer_counter[12]~49\ : std_logic;
SIGNAL \inst25|timer_counter[13]~50_combout\ : std_logic;
SIGNAL \inst25|timer_counter[13]~51\ : std_logic;
SIGNAL \inst25|timer_counter[14]~52_combout\ : std_logic;
SIGNAL \inst25|timer_counter[14]~53\ : std_logic;
SIGNAL \inst25|timer_counter[15]~54_combout\ : std_logic;
SIGNAL \inst25|timer_counter[15]~55\ : std_logic;
SIGNAL \inst25|timer_counter[16]~56_combout\ : std_logic;
SIGNAL \inst25|timer_counter[16]~57\ : std_logic;
SIGNAL \inst25|timer_counter[17]~58_combout\ : std_logic;
SIGNAL \inst25|timer_counter[17]~59\ : std_logic;
SIGNAL \inst25|timer_counter[18]~60_combout\ : std_logic;
SIGNAL \inst25|timer_counter[18]~61\ : std_logic;
SIGNAL \inst25|timer_counter[19]~62_combout\ : std_logic;
SIGNAL \inst25|Equal0~5_combout\ : std_logic;
SIGNAL \inst25|timer_counter[19]~63\ : std_logic;
SIGNAL \inst25|timer_counter[20]~64_combout\ : std_logic;
SIGNAL \inst25|timer_counter[20]~65\ : std_logic;
SIGNAL \inst25|timer_counter[21]~66_combout\ : std_logic;
SIGNAL \inst25|timer_counter[21]~67\ : std_logic;
SIGNAL \inst25|timer_counter[22]~68_combout\ : std_logic;
SIGNAL \inst25|Equal0~6_combout\ : std_logic;
SIGNAL \inst25|Equal0~1_combout\ : std_logic;
SIGNAL \inst25|Equal0~2_combout\ : std_logic;
SIGNAL \inst25|Equal0~0_combout\ : std_logic;
SIGNAL \inst25|Equal0~3_combout\ : std_logic;
SIGNAL \inst25|Equal0~4_combout\ : std_logic;
SIGNAL \inst25|Equal0~7_combout\ : std_logic;
SIGNAL \inst25|zero_to_one_pulse~0_combout\ : std_logic;
SIGNAL \inst25|zero_to_one_pulse~q\ : std_logic;
SIGNAL \inst24|timer_counter[0]~23_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst24|sampled_dirty~0_combout\ : std_logic;
SIGNAL \inst24|sampled_dirty~q\ : std_logic;
SIGNAL \inst24|timer_counter[21]~25_combout\ : std_logic;
SIGNAL \inst24|timer_counter[0]~24\ : std_logic;
SIGNAL \inst24|timer_counter[1]~26_combout\ : std_logic;
SIGNAL \inst24|timer_counter[1]~27\ : std_logic;
SIGNAL \inst24|timer_counter[2]~28_combout\ : std_logic;
SIGNAL \inst24|timer_counter[2]~29\ : std_logic;
SIGNAL \inst24|timer_counter[3]~30_combout\ : std_logic;
SIGNAL \inst24|timer_counter[3]~31\ : std_logic;
SIGNAL \inst24|timer_counter[4]~32_combout\ : std_logic;
SIGNAL \inst24|timer_counter[4]~33\ : std_logic;
SIGNAL \inst24|timer_counter[5]~34_combout\ : std_logic;
SIGNAL \inst24|timer_counter[5]~35\ : std_logic;
SIGNAL \inst24|timer_counter[6]~36_combout\ : std_logic;
SIGNAL \inst24|timer_counter[6]~37\ : std_logic;
SIGNAL \inst24|timer_counter[7]~38_combout\ : std_logic;
SIGNAL \inst24|timer_counter[7]~39\ : std_logic;
SIGNAL \inst24|timer_counter[8]~40_combout\ : std_logic;
SIGNAL \inst24|timer_counter[8]~41\ : std_logic;
SIGNAL \inst24|timer_counter[9]~42_combout\ : std_logic;
SIGNAL \inst24|timer_counter[9]~43\ : std_logic;
SIGNAL \inst24|timer_counter[10]~44_combout\ : std_logic;
SIGNAL \inst24|timer_counter[10]~45\ : std_logic;
SIGNAL \inst24|timer_counter[11]~46_combout\ : std_logic;
SIGNAL \inst24|timer_counter[11]~47\ : std_logic;
SIGNAL \inst24|timer_counter[12]~48_combout\ : std_logic;
SIGNAL \inst24|timer_counter[12]~49\ : std_logic;
SIGNAL \inst24|timer_counter[13]~50_combout\ : std_logic;
SIGNAL \inst24|timer_counter[13]~51\ : std_logic;
SIGNAL \inst24|timer_counter[14]~52_combout\ : std_logic;
SIGNAL \inst24|timer_counter[14]~53\ : std_logic;
SIGNAL \inst24|timer_counter[15]~54_combout\ : std_logic;
SIGNAL \inst24|timer_counter[15]~55\ : std_logic;
SIGNAL \inst24|timer_counter[16]~56_combout\ : std_logic;
SIGNAL \inst24|timer_counter[16]~57\ : std_logic;
SIGNAL \inst24|timer_counter[17]~58_combout\ : std_logic;
SIGNAL \inst24|timer_counter[17]~59\ : std_logic;
SIGNAL \inst24|timer_counter[18]~60_combout\ : std_logic;
SIGNAL \inst24|timer_counter[18]~61\ : std_logic;
SIGNAL \inst24|timer_counter[19]~62_combout\ : std_logic;
SIGNAL \inst24|Equal0~5_combout\ : std_logic;
SIGNAL \inst24|timer_counter[19]~63\ : std_logic;
SIGNAL \inst24|timer_counter[20]~64_combout\ : std_logic;
SIGNAL \inst24|timer_counter[20]~65\ : std_logic;
SIGNAL \inst24|timer_counter[21]~66_combout\ : std_logic;
SIGNAL \inst24|timer_counter[21]~67\ : std_logic;
SIGNAL \inst24|timer_counter[22]~68_combout\ : std_logic;
SIGNAL \inst24|Equal0~6_combout\ : std_logic;
SIGNAL \inst24|Equal0~1_combout\ : std_logic;
SIGNAL \inst24|Equal0~2_combout\ : std_logic;
SIGNAL \inst24|Equal0~3_combout\ : std_logic;
SIGNAL \inst24|Equal0~0_combout\ : std_logic;
SIGNAL \inst24|Equal0~4_combout\ : std_logic;
SIGNAL \inst24|Equal0~7_combout\ : std_logic;
SIGNAL \inst24|level~0_combout\ : std_logic;
SIGNAL \inst24|level~q\ : std_logic;
SIGNAL \inst24|zero_to_one_pulse~0_combout\ : std_logic;
SIGNAL \inst24|zero_to_one_pulse~q\ : std_logic;
SIGNAL \inst3|s_pont2[25]~35_combout\ : std_logic;
SIGNAL \inst3|s_pont1[4]~43\ : std_logic;
SIGNAL \inst3|s_pont1[5]~44_combout\ : std_logic;
SIGNAL \inst3|s_pont1[5]~45\ : std_logic;
SIGNAL \inst3|s_pont1[6]~46_combout\ : std_logic;
SIGNAL \inst3|s_pont1[6]~47\ : std_logic;
SIGNAL \inst3|s_pont1[7]~48_combout\ : std_logic;
SIGNAL \inst3|s_pont1[7]~49\ : std_logic;
SIGNAL \inst3|s_pont1[8]~50_combout\ : std_logic;
SIGNAL \inst3|s_pont1[8]~51\ : std_logic;
SIGNAL \inst3|s_pont1[9]~52_combout\ : std_logic;
SIGNAL \inst3|s_pont1[9]~53\ : std_logic;
SIGNAL \inst3|s_pont1[10]~54_combout\ : std_logic;
SIGNAL \inst3|s_pont1[10]~55\ : std_logic;
SIGNAL \inst3|s_pont1[11]~56_combout\ : std_logic;
SIGNAL \inst3|s_pont1[11]~57\ : std_logic;
SIGNAL \inst3|s_pont1[12]~58_combout\ : std_logic;
SIGNAL \inst3|s_pont1[12]~59\ : std_logic;
SIGNAL \inst3|s_pont1[13]~60_combout\ : std_logic;
SIGNAL \inst3|s_pont1[13]~61\ : std_logic;
SIGNAL \inst3|s_pont1[14]~62_combout\ : std_logic;
SIGNAL \inst3|s_pont1[14]~63\ : std_logic;
SIGNAL \inst3|s_pont1[15]~64_combout\ : std_logic;
SIGNAL \inst3|s_pont1[15]~65\ : std_logic;
SIGNAL \inst3|s_pont1[16]~66_combout\ : std_logic;
SIGNAL \inst3|s_pont1[16]~67\ : std_logic;
SIGNAL \inst3|s_pont1[17]~68_combout\ : std_logic;
SIGNAL \inst3|s_pont1[17]~69\ : std_logic;
SIGNAL \inst3|s_pont1[18]~70_combout\ : std_logic;
SIGNAL \inst3|s_pont1[18]~71\ : std_logic;
SIGNAL \inst3|s_pont1[19]~72_combout\ : std_logic;
SIGNAL \inst3|s_pont1[19]~73\ : std_logic;
SIGNAL \inst3|s_pont1[20]~74_combout\ : std_logic;
SIGNAL \inst3|s_pont1[20]~75\ : std_logic;
SIGNAL \inst3|s_pont1[21]~76_combout\ : std_logic;
SIGNAL \inst3|s_pont1[21]~77\ : std_logic;
SIGNAL \inst3|s_pont1[22]~78_combout\ : std_logic;
SIGNAL \inst3|s_pont1[22]~79\ : std_logic;
SIGNAL \inst3|s_pont1[23]~80_combout\ : std_logic;
SIGNAL \inst3|s_pont1[23]~81\ : std_logic;
SIGNAL \inst3|s_pont1[24]~82_combout\ : std_logic;
SIGNAL \inst3|s_pont1[24]~83\ : std_logic;
SIGNAL \inst3|s_pont1[25]~84_combout\ : std_logic;
SIGNAL \inst3|s_pont1[25]~85\ : std_logic;
SIGNAL \inst3|s_pont1[26]~86_combout\ : std_logic;
SIGNAL \inst3|s_pont1[26]~87\ : std_logic;
SIGNAL \inst3|s_pont1[27]~88_combout\ : std_logic;
SIGNAL \inst3|s_pont1[27]~89\ : std_logic;
SIGNAL \inst3|s_pont1[28]~90_combout\ : std_logic;
SIGNAL \inst3|s_pont1[28]~91\ : std_logic;
SIGNAL \inst3|s_pont1[29]~92_combout\ : std_logic;
SIGNAL \inst3|s_pont1[29]~93\ : std_logic;
SIGNAL \inst3|s_pont1[30]~94_combout\ : std_logic;
SIGNAL \inst3|s_pont1[30]~95\ : std_logic;
SIGNAL \inst3|s_pont1[31]~96_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~47\ : std_logic;
SIGNAL \inst3|Add0~49\ : std_logic;
SIGNAL \inst3|Add0~51\ : std_logic;
SIGNAL \inst3|Add0~53\ : std_logic;
SIGNAL \inst3|Add0~55\ : std_logic;
SIGNAL \inst3|Add0~57\ : std_logic;
SIGNAL \inst3|Add0~59\ : std_logic;
SIGNAL \inst3|Add0~61\ : std_logic;
SIGNAL \inst3|Add0~62_combout\ : std_logic;
SIGNAL \inst3|Add0~60_combout\ : std_logic;
SIGNAL \inst3|Add0~58_combout\ : std_logic;
SIGNAL \inst3|Add0~56_combout\ : std_logic;
SIGNAL \inst3|Add0~54_combout\ : std_logic;
SIGNAL \inst3|Add0~52_combout\ : std_logic;
SIGNAL \inst3|Add0~50_combout\ : std_logic;
SIGNAL \inst3|Add0~48_combout\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|p1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~1_cout\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~15\ : std_logic;
SIGNAL \inst3|Add1~17\ : std_logic;
SIGNAL \inst3|Add1~19\ : std_logic;
SIGNAL \inst3|Add1~21\ : std_logic;
SIGNAL \inst3|Add1~23\ : std_logic;
SIGNAL \inst3|Add1~25\ : std_logic;
SIGNAL \inst3|Add1~27\ : std_logic;
SIGNAL \inst3|Add1~29\ : std_logic;
SIGNAL \inst3|Add1~31\ : std_logic;
SIGNAL \inst3|Add1~33\ : std_logic;
SIGNAL \inst3|Add1~35\ : std_logic;
SIGNAL \inst3|Add1~37\ : std_logic;
SIGNAL \inst3|Add1~39\ : std_logic;
SIGNAL \inst3|Add1~41\ : std_logic;
SIGNAL \inst3|Add1~43\ : std_logic;
SIGNAL \inst3|Add1~45\ : std_logic;
SIGNAL \inst3|Add1~47\ : std_logic;
SIGNAL \inst3|Add1~49\ : std_logic;
SIGNAL \inst3|Add1~51\ : std_logic;
SIGNAL \inst3|Add1~53\ : std_logic;
SIGNAL \inst3|Add1~55\ : std_logic;
SIGNAL \inst3|Add1~57\ : std_logic;
SIGNAL \inst3|Add1~59\ : std_logic;
SIGNAL \inst3|Add1~61\ : std_logic;
SIGNAL \inst3|Add1~62_combout\ : std_logic;
SIGNAL \inst3|p1~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|p1~1_combout\ : std_logic;
SIGNAL \inst3|Add1~58_combout\ : std_logic;
SIGNAL \inst3|Add1~60_combout\ : std_logic;
SIGNAL \inst3|p1~6_combout\ : std_logic;
SIGNAL \inst3|Add1~52_combout\ : std_logic;
SIGNAL \inst3|Add1~48_combout\ : std_logic;
SIGNAL \inst3|Add1~46_combout\ : std_logic;
SIGNAL \inst3|Add1~50_combout\ : std_logic;
SIGNAL \inst3|Add1~56_combout\ : std_logic;
SIGNAL \inst3|Add1~54_combout\ : std_logic;
SIGNAL \inst3|p1~4_combout\ : std_logic;
SIGNAL \inst3|Add1~42_combout\ : std_logic;
SIGNAL \inst3|Add1~44_combout\ : std_logic;
SIGNAL \inst3|Add1~34_combout\ : std_logic;
SIGNAL \inst3|Add1~36_combout\ : std_logic;
SIGNAL \inst3|Add1~38_combout\ : std_logic;
SIGNAL \inst3|Add1~40_combout\ : std_logic;
SIGNAL \inst3|LessThan1~5_combout\ : std_logic;
SIGNAL \inst3|Add1~32_combout\ : std_logic;
SIGNAL \inst3|Add1~28_combout\ : std_logic;
SIGNAL \inst3|Add1~30_combout\ : std_logic;
SIGNAL \inst3|Add1~26_combout\ : std_logic;
SIGNAL \inst3|Add1~24_combout\ : std_logic;
SIGNAL \inst3|Add1~22_combout\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|Add1~18_combout\ : std_logic;
SIGNAL \inst3|Add1~20_combout\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|Add1~16_combout\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|LessThan1~2_combout\ : std_logic;
SIGNAL \inst3|LessThan1~3_combout\ : std_logic;
SIGNAL \inst3|LessThan1~4_combout\ : std_logic;
SIGNAL \inst3|p1~3_combout\ : std_logic;
SIGNAL \inst3|p1~5_combout\ : std_logic;
SIGNAL \inst3|p1~7_combout\ : std_logic;
SIGNAL \inst3|s_pont2[25]~36_combout\ : std_logic;
SIGNAL \inst3|s_pont2[5]~46\ : std_logic;
SIGNAL \inst3|s_pont2[6]~47_combout\ : std_logic;
SIGNAL \inst3|s_pont2[6]~48\ : std_logic;
SIGNAL \inst3|s_pont2[7]~49_combout\ : std_logic;
SIGNAL \inst3|s_pont2[7]~50\ : std_logic;
SIGNAL \inst3|s_pont2[8]~51_combout\ : std_logic;
SIGNAL \inst3|s_pont2[8]~52\ : std_logic;
SIGNAL \inst3|s_pont2[9]~53_combout\ : std_logic;
SIGNAL \inst3|s_pont2[9]~54\ : std_logic;
SIGNAL \inst3|s_pont2[10]~55_combout\ : std_logic;
SIGNAL \inst3|s_pont2[10]~56\ : std_logic;
SIGNAL \inst3|s_pont2[11]~57_combout\ : std_logic;
SIGNAL \inst3|s_pont2[11]~58\ : std_logic;
SIGNAL \inst3|s_pont2[12]~59_combout\ : std_logic;
SIGNAL \inst3|s_pont2[12]~60\ : std_logic;
SIGNAL \inst3|s_pont2[13]~61_combout\ : std_logic;
SIGNAL \inst3|s_pont2[13]~62\ : std_logic;
SIGNAL \inst3|s_pont2[14]~63_combout\ : std_logic;
SIGNAL \inst3|s_pont2[14]~64\ : std_logic;
SIGNAL \inst3|s_pont2[15]~65_combout\ : std_logic;
SIGNAL \inst3|s_pont2[15]~66\ : std_logic;
SIGNAL \inst3|s_pont2[16]~67_combout\ : std_logic;
SIGNAL \inst3|s_pont2[16]~68\ : std_logic;
SIGNAL \inst3|s_pont2[17]~69_combout\ : std_logic;
SIGNAL \inst3|s_pont2[17]~70\ : std_logic;
SIGNAL \inst3|s_pont2[18]~71_combout\ : std_logic;
SIGNAL \inst3|s_pont2[18]~72\ : std_logic;
SIGNAL \inst3|s_pont2[19]~73_combout\ : std_logic;
SIGNAL \inst3|s_pont2[19]~74\ : std_logic;
SIGNAL \inst3|s_pont2[20]~75_combout\ : std_logic;
SIGNAL \inst3|s_pont2[20]~76\ : std_logic;
SIGNAL \inst3|s_pont2[21]~77_combout\ : std_logic;
SIGNAL \inst3|s_pont2[21]~78\ : std_logic;
SIGNAL \inst3|s_pont2[22]~79_combout\ : std_logic;
SIGNAL \inst3|s_pont2[22]~80\ : std_logic;
SIGNAL \inst3|s_pont2[23]~81_combout\ : std_logic;
SIGNAL \inst3|s_pont2[23]~82\ : std_logic;
SIGNAL \inst3|s_pont2[24]~83_combout\ : std_logic;
SIGNAL \inst3|s_pont2[24]~84\ : std_logic;
SIGNAL \inst3|s_pont2[25]~85_combout\ : std_logic;
SIGNAL \inst3|s_pont2[25]~86\ : std_logic;
SIGNAL \inst3|s_pont2[26]~87_combout\ : std_logic;
SIGNAL \inst3|s_pont2[26]~88\ : std_logic;
SIGNAL \inst3|s_pont2[27]~89_combout\ : std_logic;
SIGNAL \inst3|s_pont2[27]~90\ : std_logic;
SIGNAL \inst3|s_pont2[28]~91_combout\ : std_logic;
SIGNAL \inst3|s_pont2[28]~92\ : std_logic;
SIGNAL \inst3|s_pont2[29]~93_combout\ : std_logic;
SIGNAL \inst3|s_pont2[29]~94\ : std_logic;
SIGNAL \inst3|s_pont2[30]~95_combout\ : std_logic;
SIGNAL \inst3|s_pont2[30]~96\ : std_logic;
SIGNAL \inst3|s_pont2[31]~97_combout\ : std_logic;
SIGNAL \inst3|Equal1~7_combout\ : std_logic;
SIGNAL \inst3|Equal1~5_combout\ : std_logic;
SIGNAL \inst3|Equal1~6_combout\ : std_logic;
SIGNAL \inst3|Equal1~3_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~4_combout\ : std_logic;
SIGNAL \inst3|Equal1~8_combout\ : std_logic;
SIGNAL \inst3|Equal1~10_combout\ : std_logic;
SIGNAL \inst|s_currentState~7_combout\ : std_logic;
SIGNAL \inst|s_currentState.Inicio~q\ : std_logic;
SIGNAL \inst|s_currentState~6_combout\ : std_logic;
SIGNAL \inst|s_currentState.JogarSet~q\ : std_logic;
SIGNAL \inst|s_currentState~5_combout\ : std_logic;
SIGNAL \inst3|s_pont2~32_combout\ : std_logic;
SIGNAL \inst3|s_pont1[28]~34_combout\ : std_logic;
SIGNAL \inst3|s_pont1[28]~35_combout\ : std_logic;
SIGNAL \inst3|s_pont1[0]~33\ : std_logic;
SIGNAL \inst3|s_pont1[1]~36_combout\ : std_logic;
SIGNAL \inst3|s_pont1[1]~37\ : std_logic;
SIGNAL \inst3|s_pont1[2]~38_combout\ : std_logic;
SIGNAL \inst3|s_pont1[2]~39\ : std_logic;
SIGNAL \inst3|s_pont1[3]~40_combout\ : std_logic;
SIGNAL \inst3|s_pont1[3]~41\ : std_logic;
SIGNAL \inst3|s_pont1[4]~42_combout\ : std_logic;
SIGNAL \inst3|Equal0~9_combout\ : std_logic;
SIGNAL \inst3|Equal0~10_combout\ : std_logic;
SIGNAL \inst3|setGanhou1~0_combout\ : std_logic;
SIGNAL \inst3|setGanhou1~q\ : std_logic;
SIGNAL \inst29~0_combout\ : std_logic;
SIGNAL \inst29~1_combout\ : std_logic;
SIGNAL \inst3|s_pont2[0]~34\ : std_logic;
SIGNAL \inst3|s_pont2[1]~37_combout\ : std_logic;
SIGNAL \inst3|s_pont2[1]~38\ : std_logic;
SIGNAL \inst3|s_pont2[2]~39_combout\ : std_logic;
SIGNAL \inst3|s_pont2[2]~40\ : std_logic;
SIGNAL \inst3|s_pont2[3]~41_combout\ : std_logic;
SIGNAL \inst3|s_pont2[3]~42\ : std_logic;
SIGNAL \inst3|s_pont2[4]~43_combout\ : std_logic;
SIGNAL \inst3|p1~8_combout\ : std_logic;
SIGNAL \inst3|p1~9_combout\ : std_logic;
SIGNAL \inst3|Add2~1\ : std_logic;
SIGNAL \inst3|Add2~3\ : std_logic;
SIGNAL \inst3|Add2~5\ : std_logic;
SIGNAL \inst3|Add2~7\ : std_logic;
SIGNAL \inst3|Add2~9\ : std_logic;
SIGNAL \inst3|Add2~11\ : std_logic;
SIGNAL \inst3|Add2~13\ : std_logic;
SIGNAL \inst3|Add2~15\ : std_logic;
SIGNAL \inst3|Add2~17\ : std_logic;
SIGNAL \inst3|Add2~19\ : std_logic;
SIGNAL \inst3|Add2~21\ : std_logic;
SIGNAL \inst3|Add2~23\ : std_logic;
SIGNAL \inst3|Add2~25\ : std_logic;
SIGNAL \inst3|Add2~27\ : std_logic;
SIGNAL \inst3|Add2~29\ : std_logic;
SIGNAL \inst3|Add2~31\ : std_logic;
SIGNAL \inst3|Add2~33\ : std_logic;
SIGNAL \inst3|Add2~35\ : std_logic;
SIGNAL \inst3|Add2~37\ : std_logic;
SIGNAL \inst3|Add2~39\ : std_logic;
SIGNAL \inst3|Add2~41\ : std_logic;
SIGNAL \inst3|Add2~43\ : std_logic;
SIGNAL \inst3|Add2~45\ : std_logic;
SIGNAL \inst3|Add2~47\ : std_logic;
SIGNAL \inst3|Add2~49\ : std_logic;
SIGNAL \inst3|Add2~51\ : std_logic;
SIGNAL \inst3|Add2~53\ : std_logic;
SIGNAL \inst3|Add2~55\ : std_logic;
SIGNAL \inst3|Add2~57\ : std_logic;
SIGNAL \inst3|Add2~59\ : std_logic;
SIGNAL \inst3|Add2~60_combout\ : std_logic;
SIGNAL \inst3|Add2~61\ : std_logic;
SIGNAL \inst3|Add2~62_combout\ : std_logic;
SIGNAL \inst3|Add2~58_combout\ : std_logic;
SIGNAL \inst3|Add2~56_combout\ : std_logic;
SIGNAL \inst3|Add2~54_combout\ : std_logic;
SIGNAL \inst3|Add2~52_combout\ : std_logic;
SIGNAL \inst3|Add2~50_combout\ : std_logic;
SIGNAL \inst3|Add2~48_combout\ : std_logic;
SIGNAL \inst3|Add2~46_combout\ : std_logic;
SIGNAL \inst3|Add2~44_combout\ : std_logic;
SIGNAL \inst3|Add2~42_combout\ : std_logic;
SIGNAL \inst3|Add2~40_combout\ : std_logic;
SIGNAL \inst3|Add2~38_combout\ : std_logic;
SIGNAL \inst3|Add2~36_combout\ : std_logic;
SIGNAL \inst3|Add2~34_combout\ : std_logic;
SIGNAL \inst3|Add2~32_combout\ : std_logic;
SIGNAL \inst3|Add2~30_combout\ : std_logic;
SIGNAL \inst3|Add2~28_combout\ : std_logic;
SIGNAL \inst3|Add2~26_combout\ : std_logic;
SIGNAL \inst3|Add2~24_combout\ : std_logic;
SIGNAL \inst3|Add2~22_combout\ : std_logic;
SIGNAL \inst3|Add2~20_combout\ : std_logic;
SIGNAL \inst3|Add2~18_combout\ : std_logic;
SIGNAL \inst3|Add2~16_combout\ : std_logic;
SIGNAL \inst3|Add2~14_combout\ : std_logic;
SIGNAL \inst3|Add2~12_combout\ : std_logic;
SIGNAL \inst3|Add2~10_combout\ : std_logic;
SIGNAL \inst3|Add2~8_combout\ : std_logic;
SIGNAL \inst3|Add2~6_combout\ : std_logic;
SIGNAL \inst3|Add2~4_combout\ : std_logic;
SIGNAL \inst3|Add2~2_combout\ : std_logic;
SIGNAL \inst3|Add2~0_combout\ : std_logic;
SIGNAL \inst3|p1~10_combout\ : std_logic;
SIGNAL \inst3|Add3~1_cout\ : std_logic;
SIGNAL \inst3|Add3~3\ : std_logic;
SIGNAL \inst3|Add3~5\ : std_logic;
SIGNAL \inst3|Add3~7\ : std_logic;
SIGNAL \inst3|Add3~9\ : std_logic;
SIGNAL \inst3|Add3~11\ : std_logic;
SIGNAL \inst3|Add3~13\ : std_logic;
SIGNAL \inst3|Add3~15\ : std_logic;
SIGNAL \inst3|Add3~17\ : std_logic;
SIGNAL \inst3|Add3~19\ : std_logic;
SIGNAL \inst3|Add3~21\ : std_logic;
SIGNAL \inst3|Add3~23\ : std_logic;
SIGNAL \inst3|Add3~25\ : std_logic;
SIGNAL \inst3|Add3~27\ : std_logic;
SIGNAL \inst3|Add3~29\ : std_logic;
SIGNAL \inst3|Add3~31\ : std_logic;
SIGNAL \inst3|Add3~33\ : std_logic;
SIGNAL \inst3|Add3~35\ : std_logic;
SIGNAL \inst3|Add3~37\ : std_logic;
SIGNAL \inst3|Add3~39\ : std_logic;
SIGNAL \inst3|Add3~41\ : std_logic;
SIGNAL \inst3|Add3~43\ : std_logic;
SIGNAL \inst3|Add3~45\ : std_logic;
SIGNAL \inst3|Add3~47\ : std_logic;
SIGNAL \inst3|Add3~49\ : std_logic;
SIGNAL \inst3|Add3~51\ : std_logic;
SIGNAL \inst3|Add3~53\ : std_logic;
SIGNAL \inst3|Add3~55\ : std_logic;
SIGNAL \inst3|Add3~57\ : std_logic;
SIGNAL \inst3|Add3~59\ : std_logic;
SIGNAL \inst3|Add3~60_combout\ : std_logic;
SIGNAL \inst3|Add3~58_combout\ : std_logic;
SIGNAL \inst3|p1~14_combout\ : std_logic;
SIGNAL \inst3|Add3~61\ : std_logic;
SIGNAL \inst3|Add3~62_combout\ : std_logic;
SIGNAL \inst3|Add3~52_combout\ : std_logic;
SIGNAL \inst3|Add3~48_combout\ : std_logic;
SIGNAL \inst3|Add3~42_combout\ : std_logic;
SIGNAL \inst3|Add3~46_combout\ : std_logic;
SIGNAL \inst3|Add3~40_combout\ : std_logic;
SIGNAL \inst3|Add3~38_combout\ : std_logic;
SIGNAL \inst3|Add3~36_combout\ : std_logic;
SIGNAL \inst3|Add3~34_combout\ : std_logic;
SIGNAL \inst3|LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|Add3~44_combout\ : std_logic;
SIGNAL \inst3|p1~11_combout\ : std_logic;
SIGNAL \inst3|Add3~50_combout\ : std_logic;
SIGNAL \inst3|Add3~54_combout\ : std_logic;
SIGNAL \inst3|Add3~56_combout\ : std_logic;
SIGNAL \inst3|Add3~28_combout\ : std_logic;
SIGNAL \inst3|Add3~32_combout\ : std_logic;
SIGNAL \inst3|Add3~30_combout\ : std_logic;
SIGNAL \inst3|Add3~24_combout\ : std_logic;
SIGNAL \inst3|Add3~22_combout\ : std_logic;
SIGNAL \inst3|Add3~26_combout\ : std_logic;
SIGNAL \inst3|Add3~20_combout\ : std_logic;
SIGNAL \inst3|Add3~18_combout\ : std_logic;
SIGNAL \inst3|Add3~6_combout\ : std_logic;
SIGNAL \inst3|Add3~2_combout\ : std_logic;
SIGNAL \inst3|Add3~8_combout\ : std_logic;
SIGNAL \inst3|Add3~4_combout\ : std_logic;
SIGNAL \inst3|LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|Add3~10_combout\ : std_logic;
SIGNAL \inst3|Add3~14_combout\ : std_logic;
SIGNAL \inst3|Add3~12_combout\ : std_logic;
SIGNAL \inst3|Add3~16_combout\ : std_logic;
SIGNAL \inst3|LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|LessThan3~4_combout\ : std_logic;
SIGNAL \inst3|LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|p1~12_combout\ : std_logic;
SIGNAL \inst3|p1~13_combout\ : std_logic;
SIGNAL \inst3|p1~15_combout\ : std_logic;
SIGNAL \inst3|setGanhou2~0_combout\ : std_logic;
SIGNAL \inst3|setGanhou2~1_combout\ : std_logic;
SIGNAL \inst3|setGanhou2~q\ : std_logic;
SIGNAL \inst4|s_set2[0]~2_combout\ : std_logic;
SIGNAL \inst|resetJogoOutput~0_combout\ : std_logic;
SIGNAL \inst4|s_set2[2]~4_combout\ : std_logic;
SIGNAL \inst4|s_set2[0]~3\ : std_logic;
SIGNAL \inst4|s_set2[1]~5_combout\ : std_logic;
SIGNAL \inst4|s_set1[0]~2_combout\ : std_logic;
SIGNAL \inst4|s_set1[0]~3\ : std_logic;
SIGNAL \inst4|s_set1[1]~4_combout\ : std_logic;
SIGNAL \inst202|winner~0_combout\ : std_logic;
SIGNAL \inst2|line1[104]~0_combout\ : std_logic;
SIGNAL \inst4|everySet~0_combout\ : std_logic;
SIGNAL \inst4|everySet~q\ : std_logic;
SIGNAL \inst2|line1[104]~1_combout\ : std_logic;
SIGNAL \inst2|line0~0_combout\ : std_logic;
SIGNAL \inst2|line1[64]~feeder_combout\ : std_logic;
SIGNAL \inst2|line1[9]~2_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~18_combout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|Mux8~8_combout\ : std_logic;
SIGNAL \inst2|Mux8~43_combout\ : std_logic;
SIGNAL \inst2|Mux8~44_combout\ : std_logic;
SIGNAL \inst2|Mux8~48_combout\ : std_logic;
SIGNAL \inst2|Mux8~47_combout\ : std_logic;
SIGNAL \inst2|line1[56]~3_combout\ : std_logic;
SIGNAL \inst2|Mux8~45_combout\ : std_logic;
SIGNAL \inst2|Mux8~46_combout\ : std_logic;
SIGNAL \inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|Mux8~42_combout\ : std_logic;
SIGNAL \inst2|Mux8~14_combout\ : std_logic;
SIGNAL \inst2|Mux8~40_combout\ : std_logic;
SIGNAL \inst2|Mux8~38_combout\ : std_logic;
SIGNAL \inst2|Mux8~29_combout\ : std_logic;
SIGNAL \inst2|Mux8~39_combout\ : std_logic;
SIGNAL \inst2|Mux8~41_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|line1[104]~4_combout\ : std_logic;
SIGNAL \inst2|Mux8~37_combout\ : std_logic;
SIGNAL \inst2|line1[92]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mux8~36_combout\ : std_logic;
SIGNAL \inst2|Mux8~49_combout\ : std_logic;
SIGNAL \inst2|Mux8~50_combout\ : std_logic;
SIGNAL \inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|ca|process_0~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~9_combout\ : std_logic;
SIGNAL \inst2|line1[81]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mux8~23_combout\ : std_logic;
SIGNAL \inst2|Mux8~24_combout\ : std_logic;
SIGNAL \inst2|Mux6~7_combout\ : std_logic;
SIGNAL \inst2|Mux8~25_combout\ : std_logic;
SIGNAL \inst2|Mux8~21_combout\ : std_logic;
SIGNAL \inst2|Mux8~20_combout\ : std_logic;
SIGNAL \inst2|Mux8~22_combout\ : std_logic;
SIGNAL \inst2|Mux6~8_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~7_combout\ : std_logic;
SIGNAL \inst2|Mux6~2_combout\ : std_logic;
SIGNAL \inst2|Mux8~11_combout\ : std_logic;
SIGNAL \inst2|Mux6~3_combout\ : std_logic;
SIGNAL \inst2|Mux8~19_combout\ : std_logic;
SIGNAL \inst202|Equal0~0_combout\ : std_logic;
SIGNAL \inst202|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|line0~2_combout\ : std_logic;
SIGNAL \inst2|Mux6~4_combout\ : std_logic;
SIGNAL \inst2|Mux6~5_combout\ : std_logic;
SIGNAL \inst2|Mux6~6_combout\ : std_logic;
SIGNAL \inst2|Mux6~10_combout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~19_combout\ : std_logic;
SIGNAL \inst2|Mux6~18_combout\ : std_logic;
SIGNAL \inst2|Mux6~20_combout\ : std_logic;
SIGNAL \inst2|Mux6~21_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|Mux8~33_combout\ : std_logic;
SIGNAL \inst2|Mux8~34_combout\ : std_logic;
SIGNAL \inst2|Mux8~35_combout\ : std_logic;
SIGNAL \inst2|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|Mux5~3_combout\ : std_logic;
SIGNAL \inst2|Mux5~4_combout\ : std_logic;
SIGNAL \inst2|Mux5~5_combout\ : std_logic;
SIGNAL \inst2|Mux8~16_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~9_combout\ : std_logic;
SIGNAL \inst2|Mux8~10_combout\ : std_logic;
SIGNAL \inst202|comb~0_combout\ : std_logic;
SIGNAL \inst2|line0~1_combout\ : std_logic;
SIGNAL \inst2|Mux8~12_combout\ : std_logic;
SIGNAL \inst2|Mux8~13_combout\ : std_logic;
SIGNAL \inst2|Mux8~15_combout\ : std_logic;
SIGNAL \inst2|Mux8~4_combout\ : std_logic;
SIGNAL \inst2|Mux8~5_combout\ : std_logic;
SIGNAL \inst2|Mux8~1_combout\ : std_logic;
SIGNAL \inst2|Mux8~2_combout\ : std_logic;
SIGNAL \inst2|Mux8~3_combout\ : std_logic;
SIGNAL \inst2|Mux8~6_combout\ : std_logic;
SIGNAL \inst2|Mux8~17_combout\ : std_logic;
SIGNAL \inst2|Mux8~26_combout\ : std_logic;
SIGNAL \inst2|Mux8~27_combout\ : std_logic;
SIGNAL \inst2|Mux8~28_combout\ : std_logic;
SIGNAL \inst2|Mux6~11_combout\ : std_logic;
SIGNAL \inst2|Mux6~22_combout\ : std_logic;
SIGNAL \inst2|Mux6~12_combout\ : std_logic;
SIGNAL \inst2|Mux6~13_combout\ : std_logic;
SIGNAL \inst2|Mux6~14_combout\ : std_logic;
SIGNAL \inst2|Mux6~15_combout\ : std_logic;
SIGNAL \inst2|Mux8~30_combout\ : std_logic;
SIGNAL \inst2|Mux8~31_combout\ : std_logic;
SIGNAL \inst2|Mux8~32_combout\ : std_logic;
SIGNAL \inst2|Mux6~16_combout\ : std_logic;
SIGNAL \inst2|Mux6~17_combout\ : std_logic;
SIGNAL \inst2|ca|process_0~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~5_combout\ : std_logic;
SIGNAL \inst2|ca|Selector22~0_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~32_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~6_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~13_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~0_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~11_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_en~0_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~1\ : std_logic;
SIGNAL \inst2|ca|Add2~2_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~12_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~3\ : std_logic;
SIGNAL \inst2|ca|Add2~4_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~14_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~5\ : std_logic;
SIGNAL \inst2|ca|Add2~6_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~15_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~16_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~17_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~7\ : std_logic;
SIGNAL \inst2|ca|Add2~8_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~18_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~9\ : std_logic;
SIGNAL \inst2|ca|Add2~10_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~19_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~20_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~11\ : std_logic;
SIGNAL \inst2|ca|Add2~12_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~21_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~13\ : std_logic;
SIGNAL \inst2|ca|Add2~14_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~22_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~15\ : std_logic;
SIGNAL \inst2|ca|Add2~16_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~23_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~17\ : std_logic;
SIGNAL \inst2|ca|Add2~18_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~24_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~19\ : std_logic;
SIGNAL \inst2|ca|Add2~20_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~25_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~26_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~21\ : std_logic;
SIGNAL \inst2|ca|Add2~22_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~27_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~23\ : std_logic;
SIGNAL \inst2|ca|Add2~24_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~28_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~25\ : std_logic;
SIGNAL \inst2|ca|Add2~26_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~29_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~27\ : std_logic;
SIGNAL \inst2|ca|Add2~28_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~30_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~29\ : std_logic;
SIGNAL \inst2|ca|Add2~30_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~31_combout\ : std_logic;
SIGNAL \inst2|ca|Equal2~5_combout\ : std_logic;
SIGNAL \inst2|ca|Equal2~4_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~31\ : std_logic;
SIGNAL \inst2|ca|Add2~32_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~7_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~33\ : std_logic;
SIGNAL \inst2|ca|Add2~34_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~8_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~35\ : std_logic;
SIGNAL \inst2|ca|Add2~36_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~9_combout\ : std_logic;
SIGNAL \inst2|ca|Add2~37\ : std_logic;
SIGNAL \inst2|ca|Add2~38_combout\ : std_logic;
SIGNAL \inst2|ca|delay_counter~10_combout\ : std_logic;
SIGNAL \inst2|ca|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|ca|Equal2~2_combout\ : std_logic;
SIGNAL \inst2|ca|Equal2~1_combout\ : std_logic;
SIGNAL \inst2|ca|Equal2~3_combout\ : std_logic;
SIGNAL \inst2|ca|Equal2~6_combout\ : std_logic;
SIGNAL \inst2|ca|enable_counter[3]~1_combout\ : std_logic;
SIGNAL \inst2|ca|enable_counter[1]~2_combout\ : std_logic;
SIGNAL \inst2|ca|enable_counter[2]~3_combout\ : std_logic;
SIGNAL \inst2|ca|enable_counter[3]~4_combout\ : std_logic;
SIGNAL \inst2|ca|enable_counter[3]~5_combout\ : std_logic;
SIGNAL \inst2|ca|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|ca|enable_counter[0]~0_combout\ : std_logic;
SIGNAL \inst2|ca|state~13_combout\ : std_logic;
SIGNAL \inst2|ca|state~15_combout\ : std_logic;
SIGNAL \inst2|ca|state.process_txd_requests~q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[7]~8_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[7]~9_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[7]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[7]~11_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[7]~en_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[6]~10_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[6]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[6]~12_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[6]~en_q\ : std_logic;
SIGNAL \inst2|ca|Selector22~1_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[5]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[5]~13_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[5]~en_q\ : std_logic;
SIGNAL \inst2|ca|Selector23~0_combout\ : std_logic;
SIGNAL \inst2|ca|Selector23~1_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[4]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[4]~14_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[4]~en_q\ : std_logic;
SIGNAL \inst2|ca|Selector24~0_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[3]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[3]~15_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[3]~en_q\ : std_logic;
SIGNAL \inst2|ca|Selector25~0_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[2]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[2]~16_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[2]~en_q\ : std_logic;
SIGNAL \inst2|ca|Selector26~0_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[1]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[1]~17_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[1]~en_q\ : std_logic;
SIGNAL \inst2|ca|Selector27~0_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[0]~reg0_q\ : std_logic;
SIGNAL \inst2|ca|lcd_data[0]~18_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_data[0]~en_q\ : std_logic;
SIGNAL \inst2|ca|lcd_on~0_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_on~q\ : std_logic;
SIGNAL \inst2|ca|lcd_rw~feeder_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_rw~q\ : std_logic;
SIGNAL \inst2|ca|lcd_en~feeder_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_en~q\ : std_logic;
SIGNAL \inst2|ca|lcd_rs~0_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_rs~1_combout\ : std_logic;
SIGNAL \inst2|ca|lcd_rs~q\ : std_logic;
SIGNAL \inst4|s_setAtual[0]~3_combout\ : std_logic;
SIGNAL \inst4|s_setAtual[29]~5_combout\ : std_logic;
SIGNAL \inst4|s_setAtual[0]~4\ : std_logic;
SIGNAL \inst4|s_setAtual[1]~6_combout\ : std_logic;
SIGNAL \inst4|s_setAtual[1]~7\ : std_logic;
SIGNAL \inst4|s_setAtual[2]~8_combout\ : std_logic;
SIGNAL \inst17|Mux0~0_combout\ : std_logic;
SIGNAL \inst17|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|Mux2~0_combout\ : std_logic;
SIGNAL \inst17|Mux3~0_combout\ : std_logic;
SIGNAL \inst17|Mux4~0_combout\ : std_logic;
SIGNAL \inst17|Mux5~0_combout\ : std_logic;
SIGNAL \inst17|Mux6~0_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \inst21|Mux0~0_combout\ : std_logic;
SIGNAL \inst21|Mux1~0_combout\ : std_logic;
SIGNAL \inst21|Mux2~0_combout\ : std_logic;
SIGNAL \inst21|Mux3~0_combout\ : std_logic;
SIGNAL \inst21|Mux4~0_combout\ : std_logic;
SIGNAL \inst21|Mux5~0_combout\ : std_logic;
SIGNAL \inst21|Mux6~0_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Mux1~0_combout\ : std_logic;
SIGNAL \inst18|Mux3~0_combout\ : std_logic;
SIGNAL \inst18|Mux4~0_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \inst20|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst20|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|Mux4~0_combout\ : std_logic;
SIGNAL \inst20|Mux5~0_combout\ : std_logic;
SIGNAL \inst20|Mux6~0_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~0_combout\ : std_logic;
SIGNAL \inst19|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|s_setAtual\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|s_pont1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst22|timer_counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst3|s_pont2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|index\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst4|s_set1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst24|timer_counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst4|s_set2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst25|timer_counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst202|numberX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst23|timer_counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst2|ca|reset_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|ca|enable_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|txd_rs_and_data\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|ca|delay_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|line1\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \inst2|line0\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \inst16|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst15|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|ca|ALT_INV_lcd_en~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

lcd_on <= ww_lcd_on;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
lcd_blon <= ww_lcd_blon;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
i2c_sclk <= ww_i2c_sclk;
i2c_sdat <= ww_i2c_sdat;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst16|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\inst15|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\inst2|ca|ALT_INV_lcd_en~0_combout\ <= NOT \inst2|ca|lcd_en~0_combout\;
\inst20|ALT_INV_Mux0~0_combout\ <= NOT \inst20|Mux0~0_combout\;
\inst21|ALT_INV_Mux0~0_combout\ <= NOT \inst21|Mux0~0_combout\;
\inst17|ALT_INV_Mux5~0_combout\ <= NOT \inst17|Mux5~0_combout\;

-- Location: IOOBUF_X0_Y47_N2
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[7]~reg0_q\,
	oe => \inst2|ca|lcd_data[7]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[6]~reg0_q\,
	oe => \inst2|ca|lcd_data[6]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[5]~reg0_q\,
	oe => \inst2|ca|lcd_data[5]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[4]~reg0_q\,
	oe => \inst2|ca|lcd_data[4]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[3]~reg0_q\,
	oe => \inst2|ca|lcd_data[3]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[2]~reg0_q\,
	oe => \inst2|ca|lcd_data[2]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[1]~reg0_q\,
	oe => \inst2|ca|lcd_data[1]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_data[0]~reg0_q\,
	oe => \inst2|ca|lcd_data[0]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\lcd_on~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_on~q\,
	devoe => ww_devoe,
	o => \lcd_on~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\lcd_blon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_blon~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_rw~q\,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_en~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ca|lcd_rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\i2c_sclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2c_sclk~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\i2c_sdat~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2c_sdat~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\HEX1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\HEX2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\HEX3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y45_N14
\inst2|ca|reset_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[0]~0_combout\ = (!\inst2|ca|reset_counter\(0) & \inst2|ca|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|reset_counter\(0),
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|reset_counter[0]~0_combout\);

-- Location: FF_X1_Y45_N15
\inst2|ca|reset_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|reset_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(0));

-- Location: LCCOMB_X2_Y45_N12
\inst2|ca|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~1_cout\ = CARRY(\inst2|ca|reset_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(0),
	datad => VCC,
	cout => \inst2|ca|Add0~1_cout\);

-- Location: LCCOMB_X2_Y45_N14
\inst2|ca|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~2_combout\ = (\inst2|ca|reset_counter\(1) & (\inst2|ca|Add0~1_cout\ & VCC)) # (!\inst2|ca|reset_counter\(1) & (!\inst2|ca|Add0~1_cout\))
-- \inst2|ca|Add0~3\ = CARRY((!\inst2|ca|reset_counter\(1) & !\inst2|ca|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(1),
	datad => VCC,
	cin => \inst2|ca|Add0~1_cout\,
	combout => \inst2|ca|Add0~2_combout\,
	cout => \inst2|ca|Add0~3\);

-- Location: FF_X2_Y45_N15
\inst2|ca|reset_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~2_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(1));

-- Location: LCCOMB_X2_Y45_N16
\inst2|ca|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~4_combout\ = (\inst2|ca|reset_counter\(2) & ((GND) # (!\inst2|ca|Add0~3\))) # (!\inst2|ca|reset_counter\(2) & (\inst2|ca|Add0~3\ $ (GND)))
-- \inst2|ca|Add0~5\ = CARRY((\inst2|ca|reset_counter\(2)) # (!\inst2|ca|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(2),
	datad => VCC,
	cin => \inst2|ca|Add0~3\,
	combout => \inst2|ca|Add0~4_combout\,
	cout => \inst2|ca|Add0~5\);

-- Location: FF_X2_Y45_N17
\inst2|ca|reset_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~4_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(2));

-- Location: LCCOMB_X2_Y45_N18
\inst2|ca|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~6_combout\ = (\inst2|ca|reset_counter\(3) & (\inst2|ca|Add0~5\ & VCC)) # (!\inst2|ca|reset_counter\(3) & (!\inst2|ca|Add0~5\))
-- \inst2|ca|Add0~7\ = CARRY((!\inst2|ca|reset_counter\(3) & !\inst2|ca|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(3),
	datad => VCC,
	cin => \inst2|ca|Add0~5\,
	combout => \inst2|ca|Add0~6_combout\,
	cout => \inst2|ca|Add0~7\);

-- Location: FF_X2_Y45_N19
\inst2|ca|reset_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~6_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(3));

-- Location: LCCOMB_X2_Y45_N20
\inst2|ca|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~8_combout\ = (\inst2|ca|reset_counter\(4) & ((GND) # (!\inst2|ca|Add0~7\))) # (!\inst2|ca|reset_counter\(4) & (\inst2|ca|Add0~7\ $ (GND)))
-- \inst2|ca|Add0~9\ = CARRY((\inst2|ca|reset_counter\(4)) # (!\inst2|ca|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(4),
	datad => VCC,
	cin => \inst2|ca|Add0~7\,
	combout => \inst2|ca|Add0~8_combout\,
	cout => \inst2|ca|Add0~9\);

-- Location: FF_X2_Y45_N21
\inst2|ca|reset_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~8_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(4));

-- Location: LCCOMB_X2_Y45_N22
\inst2|ca|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~10_combout\ = (\inst2|ca|reset_counter\(5) & (\inst2|ca|Add0~9\ & VCC)) # (!\inst2|ca|reset_counter\(5) & (!\inst2|ca|Add0~9\))
-- \inst2|ca|Add0~11\ = CARRY((!\inst2|ca|reset_counter\(5) & !\inst2|ca|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(5),
	datad => VCC,
	cin => \inst2|ca|Add0~9\,
	combout => \inst2|ca|Add0~10_combout\,
	cout => \inst2|ca|Add0~11\);

-- Location: FF_X2_Y45_N23
\inst2|ca|reset_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~10_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(5));

-- Location: LCCOMB_X2_Y45_N24
\inst2|ca|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~12_combout\ = (\inst2|ca|reset_counter\(6) & (\inst2|ca|Add0~11\ $ (GND))) # (!\inst2|ca|reset_counter\(6) & ((GND) # (!\inst2|ca|Add0~11\)))
-- \inst2|ca|Add0~13\ = CARRY((!\inst2|ca|Add0~11\) # (!\inst2|ca|reset_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(6),
	datad => VCC,
	cin => \inst2|ca|Add0~11\,
	combout => \inst2|ca|Add0~12_combout\,
	cout => \inst2|ca|Add0~13\);

-- Location: LCCOMB_X1_Y45_N16
\inst2|ca|reset_counter[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[6]~5_combout\ = !\inst2|ca|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ca|Add0~12_combout\,
	combout => \inst2|ca|reset_counter[6]~5_combout\);

-- Location: FF_X2_Y45_N5
\inst2|ca|reset_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|ca|reset_counter[6]~5_combout\,
	sload => VCC,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(6));

-- Location: LCCOMB_X2_Y45_N26
\inst2|ca|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~14_combout\ = (\inst2|ca|reset_counter\(7) & (\inst2|ca|Add0~13\ & VCC)) # (!\inst2|ca|reset_counter\(7) & (!\inst2|ca|Add0~13\))
-- \inst2|ca|Add0~15\ = CARRY((!\inst2|ca|reset_counter\(7) & !\inst2|ca|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(7),
	datad => VCC,
	cin => \inst2|ca|Add0~13\,
	combout => \inst2|ca|Add0~14_combout\,
	cout => \inst2|ca|Add0~15\);

-- Location: FF_X2_Y45_N27
\inst2|ca|reset_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~14_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(7));

-- Location: LCCOMB_X2_Y45_N28
\inst2|ca|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~16_combout\ = (\inst2|ca|reset_counter\(8) & ((GND) # (!\inst2|ca|Add0~15\))) # (!\inst2|ca|reset_counter\(8) & (\inst2|ca|Add0~15\ $ (GND)))
-- \inst2|ca|Add0~17\ = CARRY((\inst2|ca|reset_counter\(8)) # (!\inst2|ca|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(8),
	datad => VCC,
	cin => \inst2|ca|Add0~15\,
	combout => \inst2|ca|Add0~16_combout\,
	cout => \inst2|ca|Add0~17\);

-- Location: FF_X2_Y45_N29
\inst2|ca|reset_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~16_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(8));

-- Location: LCCOMB_X2_Y45_N30
\inst2|ca|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~18_combout\ = (\inst2|ca|reset_counter\(9) & (!\inst2|ca|Add0~17\)) # (!\inst2|ca|reset_counter\(9) & (\inst2|ca|Add0~17\ & VCC))
-- \inst2|ca|Add0~19\ = CARRY((\inst2|ca|reset_counter\(9) & !\inst2|ca|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(9),
	datad => VCC,
	cin => \inst2|ca|Add0~17\,
	combout => \inst2|ca|Add0~18_combout\,
	cout => \inst2|ca|Add0~19\);

-- Location: LCCOMB_X2_Y45_N6
\inst2|ca|reset_counter[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[9]~7_combout\ = !\inst2|ca|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Add0~18_combout\,
	combout => \inst2|ca|reset_counter[9]~7_combout\);

-- Location: FF_X2_Y45_N7
\inst2|ca|reset_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|reset_counter[9]~7_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(9));

-- Location: LCCOMB_X2_Y44_N0
\inst2|ca|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~20_combout\ = (\inst2|ca|reset_counter\(10) & ((GND) # (!\inst2|ca|Add0~19\))) # (!\inst2|ca|reset_counter\(10) & (\inst2|ca|Add0~19\ $ (GND)))
-- \inst2|ca|Add0~21\ = CARRY((\inst2|ca|reset_counter\(10)) # (!\inst2|ca|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(10),
	datad => VCC,
	cin => \inst2|ca|Add0~19\,
	combout => \inst2|ca|Add0~20_combout\,
	cout => \inst2|ca|Add0~21\);

-- Location: FF_X2_Y44_N1
\inst2|ca|reset_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~20_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(10));

-- Location: LCCOMB_X2_Y44_N2
\inst2|ca|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~22_combout\ = (\inst2|ca|reset_counter\(11) & (\inst2|ca|Add0~21\ & VCC)) # (!\inst2|ca|reset_counter\(11) & (!\inst2|ca|Add0~21\))
-- \inst2|ca|Add0~23\ = CARRY((!\inst2|ca|reset_counter\(11) & !\inst2|ca|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(11),
	datad => VCC,
	cin => \inst2|ca|Add0~21\,
	combout => \inst2|ca|Add0~22_combout\,
	cout => \inst2|ca|Add0~23\);

-- Location: FF_X2_Y44_N3
\inst2|ca|reset_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~22_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(11));

-- Location: LCCOMB_X2_Y44_N4
\inst2|ca|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~24_combout\ = (\inst2|ca|reset_counter\(12) & ((GND) # (!\inst2|ca|Add0~23\))) # (!\inst2|ca|reset_counter\(12) & (\inst2|ca|Add0~23\ $ (GND)))
-- \inst2|ca|Add0~25\ = CARRY((\inst2|ca|reset_counter\(12)) # (!\inst2|ca|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(12),
	datad => VCC,
	cin => \inst2|ca|Add0~23\,
	combout => \inst2|ca|Add0~24_combout\,
	cout => \inst2|ca|Add0~25\);

-- Location: FF_X2_Y44_N5
\inst2|ca|reset_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~24_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(12));

-- Location: LCCOMB_X2_Y44_N6
\inst2|ca|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~26_combout\ = (\inst2|ca|reset_counter\(13) & (\inst2|ca|Add0~25\ & VCC)) # (!\inst2|ca|reset_counter\(13) & (!\inst2|ca|Add0~25\))
-- \inst2|ca|Add0~27\ = CARRY((!\inst2|ca|reset_counter\(13) & !\inst2|ca|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(13),
	datad => VCC,
	cin => \inst2|ca|Add0~25\,
	combout => \inst2|ca|Add0~26_combout\,
	cout => \inst2|ca|Add0~27\);

-- Location: FF_X2_Y44_N7
\inst2|ca|reset_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~26_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(13));

-- Location: LCCOMB_X2_Y44_N8
\inst2|ca|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~28_combout\ = (\inst2|ca|reset_counter\(14) & (\inst2|ca|Add0~27\ $ (GND))) # (!\inst2|ca|reset_counter\(14) & ((GND) # (!\inst2|ca|Add0~27\)))
-- \inst2|ca|Add0~29\ = CARRY((!\inst2|ca|Add0~27\) # (!\inst2|ca|reset_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(14),
	datad => VCC,
	cin => \inst2|ca|Add0~27\,
	combout => \inst2|ca|Add0~28_combout\,
	cout => \inst2|ca|Add0~29\);

-- Location: LCCOMB_X2_Y44_N24
\inst2|ca|reset_counter[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[14]~8_combout\ = !\inst2|ca|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Add0~28_combout\,
	combout => \inst2|ca|reset_counter[14]~8_combout\);

-- Location: FF_X2_Y44_N25
\inst2|ca|reset_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|reset_counter[14]~8_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(14));

-- Location: LCCOMB_X2_Y44_N10
\inst2|ca|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~30_combout\ = (\inst2|ca|reset_counter\(15) & (\inst2|ca|Add0~29\ & VCC)) # (!\inst2|ca|reset_counter\(15) & (!\inst2|ca|Add0~29\))
-- \inst2|ca|Add0~31\ = CARRY((!\inst2|ca|reset_counter\(15) & !\inst2|ca|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(15),
	datad => VCC,
	cin => \inst2|ca|Add0~29\,
	combout => \inst2|ca|Add0~30_combout\,
	cout => \inst2|ca|Add0~31\);

-- Location: FF_X2_Y44_N11
\inst2|ca|reset_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Add0~30_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(15));

-- Location: LCCOMB_X2_Y44_N26
\inst2|ca|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal0~5_combout\ = (\inst2|ca|reset_counter\(13)) # (((\inst2|ca|reset_counter\(12)) # (\inst2|ca|reset_counter\(15))) # (!\inst2|ca|reset_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(13),
	datab => \inst2|ca|reset_counter\(14),
	datac => \inst2|ca|reset_counter\(12),
	datad => \inst2|ca|reset_counter\(15),
	combout => \inst2|ca|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y44_N12
\inst2|ca|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~32_combout\ = (\inst2|ca|reset_counter\(16) & (\inst2|ca|Add0~31\ $ (GND))) # (!\inst2|ca|reset_counter\(16) & ((GND) # (!\inst2|ca|Add0~31\)))
-- \inst2|ca|Add0~33\ = CARRY((!\inst2|ca|Add0~31\) # (!\inst2|ca|reset_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(16),
	datad => VCC,
	cin => \inst2|ca|Add0~31\,
	combout => \inst2|ca|Add0~32_combout\,
	cout => \inst2|ca|Add0~33\);

-- Location: LCCOMB_X1_Y44_N12
\inst2|ca|reset_counter[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[16]~1_combout\ = !\inst2|ca|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Add0~32_combout\,
	combout => \inst2|ca|reset_counter[16]~1_combout\);

-- Location: FF_X1_Y44_N13
\inst2|ca|reset_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|reset_counter[16]~1_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(16));

-- Location: LCCOMB_X2_Y44_N14
\inst2|ca|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~34_combout\ = (\inst2|ca|reset_counter\(17) & (!\inst2|ca|Add0~33\)) # (!\inst2|ca|reset_counter\(17) & (\inst2|ca|Add0~33\ & VCC))
-- \inst2|ca|Add0~35\ = CARRY((\inst2|ca|reset_counter\(17) & !\inst2|ca|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(17),
	datad => VCC,
	cin => \inst2|ca|Add0~33\,
	combout => \inst2|ca|Add0~34_combout\,
	cout => \inst2|ca|Add0~35\);

-- Location: LCCOMB_X2_Y44_N20
\inst2|ca|reset_counter[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[17]~2_combout\ = !\inst2|ca|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Add0~34_combout\,
	combout => \inst2|ca|reset_counter[17]~2_combout\);

-- Location: FF_X2_Y44_N21
\inst2|ca|reset_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|reset_counter[17]~2_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(17));

-- Location: LCCOMB_X2_Y44_N16
\inst2|ca|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~36_combout\ = (\inst2|ca|reset_counter\(18) & (\inst2|ca|Add0~35\ $ (GND))) # (!\inst2|ca|reset_counter\(18) & ((GND) # (!\inst2|ca|Add0~35\)))
-- \inst2|ca|Add0~37\ = CARRY((!\inst2|ca|Add0~35\) # (!\inst2|ca|reset_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(18),
	datad => VCC,
	cin => \inst2|ca|Add0~35\,
	combout => \inst2|ca|Add0~36_combout\,
	cout => \inst2|ca|Add0~37\);

-- Location: LCCOMB_X2_Y44_N22
\inst2|ca|reset_counter[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[18]~3_combout\ = !\inst2|ca|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ca|Add0~36_combout\,
	combout => \inst2|ca|reset_counter[18]~3_combout\);

-- Location: FF_X2_Y44_N23
\inst2|ca|reset_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|reset_counter[18]~3_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(18));

-- Location: LCCOMB_X2_Y44_N18
\inst2|ca|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add0~38_combout\ = \inst2|ca|Add0~37\ $ (\inst2|ca|reset_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ca|reset_counter\(19),
	cin => \inst2|ca|Add0~37\,
	combout => \inst2|ca|Add0~38_combout\);

-- Location: LCCOMB_X2_Y44_N28
\inst2|ca|reset_counter[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|reset_counter[19]~4_combout\ = !\inst2|ca|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ca|Add0~38_combout\,
	combout => \inst2|ca|reset_counter[19]~4_combout\);

-- Location: FF_X2_Y44_N29
\inst2|ca|reset_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|reset_counter[19]~4_combout\,
	ena => \inst2|ca|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|reset_counter\(19));

-- Location: LCCOMB_X2_Y44_N30
\inst2|ca|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal0~0_combout\ = (((!\inst2|ca|reset_counter\(19)) # (!\inst2|ca|reset_counter\(18))) # (!\inst2|ca|reset_counter\(17))) # (!\inst2|ca|reset_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(16),
	datab => \inst2|ca|reset_counter\(17),
	datac => \inst2|ca|reset_counter\(18),
	datad => \inst2|ca|reset_counter\(19),
	combout => \inst2|ca|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y45_N10
\inst2|ca|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal0~1_combout\ = (\inst2|ca|reset_counter\(5)) # (((\inst2|ca|reset_counter\(7)) # (\inst2|ca|reset_counter\(4))) # (!\inst2|ca|reset_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(5),
	datab => \inst2|ca|reset_counter\(6),
	datac => \inst2|ca|reset_counter\(7),
	datad => \inst2|ca|reset_counter\(4),
	combout => \inst2|ca|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y45_N4
\inst2|ca|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal0~2_combout\ = (\inst2|ca|reset_counter\(3)) # (\inst2|ca|reset_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|reset_counter\(3),
	datad => \inst2|ca|reset_counter\(2),
	combout => \inst2|ca|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y45_N8
\inst2|ca|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal0~3_combout\ = (\inst2|ca|Equal0~1_combout\) # ((\inst2|ca|Equal0~2_combout\) # ((\inst2|ca|reset_counter\(1)) # (\inst2|ca|reset_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal0~1_combout\,
	datab => \inst2|ca|Equal0~2_combout\,
	datac => \inst2|ca|reset_counter\(1),
	datad => \inst2|ca|reset_counter\(0),
	combout => \inst2|ca|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y45_N0
\inst2|ca|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal0~4_combout\ = ((\inst2|ca|reset_counter\(10)) # ((\inst2|ca|reset_counter\(11)) # (\inst2|ca|reset_counter\(8)))) # (!\inst2|ca|reset_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|reset_counter\(9),
	datab => \inst2|ca|reset_counter\(10),
	datac => \inst2|ca|reset_counter\(11),
	datad => \inst2|ca|reset_counter\(8),
	combout => \inst2|ca|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y45_N2
\inst2|ca|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal0~6_combout\ = (\inst2|ca|Equal0~5_combout\) # ((\inst2|ca|Equal0~0_combout\) # ((\inst2|ca|Equal0~3_combout\) # (\inst2|ca|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal0~5_combout\,
	datab => \inst2|ca|Equal0~0_combout\,
	datac => \inst2|ca|Equal0~3_combout\,
	datad => \inst2|ca|Equal0~4_combout\,
	combout => \inst2|ca|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y44_N16
\inst2|ca|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~16_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state.power_on_phase1~q\) # (!\inst2|ca|state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state~13_combout\,
	datac => \inst2|ca|state.power_on_phase1~q\,
	datad => \inst2|ca|state~14_combout\,
	combout => \inst2|ca|state~16_combout\);

-- Location: FF_X8_Y44_N17
\inst2|ca|state.power_on_phase1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase1~q\);

-- Location: LCCOMB_X8_Y44_N6
\inst2|ca|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~17_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state~13_combout\ & (\inst2|ca|state.power_on_phase2~q\)) # (!\inst2|ca|state~13_combout\ & ((!\inst2|ca|state.power_on_phase1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state~13_combout\,
	datab => \inst2|ca|state~14_combout\,
	datac => \inst2|ca|state.power_on_phase2~q\,
	datad => \inst2|ca|state.power_on_phase1~q\,
	combout => \inst2|ca|state~17_combout\);

-- Location: FF_X8_Y44_N7
\inst2|ca|state.power_on_phase2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase2~q\);

-- Location: LCCOMB_X8_Y44_N26
\inst2|ca|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~19_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state~13_combout\ & (\inst2|ca|state.power_on_phase3~q\)) # (!\inst2|ca|state~13_combout\ & ((\inst2|ca|state.power_on_phase2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state~13_combout\,
	datab => \inst2|ca|state~14_combout\,
	datac => \inst2|ca|state.power_on_phase3~q\,
	datad => \inst2|ca|state.power_on_phase2~q\,
	combout => \inst2|ca|state~19_combout\);

-- Location: FF_X8_Y44_N27
\inst2|ca|state.power_on_phase3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase3~q\);

-- Location: LCCOMB_X8_Y44_N28
\inst2|ca|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~18_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state~13_combout\ & ((\inst2|ca|state.power_on_phase4~q\))) # (!\inst2|ca|state~13_combout\ & (\inst2|ca|state.power_on_phase3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase3~q\,
	datab => \inst2|ca|state~14_combout\,
	datac => \inst2|ca|state.power_on_phase4~q\,
	datad => \inst2|ca|state~13_combout\,
	combout => \inst2|ca|state~18_combout\);

-- Location: FF_X8_Y44_N29
\inst2|ca|state.power_on_phase4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase4~q\);

-- Location: LCCOMB_X8_Y44_N12
\inst2|ca|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~20_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state~13_combout\ & (\inst2|ca|state.power_on_phase5~q\)) # (!\inst2|ca|state~13_combout\ & ((\inst2|ca|state.power_on_phase4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state~13_combout\,
	datab => \inst2|ca|state~14_combout\,
	datac => \inst2|ca|state.power_on_phase5~q\,
	datad => \inst2|ca|state.power_on_phase4~q\,
	combout => \inst2|ca|state~20_combout\);

-- Location: FF_X8_Y44_N13
\inst2|ca|state.power_on_phase5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase5~q\);

-- Location: LCCOMB_X8_Y44_N2
\inst2|ca|state.power_on_phase1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state.power_on_phase1~4_combout\ = (\inst2|ca|state.power_on_phase5~q\ & (!\inst2|ca|state.power_on_phase4~q\ & (!\inst2|ca|state.power_on_phase3~q\ & !\inst2|ca|state.power_on_phase2~q\))) # (!\inst2|ca|state.power_on_phase5~q\ & 
-- ((\inst2|ca|state.power_on_phase4~q\ & (!\inst2|ca|state.power_on_phase3~q\ & !\inst2|ca|state.power_on_phase2~q\)) # (!\inst2|ca|state.power_on_phase4~q\ & (\inst2|ca|state.power_on_phase3~q\ $ (\inst2|ca|state.power_on_phase2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase5~q\,
	datab => \inst2|ca|state.power_on_phase4~q\,
	datac => \inst2|ca|state.power_on_phase3~q\,
	datad => \inst2|ca|state.power_on_phase2~q\,
	combout => \inst2|ca|state.power_on_phase1~4_combout\);

-- Location: LCCOMB_X8_Y44_N20
\inst2|ca|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~23_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state~13_combout\ & (\inst2|ca|state.power_on_phase6~q\)) # (!\inst2|ca|state~13_combout\ & ((\inst2|ca|state.power_on_phase5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state~13_combout\,
	datab => \inst2|ca|state~14_combout\,
	datac => \inst2|ca|state.power_on_phase6~q\,
	datad => \inst2|ca|state.power_on_phase5~q\,
	combout => \inst2|ca|state~23_combout\);

-- Location: FF_X8_Y44_N21
\inst2|ca|state.power_on_phase6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase6~q\);

-- Location: LCCOMB_X7_Y44_N16
\inst2|ca|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~22_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state~13_combout\ & ((\inst2|ca|state.power_on_phase7~q\))) # (!\inst2|ca|state~13_combout\ & (\inst2|ca|state.power_on_phase6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase6~q\,
	datab => \inst2|ca|state~14_combout\,
	datac => \inst2|ca|state.power_on_phase7~q\,
	datad => \inst2|ca|state~13_combout\,
	combout => \inst2|ca|state~22_combout\);

-- Location: FF_X7_Y44_N17
\inst2|ca|state.power_on_phase7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase7~q\);

-- Location: LCCOMB_X7_Y44_N26
\inst2|ca|state.power_on_phase1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state.power_on_phase1~1_combout\ = (\inst2|ca|state.power_on_phase6~q\ & (!\inst2|ca|state.power_on_phase7~q\ & (!\inst2|ca|state.power_on_phase8~q\ & !\inst2|ca|state.process_txd_requests~q\))) # (!\inst2|ca|state.power_on_phase6~q\ & 
-- ((\inst2|ca|state.power_on_phase7~q\ & (!\inst2|ca|state.power_on_phase8~q\ & !\inst2|ca|state.process_txd_requests~q\)) # (!\inst2|ca|state.power_on_phase7~q\ & (\inst2|ca|state.power_on_phase8~q\ $ (\inst2|ca|state.process_txd_requests~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase6~q\,
	datab => \inst2|ca|state.power_on_phase7~q\,
	datac => \inst2|ca|state.power_on_phase8~q\,
	datad => \inst2|ca|state.process_txd_requests~q\,
	combout => \inst2|ca|state.power_on_phase1~1_combout\);

-- Location: LCCOMB_X8_Y44_N10
\inst2|ca|state.power_on_phase1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state.power_on_phase1~0_combout\ = (\inst2|ca|state.power_on_phase5~q\) # ((\inst2|ca|state.power_on_phase4~q\) # ((\inst2|ca|state.power_on_phase3~q\) # (\inst2|ca|state.power_on_phase2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase5~q\,
	datab => \inst2|ca|state.power_on_phase4~q\,
	datac => \inst2|ca|state.power_on_phase3~q\,
	datad => \inst2|ca|state.power_on_phase2~q\,
	combout => \inst2|ca|state.power_on_phase1~0_combout\);

-- Location: LCCOMB_X7_Y44_N0
\inst2|ca|state.power_on_phase1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state.power_on_phase1~2_combout\ = (\inst2|ca|state.power_on_phase6~q\ & ((\inst2|ca|state.power_on_phase7~q\) # ((\inst2|ca|state.power_on_phase8~q\) # (\inst2|ca|state.process_txd_requests~q\)))) # (!\inst2|ca|state.power_on_phase6~q\ & 
-- ((\inst2|ca|state.power_on_phase7~q\ & ((\inst2|ca|state.power_on_phase8~q\) # (\inst2|ca|state.process_txd_requests~q\))) # (!\inst2|ca|state.power_on_phase7~q\ & (\inst2|ca|state.power_on_phase8~q\ & \inst2|ca|state.process_txd_requests~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase6~q\,
	datab => \inst2|ca|state.power_on_phase7~q\,
	datac => \inst2|ca|state.power_on_phase8~q\,
	datad => \inst2|ca|state.process_txd_requests~q\,
	combout => \inst2|ca|state.power_on_phase1~2_combout\);

-- Location: LCCOMB_X7_Y44_N18
\inst2|ca|state.power_on_phase1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state.power_on_phase1~3_combout\ = (!\inst2|ca|state.power_on_phase1~0_combout\ & ((\inst2|ca|state.power_on_phase1~1_combout\ & (\inst2|ca|state.power_on_phase1~q\ $ (\inst2|ca|state.power_on_phase1~2_combout\))) # 
-- (!\inst2|ca|state.power_on_phase1~1_combout\ & (!\inst2|ca|state.power_on_phase1~q\ & !\inst2|ca|state.power_on_phase1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase1~1_combout\,
	datab => \inst2|ca|state.power_on_phase1~q\,
	datac => \inst2|ca|state.power_on_phase1~0_combout\,
	datad => \inst2|ca|state.power_on_phase1~2_combout\,
	combout => \inst2|ca|state.power_on_phase1~3_combout\);

-- Location: LCCOMB_X7_Y44_N12
\inst2|ca|delay_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~4_combout\ = (!\inst2|ca|state.power_on_phase7~q\ & (!\inst2|ca|state.power_on_phase8~q\ & !\inst2|ca|state.process_txd_requests~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|state.power_on_phase7~q\,
	datac => \inst2|ca|state.power_on_phase8~q\,
	datad => \inst2|ca|state.process_txd_requests~q\,
	combout => \inst2|ca|delay_counter~4_combout\);

-- Location: LCCOMB_X7_Y44_N22
\inst2|ca|state.power_on_phase1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state.power_on_phase1~5_combout\ = (\inst2|ca|delay_counter~4_combout\ & (\inst2|ca|state.power_on_phase1~q\ & !\inst2|ca|state.power_on_phase6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter~4_combout\,
	datab => \inst2|ca|state.power_on_phase1~q\,
	datac => \inst2|ca|state.power_on_phase6~q\,
	combout => \inst2|ca|state.power_on_phase1~5_combout\);

-- Location: LCCOMB_X7_Y44_N28
\inst2|ca|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~14_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|state.power_on_phase1~3_combout\) # ((\inst2|ca|state.power_on_phase1~4_combout\ & \inst2|ca|state.power_on_phase1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase1~4_combout\,
	datab => \inst2|ca|state.power_on_phase1~3_combout\,
	datac => \inst2|ca|state.power_on_phase1~5_combout\,
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|state~14_combout\);

-- Location: LCCOMB_X7_Y44_N14
\inst2|ca|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~21_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state~13_combout\ & (\inst2|ca|state.power_on_phase8~q\)) # (!\inst2|ca|state~13_combout\ & ((\inst2|ca|state.power_on_phase7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state~13_combout\,
	datab => \inst2|ca|state~14_combout\,
	datac => \inst2|ca|state.power_on_phase8~q\,
	datad => \inst2|ca|state.power_on_phase7~q\,
	combout => \inst2|ca|state~21_combout\);

-- Location: FF_X7_Y44_N15
\inst2|ca|state.power_on_phase8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.power_on_phase8~q\);

-- Location: LCCOMB_X46_Y36_N4
\inst2|index[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|index[0]~6_combout\ = \inst2|index\(0) $ (VCC)
-- \inst2|index[0]~7\ = CARRY(\inst2|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|index\(0),
	datad => VCC,
	combout => \inst2|index[0]~6_combout\,
	cout => \inst2|index[0]~7\);

-- Location: LCCOMB_X54_Y36_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X46_Y36_N30
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst2|index\(0) & \inst2|index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|index\(0),
	datad => \inst2|index\(1),
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y36_N6
\inst2|index[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|index[1]~8_combout\ = (\inst2|index\(1) & (!\inst2|index[0]~7\)) # (!\inst2|index\(1) & ((\inst2|index[0]~7\) # (GND)))
-- \inst2|index[1]~9\ = CARRY((!\inst2|index[0]~7\) # (!\inst2|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datad => VCC,
	cin => \inst2|index[0]~7\,
	combout => \inst2|index[1]~8_combout\,
	cout => \inst2|index[1]~9\);

-- Location: LCCOMB_X46_Y36_N8
\inst2|index[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|index[2]~10_combout\ = (\inst2|index\(2) & (\inst2|index[1]~9\ $ (GND))) # (!\inst2|index\(2) & (!\inst2|index[1]~9\ & VCC))
-- \inst2|index[2]~11\ = CARRY((\inst2|index\(2) & !\inst2|index[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|index\(2),
	datad => VCC,
	cin => \inst2|index[1]~9\,
	combout => \inst2|index[2]~10_combout\,
	cout => \inst2|index[2]~11\);

-- Location: LCCOMB_X7_Y44_N8
\inst2|ca|txd_accepted~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|txd_accepted~0_combout\ = (!\inst2|ca|Equal0~6_combout\ & (\inst2|ca|state.process_txd_requests~q\ & !\inst2|ca|state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|state.process_txd_requests~q\,
	datad => \inst2|ca|state~13_combout\,
	combout => \inst2|ca|txd_accepted~0_combout\);

-- Location: FF_X7_Y44_N9
\inst2|ca|txd_accepted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|txd_accepted~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|txd_accepted~q\);

-- Location: FF_X46_Y36_N9
\inst2|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|index[2]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst2|LessThan0~0_combout\,
	ena => \inst2|ca|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|index\(2));

-- Location: LCCOMB_X46_Y36_N10
\inst2|index[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|index[3]~12_combout\ = (\inst2|index\(3) & (!\inst2|index[2]~11\)) # (!\inst2|index\(3) & ((\inst2|index[2]~11\) # (GND)))
-- \inst2|index[3]~13\ = CARRY((!\inst2|index[2]~11\) # (!\inst2|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datad => VCC,
	cin => \inst2|index[2]~11\,
	combout => \inst2|index[3]~12_combout\,
	cout => \inst2|index[3]~13\);

-- Location: FF_X46_Y36_N11
\inst2|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|index[3]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst2|LessThan0~0_combout\,
	ena => \inst2|ca|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|index\(3));

-- Location: LCCOMB_X47_Y36_N24
\inst2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (!\inst2|index\(3) & !\inst2|index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|index\(3),
	datad => \inst2|index\(2),
	combout => \inst2|Mux1~2_combout\);

-- Location: LCCOMB_X46_Y36_N12
\inst2|index[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|index[4]~14_combout\ = (\inst2|index\(4) & (\inst2|index[3]~13\ $ (GND))) # (!\inst2|index\(4) & (!\inst2|index[3]~13\ & VCC))
-- \inst2|index[4]~15\ = CARRY((\inst2|index\(4) & !\inst2|index[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(4),
	datad => VCC,
	cin => \inst2|index[3]~13\,
	combout => \inst2|index[4]~14_combout\,
	cout => \inst2|index[4]~15\);

-- Location: FF_X46_Y36_N13
\inst2|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|index[4]~14_combout\,
	asdata => VCC,
	sload => \inst2|LessThan0~0_combout\,
	ena => \inst2|ca|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|index\(4));

-- Location: LCCOMB_X46_Y36_N14
\inst2|index[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|index[5]~16_combout\ = \inst2|index\(5) $ (\inst2|index[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|index\(5),
	cin => \inst2|index[4]~15\,
	combout => \inst2|index[5]~16_combout\);

-- Location: FF_X46_Y36_N15
\inst2|index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|index[5]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst2|LessThan0~0_combout\,
	ena => \inst2|ca|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|index\(5));

-- Location: LCCOMB_X46_Y36_N16
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|index\(5) & (\inst2|index\(4) & ((\inst2|Mux3~0_combout\) # (!\inst2|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~0_combout\,
	datab => \inst2|Mux1~2_combout\,
	datac => \inst2|index\(5),
	datad => \inst2|index\(4),
	combout => \inst2|LessThan0~0_combout\);

-- Location: FF_X46_Y36_N5
\inst2|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|index[0]~6_combout\,
	asdata => \~GND~combout\,
	sload => \inst2|LessThan0~0_combout\,
	ena => \inst2|ca|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|index\(0));

-- Location: FF_X46_Y36_N7
\inst2|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|index[1]~8_combout\,
	asdata => VCC,
	sload => \inst2|LessThan0~0_combout\,
	ena => \inst2|ca|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|index\(1));

-- Location: LCCOMB_X46_Y36_N2
\inst2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~3_combout\ = (\inst2|index\(1) & ((\inst2|index\(0) & (\inst2|index\(5) & !\inst2|index\(4))) # (!\inst2|index\(0) & (!\inst2|index\(5) & \inst2|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|index\(0),
	datac => \inst2|index\(5),
	datad => \inst2|index\(4),
	combout => \inst2|Mux1~3_combout\);

-- Location: LCCOMB_X46_Y36_N20
\inst2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~4_combout\ = (\inst2|Mux1~3_combout\ & (!\inst2|index\(2) & !\inst2|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux1~3_combout\,
	datac => \inst2|index\(2),
	datad => \inst2|index\(3),
	combout => \inst2|Mux1~4_combout\);

-- Location: FF_X46_Y36_N21
\inst2|txd_rs_and_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(7));

-- Location: LCCOMB_X50_Y34_N18
\inst2|line1[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|line1[72]~feeder_combout\);

-- Location: LCCOMB_X53_Y35_N10
\inst23|timer_counter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[0]~23_combout\ = \inst23|timer_counter\(0) $ (VCC)
-- \inst23|timer_counter[0]~24\ = CARRY(\inst23|timer_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(0),
	datad => VCC,
	combout => \inst23|timer_counter[0]~23_combout\,
	cout => \inst23|timer_counter[0]~24\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X54_Y34_N18
\inst23|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|sampled_dirty~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \inst23|sampled_dirty~0_combout\);

-- Location: FF_X54_Y34_N19
\inst23|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|sampled_dirty~q\);

-- Location: LCCOMB_X54_Y34_N8
\inst23|level~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|level~0_combout\ = (\inst23|Equal0~7_combout\ & (\inst23|level~q\)) # (!\inst23|Equal0~7_combout\ & ((\inst23|sampled_dirty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|Equal0~7_combout\,
	datac => \inst23|level~q\,
	datad => \inst23|sampled_dirty~q\,
	combout => \inst23|level~0_combout\);

-- Location: FF_X54_Y34_N9
\inst23|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|level~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|level~q\);

-- Location: LCCOMB_X54_Y34_N10
\inst23|timer_counter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[1]~25_combout\ = (\inst23|level~q\ $ (!\inst23|sampled_dirty~q\)) # (!\inst23|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|Equal0~7_combout\,
	datac => \inst23|level~q\,
	datad => \inst23|sampled_dirty~q\,
	combout => \inst23|timer_counter[1]~25_combout\);

-- Location: FF_X53_Y35_N11
\inst23|timer_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[0]~23_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(0));

-- Location: LCCOMB_X53_Y35_N12
\inst23|timer_counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[1]~26_combout\ = (\inst23|timer_counter\(1) & (\inst23|timer_counter[0]~24\ & VCC)) # (!\inst23|timer_counter\(1) & (!\inst23|timer_counter[0]~24\))
-- \inst23|timer_counter[1]~27\ = CARRY((!\inst23|timer_counter\(1) & !\inst23|timer_counter[0]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(1),
	datad => VCC,
	cin => \inst23|timer_counter[0]~24\,
	combout => \inst23|timer_counter[1]~26_combout\,
	cout => \inst23|timer_counter[1]~27\);

-- Location: FF_X53_Y35_N13
\inst23|timer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[1]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(1));

-- Location: LCCOMB_X53_Y35_N14
\inst23|timer_counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[2]~28_combout\ = (\inst23|timer_counter\(2) & ((GND) # (!\inst23|timer_counter[1]~27\))) # (!\inst23|timer_counter\(2) & (\inst23|timer_counter[1]~27\ $ (GND)))
-- \inst23|timer_counter[2]~29\ = CARRY((\inst23|timer_counter\(2)) # (!\inst23|timer_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(2),
	datad => VCC,
	cin => \inst23|timer_counter[1]~27\,
	combout => \inst23|timer_counter[2]~28_combout\,
	cout => \inst23|timer_counter[2]~29\);

-- Location: FF_X53_Y35_N15
\inst23|timer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[2]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(2));

-- Location: LCCOMB_X53_Y35_N16
\inst23|timer_counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[3]~30_combout\ = (\inst23|timer_counter\(3) & (\inst23|timer_counter[2]~29\ & VCC)) # (!\inst23|timer_counter\(3) & (!\inst23|timer_counter[2]~29\))
-- \inst23|timer_counter[3]~31\ = CARRY((!\inst23|timer_counter\(3) & !\inst23|timer_counter[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(3),
	datad => VCC,
	cin => \inst23|timer_counter[2]~29\,
	combout => \inst23|timer_counter[3]~30_combout\,
	cout => \inst23|timer_counter[3]~31\);

-- Location: FF_X53_Y35_N17
\inst23|timer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[3]~30_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(3));

-- Location: LCCOMB_X53_Y35_N18
\inst23|timer_counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[4]~32_combout\ = (\inst23|timer_counter\(4) & ((GND) # (!\inst23|timer_counter[3]~31\))) # (!\inst23|timer_counter\(4) & (\inst23|timer_counter[3]~31\ $ (GND)))
-- \inst23|timer_counter[4]~33\ = CARRY((\inst23|timer_counter\(4)) # (!\inst23|timer_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(4),
	datad => VCC,
	cin => \inst23|timer_counter[3]~31\,
	combout => \inst23|timer_counter[4]~32_combout\,
	cout => \inst23|timer_counter[4]~33\);

-- Location: FF_X53_Y35_N19
\inst23|timer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[4]~32_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(4));

-- Location: LCCOMB_X53_Y35_N20
\inst23|timer_counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[5]~34_combout\ = (\inst23|timer_counter\(5) & (\inst23|timer_counter[4]~33\ & VCC)) # (!\inst23|timer_counter\(5) & (!\inst23|timer_counter[4]~33\))
-- \inst23|timer_counter[5]~35\ = CARRY((!\inst23|timer_counter\(5) & !\inst23|timer_counter[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(5),
	datad => VCC,
	cin => \inst23|timer_counter[4]~33\,
	combout => \inst23|timer_counter[5]~34_combout\,
	cout => \inst23|timer_counter[5]~35\);

-- Location: FF_X53_Y35_N21
\inst23|timer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[5]~34_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(5));

-- Location: LCCOMB_X53_Y35_N22
\inst23|timer_counter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[6]~36_combout\ = (\inst23|timer_counter\(6) & ((GND) # (!\inst23|timer_counter[5]~35\))) # (!\inst23|timer_counter\(6) & (\inst23|timer_counter[5]~35\ $ (GND)))
-- \inst23|timer_counter[6]~37\ = CARRY((\inst23|timer_counter\(6)) # (!\inst23|timer_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(6),
	datad => VCC,
	cin => \inst23|timer_counter[5]~35\,
	combout => \inst23|timer_counter[6]~36_combout\,
	cout => \inst23|timer_counter[6]~37\);

-- Location: FF_X53_Y35_N23
\inst23|timer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[6]~36_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(6));

-- Location: LCCOMB_X53_Y35_N24
\inst23|timer_counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[7]~38_combout\ = (\inst23|timer_counter\(7) & (\inst23|timer_counter[6]~37\ & VCC)) # (!\inst23|timer_counter\(7) & (!\inst23|timer_counter[6]~37\))
-- \inst23|timer_counter[7]~39\ = CARRY((!\inst23|timer_counter\(7) & !\inst23|timer_counter[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(7),
	datad => VCC,
	cin => \inst23|timer_counter[6]~37\,
	combout => \inst23|timer_counter[7]~38_combout\,
	cout => \inst23|timer_counter[7]~39\);

-- Location: FF_X53_Y35_N25
\inst23|timer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[7]~38_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(7));

-- Location: LCCOMB_X53_Y35_N26
\inst23|timer_counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[8]~40_combout\ = (\inst23|timer_counter\(8) & ((GND) # (!\inst23|timer_counter[7]~39\))) # (!\inst23|timer_counter\(8) & (\inst23|timer_counter[7]~39\ $ (GND)))
-- \inst23|timer_counter[8]~41\ = CARRY((\inst23|timer_counter\(8)) # (!\inst23|timer_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(8),
	datad => VCC,
	cin => \inst23|timer_counter[7]~39\,
	combout => \inst23|timer_counter[8]~40_combout\,
	cout => \inst23|timer_counter[8]~41\);

-- Location: FF_X53_Y35_N27
\inst23|timer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[8]~40_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(8));

-- Location: LCCOMB_X53_Y35_N28
\inst23|timer_counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[9]~42_combout\ = (\inst23|timer_counter\(9) & (\inst23|timer_counter[8]~41\ & VCC)) # (!\inst23|timer_counter\(9) & (!\inst23|timer_counter[8]~41\))
-- \inst23|timer_counter[9]~43\ = CARRY((!\inst23|timer_counter\(9) & !\inst23|timer_counter[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(9),
	datad => VCC,
	cin => \inst23|timer_counter[8]~41\,
	combout => \inst23|timer_counter[9]~42_combout\,
	cout => \inst23|timer_counter[9]~43\);

-- Location: FF_X53_Y35_N29
\inst23|timer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[9]~42_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(9));

-- Location: LCCOMB_X53_Y35_N30
\inst23|timer_counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[10]~44_combout\ = (\inst23|timer_counter\(10) & ((GND) # (!\inst23|timer_counter[9]~43\))) # (!\inst23|timer_counter\(10) & (\inst23|timer_counter[9]~43\ $ (GND)))
-- \inst23|timer_counter[10]~45\ = CARRY((\inst23|timer_counter\(10)) # (!\inst23|timer_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(10),
	datad => VCC,
	cin => \inst23|timer_counter[9]~43\,
	combout => \inst23|timer_counter[10]~44_combout\,
	cout => \inst23|timer_counter[10]~45\);

-- Location: FF_X53_Y35_N31
\inst23|timer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[10]~44_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(10));

-- Location: LCCOMB_X53_Y34_N0
\inst23|timer_counter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[11]~46_combout\ = (\inst23|timer_counter\(11) & (\inst23|timer_counter[10]~45\ & VCC)) # (!\inst23|timer_counter\(11) & (!\inst23|timer_counter[10]~45\))
-- \inst23|timer_counter[11]~47\ = CARRY((!\inst23|timer_counter\(11) & !\inst23|timer_counter[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(11),
	datad => VCC,
	cin => \inst23|timer_counter[10]~45\,
	combout => \inst23|timer_counter[11]~46_combout\,
	cout => \inst23|timer_counter[11]~47\);

-- Location: FF_X53_Y34_N1
\inst23|timer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[11]~46_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(11));

-- Location: LCCOMB_X53_Y34_N2
\inst23|timer_counter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[12]~48_combout\ = (\inst23|timer_counter\(12) & ((GND) # (!\inst23|timer_counter[11]~47\))) # (!\inst23|timer_counter\(12) & (\inst23|timer_counter[11]~47\ $ (GND)))
-- \inst23|timer_counter[12]~49\ = CARRY((\inst23|timer_counter\(12)) # (!\inst23|timer_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(12),
	datad => VCC,
	cin => \inst23|timer_counter[11]~47\,
	combout => \inst23|timer_counter[12]~48_combout\,
	cout => \inst23|timer_counter[12]~49\);

-- Location: FF_X53_Y34_N3
\inst23|timer_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[12]~48_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(12));

-- Location: LCCOMB_X53_Y34_N4
\inst23|timer_counter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[13]~50_combout\ = (\inst23|timer_counter\(13) & (\inst23|timer_counter[12]~49\ & VCC)) # (!\inst23|timer_counter\(13) & (!\inst23|timer_counter[12]~49\))
-- \inst23|timer_counter[13]~51\ = CARRY((!\inst23|timer_counter\(13) & !\inst23|timer_counter[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(13),
	datad => VCC,
	cin => \inst23|timer_counter[12]~49\,
	combout => \inst23|timer_counter[13]~50_combout\,
	cout => \inst23|timer_counter[13]~51\);

-- Location: FF_X53_Y34_N5
\inst23|timer_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[13]~50_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(13));

-- Location: LCCOMB_X53_Y34_N6
\inst23|timer_counter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[14]~52_combout\ = (\inst23|timer_counter\(14) & ((GND) # (!\inst23|timer_counter[13]~51\))) # (!\inst23|timer_counter\(14) & (\inst23|timer_counter[13]~51\ $ (GND)))
-- \inst23|timer_counter[14]~53\ = CARRY((\inst23|timer_counter\(14)) # (!\inst23|timer_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(14),
	datad => VCC,
	cin => \inst23|timer_counter[13]~51\,
	combout => \inst23|timer_counter[14]~52_combout\,
	cout => \inst23|timer_counter[14]~53\);

-- Location: FF_X53_Y34_N7
\inst23|timer_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[14]~52_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(14));

-- Location: LCCOMB_X53_Y34_N8
\inst23|timer_counter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[15]~54_combout\ = (\inst23|timer_counter\(15) & (\inst23|timer_counter[14]~53\ & VCC)) # (!\inst23|timer_counter\(15) & (!\inst23|timer_counter[14]~53\))
-- \inst23|timer_counter[15]~55\ = CARRY((!\inst23|timer_counter\(15) & !\inst23|timer_counter[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(15),
	datad => VCC,
	cin => \inst23|timer_counter[14]~53\,
	combout => \inst23|timer_counter[15]~54_combout\,
	cout => \inst23|timer_counter[15]~55\);

-- Location: FF_X53_Y34_N9
\inst23|timer_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[15]~54_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(15));

-- Location: LCCOMB_X53_Y34_N10
\inst23|timer_counter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[16]~56_combout\ = (\inst23|timer_counter\(16) & ((GND) # (!\inst23|timer_counter[15]~55\))) # (!\inst23|timer_counter\(16) & (\inst23|timer_counter[15]~55\ $ (GND)))
-- \inst23|timer_counter[16]~57\ = CARRY((\inst23|timer_counter\(16)) # (!\inst23|timer_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(16),
	datad => VCC,
	cin => \inst23|timer_counter[15]~55\,
	combout => \inst23|timer_counter[16]~56_combout\,
	cout => \inst23|timer_counter[16]~57\);

-- Location: FF_X53_Y34_N11
\inst23|timer_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[16]~56_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(16));

-- Location: LCCOMB_X53_Y34_N12
\inst23|timer_counter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[17]~58_combout\ = (\inst23|timer_counter\(17) & (\inst23|timer_counter[16]~57\ & VCC)) # (!\inst23|timer_counter\(17) & (!\inst23|timer_counter[16]~57\))
-- \inst23|timer_counter[17]~59\ = CARRY((!\inst23|timer_counter\(17) & !\inst23|timer_counter[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(17),
	datad => VCC,
	cin => \inst23|timer_counter[16]~57\,
	combout => \inst23|timer_counter[17]~58_combout\,
	cout => \inst23|timer_counter[17]~59\);

-- Location: FF_X53_Y34_N13
\inst23|timer_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[17]~58_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(17));

-- Location: LCCOMB_X53_Y34_N14
\inst23|timer_counter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[18]~60_combout\ = (\inst23|timer_counter\(18) & ((GND) # (!\inst23|timer_counter[17]~59\))) # (!\inst23|timer_counter\(18) & (\inst23|timer_counter[17]~59\ $ (GND)))
-- \inst23|timer_counter[18]~61\ = CARRY((\inst23|timer_counter\(18)) # (!\inst23|timer_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(18),
	datad => VCC,
	cin => \inst23|timer_counter[17]~59\,
	combout => \inst23|timer_counter[18]~60_combout\,
	cout => \inst23|timer_counter[18]~61\);

-- Location: FF_X53_Y34_N15
\inst23|timer_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[18]~60_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(18));

-- Location: LCCOMB_X53_Y34_N16
\inst23|timer_counter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[19]~62_combout\ = (\inst23|timer_counter\(19) & (\inst23|timer_counter[18]~61\ & VCC)) # (!\inst23|timer_counter\(19) & (!\inst23|timer_counter[18]~61\))
-- \inst23|timer_counter[19]~63\ = CARRY((!\inst23|timer_counter\(19) & !\inst23|timer_counter[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(19),
	datad => VCC,
	cin => \inst23|timer_counter[18]~61\,
	combout => \inst23|timer_counter[19]~62_combout\,
	cout => \inst23|timer_counter[19]~63\);

-- Location: FF_X53_Y34_N17
\inst23|timer_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[19]~62_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(19));

-- Location: LCCOMB_X53_Y34_N26
\inst23|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~5_combout\ = (\inst23|timer_counter\(16)) # ((\inst23|timer_counter\(19)) # ((\inst23|timer_counter\(18)) # (\inst23|timer_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(16),
	datab => \inst23|timer_counter\(19),
	datac => \inst23|timer_counter\(18),
	datad => \inst23|timer_counter\(17),
	combout => \inst23|Equal0~5_combout\);

-- Location: LCCOMB_X53_Y34_N18
\inst23|timer_counter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[20]~64_combout\ = (\inst23|timer_counter\(20) & ((GND) # (!\inst23|timer_counter[19]~63\))) # (!\inst23|timer_counter\(20) & (\inst23|timer_counter[19]~63\ $ (GND)))
-- \inst23|timer_counter[20]~65\ = CARRY((\inst23|timer_counter\(20)) # (!\inst23|timer_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(20),
	datad => VCC,
	cin => \inst23|timer_counter[19]~63\,
	combout => \inst23|timer_counter[20]~64_combout\,
	cout => \inst23|timer_counter[20]~65\);

-- Location: FF_X53_Y34_N19
\inst23|timer_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[20]~64_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(20));

-- Location: LCCOMB_X53_Y34_N20
\inst23|timer_counter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[21]~66_combout\ = (\inst23|timer_counter\(21) & (\inst23|timer_counter[20]~65\ & VCC)) # (!\inst23|timer_counter\(21) & (!\inst23|timer_counter[20]~65\))
-- \inst23|timer_counter[21]~67\ = CARRY((!\inst23|timer_counter\(21) & !\inst23|timer_counter[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(21),
	datad => VCC,
	cin => \inst23|timer_counter[20]~65\,
	combout => \inst23|timer_counter[21]~66_combout\,
	cout => \inst23|timer_counter[21]~67\);

-- Location: FF_X53_Y34_N21
\inst23|timer_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[21]~66_combout\,
	asdata => \~GND~combout\,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(21));

-- Location: LCCOMB_X53_Y34_N22
\inst23|timer_counter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|timer_counter[22]~68_combout\ = \inst23|timer_counter\(22) $ (\inst23|timer_counter[21]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(22),
	cin => \inst23|timer_counter[21]~67\,
	combout => \inst23|timer_counter[22]~68_combout\);

-- Location: FF_X53_Y34_N23
\inst23|timer_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|timer_counter[22]~68_combout\,
	asdata => VCC,
	sload => \inst23|timer_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|timer_counter\(22));

-- Location: LCCOMB_X53_Y34_N24
\inst23|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~6_combout\ = (\inst23|timer_counter\(20)) # ((\inst23|timer_counter\(22)) # (\inst23|timer_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|timer_counter\(20),
	datac => \inst23|timer_counter\(22),
	datad => \inst23|timer_counter\(21),
	combout => \inst23|Equal0~6_combout\);

-- Location: LCCOMB_X53_Y34_N28
\inst23|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~3_combout\ = (\inst23|timer_counter\(14)) # ((\inst23|timer_counter\(15)) # ((\inst23|timer_counter\(13)) # (\inst23|timer_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(14),
	datab => \inst23|timer_counter\(15),
	datac => \inst23|timer_counter\(13),
	datad => \inst23|timer_counter\(12),
	combout => \inst23|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y35_N2
\inst23|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~1_combout\ = (\inst23|timer_counter\(7)) # ((\inst23|timer_counter\(5)) # ((\inst23|timer_counter\(6)) # (\inst23|timer_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(7),
	datab => \inst23|timer_counter\(5),
	datac => \inst23|timer_counter\(6),
	datad => \inst23|timer_counter\(4),
	combout => \inst23|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y35_N4
\inst23|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~2_combout\ = (\inst23|timer_counter\(10)) # ((\inst23|timer_counter\(11)) # ((\inst23|timer_counter\(8)) # (\inst23|timer_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(10),
	datab => \inst23|timer_counter\(11),
	datac => \inst23|timer_counter\(8),
	datad => \inst23|timer_counter\(9),
	combout => \inst23|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y35_N0
\inst23|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~0_combout\ = (\inst23|timer_counter\(1)) # ((\inst23|timer_counter\(3)) # ((\inst23|timer_counter\(2)) # (\inst23|timer_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|timer_counter\(1),
	datab => \inst23|timer_counter\(3),
	datac => \inst23|timer_counter\(2),
	datad => \inst23|timer_counter\(0),
	combout => \inst23|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y35_N6
\inst23|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~4_combout\ = (\inst23|Equal0~3_combout\) # ((\inst23|Equal0~1_combout\) # ((\inst23|Equal0~2_combout\) # (\inst23|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Equal0~3_combout\,
	datab => \inst23|Equal0~1_combout\,
	datac => \inst23|Equal0~2_combout\,
	datad => \inst23|Equal0~0_combout\,
	combout => \inst23|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y34_N30
\inst23|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal0~7_combout\ = (\inst23|Equal0~5_combout\) # ((\inst23|Equal0~6_combout\) # (\inst23|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Equal0~5_combout\,
	datab => \inst23|Equal0~6_combout\,
	datad => \inst23|Equal0~4_combout\,
	combout => \inst23|Equal0~7_combout\);

-- Location: LCCOMB_X54_Y34_N16
\inst23|zero_to_one_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|zero_to_one_pulse~0_combout\ = (!\inst23|Equal0~7_combout\ & (!\inst23|level~q\ & \inst23|sampled_dirty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|Equal0~7_combout\,
	datac => \inst23|level~q\,
	datad => \inst23|sampled_dirty~q\,
	combout => \inst23|zero_to_one_pulse~0_combout\);

-- Location: FF_X54_Y34_N17
\inst23|zero_to_one_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|zero_to_one_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|zero_to_one_pulse~q\);

-- Location: LCCOMB_X56_Y27_N0
\inst3|s_pont2[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[0]~33_combout\ = \inst3|s_pont2\(0) $ (VCC)
-- \inst3|s_pont2[0]~34\ = CARRY(\inst3|s_pont2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(0),
	datad => VCC,
	combout => \inst3|s_pont2[0]~33_combout\,
	cout => \inst3|s_pont2[0]~34\);

-- Location: LCCOMB_X54_Y27_N0
\inst3|s_pont1[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[0]~32_combout\ = \inst3|s_pont1\(0) $ (VCC)
-- \inst3|s_pont1[0]~33\ = CARRY(\inst3|s_pont1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(0),
	datad => VCC,
	combout => \inst3|s_pont1[0]~32_combout\,
	cout => \inst3|s_pont1[0]~33\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X55_Y31_N24
\inst|internalReset~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|internalReset~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \inst|internalReset~feeder_combout\);

-- Location: FF_X55_Y31_N25
\inst|internalReset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|internalReset~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|internalReset~q\);

-- Location: LCCOMB_X57_Y35_N10
\inst22|timer_counter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[0]~23_combout\ = \inst22|timer_counter\(0) $ (VCC)
-- \inst22|timer_counter[0]~24\ = CARRY(\inst22|timer_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(0),
	datad => VCC,
	combout => \inst22|timer_counter[0]~23_combout\,
	cout => \inst22|timer_counter[0]~24\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X57_Y31_N18
\inst22|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|sampled_dirty~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \inst22|sampled_dirty~0_combout\);

-- Location: FF_X57_Y31_N19
\inst22|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|sampled_dirty~q\);

-- Location: LCCOMB_X57_Y31_N24
\inst22|timer_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[0]~25_combout\ = (\inst22|level~q\ $ (!\inst22|sampled_dirty~q\)) # (!\inst22|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|level~q\,
	datac => \inst22|Equal0~7_combout\,
	datad => \inst22|sampled_dirty~q\,
	combout => \inst22|timer_counter[0]~25_combout\);

-- Location: FF_X57_Y35_N11
\inst22|timer_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[0]~23_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(0));

-- Location: LCCOMB_X57_Y35_N12
\inst22|timer_counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[1]~26_combout\ = (\inst22|timer_counter\(1) & (\inst22|timer_counter[0]~24\ & VCC)) # (!\inst22|timer_counter\(1) & (!\inst22|timer_counter[0]~24\))
-- \inst22|timer_counter[1]~27\ = CARRY((!\inst22|timer_counter\(1) & !\inst22|timer_counter[0]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(1),
	datad => VCC,
	cin => \inst22|timer_counter[0]~24\,
	combout => \inst22|timer_counter[1]~26_combout\,
	cout => \inst22|timer_counter[1]~27\);

-- Location: FF_X57_Y35_N13
\inst22|timer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[1]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(1));

-- Location: LCCOMB_X57_Y35_N14
\inst22|timer_counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[2]~28_combout\ = (\inst22|timer_counter\(2) & ((GND) # (!\inst22|timer_counter[1]~27\))) # (!\inst22|timer_counter\(2) & (\inst22|timer_counter[1]~27\ $ (GND)))
-- \inst22|timer_counter[2]~29\ = CARRY((\inst22|timer_counter\(2)) # (!\inst22|timer_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(2),
	datad => VCC,
	cin => \inst22|timer_counter[1]~27\,
	combout => \inst22|timer_counter[2]~28_combout\,
	cout => \inst22|timer_counter[2]~29\);

-- Location: FF_X57_Y35_N15
\inst22|timer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[2]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(2));

-- Location: LCCOMB_X57_Y35_N16
\inst22|timer_counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[3]~30_combout\ = (\inst22|timer_counter\(3) & (\inst22|timer_counter[2]~29\ & VCC)) # (!\inst22|timer_counter\(3) & (!\inst22|timer_counter[2]~29\))
-- \inst22|timer_counter[3]~31\ = CARRY((!\inst22|timer_counter\(3) & !\inst22|timer_counter[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(3),
	datad => VCC,
	cin => \inst22|timer_counter[2]~29\,
	combout => \inst22|timer_counter[3]~30_combout\,
	cout => \inst22|timer_counter[3]~31\);

-- Location: FF_X57_Y35_N17
\inst22|timer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[3]~30_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(3));

-- Location: LCCOMB_X57_Y35_N18
\inst22|timer_counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[4]~32_combout\ = (\inst22|timer_counter\(4) & ((GND) # (!\inst22|timer_counter[3]~31\))) # (!\inst22|timer_counter\(4) & (\inst22|timer_counter[3]~31\ $ (GND)))
-- \inst22|timer_counter[4]~33\ = CARRY((\inst22|timer_counter\(4)) # (!\inst22|timer_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(4),
	datad => VCC,
	cin => \inst22|timer_counter[3]~31\,
	combout => \inst22|timer_counter[4]~32_combout\,
	cout => \inst22|timer_counter[4]~33\);

-- Location: FF_X57_Y35_N19
\inst22|timer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[4]~32_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(4));

-- Location: LCCOMB_X57_Y35_N20
\inst22|timer_counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[5]~34_combout\ = (\inst22|timer_counter\(5) & (\inst22|timer_counter[4]~33\ & VCC)) # (!\inst22|timer_counter\(5) & (!\inst22|timer_counter[4]~33\))
-- \inst22|timer_counter[5]~35\ = CARRY((!\inst22|timer_counter\(5) & !\inst22|timer_counter[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(5),
	datad => VCC,
	cin => \inst22|timer_counter[4]~33\,
	combout => \inst22|timer_counter[5]~34_combout\,
	cout => \inst22|timer_counter[5]~35\);

-- Location: FF_X57_Y35_N21
\inst22|timer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[5]~34_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(5));

-- Location: LCCOMB_X57_Y35_N22
\inst22|timer_counter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[6]~36_combout\ = (\inst22|timer_counter\(6) & ((GND) # (!\inst22|timer_counter[5]~35\))) # (!\inst22|timer_counter\(6) & (\inst22|timer_counter[5]~35\ $ (GND)))
-- \inst22|timer_counter[6]~37\ = CARRY((\inst22|timer_counter\(6)) # (!\inst22|timer_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(6),
	datad => VCC,
	cin => \inst22|timer_counter[5]~35\,
	combout => \inst22|timer_counter[6]~36_combout\,
	cout => \inst22|timer_counter[6]~37\);

-- Location: FF_X57_Y35_N23
\inst22|timer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[6]~36_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(6));

-- Location: LCCOMB_X57_Y35_N24
\inst22|timer_counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[7]~38_combout\ = (\inst22|timer_counter\(7) & (\inst22|timer_counter[6]~37\ & VCC)) # (!\inst22|timer_counter\(7) & (!\inst22|timer_counter[6]~37\))
-- \inst22|timer_counter[7]~39\ = CARRY((!\inst22|timer_counter\(7) & !\inst22|timer_counter[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(7),
	datad => VCC,
	cin => \inst22|timer_counter[6]~37\,
	combout => \inst22|timer_counter[7]~38_combout\,
	cout => \inst22|timer_counter[7]~39\);

-- Location: FF_X57_Y35_N25
\inst22|timer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[7]~38_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(7));

-- Location: LCCOMB_X57_Y35_N26
\inst22|timer_counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[8]~40_combout\ = (\inst22|timer_counter\(8) & ((GND) # (!\inst22|timer_counter[7]~39\))) # (!\inst22|timer_counter\(8) & (\inst22|timer_counter[7]~39\ $ (GND)))
-- \inst22|timer_counter[8]~41\ = CARRY((\inst22|timer_counter\(8)) # (!\inst22|timer_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(8),
	datad => VCC,
	cin => \inst22|timer_counter[7]~39\,
	combout => \inst22|timer_counter[8]~40_combout\,
	cout => \inst22|timer_counter[8]~41\);

-- Location: FF_X57_Y35_N27
\inst22|timer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[8]~40_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(8));

-- Location: LCCOMB_X57_Y35_N28
\inst22|timer_counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[9]~42_combout\ = (\inst22|timer_counter\(9) & (\inst22|timer_counter[8]~41\ & VCC)) # (!\inst22|timer_counter\(9) & (!\inst22|timer_counter[8]~41\))
-- \inst22|timer_counter[9]~43\ = CARRY((!\inst22|timer_counter\(9) & !\inst22|timer_counter[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(9),
	datad => VCC,
	cin => \inst22|timer_counter[8]~41\,
	combout => \inst22|timer_counter[9]~42_combout\,
	cout => \inst22|timer_counter[9]~43\);

-- Location: FF_X57_Y35_N29
\inst22|timer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[9]~42_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(9));

-- Location: LCCOMB_X57_Y35_N30
\inst22|timer_counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[10]~44_combout\ = (\inst22|timer_counter\(10) & ((GND) # (!\inst22|timer_counter[9]~43\))) # (!\inst22|timer_counter\(10) & (\inst22|timer_counter[9]~43\ $ (GND)))
-- \inst22|timer_counter[10]~45\ = CARRY((\inst22|timer_counter\(10)) # (!\inst22|timer_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(10),
	datad => VCC,
	cin => \inst22|timer_counter[9]~43\,
	combout => \inst22|timer_counter[10]~44_combout\,
	cout => \inst22|timer_counter[10]~45\);

-- Location: FF_X57_Y35_N31
\inst22|timer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[10]~44_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(10));

-- Location: LCCOMB_X57_Y34_N0
\inst22|timer_counter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[11]~46_combout\ = (\inst22|timer_counter\(11) & (\inst22|timer_counter[10]~45\ & VCC)) # (!\inst22|timer_counter\(11) & (!\inst22|timer_counter[10]~45\))
-- \inst22|timer_counter[11]~47\ = CARRY((!\inst22|timer_counter\(11) & !\inst22|timer_counter[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(11),
	datad => VCC,
	cin => \inst22|timer_counter[10]~45\,
	combout => \inst22|timer_counter[11]~46_combout\,
	cout => \inst22|timer_counter[11]~47\);

-- Location: FF_X57_Y34_N1
\inst22|timer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[11]~46_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(11));

-- Location: LCCOMB_X57_Y34_N2
\inst22|timer_counter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[12]~48_combout\ = (\inst22|timer_counter\(12) & ((GND) # (!\inst22|timer_counter[11]~47\))) # (!\inst22|timer_counter\(12) & (\inst22|timer_counter[11]~47\ $ (GND)))
-- \inst22|timer_counter[12]~49\ = CARRY((\inst22|timer_counter\(12)) # (!\inst22|timer_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(12),
	datad => VCC,
	cin => \inst22|timer_counter[11]~47\,
	combout => \inst22|timer_counter[12]~48_combout\,
	cout => \inst22|timer_counter[12]~49\);

-- Location: FF_X57_Y34_N3
\inst22|timer_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[12]~48_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(12));

-- Location: LCCOMB_X57_Y34_N4
\inst22|timer_counter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[13]~50_combout\ = (\inst22|timer_counter\(13) & (\inst22|timer_counter[12]~49\ & VCC)) # (!\inst22|timer_counter\(13) & (!\inst22|timer_counter[12]~49\))
-- \inst22|timer_counter[13]~51\ = CARRY((!\inst22|timer_counter\(13) & !\inst22|timer_counter[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(13),
	datad => VCC,
	cin => \inst22|timer_counter[12]~49\,
	combout => \inst22|timer_counter[13]~50_combout\,
	cout => \inst22|timer_counter[13]~51\);

-- Location: FF_X57_Y34_N5
\inst22|timer_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[13]~50_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(13));

-- Location: LCCOMB_X57_Y34_N6
\inst22|timer_counter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[14]~52_combout\ = (\inst22|timer_counter\(14) & ((GND) # (!\inst22|timer_counter[13]~51\))) # (!\inst22|timer_counter\(14) & (\inst22|timer_counter[13]~51\ $ (GND)))
-- \inst22|timer_counter[14]~53\ = CARRY((\inst22|timer_counter\(14)) # (!\inst22|timer_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(14),
	datad => VCC,
	cin => \inst22|timer_counter[13]~51\,
	combout => \inst22|timer_counter[14]~52_combout\,
	cout => \inst22|timer_counter[14]~53\);

-- Location: FF_X57_Y34_N7
\inst22|timer_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[14]~52_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(14));

-- Location: LCCOMB_X57_Y34_N8
\inst22|timer_counter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[15]~54_combout\ = (\inst22|timer_counter\(15) & (\inst22|timer_counter[14]~53\ & VCC)) # (!\inst22|timer_counter\(15) & (!\inst22|timer_counter[14]~53\))
-- \inst22|timer_counter[15]~55\ = CARRY((!\inst22|timer_counter\(15) & !\inst22|timer_counter[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(15),
	datad => VCC,
	cin => \inst22|timer_counter[14]~53\,
	combout => \inst22|timer_counter[15]~54_combout\,
	cout => \inst22|timer_counter[15]~55\);

-- Location: FF_X57_Y34_N9
\inst22|timer_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[15]~54_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(15));

-- Location: LCCOMB_X57_Y34_N10
\inst22|timer_counter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[16]~56_combout\ = (\inst22|timer_counter\(16) & ((GND) # (!\inst22|timer_counter[15]~55\))) # (!\inst22|timer_counter\(16) & (\inst22|timer_counter[15]~55\ $ (GND)))
-- \inst22|timer_counter[16]~57\ = CARRY((\inst22|timer_counter\(16)) # (!\inst22|timer_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(16),
	datad => VCC,
	cin => \inst22|timer_counter[15]~55\,
	combout => \inst22|timer_counter[16]~56_combout\,
	cout => \inst22|timer_counter[16]~57\);

-- Location: FF_X57_Y34_N11
\inst22|timer_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[16]~56_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(16));

-- Location: LCCOMB_X57_Y34_N12
\inst22|timer_counter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[17]~58_combout\ = (\inst22|timer_counter\(17) & (\inst22|timer_counter[16]~57\ & VCC)) # (!\inst22|timer_counter\(17) & (!\inst22|timer_counter[16]~57\))
-- \inst22|timer_counter[17]~59\ = CARRY((!\inst22|timer_counter\(17) & !\inst22|timer_counter[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(17),
	datad => VCC,
	cin => \inst22|timer_counter[16]~57\,
	combout => \inst22|timer_counter[17]~58_combout\,
	cout => \inst22|timer_counter[17]~59\);

-- Location: FF_X57_Y34_N13
\inst22|timer_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[17]~58_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(17));

-- Location: LCCOMB_X57_Y34_N14
\inst22|timer_counter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[18]~60_combout\ = (\inst22|timer_counter\(18) & ((GND) # (!\inst22|timer_counter[17]~59\))) # (!\inst22|timer_counter\(18) & (\inst22|timer_counter[17]~59\ $ (GND)))
-- \inst22|timer_counter[18]~61\ = CARRY((\inst22|timer_counter\(18)) # (!\inst22|timer_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(18),
	datad => VCC,
	cin => \inst22|timer_counter[17]~59\,
	combout => \inst22|timer_counter[18]~60_combout\,
	cout => \inst22|timer_counter[18]~61\);

-- Location: FF_X57_Y34_N15
\inst22|timer_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[18]~60_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(18));

-- Location: LCCOMB_X57_Y34_N16
\inst22|timer_counter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[19]~62_combout\ = (\inst22|timer_counter\(19) & (\inst22|timer_counter[18]~61\ & VCC)) # (!\inst22|timer_counter\(19) & (!\inst22|timer_counter[18]~61\))
-- \inst22|timer_counter[19]~63\ = CARRY((!\inst22|timer_counter\(19) & !\inst22|timer_counter[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(19),
	datad => VCC,
	cin => \inst22|timer_counter[18]~61\,
	combout => \inst22|timer_counter[19]~62_combout\,
	cout => \inst22|timer_counter[19]~63\);

-- Location: FF_X57_Y34_N17
\inst22|timer_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[19]~62_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(19));

-- Location: LCCOMB_X57_Y34_N30
\inst22|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~5_combout\ = (\inst22|timer_counter\(17)) # ((\inst22|timer_counter\(19)) # ((\inst22|timer_counter\(18)) # (\inst22|timer_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(17),
	datab => \inst22|timer_counter\(19),
	datac => \inst22|timer_counter\(18),
	datad => \inst22|timer_counter\(16),
	combout => \inst22|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y35_N6
\inst22|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~1_combout\ = (\inst22|timer_counter\(5)) # ((\inst22|timer_counter\(7)) # ((\inst22|timer_counter\(6)) # (\inst22|timer_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(5),
	datab => \inst22|timer_counter\(7),
	datac => \inst22|timer_counter\(6),
	datad => \inst22|timer_counter\(4),
	combout => \inst22|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y35_N4
\inst22|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~2_combout\ = (\inst22|timer_counter\(10)) # ((\inst22|timer_counter\(9)) # ((\inst22|timer_counter\(8)) # (\inst22|timer_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(10),
	datab => \inst22|timer_counter\(9),
	datac => \inst22|timer_counter\(8),
	datad => \inst22|timer_counter\(11),
	combout => \inst22|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y35_N8
\inst22|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~0_combout\ = (\inst22|timer_counter\(1)) # ((\inst22|timer_counter\(3)) # ((\inst22|timer_counter\(2)) # (\inst22|timer_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(1),
	datab => \inst22|timer_counter\(3),
	datac => \inst22|timer_counter\(2),
	datad => \inst22|timer_counter\(0),
	combout => \inst22|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y34_N28
\inst22|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~3_combout\ = (\inst22|timer_counter\(14)) # ((\inst22|timer_counter\(15)) # ((\inst22|timer_counter\(13)) # (\inst22|timer_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(14),
	datab => \inst22|timer_counter\(15),
	datac => \inst22|timer_counter\(13),
	datad => \inst22|timer_counter\(12),
	combout => \inst22|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y35_N2
\inst22|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~4_combout\ = (\inst22|Equal0~1_combout\) # ((\inst22|Equal0~2_combout\) # ((\inst22|Equal0~0_combout\) # (\inst22|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Equal0~1_combout\,
	datab => \inst22|Equal0~2_combout\,
	datac => \inst22|Equal0~0_combout\,
	datad => \inst22|Equal0~3_combout\,
	combout => \inst22|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y34_N18
\inst22|timer_counter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[20]~64_combout\ = (\inst22|timer_counter\(20) & ((GND) # (!\inst22|timer_counter[19]~63\))) # (!\inst22|timer_counter\(20) & (\inst22|timer_counter[19]~63\ $ (GND)))
-- \inst22|timer_counter[20]~65\ = CARRY((\inst22|timer_counter\(20)) # (!\inst22|timer_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(20),
	datad => VCC,
	cin => \inst22|timer_counter[19]~63\,
	combout => \inst22|timer_counter[20]~64_combout\,
	cout => \inst22|timer_counter[20]~65\);

-- Location: FF_X57_Y34_N19
\inst22|timer_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[20]~64_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(20));

-- Location: LCCOMB_X57_Y34_N20
\inst22|timer_counter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[21]~66_combout\ = (\inst22|timer_counter\(21) & (\inst22|timer_counter[20]~65\ & VCC)) # (!\inst22|timer_counter\(21) & (!\inst22|timer_counter[20]~65\))
-- \inst22|timer_counter[21]~67\ = CARRY((!\inst22|timer_counter\(21) & !\inst22|timer_counter[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(21),
	datad => VCC,
	cin => \inst22|timer_counter[20]~65\,
	combout => \inst22|timer_counter[21]~66_combout\,
	cout => \inst22|timer_counter[21]~67\);

-- Location: FF_X57_Y34_N21
\inst22|timer_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[21]~66_combout\,
	asdata => \~GND~combout\,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(21));

-- Location: LCCOMB_X57_Y34_N22
\inst22|timer_counter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|timer_counter[22]~68_combout\ = \inst22|timer_counter\(22) $ (\inst22|timer_counter[21]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|timer_counter\(22),
	cin => \inst22|timer_counter[21]~67\,
	combout => \inst22|timer_counter[22]~68_combout\);

-- Location: FF_X57_Y34_N23
\inst22|timer_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|timer_counter[22]~68_combout\,
	asdata => VCC,
	sload => \inst22|timer_counter[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|timer_counter\(22));

-- Location: LCCOMB_X57_Y34_N24
\inst22|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~6_combout\ = (\inst22|timer_counter\(21)) # ((\inst22|timer_counter\(22)) # (\inst22|timer_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|timer_counter\(21),
	datac => \inst22|timer_counter\(22),
	datad => \inst22|timer_counter\(20),
	combout => \inst22|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y34_N26
\inst22|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Equal0~7_combout\ = (\inst22|Equal0~5_combout\) # ((\inst22|Equal0~4_combout\) # (\inst22|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Equal0~5_combout\,
	datab => \inst22|Equal0~4_combout\,
	datad => \inst22|Equal0~6_combout\,
	combout => \inst22|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y31_N28
\inst22|level~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|level~0_combout\ = (\inst22|Equal0~7_combout\ & ((\inst22|level~q\))) # (!\inst22|Equal0~7_combout\ & (\inst22|sampled_dirty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Equal0~7_combout\,
	datab => \inst22|sampled_dirty~q\,
	datac => \inst22|level~q\,
	combout => \inst22|level~0_combout\);

-- Location: FF_X57_Y31_N29
\inst22|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|level~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|level~q\);

-- Location: LCCOMB_X57_Y31_N4
\inst22|zero_to_one_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|zero_to_one_pulse~0_combout\ = (!\inst22|level~q\ & (!\inst22|Equal0~7_combout\ & \inst22|sampled_dirty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|level~q\,
	datac => \inst22|Equal0~7_combout\,
	datad => \inst22|sampled_dirty~q\,
	combout => \inst22|zero_to_one_pulse~0_combout\);

-- Location: FF_X57_Y31_N5
\inst22|zero_to_one_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|zero_to_one_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|zero_to_one_pulse~q\);

-- Location: LCCOMB_X57_Y26_N10
\inst3|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~9_combout\ = (\inst3|s_pont2\(1) & (\inst3|s_pont2\(2) & (\inst3|s_pont2\(4) & \inst3|s_pont2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(1),
	datab => \inst3|s_pont2\(2),
	datac => \inst3|s_pont2\(4),
	datad => \inst3|s_pont2\(3),
	combout => \inst3|Equal1~9_combout\);

-- Location: LCCOMB_X56_Y27_N8
\inst3|s_pont2[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[4]~43_combout\ = (\inst3|s_pont2\(4) & (\inst3|s_pont2[3]~42\ $ (GND))) # (!\inst3|s_pont2\(4) & (!\inst3|s_pont2[3]~42\ & VCC))
-- \inst3|s_pont2[4]~44\ = CARRY((\inst3|s_pont2\(4) & !\inst3|s_pont2[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(4),
	datad => VCC,
	cin => \inst3|s_pont2[3]~42\,
	combout => \inst3|s_pont2[4]~43_combout\,
	cout => \inst3|s_pont2[4]~44\);

-- Location: LCCOMB_X56_Y27_N10
\inst3|s_pont2[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[5]~45_combout\ = (\inst3|s_pont2\(5) & (!\inst3|s_pont2[4]~44\)) # (!\inst3|s_pont2\(5) & ((\inst3|s_pont2[4]~44\) # (GND)))
-- \inst3|s_pont2[5]~46\ = CARRY((!\inst3|s_pont2[4]~44\) # (!\inst3|s_pont2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(5),
	datad => VCC,
	cin => \inst3|s_pont2[4]~44\,
	combout => \inst3|s_pont2[5]~45_combout\,
	cout => \inst3|s_pont2[5]~46\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X56_Y35_N4
\inst25|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|sampled_dirty~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \inst25|sampled_dirty~0_combout\);

-- Location: FF_X56_Y35_N5
\inst25|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|sampled_dirty~q\);

-- Location: LCCOMB_X54_Y36_N10
\inst25|timer_counter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[0]~23_combout\ = \inst25|timer_counter\(0) $ (VCC)
-- \inst25|timer_counter[0]~24\ = CARRY(\inst25|timer_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(0),
	datad => VCC,
	combout => \inst25|timer_counter[0]~23_combout\,
	cout => \inst25|timer_counter[0]~24\);

-- Location: LCCOMB_X55_Y35_N18
\inst25|level~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|level~0_combout\ = (\inst25|Equal0~7_combout\ & (\inst25|level~q\)) # (!\inst25|Equal0~7_combout\ & ((\inst25|sampled_dirty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Equal0~7_combout\,
	datac => \inst25|level~q\,
	datad => \inst25|sampled_dirty~q\,
	combout => \inst25|level~0_combout\);

-- Location: FF_X55_Y35_N19
\inst25|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|level~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|level~q\);

-- Location: LCCOMB_X55_Y35_N0
\inst25|timer_counter[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[20]~25_combout\ = (\inst25|sampled_dirty~q\ $ (!\inst25|level~q\)) # (!\inst25|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|sampled_dirty~q\,
	datab => \inst25|Equal0~7_combout\,
	datad => \inst25|level~q\,
	combout => \inst25|timer_counter[20]~25_combout\);

-- Location: FF_X54_Y36_N11
\inst25|timer_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[0]~23_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(0));

-- Location: LCCOMB_X54_Y36_N12
\inst25|timer_counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[1]~26_combout\ = (\inst25|timer_counter\(1) & (\inst25|timer_counter[0]~24\ & VCC)) # (!\inst25|timer_counter\(1) & (!\inst25|timer_counter[0]~24\))
-- \inst25|timer_counter[1]~27\ = CARRY((!\inst25|timer_counter\(1) & !\inst25|timer_counter[0]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(1),
	datad => VCC,
	cin => \inst25|timer_counter[0]~24\,
	combout => \inst25|timer_counter[1]~26_combout\,
	cout => \inst25|timer_counter[1]~27\);

-- Location: FF_X54_Y36_N13
\inst25|timer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[1]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(1));

-- Location: LCCOMB_X54_Y36_N14
\inst25|timer_counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[2]~28_combout\ = (\inst25|timer_counter\(2) & ((GND) # (!\inst25|timer_counter[1]~27\))) # (!\inst25|timer_counter\(2) & (\inst25|timer_counter[1]~27\ $ (GND)))
-- \inst25|timer_counter[2]~29\ = CARRY((\inst25|timer_counter\(2)) # (!\inst25|timer_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(2),
	datad => VCC,
	cin => \inst25|timer_counter[1]~27\,
	combout => \inst25|timer_counter[2]~28_combout\,
	cout => \inst25|timer_counter[2]~29\);

-- Location: FF_X54_Y36_N15
\inst25|timer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[2]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(2));

-- Location: LCCOMB_X54_Y36_N16
\inst25|timer_counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[3]~30_combout\ = (\inst25|timer_counter\(3) & (\inst25|timer_counter[2]~29\ & VCC)) # (!\inst25|timer_counter\(3) & (!\inst25|timer_counter[2]~29\))
-- \inst25|timer_counter[3]~31\ = CARRY((!\inst25|timer_counter\(3) & !\inst25|timer_counter[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(3),
	datad => VCC,
	cin => \inst25|timer_counter[2]~29\,
	combout => \inst25|timer_counter[3]~30_combout\,
	cout => \inst25|timer_counter[3]~31\);

-- Location: FF_X54_Y36_N17
\inst25|timer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[3]~30_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(3));

-- Location: LCCOMB_X54_Y36_N18
\inst25|timer_counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[4]~32_combout\ = (\inst25|timer_counter\(4) & ((GND) # (!\inst25|timer_counter[3]~31\))) # (!\inst25|timer_counter\(4) & (\inst25|timer_counter[3]~31\ $ (GND)))
-- \inst25|timer_counter[4]~33\ = CARRY((\inst25|timer_counter\(4)) # (!\inst25|timer_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(4),
	datad => VCC,
	cin => \inst25|timer_counter[3]~31\,
	combout => \inst25|timer_counter[4]~32_combout\,
	cout => \inst25|timer_counter[4]~33\);

-- Location: FF_X54_Y36_N19
\inst25|timer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[4]~32_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(4));

-- Location: LCCOMB_X54_Y36_N20
\inst25|timer_counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[5]~34_combout\ = (\inst25|timer_counter\(5) & (\inst25|timer_counter[4]~33\ & VCC)) # (!\inst25|timer_counter\(5) & (!\inst25|timer_counter[4]~33\))
-- \inst25|timer_counter[5]~35\ = CARRY((!\inst25|timer_counter\(5) & !\inst25|timer_counter[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(5),
	datad => VCC,
	cin => \inst25|timer_counter[4]~33\,
	combout => \inst25|timer_counter[5]~34_combout\,
	cout => \inst25|timer_counter[5]~35\);

-- Location: FF_X54_Y36_N21
\inst25|timer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[5]~34_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(5));

-- Location: LCCOMB_X54_Y36_N22
\inst25|timer_counter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[6]~36_combout\ = (\inst25|timer_counter\(6) & ((GND) # (!\inst25|timer_counter[5]~35\))) # (!\inst25|timer_counter\(6) & (\inst25|timer_counter[5]~35\ $ (GND)))
-- \inst25|timer_counter[6]~37\ = CARRY((\inst25|timer_counter\(6)) # (!\inst25|timer_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(6),
	datad => VCC,
	cin => \inst25|timer_counter[5]~35\,
	combout => \inst25|timer_counter[6]~36_combout\,
	cout => \inst25|timer_counter[6]~37\);

-- Location: FF_X54_Y36_N23
\inst25|timer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[6]~36_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(6));

-- Location: LCCOMB_X54_Y36_N24
\inst25|timer_counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[7]~38_combout\ = (\inst25|timer_counter\(7) & (\inst25|timer_counter[6]~37\ & VCC)) # (!\inst25|timer_counter\(7) & (!\inst25|timer_counter[6]~37\))
-- \inst25|timer_counter[7]~39\ = CARRY((!\inst25|timer_counter\(7) & !\inst25|timer_counter[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(7),
	datad => VCC,
	cin => \inst25|timer_counter[6]~37\,
	combout => \inst25|timer_counter[7]~38_combout\,
	cout => \inst25|timer_counter[7]~39\);

-- Location: FF_X54_Y36_N25
\inst25|timer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[7]~38_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(7));

-- Location: LCCOMB_X54_Y36_N26
\inst25|timer_counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[8]~40_combout\ = (\inst25|timer_counter\(8) & ((GND) # (!\inst25|timer_counter[7]~39\))) # (!\inst25|timer_counter\(8) & (\inst25|timer_counter[7]~39\ $ (GND)))
-- \inst25|timer_counter[8]~41\ = CARRY((\inst25|timer_counter\(8)) # (!\inst25|timer_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(8),
	datad => VCC,
	cin => \inst25|timer_counter[7]~39\,
	combout => \inst25|timer_counter[8]~40_combout\,
	cout => \inst25|timer_counter[8]~41\);

-- Location: FF_X54_Y36_N27
\inst25|timer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[8]~40_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(8));

-- Location: LCCOMB_X54_Y36_N28
\inst25|timer_counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[9]~42_combout\ = (\inst25|timer_counter\(9) & (\inst25|timer_counter[8]~41\ & VCC)) # (!\inst25|timer_counter\(9) & (!\inst25|timer_counter[8]~41\))
-- \inst25|timer_counter[9]~43\ = CARRY((!\inst25|timer_counter\(9) & !\inst25|timer_counter[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(9),
	datad => VCC,
	cin => \inst25|timer_counter[8]~41\,
	combout => \inst25|timer_counter[9]~42_combout\,
	cout => \inst25|timer_counter[9]~43\);

-- Location: FF_X54_Y36_N29
\inst25|timer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[9]~42_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(9));

-- Location: LCCOMB_X54_Y36_N30
\inst25|timer_counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[10]~44_combout\ = (\inst25|timer_counter\(10) & ((GND) # (!\inst25|timer_counter[9]~43\))) # (!\inst25|timer_counter\(10) & (\inst25|timer_counter[9]~43\ $ (GND)))
-- \inst25|timer_counter[10]~45\ = CARRY((\inst25|timer_counter\(10)) # (!\inst25|timer_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(10),
	datad => VCC,
	cin => \inst25|timer_counter[9]~43\,
	combout => \inst25|timer_counter[10]~44_combout\,
	cout => \inst25|timer_counter[10]~45\);

-- Location: FF_X54_Y36_N31
\inst25|timer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[10]~44_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(10));

-- Location: LCCOMB_X54_Y35_N0
\inst25|timer_counter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[11]~46_combout\ = (\inst25|timer_counter\(11) & (\inst25|timer_counter[10]~45\ & VCC)) # (!\inst25|timer_counter\(11) & (!\inst25|timer_counter[10]~45\))
-- \inst25|timer_counter[11]~47\ = CARRY((!\inst25|timer_counter\(11) & !\inst25|timer_counter[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(11),
	datad => VCC,
	cin => \inst25|timer_counter[10]~45\,
	combout => \inst25|timer_counter[11]~46_combout\,
	cout => \inst25|timer_counter[11]~47\);

-- Location: FF_X54_Y35_N1
\inst25|timer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[11]~46_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(11));

-- Location: LCCOMB_X54_Y35_N2
\inst25|timer_counter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[12]~48_combout\ = (\inst25|timer_counter\(12) & ((GND) # (!\inst25|timer_counter[11]~47\))) # (!\inst25|timer_counter\(12) & (\inst25|timer_counter[11]~47\ $ (GND)))
-- \inst25|timer_counter[12]~49\ = CARRY((\inst25|timer_counter\(12)) # (!\inst25|timer_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(12),
	datad => VCC,
	cin => \inst25|timer_counter[11]~47\,
	combout => \inst25|timer_counter[12]~48_combout\,
	cout => \inst25|timer_counter[12]~49\);

-- Location: FF_X54_Y35_N3
\inst25|timer_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[12]~48_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(12));

-- Location: LCCOMB_X54_Y35_N4
\inst25|timer_counter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[13]~50_combout\ = (\inst25|timer_counter\(13) & (\inst25|timer_counter[12]~49\ & VCC)) # (!\inst25|timer_counter\(13) & (!\inst25|timer_counter[12]~49\))
-- \inst25|timer_counter[13]~51\ = CARRY((!\inst25|timer_counter\(13) & !\inst25|timer_counter[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(13),
	datad => VCC,
	cin => \inst25|timer_counter[12]~49\,
	combout => \inst25|timer_counter[13]~50_combout\,
	cout => \inst25|timer_counter[13]~51\);

-- Location: FF_X54_Y35_N5
\inst25|timer_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[13]~50_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(13));

-- Location: LCCOMB_X54_Y35_N6
\inst25|timer_counter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[14]~52_combout\ = (\inst25|timer_counter\(14) & ((GND) # (!\inst25|timer_counter[13]~51\))) # (!\inst25|timer_counter\(14) & (\inst25|timer_counter[13]~51\ $ (GND)))
-- \inst25|timer_counter[14]~53\ = CARRY((\inst25|timer_counter\(14)) # (!\inst25|timer_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(14),
	datad => VCC,
	cin => \inst25|timer_counter[13]~51\,
	combout => \inst25|timer_counter[14]~52_combout\,
	cout => \inst25|timer_counter[14]~53\);

-- Location: FF_X54_Y35_N7
\inst25|timer_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[14]~52_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(14));

-- Location: LCCOMB_X54_Y35_N8
\inst25|timer_counter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[15]~54_combout\ = (\inst25|timer_counter\(15) & (\inst25|timer_counter[14]~53\ & VCC)) # (!\inst25|timer_counter\(15) & (!\inst25|timer_counter[14]~53\))
-- \inst25|timer_counter[15]~55\ = CARRY((!\inst25|timer_counter\(15) & !\inst25|timer_counter[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(15),
	datad => VCC,
	cin => \inst25|timer_counter[14]~53\,
	combout => \inst25|timer_counter[15]~54_combout\,
	cout => \inst25|timer_counter[15]~55\);

-- Location: FF_X54_Y35_N9
\inst25|timer_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[15]~54_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(15));

-- Location: LCCOMB_X54_Y35_N10
\inst25|timer_counter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[16]~56_combout\ = (\inst25|timer_counter\(16) & ((GND) # (!\inst25|timer_counter[15]~55\))) # (!\inst25|timer_counter\(16) & (\inst25|timer_counter[15]~55\ $ (GND)))
-- \inst25|timer_counter[16]~57\ = CARRY((\inst25|timer_counter\(16)) # (!\inst25|timer_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(16),
	datad => VCC,
	cin => \inst25|timer_counter[15]~55\,
	combout => \inst25|timer_counter[16]~56_combout\,
	cout => \inst25|timer_counter[16]~57\);

-- Location: FF_X54_Y35_N11
\inst25|timer_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[16]~56_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(16));

-- Location: LCCOMB_X54_Y35_N12
\inst25|timer_counter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[17]~58_combout\ = (\inst25|timer_counter\(17) & (\inst25|timer_counter[16]~57\ & VCC)) # (!\inst25|timer_counter\(17) & (!\inst25|timer_counter[16]~57\))
-- \inst25|timer_counter[17]~59\ = CARRY((!\inst25|timer_counter\(17) & !\inst25|timer_counter[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(17),
	datad => VCC,
	cin => \inst25|timer_counter[16]~57\,
	combout => \inst25|timer_counter[17]~58_combout\,
	cout => \inst25|timer_counter[17]~59\);

-- Location: FF_X54_Y35_N13
\inst25|timer_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[17]~58_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(17));

-- Location: LCCOMB_X54_Y35_N14
\inst25|timer_counter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[18]~60_combout\ = (\inst25|timer_counter\(18) & ((GND) # (!\inst25|timer_counter[17]~59\))) # (!\inst25|timer_counter\(18) & (\inst25|timer_counter[17]~59\ $ (GND)))
-- \inst25|timer_counter[18]~61\ = CARRY((\inst25|timer_counter\(18)) # (!\inst25|timer_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(18),
	datad => VCC,
	cin => \inst25|timer_counter[17]~59\,
	combout => \inst25|timer_counter[18]~60_combout\,
	cout => \inst25|timer_counter[18]~61\);

-- Location: FF_X54_Y35_N15
\inst25|timer_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[18]~60_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(18));

-- Location: LCCOMB_X54_Y35_N16
\inst25|timer_counter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[19]~62_combout\ = (\inst25|timer_counter\(19) & (\inst25|timer_counter[18]~61\ & VCC)) # (!\inst25|timer_counter\(19) & (!\inst25|timer_counter[18]~61\))
-- \inst25|timer_counter[19]~63\ = CARRY((!\inst25|timer_counter\(19) & !\inst25|timer_counter[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(19),
	datad => VCC,
	cin => \inst25|timer_counter[18]~61\,
	combout => \inst25|timer_counter[19]~62_combout\,
	cout => \inst25|timer_counter[19]~63\);

-- Location: FF_X54_Y35_N17
\inst25|timer_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[19]~62_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(19));

-- Location: LCCOMB_X54_Y35_N26
\inst25|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~5_combout\ = (\inst25|timer_counter\(17)) # ((\inst25|timer_counter\(19)) # ((\inst25|timer_counter\(18)) # (\inst25|timer_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(17),
	datab => \inst25|timer_counter\(19),
	datac => \inst25|timer_counter\(18),
	datad => \inst25|timer_counter\(16),
	combout => \inst25|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y35_N18
\inst25|timer_counter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[20]~64_combout\ = (\inst25|timer_counter\(20) & ((GND) # (!\inst25|timer_counter[19]~63\))) # (!\inst25|timer_counter\(20) & (\inst25|timer_counter[19]~63\ $ (GND)))
-- \inst25|timer_counter[20]~65\ = CARRY((\inst25|timer_counter\(20)) # (!\inst25|timer_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(20),
	datad => VCC,
	cin => \inst25|timer_counter[19]~63\,
	combout => \inst25|timer_counter[20]~64_combout\,
	cout => \inst25|timer_counter[20]~65\);

-- Location: FF_X54_Y35_N19
\inst25|timer_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[20]~64_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(20));

-- Location: LCCOMB_X54_Y35_N20
\inst25|timer_counter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[21]~66_combout\ = (\inst25|timer_counter\(21) & (\inst25|timer_counter[20]~65\ & VCC)) # (!\inst25|timer_counter\(21) & (!\inst25|timer_counter[20]~65\))
-- \inst25|timer_counter[21]~67\ = CARRY((!\inst25|timer_counter\(21) & !\inst25|timer_counter[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(21),
	datad => VCC,
	cin => \inst25|timer_counter[20]~65\,
	combout => \inst25|timer_counter[21]~66_combout\,
	cout => \inst25|timer_counter[21]~67\);

-- Location: FF_X54_Y35_N21
\inst25|timer_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[21]~66_combout\,
	asdata => \~GND~combout\,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(21));

-- Location: LCCOMB_X54_Y35_N22
\inst25|timer_counter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|timer_counter[22]~68_combout\ = \inst25|timer_counter\(22) $ (\inst25|timer_counter[21]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(22),
	cin => \inst25|timer_counter[21]~67\,
	combout => \inst25|timer_counter[22]~68_combout\);

-- Location: FF_X54_Y35_N23
\inst25|timer_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|timer_counter[22]~68_combout\,
	asdata => VCC,
	sload => \inst25|timer_counter[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|timer_counter\(22));

-- Location: LCCOMB_X54_Y35_N24
\inst25|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~6_combout\ = (\inst25|timer_counter\(20)) # ((\inst25|timer_counter\(22)) # (\inst25|timer_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|timer_counter\(20),
	datac => \inst25|timer_counter\(22),
	datad => \inst25|timer_counter\(21),
	combout => \inst25|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y36_N6
\inst25|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~1_combout\ = (\inst25|timer_counter\(7)) # ((\inst25|timer_counter\(5)) # ((\inst25|timer_counter\(6)) # (\inst25|timer_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(7),
	datab => \inst25|timer_counter\(5),
	datac => \inst25|timer_counter\(6),
	datad => \inst25|timer_counter\(4),
	combout => \inst25|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y36_N4
\inst25|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~2_combout\ = (\inst25|timer_counter\(10)) # ((\inst25|timer_counter\(11)) # ((\inst25|timer_counter\(8)) # (\inst25|timer_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(10),
	datab => \inst25|timer_counter\(11),
	datac => \inst25|timer_counter\(8),
	datad => \inst25|timer_counter\(9),
	combout => \inst25|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y36_N8
\inst25|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~0_combout\ = (\inst25|timer_counter\(1)) # ((\inst25|timer_counter\(3)) # ((\inst25|timer_counter\(2)) # (\inst25|timer_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(1),
	datab => \inst25|timer_counter\(3),
	datac => \inst25|timer_counter\(2),
	datad => \inst25|timer_counter\(0),
	combout => \inst25|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y35_N28
\inst25|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~3_combout\ = (\inst25|timer_counter\(14)) # ((\inst25|timer_counter\(15)) # ((\inst25|timer_counter\(13)) # (\inst25|timer_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|timer_counter\(14),
	datab => \inst25|timer_counter\(15),
	datac => \inst25|timer_counter\(13),
	datad => \inst25|timer_counter\(12),
	combout => \inst25|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y36_N2
\inst25|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~4_combout\ = (\inst25|Equal0~1_combout\) # ((\inst25|Equal0~2_combout\) # ((\inst25|Equal0~0_combout\) # (\inst25|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Equal0~1_combout\,
	datab => \inst25|Equal0~2_combout\,
	datac => \inst25|Equal0~0_combout\,
	datad => \inst25|Equal0~3_combout\,
	combout => \inst25|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y35_N30
\inst25|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~7_combout\ = (\inst25|Equal0~5_combout\) # ((\inst25|Equal0~6_combout\) # (\inst25|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Equal0~5_combout\,
	datab => \inst25|Equal0~6_combout\,
	datad => \inst25|Equal0~4_combout\,
	combout => \inst25|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y35_N16
\inst25|zero_to_one_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|zero_to_one_pulse~0_combout\ = (\inst25|sampled_dirty~q\ & (!\inst25|Equal0~7_combout\ & !\inst25|level~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|sampled_dirty~q\,
	datab => \inst25|Equal0~7_combout\,
	datad => \inst25|level~q\,
	combout => \inst25|zero_to_one_pulse~0_combout\);

-- Location: FF_X55_Y35_N17
\inst25|zero_to_one_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|zero_to_one_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|zero_to_one_pulse~q\);

-- Location: LCCOMB_X56_Y35_N10
\inst24|timer_counter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[0]~23_combout\ = \inst24|timer_counter\(0) $ (VCC)
-- \inst24|timer_counter[0]~24\ = CARRY(\inst24|timer_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(0),
	datad => VCC,
	combout => \inst24|timer_counter[0]~23_combout\,
	cout => \inst24|timer_counter[0]~24\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X57_Y31_N2
\inst24|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|sampled_dirty~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \inst24|sampled_dirty~0_combout\);

-- Location: FF_X57_Y31_N3
\inst24|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|sampled_dirty~q\);

-- Location: LCCOMB_X56_Y31_N16
\inst24|timer_counter[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[21]~25_combout\ = (\inst24|level~q\ $ (!\inst24|sampled_dirty~q\)) # (!\inst24|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|level~q\,
	datac => \inst24|Equal0~7_combout\,
	datad => \inst24|sampled_dirty~q\,
	combout => \inst24|timer_counter[21]~25_combout\);

-- Location: FF_X56_Y35_N11
\inst24|timer_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[0]~23_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(0));

-- Location: LCCOMB_X56_Y35_N12
\inst24|timer_counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[1]~26_combout\ = (\inst24|timer_counter\(1) & (\inst24|timer_counter[0]~24\ & VCC)) # (!\inst24|timer_counter\(1) & (!\inst24|timer_counter[0]~24\))
-- \inst24|timer_counter[1]~27\ = CARRY((!\inst24|timer_counter\(1) & !\inst24|timer_counter[0]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(1),
	datad => VCC,
	cin => \inst24|timer_counter[0]~24\,
	combout => \inst24|timer_counter[1]~26_combout\,
	cout => \inst24|timer_counter[1]~27\);

-- Location: FF_X56_Y35_N13
\inst24|timer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[1]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(1));

-- Location: LCCOMB_X56_Y35_N14
\inst24|timer_counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[2]~28_combout\ = (\inst24|timer_counter\(2) & ((GND) # (!\inst24|timer_counter[1]~27\))) # (!\inst24|timer_counter\(2) & (\inst24|timer_counter[1]~27\ $ (GND)))
-- \inst24|timer_counter[2]~29\ = CARRY((\inst24|timer_counter\(2)) # (!\inst24|timer_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(2),
	datad => VCC,
	cin => \inst24|timer_counter[1]~27\,
	combout => \inst24|timer_counter[2]~28_combout\,
	cout => \inst24|timer_counter[2]~29\);

-- Location: FF_X56_Y35_N15
\inst24|timer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[2]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(2));

-- Location: LCCOMB_X56_Y35_N16
\inst24|timer_counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[3]~30_combout\ = (\inst24|timer_counter\(3) & (\inst24|timer_counter[2]~29\ & VCC)) # (!\inst24|timer_counter\(3) & (!\inst24|timer_counter[2]~29\))
-- \inst24|timer_counter[3]~31\ = CARRY((!\inst24|timer_counter\(3) & !\inst24|timer_counter[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(3),
	datad => VCC,
	cin => \inst24|timer_counter[2]~29\,
	combout => \inst24|timer_counter[3]~30_combout\,
	cout => \inst24|timer_counter[3]~31\);

-- Location: FF_X56_Y35_N17
\inst24|timer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[3]~30_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(3));

-- Location: LCCOMB_X56_Y35_N18
\inst24|timer_counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[4]~32_combout\ = (\inst24|timer_counter\(4) & ((GND) # (!\inst24|timer_counter[3]~31\))) # (!\inst24|timer_counter\(4) & (\inst24|timer_counter[3]~31\ $ (GND)))
-- \inst24|timer_counter[4]~33\ = CARRY((\inst24|timer_counter\(4)) # (!\inst24|timer_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(4),
	datad => VCC,
	cin => \inst24|timer_counter[3]~31\,
	combout => \inst24|timer_counter[4]~32_combout\,
	cout => \inst24|timer_counter[4]~33\);

-- Location: FF_X56_Y35_N19
\inst24|timer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[4]~32_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(4));

-- Location: LCCOMB_X56_Y35_N20
\inst24|timer_counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[5]~34_combout\ = (\inst24|timer_counter\(5) & (\inst24|timer_counter[4]~33\ & VCC)) # (!\inst24|timer_counter\(5) & (!\inst24|timer_counter[4]~33\))
-- \inst24|timer_counter[5]~35\ = CARRY((!\inst24|timer_counter\(5) & !\inst24|timer_counter[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(5),
	datad => VCC,
	cin => \inst24|timer_counter[4]~33\,
	combout => \inst24|timer_counter[5]~34_combout\,
	cout => \inst24|timer_counter[5]~35\);

-- Location: FF_X56_Y35_N21
\inst24|timer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[5]~34_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(5));

-- Location: LCCOMB_X56_Y35_N22
\inst24|timer_counter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[6]~36_combout\ = (\inst24|timer_counter\(6) & ((GND) # (!\inst24|timer_counter[5]~35\))) # (!\inst24|timer_counter\(6) & (\inst24|timer_counter[5]~35\ $ (GND)))
-- \inst24|timer_counter[6]~37\ = CARRY((\inst24|timer_counter\(6)) # (!\inst24|timer_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(6),
	datad => VCC,
	cin => \inst24|timer_counter[5]~35\,
	combout => \inst24|timer_counter[6]~36_combout\,
	cout => \inst24|timer_counter[6]~37\);

-- Location: FF_X56_Y35_N23
\inst24|timer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[6]~36_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(6));

-- Location: LCCOMB_X56_Y35_N24
\inst24|timer_counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[7]~38_combout\ = (\inst24|timer_counter\(7) & (\inst24|timer_counter[6]~37\ & VCC)) # (!\inst24|timer_counter\(7) & (!\inst24|timer_counter[6]~37\))
-- \inst24|timer_counter[7]~39\ = CARRY((!\inst24|timer_counter\(7) & !\inst24|timer_counter[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(7),
	datad => VCC,
	cin => \inst24|timer_counter[6]~37\,
	combout => \inst24|timer_counter[7]~38_combout\,
	cout => \inst24|timer_counter[7]~39\);

-- Location: FF_X56_Y35_N25
\inst24|timer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[7]~38_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(7));

-- Location: LCCOMB_X56_Y35_N26
\inst24|timer_counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[8]~40_combout\ = (\inst24|timer_counter\(8) & ((GND) # (!\inst24|timer_counter[7]~39\))) # (!\inst24|timer_counter\(8) & (\inst24|timer_counter[7]~39\ $ (GND)))
-- \inst24|timer_counter[8]~41\ = CARRY((\inst24|timer_counter\(8)) # (!\inst24|timer_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(8),
	datad => VCC,
	cin => \inst24|timer_counter[7]~39\,
	combout => \inst24|timer_counter[8]~40_combout\,
	cout => \inst24|timer_counter[8]~41\);

-- Location: FF_X56_Y35_N27
\inst24|timer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[8]~40_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(8));

-- Location: LCCOMB_X56_Y35_N28
\inst24|timer_counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[9]~42_combout\ = (\inst24|timer_counter\(9) & (\inst24|timer_counter[8]~41\ & VCC)) # (!\inst24|timer_counter\(9) & (!\inst24|timer_counter[8]~41\))
-- \inst24|timer_counter[9]~43\ = CARRY((!\inst24|timer_counter\(9) & !\inst24|timer_counter[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(9),
	datad => VCC,
	cin => \inst24|timer_counter[8]~41\,
	combout => \inst24|timer_counter[9]~42_combout\,
	cout => \inst24|timer_counter[9]~43\);

-- Location: FF_X56_Y35_N29
\inst24|timer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[9]~42_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(9));

-- Location: LCCOMB_X56_Y35_N30
\inst24|timer_counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[10]~44_combout\ = (\inst24|timer_counter\(10) & ((GND) # (!\inst24|timer_counter[9]~43\))) # (!\inst24|timer_counter\(10) & (\inst24|timer_counter[9]~43\ $ (GND)))
-- \inst24|timer_counter[10]~45\ = CARRY((\inst24|timer_counter\(10)) # (!\inst24|timer_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(10),
	datad => VCC,
	cin => \inst24|timer_counter[9]~43\,
	combout => \inst24|timer_counter[10]~44_combout\,
	cout => \inst24|timer_counter[10]~45\);

-- Location: FF_X56_Y35_N31
\inst24|timer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[10]~44_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(10));

-- Location: LCCOMB_X56_Y34_N0
\inst24|timer_counter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[11]~46_combout\ = (\inst24|timer_counter\(11) & (\inst24|timer_counter[10]~45\ & VCC)) # (!\inst24|timer_counter\(11) & (!\inst24|timer_counter[10]~45\))
-- \inst24|timer_counter[11]~47\ = CARRY((!\inst24|timer_counter\(11) & !\inst24|timer_counter[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(11),
	datad => VCC,
	cin => \inst24|timer_counter[10]~45\,
	combout => \inst24|timer_counter[11]~46_combout\,
	cout => \inst24|timer_counter[11]~47\);

-- Location: FF_X56_Y34_N1
\inst24|timer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[11]~46_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(11));

-- Location: LCCOMB_X56_Y34_N2
\inst24|timer_counter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[12]~48_combout\ = (\inst24|timer_counter\(12) & ((GND) # (!\inst24|timer_counter[11]~47\))) # (!\inst24|timer_counter\(12) & (\inst24|timer_counter[11]~47\ $ (GND)))
-- \inst24|timer_counter[12]~49\ = CARRY((\inst24|timer_counter\(12)) # (!\inst24|timer_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(12),
	datad => VCC,
	cin => \inst24|timer_counter[11]~47\,
	combout => \inst24|timer_counter[12]~48_combout\,
	cout => \inst24|timer_counter[12]~49\);

-- Location: FF_X56_Y34_N3
\inst24|timer_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[12]~48_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(12));

-- Location: LCCOMB_X56_Y34_N4
\inst24|timer_counter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[13]~50_combout\ = (\inst24|timer_counter\(13) & (\inst24|timer_counter[12]~49\ & VCC)) # (!\inst24|timer_counter\(13) & (!\inst24|timer_counter[12]~49\))
-- \inst24|timer_counter[13]~51\ = CARRY((!\inst24|timer_counter\(13) & !\inst24|timer_counter[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(13),
	datad => VCC,
	cin => \inst24|timer_counter[12]~49\,
	combout => \inst24|timer_counter[13]~50_combout\,
	cout => \inst24|timer_counter[13]~51\);

-- Location: FF_X56_Y34_N5
\inst24|timer_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[13]~50_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(13));

-- Location: LCCOMB_X56_Y34_N6
\inst24|timer_counter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[14]~52_combout\ = (\inst24|timer_counter\(14) & ((GND) # (!\inst24|timer_counter[13]~51\))) # (!\inst24|timer_counter\(14) & (\inst24|timer_counter[13]~51\ $ (GND)))
-- \inst24|timer_counter[14]~53\ = CARRY((\inst24|timer_counter\(14)) # (!\inst24|timer_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(14),
	datad => VCC,
	cin => \inst24|timer_counter[13]~51\,
	combout => \inst24|timer_counter[14]~52_combout\,
	cout => \inst24|timer_counter[14]~53\);

-- Location: FF_X56_Y34_N7
\inst24|timer_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[14]~52_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(14));

-- Location: LCCOMB_X56_Y34_N8
\inst24|timer_counter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[15]~54_combout\ = (\inst24|timer_counter\(15) & (\inst24|timer_counter[14]~53\ & VCC)) # (!\inst24|timer_counter\(15) & (!\inst24|timer_counter[14]~53\))
-- \inst24|timer_counter[15]~55\ = CARRY((!\inst24|timer_counter\(15) & !\inst24|timer_counter[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(15),
	datad => VCC,
	cin => \inst24|timer_counter[14]~53\,
	combout => \inst24|timer_counter[15]~54_combout\,
	cout => \inst24|timer_counter[15]~55\);

-- Location: FF_X56_Y34_N9
\inst24|timer_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[15]~54_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(15));

-- Location: LCCOMB_X56_Y34_N10
\inst24|timer_counter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[16]~56_combout\ = (\inst24|timer_counter\(16) & ((GND) # (!\inst24|timer_counter[15]~55\))) # (!\inst24|timer_counter\(16) & (\inst24|timer_counter[15]~55\ $ (GND)))
-- \inst24|timer_counter[16]~57\ = CARRY((\inst24|timer_counter\(16)) # (!\inst24|timer_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(16),
	datad => VCC,
	cin => \inst24|timer_counter[15]~55\,
	combout => \inst24|timer_counter[16]~56_combout\,
	cout => \inst24|timer_counter[16]~57\);

-- Location: FF_X56_Y34_N11
\inst24|timer_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[16]~56_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(16));

-- Location: LCCOMB_X56_Y34_N12
\inst24|timer_counter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[17]~58_combout\ = (\inst24|timer_counter\(17) & (\inst24|timer_counter[16]~57\ & VCC)) # (!\inst24|timer_counter\(17) & (!\inst24|timer_counter[16]~57\))
-- \inst24|timer_counter[17]~59\ = CARRY((!\inst24|timer_counter\(17) & !\inst24|timer_counter[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(17),
	datad => VCC,
	cin => \inst24|timer_counter[16]~57\,
	combout => \inst24|timer_counter[17]~58_combout\,
	cout => \inst24|timer_counter[17]~59\);

-- Location: FF_X56_Y34_N13
\inst24|timer_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[17]~58_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(17));

-- Location: LCCOMB_X56_Y34_N14
\inst24|timer_counter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[18]~60_combout\ = (\inst24|timer_counter\(18) & ((GND) # (!\inst24|timer_counter[17]~59\))) # (!\inst24|timer_counter\(18) & (\inst24|timer_counter[17]~59\ $ (GND)))
-- \inst24|timer_counter[18]~61\ = CARRY((\inst24|timer_counter\(18)) # (!\inst24|timer_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(18),
	datad => VCC,
	cin => \inst24|timer_counter[17]~59\,
	combout => \inst24|timer_counter[18]~60_combout\,
	cout => \inst24|timer_counter[18]~61\);

-- Location: FF_X56_Y34_N15
\inst24|timer_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[18]~60_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(18));

-- Location: LCCOMB_X56_Y34_N16
\inst24|timer_counter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[19]~62_combout\ = (\inst24|timer_counter\(19) & (\inst24|timer_counter[18]~61\ & VCC)) # (!\inst24|timer_counter\(19) & (!\inst24|timer_counter[18]~61\))
-- \inst24|timer_counter[19]~63\ = CARRY((!\inst24|timer_counter\(19) & !\inst24|timer_counter[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(19),
	datad => VCC,
	cin => \inst24|timer_counter[18]~61\,
	combout => \inst24|timer_counter[19]~62_combout\,
	cout => \inst24|timer_counter[19]~63\);

-- Location: FF_X56_Y34_N17
\inst24|timer_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[19]~62_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(19));

-- Location: LCCOMB_X56_Y34_N26
\inst24|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~5_combout\ = (\inst24|timer_counter\(17)) # ((\inst24|timer_counter\(19)) # ((\inst24|timer_counter\(18)) # (\inst24|timer_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(17),
	datab => \inst24|timer_counter\(19),
	datac => \inst24|timer_counter\(18),
	datad => \inst24|timer_counter\(16),
	combout => \inst24|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y34_N18
\inst24|timer_counter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[20]~64_combout\ = (\inst24|timer_counter\(20) & ((GND) # (!\inst24|timer_counter[19]~63\))) # (!\inst24|timer_counter\(20) & (\inst24|timer_counter[19]~63\ $ (GND)))
-- \inst24|timer_counter[20]~65\ = CARRY((\inst24|timer_counter\(20)) # (!\inst24|timer_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(20),
	datad => VCC,
	cin => \inst24|timer_counter[19]~63\,
	combout => \inst24|timer_counter[20]~64_combout\,
	cout => \inst24|timer_counter[20]~65\);

-- Location: FF_X56_Y34_N19
\inst24|timer_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[20]~64_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(20));

-- Location: LCCOMB_X56_Y34_N20
\inst24|timer_counter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[21]~66_combout\ = (\inst24|timer_counter\(21) & (\inst24|timer_counter[20]~65\ & VCC)) # (!\inst24|timer_counter\(21) & (!\inst24|timer_counter[20]~65\))
-- \inst24|timer_counter[21]~67\ = CARRY((!\inst24|timer_counter\(21) & !\inst24|timer_counter[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(21),
	datad => VCC,
	cin => \inst24|timer_counter[20]~65\,
	combout => \inst24|timer_counter[21]~66_combout\,
	cout => \inst24|timer_counter[21]~67\);

-- Location: FF_X56_Y34_N21
\inst24|timer_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[21]~66_combout\,
	asdata => \~GND~combout\,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(21));

-- Location: LCCOMB_X56_Y34_N22
\inst24|timer_counter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|timer_counter[22]~68_combout\ = \inst24|timer_counter\(22) $ (\inst24|timer_counter[21]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(22),
	cin => \inst24|timer_counter[21]~67\,
	combout => \inst24|timer_counter[22]~68_combout\);

-- Location: FF_X56_Y34_N23
\inst24|timer_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|timer_counter[22]~68_combout\,
	asdata => VCC,
	sload => \inst24|timer_counter[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|timer_counter\(22));

-- Location: LCCOMB_X56_Y34_N24
\inst24|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~6_combout\ = (\inst24|timer_counter\(21)) # ((\inst24|timer_counter\(22)) # (\inst24|timer_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|timer_counter\(21),
	datac => \inst24|timer_counter\(22),
	datad => \inst24|timer_counter\(20),
	combout => \inst24|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y35_N6
\inst24|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~1_combout\ = (\inst24|timer_counter\(5)) # ((\inst24|timer_counter\(7)) # ((\inst24|timer_counter\(6)) # (\inst24|timer_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(5),
	datab => \inst24|timer_counter\(7),
	datac => \inst24|timer_counter\(6),
	datad => \inst24|timer_counter\(4),
	combout => \inst24|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y35_N8
\inst24|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~2_combout\ = (\inst24|timer_counter\(10)) # ((\inst24|timer_counter\(9)) # ((\inst24|timer_counter\(8)) # (\inst24|timer_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(10),
	datab => \inst24|timer_counter\(9),
	datac => \inst24|timer_counter\(8),
	datad => \inst24|timer_counter\(11),
	combout => \inst24|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y34_N28
\inst24|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~3_combout\ = (\inst24|timer_counter\(14)) # ((\inst24|timer_counter\(15)) # ((\inst24|timer_counter\(13)) # (\inst24|timer_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(14),
	datab => \inst24|timer_counter\(15),
	datac => \inst24|timer_counter\(13),
	datad => \inst24|timer_counter\(12),
	combout => \inst24|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y35_N0
\inst24|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~0_combout\ = (\inst24|timer_counter\(1)) # ((\inst24|timer_counter\(3)) # ((\inst24|timer_counter\(2)) # (\inst24|timer_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|timer_counter\(1),
	datab => \inst24|timer_counter\(3),
	datac => \inst24|timer_counter\(2),
	datad => \inst24|timer_counter\(0),
	combout => \inst24|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y35_N2
\inst24|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~4_combout\ = (\inst24|Equal0~1_combout\) # ((\inst24|Equal0~2_combout\) # ((\inst24|Equal0~3_combout\) # (\inst24|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Equal0~1_combout\,
	datab => \inst24|Equal0~2_combout\,
	datac => \inst24|Equal0~3_combout\,
	datad => \inst24|Equal0~0_combout\,
	combout => \inst24|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y34_N30
\inst24|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~7_combout\ = (\inst24|Equal0~5_combout\) # ((\inst24|Equal0~6_combout\) # (\inst24|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Equal0~5_combout\,
	datab => \inst24|Equal0~6_combout\,
	datad => \inst24|Equal0~4_combout\,
	combout => \inst24|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y31_N18
\inst24|level~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|level~0_combout\ = (\inst24|Equal0~7_combout\ & (\inst24|level~q\)) # (!\inst24|Equal0~7_combout\ & ((\inst24|sampled_dirty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Equal0~7_combout\,
	datac => \inst24|level~q\,
	datad => \inst24|sampled_dirty~q\,
	combout => \inst24|level~0_combout\);

-- Location: FF_X56_Y31_N19
\inst24|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|level~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|level~q\);

-- Location: LCCOMB_X56_Y31_N24
\inst24|zero_to_one_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|zero_to_one_pulse~0_combout\ = (!\inst24|level~q\ & (!\inst24|Equal0~7_combout\ & \inst24|sampled_dirty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|level~q\,
	datac => \inst24|Equal0~7_combout\,
	datad => \inst24|sampled_dirty~q\,
	combout => \inst24|zero_to_one_pulse~0_combout\);

-- Location: FF_X56_Y31_N25
\inst24|zero_to_one_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|zero_to_one_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|zero_to_one_pulse~q\);

-- Location: LCCOMB_X55_Y31_N6
\inst3|s_pont2[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[25]~35_combout\ = ((\inst24|zero_to_one_pulse~q\) # (!\inst3|s_pont2~32_combout\)) # (!\inst25|zero_to_one_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|zero_to_one_pulse~q\,
	datac => \inst3|s_pont2~32_combout\,
	datad => \inst24|zero_to_one_pulse~q\,
	combout => \inst3|s_pont2[25]~35_combout\);

-- Location: LCCOMB_X54_Y27_N8
\inst3|s_pont1[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[4]~42_combout\ = (\inst3|s_pont1\(4) & (\inst3|s_pont1[3]~41\ $ (GND))) # (!\inst3|s_pont1\(4) & (!\inst3|s_pont1[3]~41\ & VCC))
-- \inst3|s_pont1[4]~43\ = CARRY((\inst3|s_pont1\(4) & !\inst3|s_pont1[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(4),
	datad => VCC,
	cin => \inst3|s_pont1[3]~41\,
	combout => \inst3|s_pont1[4]~42_combout\,
	cout => \inst3|s_pont1[4]~43\);

-- Location: LCCOMB_X54_Y27_N10
\inst3|s_pont1[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[5]~44_combout\ = (\inst3|s_pont1\(5) & (!\inst3|s_pont1[4]~43\)) # (!\inst3|s_pont1\(5) & ((\inst3|s_pont1[4]~43\) # (GND)))
-- \inst3|s_pont1[5]~45\ = CARRY((!\inst3|s_pont1[4]~43\) # (!\inst3|s_pont1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(5),
	datad => VCC,
	cin => \inst3|s_pont1[4]~43\,
	combout => \inst3|s_pont1[5]~44_combout\,
	cout => \inst3|s_pont1[5]~45\);

-- Location: FF_X54_Y27_N11
\inst3|s_pont1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[5]~44_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(5));

-- Location: LCCOMB_X54_Y27_N12
\inst3|s_pont1[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[6]~46_combout\ = (\inst3|s_pont1\(6) & (\inst3|s_pont1[5]~45\ $ (GND))) # (!\inst3|s_pont1\(6) & (!\inst3|s_pont1[5]~45\ & VCC))
-- \inst3|s_pont1[6]~47\ = CARRY((\inst3|s_pont1\(6) & !\inst3|s_pont1[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(6),
	datad => VCC,
	cin => \inst3|s_pont1[5]~45\,
	combout => \inst3|s_pont1[6]~46_combout\,
	cout => \inst3|s_pont1[6]~47\);

-- Location: FF_X54_Y27_N13
\inst3|s_pont1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[6]~46_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(6));

-- Location: LCCOMB_X54_Y27_N14
\inst3|s_pont1[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[7]~48_combout\ = (\inst3|s_pont1\(7) & (!\inst3|s_pont1[6]~47\)) # (!\inst3|s_pont1\(7) & ((\inst3|s_pont1[6]~47\) # (GND)))
-- \inst3|s_pont1[7]~49\ = CARRY((!\inst3|s_pont1[6]~47\) # (!\inst3|s_pont1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(7),
	datad => VCC,
	cin => \inst3|s_pont1[6]~47\,
	combout => \inst3|s_pont1[7]~48_combout\,
	cout => \inst3|s_pont1[7]~49\);

-- Location: FF_X54_Y27_N15
\inst3|s_pont1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[7]~48_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(7));

-- Location: LCCOMB_X54_Y27_N16
\inst3|s_pont1[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[8]~50_combout\ = (\inst3|s_pont1\(8) & (\inst3|s_pont1[7]~49\ $ (GND))) # (!\inst3|s_pont1\(8) & (!\inst3|s_pont1[7]~49\ & VCC))
-- \inst3|s_pont1[8]~51\ = CARRY((\inst3|s_pont1\(8) & !\inst3|s_pont1[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(8),
	datad => VCC,
	cin => \inst3|s_pont1[7]~49\,
	combout => \inst3|s_pont1[8]~50_combout\,
	cout => \inst3|s_pont1[8]~51\);

-- Location: FF_X54_Y27_N17
\inst3|s_pont1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[8]~50_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(8));

-- Location: LCCOMB_X54_Y27_N18
\inst3|s_pont1[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[9]~52_combout\ = (\inst3|s_pont1\(9) & (!\inst3|s_pont1[8]~51\)) # (!\inst3|s_pont1\(9) & ((\inst3|s_pont1[8]~51\) # (GND)))
-- \inst3|s_pont1[9]~53\ = CARRY((!\inst3|s_pont1[8]~51\) # (!\inst3|s_pont1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(9),
	datad => VCC,
	cin => \inst3|s_pont1[8]~51\,
	combout => \inst3|s_pont1[9]~52_combout\,
	cout => \inst3|s_pont1[9]~53\);

-- Location: FF_X54_Y27_N19
\inst3|s_pont1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[9]~52_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(9));

-- Location: LCCOMB_X54_Y27_N20
\inst3|s_pont1[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[10]~54_combout\ = (\inst3|s_pont1\(10) & (\inst3|s_pont1[9]~53\ $ (GND))) # (!\inst3|s_pont1\(10) & (!\inst3|s_pont1[9]~53\ & VCC))
-- \inst3|s_pont1[10]~55\ = CARRY((\inst3|s_pont1\(10) & !\inst3|s_pont1[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(10),
	datad => VCC,
	cin => \inst3|s_pont1[9]~53\,
	combout => \inst3|s_pont1[10]~54_combout\,
	cout => \inst3|s_pont1[10]~55\);

-- Location: FF_X54_Y27_N21
\inst3|s_pont1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[10]~54_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(10));

-- Location: LCCOMB_X54_Y27_N22
\inst3|s_pont1[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[11]~56_combout\ = (\inst3|s_pont1\(11) & (!\inst3|s_pont1[10]~55\)) # (!\inst3|s_pont1\(11) & ((\inst3|s_pont1[10]~55\) # (GND)))
-- \inst3|s_pont1[11]~57\ = CARRY((!\inst3|s_pont1[10]~55\) # (!\inst3|s_pont1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(11),
	datad => VCC,
	cin => \inst3|s_pont1[10]~55\,
	combout => \inst3|s_pont1[11]~56_combout\,
	cout => \inst3|s_pont1[11]~57\);

-- Location: FF_X54_Y27_N23
\inst3|s_pont1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[11]~56_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(11));

-- Location: LCCOMB_X54_Y27_N24
\inst3|s_pont1[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[12]~58_combout\ = (\inst3|s_pont1\(12) & (\inst3|s_pont1[11]~57\ $ (GND))) # (!\inst3|s_pont1\(12) & (!\inst3|s_pont1[11]~57\ & VCC))
-- \inst3|s_pont1[12]~59\ = CARRY((\inst3|s_pont1\(12) & !\inst3|s_pont1[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(12),
	datad => VCC,
	cin => \inst3|s_pont1[11]~57\,
	combout => \inst3|s_pont1[12]~58_combout\,
	cout => \inst3|s_pont1[12]~59\);

-- Location: FF_X54_Y27_N25
\inst3|s_pont1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[12]~58_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(12));

-- Location: LCCOMB_X54_Y27_N26
\inst3|s_pont1[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[13]~60_combout\ = (\inst3|s_pont1\(13) & (!\inst3|s_pont1[12]~59\)) # (!\inst3|s_pont1\(13) & ((\inst3|s_pont1[12]~59\) # (GND)))
-- \inst3|s_pont1[13]~61\ = CARRY((!\inst3|s_pont1[12]~59\) # (!\inst3|s_pont1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(13),
	datad => VCC,
	cin => \inst3|s_pont1[12]~59\,
	combout => \inst3|s_pont1[13]~60_combout\,
	cout => \inst3|s_pont1[13]~61\);

-- Location: FF_X54_Y27_N27
\inst3|s_pont1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[13]~60_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(13));

-- Location: LCCOMB_X54_Y27_N28
\inst3|s_pont1[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[14]~62_combout\ = (\inst3|s_pont1\(14) & (\inst3|s_pont1[13]~61\ $ (GND))) # (!\inst3|s_pont1\(14) & (!\inst3|s_pont1[13]~61\ & VCC))
-- \inst3|s_pont1[14]~63\ = CARRY((\inst3|s_pont1\(14) & !\inst3|s_pont1[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(14),
	datad => VCC,
	cin => \inst3|s_pont1[13]~61\,
	combout => \inst3|s_pont1[14]~62_combout\,
	cout => \inst3|s_pont1[14]~63\);

-- Location: FF_X54_Y27_N29
\inst3|s_pont1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[14]~62_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(14));

-- Location: LCCOMB_X54_Y27_N30
\inst3|s_pont1[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[15]~64_combout\ = (\inst3|s_pont1\(15) & (!\inst3|s_pont1[14]~63\)) # (!\inst3|s_pont1\(15) & ((\inst3|s_pont1[14]~63\) # (GND)))
-- \inst3|s_pont1[15]~65\ = CARRY((!\inst3|s_pont1[14]~63\) # (!\inst3|s_pont1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(15),
	datad => VCC,
	cin => \inst3|s_pont1[14]~63\,
	combout => \inst3|s_pont1[15]~64_combout\,
	cout => \inst3|s_pont1[15]~65\);

-- Location: FF_X54_Y27_N31
\inst3|s_pont1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[15]~64_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(15));

-- Location: LCCOMB_X54_Y26_N0
\inst3|s_pont1[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[16]~66_combout\ = (\inst3|s_pont1\(16) & (\inst3|s_pont1[15]~65\ $ (GND))) # (!\inst3|s_pont1\(16) & (!\inst3|s_pont1[15]~65\ & VCC))
-- \inst3|s_pont1[16]~67\ = CARRY((\inst3|s_pont1\(16) & !\inst3|s_pont1[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(16),
	datad => VCC,
	cin => \inst3|s_pont1[15]~65\,
	combout => \inst3|s_pont1[16]~66_combout\,
	cout => \inst3|s_pont1[16]~67\);

-- Location: FF_X54_Y26_N1
\inst3|s_pont1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[16]~66_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(16));

-- Location: LCCOMB_X54_Y26_N2
\inst3|s_pont1[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[17]~68_combout\ = (\inst3|s_pont1\(17) & (!\inst3|s_pont1[16]~67\)) # (!\inst3|s_pont1\(17) & ((\inst3|s_pont1[16]~67\) # (GND)))
-- \inst3|s_pont1[17]~69\ = CARRY((!\inst3|s_pont1[16]~67\) # (!\inst3|s_pont1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(17),
	datad => VCC,
	cin => \inst3|s_pont1[16]~67\,
	combout => \inst3|s_pont1[17]~68_combout\,
	cout => \inst3|s_pont1[17]~69\);

-- Location: FF_X54_Y26_N3
\inst3|s_pont1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[17]~68_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(17));

-- Location: LCCOMB_X54_Y26_N4
\inst3|s_pont1[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[18]~70_combout\ = (\inst3|s_pont1\(18) & (\inst3|s_pont1[17]~69\ $ (GND))) # (!\inst3|s_pont1\(18) & (!\inst3|s_pont1[17]~69\ & VCC))
-- \inst3|s_pont1[18]~71\ = CARRY((\inst3|s_pont1\(18) & !\inst3|s_pont1[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(18),
	datad => VCC,
	cin => \inst3|s_pont1[17]~69\,
	combout => \inst3|s_pont1[18]~70_combout\,
	cout => \inst3|s_pont1[18]~71\);

-- Location: FF_X54_Y26_N5
\inst3|s_pont1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[18]~70_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(18));

-- Location: LCCOMB_X54_Y26_N6
\inst3|s_pont1[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[19]~72_combout\ = (\inst3|s_pont1\(19) & (!\inst3|s_pont1[18]~71\)) # (!\inst3|s_pont1\(19) & ((\inst3|s_pont1[18]~71\) # (GND)))
-- \inst3|s_pont1[19]~73\ = CARRY((!\inst3|s_pont1[18]~71\) # (!\inst3|s_pont1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(19),
	datad => VCC,
	cin => \inst3|s_pont1[18]~71\,
	combout => \inst3|s_pont1[19]~72_combout\,
	cout => \inst3|s_pont1[19]~73\);

-- Location: FF_X54_Y26_N7
\inst3|s_pont1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[19]~72_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(19));

-- Location: LCCOMB_X54_Y26_N8
\inst3|s_pont1[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[20]~74_combout\ = (\inst3|s_pont1\(20) & (\inst3|s_pont1[19]~73\ $ (GND))) # (!\inst3|s_pont1\(20) & (!\inst3|s_pont1[19]~73\ & VCC))
-- \inst3|s_pont1[20]~75\ = CARRY((\inst3|s_pont1\(20) & !\inst3|s_pont1[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(20),
	datad => VCC,
	cin => \inst3|s_pont1[19]~73\,
	combout => \inst3|s_pont1[20]~74_combout\,
	cout => \inst3|s_pont1[20]~75\);

-- Location: FF_X54_Y26_N9
\inst3|s_pont1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[20]~74_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(20));

-- Location: LCCOMB_X54_Y26_N10
\inst3|s_pont1[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[21]~76_combout\ = (\inst3|s_pont1\(21) & (!\inst3|s_pont1[20]~75\)) # (!\inst3|s_pont1\(21) & ((\inst3|s_pont1[20]~75\) # (GND)))
-- \inst3|s_pont1[21]~77\ = CARRY((!\inst3|s_pont1[20]~75\) # (!\inst3|s_pont1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(21),
	datad => VCC,
	cin => \inst3|s_pont1[20]~75\,
	combout => \inst3|s_pont1[21]~76_combout\,
	cout => \inst3|s_pont1[21]~77\);

-- Location: FF_X54_Y26_N11
\inst3|s_pont1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[21]~76_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(21));

-- Location: LCCOMB_X54_Y26_N12
\inst3|s_pont1[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[22]~78_combout\ = (\inst3|s_pont1\(22) & (\inst3|s_pont1[21]~77\ $ (GND))) # (!\inst3|s_pont1\(22) & (!\inst3|s_pont1[21]~77\ & VCC))
-- \inst3|s_pont1[22]~79\ = CARRY((\inst3|s_pont1\(22) & !\inst3|s_pont1[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(22),
	datad => VCC,
	cin => \inst3|s_pont1[21]~77\,
	combout => \inst3|s_pont1[22]~78_combout\,
	cout => \inst3|s_pont1[22]~79\);

-- Location: FF_X54_Y26_N13
\inst3|s_pont1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[22]~78_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(22));

-- Location: LCCOMB_X54_Y26_N14
\inst3|s_pont1[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[23]~80_combout\ = (\inst3|s_pont1\(23) & (!\inst3|s_pont1[22]~79\)) # (!\inst3|s_pont1\(23) & ((\inst3|s_pont1[22]~79\) # (GND)))
-- \inst3|s_pont1[23]~81\ = CARRY((!\inst3|s_pont1[22]~79\) # (!\inst3|s_pont1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(23),
	datad => VCC,
	cin => \inst3|s_pont1[22]~79\,
	combout => \inst3|s_pont1[23]~80_combout\,
	cout => \inst3|s_pont1[23]~81\);

-- Location: FF_X54_Y26_N15
\inst3|s_pont1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[23]~80_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(23));

-- Location: LCCOMB_X54_Y26_N16
\inst3|s_pont1[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[24]~82_combout\ = (\inst3|s_pont1\(24) & (\inst3|s_pont1[23]~81\ $ (GND))) # (!\inst3|s_pont1\(24) & (!\inst3|s_pont1[23]~81\ & VCC))
-- \inst3|s_pont1[24]~83\ = CARRY((\inst3|s_pont1\(24) & !\inst3|s_pont1[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(24),
	datad => VCC,
	cin => \inst3|s_pont1[23]~81\,
	combout => \inst3|s_pont1[24]~82_combout\,
	cout => \inst3|s_pont1[24]~83\);

-- Location: FF_X54_Y26_N17
\inst3|s_pont1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[24]~82_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(24));

-- Location: LCCOMB_X54_Y26_N18
\inst3|s_pont1[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[25]~84_combout\ = (\inst3|s_pont1\(25) & (!\inst3|s_pont1[24]~83\)) # (!\inst3|s_pont1\(25) & ((\inst3|s_pont1[24]~83\) # (GND)))
-- \inst3|s_pont1[25]~85\ = CARRY((!\inst3|s_pont1[24]~83\) # (!\inst3|s_pont1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(25),
	datad => VCC,
	cin => \inst3|s_pont1[24]~83\,
	combout => \inst3|s_pont1[25]~84_combout\,
	cout => \inst3|s_pont1[25]~85\);

-- Location: FF_X54_Y26_N19
\inst3|s_pont1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[25]~84_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(25));

-- Location: LCCOMB_X54_Y26_N20
\inst3|s_pont1[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[26]~86_combout\ = (\inst3|s_pont1\(26) & (\inst3|s_pont1[25]~85\ $ (GND))) # (!\inst3|s_pont1\(26) & (!\inst3|s_pont1[25]~85\ & VCC))
-- \inst3|s_pont1[26]~87\ = CARRY((\inst3|s_pont1\(26) & !\inst3|s_pont1[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(26),
	datad => VCC,
	cin => \inst3|s_pont1[25]~85\,
	combout => \inst3|s_pont1[26]~86_combout\,
	cout => \inst3|s_pont1[26]~87\);

-- Location: FF_X54_Y26_N21
\inst3|s_pont1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[26]~86_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(26));

-- Location: LCCOMB_X54_Y26_N22
\inst3|s_pont1[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[27]~88_combout\ = (\inst3|s_pont1\(27) & (!\inst3|s_pont1[26]~87\)) # (!\inst3|s_pont1\(27) & ((\inst3|s_pont1[26]~87\) # (GND)))
-- \inst3|s_pont1[27]~89\ = CARRY((!\inst3|s_pont1[26]~87\) # (!\inst3|s_pont1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(27),
	datad => VCC,
	cin => \inst3|s_pont1[26]~87\,
	combout => \inst3|s_pont1[27]~88_combout\,
	cout => \inst3|s_pont1[27]~89\);

-- Location: FF_X54_Y26_N23
\inst3|s_pont1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[27]~88_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(27));

-- Location: LCCOMB_X54_Y26_N24
\inst3|s_pont1[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[28]~90_combout\ = (\inst3|s_pont1\(28) & (\inst3|s_pont1[27]~89\ $ (GND))) # (!\inst3|s_pont1\(28) & (!\inst3|s_pont1[27]~89\ & VCC))
-- \inst3|s_pont1[28]~91\ = CARRY((\inst3|s_pont1\(28) & !\inst3|s_pont1[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(28),
	datad => VCC,
	cin => \inst3|s_pont1[27]~89\,
	combout => \inst3|s_pont1[28]~90_combout\,
	cout => \inst3|s_pont1[28]~91\);

-- Location: FF_X54_Y26_N25
\inst3|s_pont1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[28]~90_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(28));

-- Location: LCCOMB_X54_Y26_N26
\inst3|s_pont1[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[29]~92_combout\ = (\inst3|s_pont1\(29) & (!\inst3|s_pont1[28]~91\)) # (!\inst3|s_pont1\(29) & ((\inst3|s_pont1[28]~91\) # (GND)))
-- \inst3|s_pont1[29]~93\ = CARRY((!\inst3|s_pont1[28]~91\) # (!\inst3|s_pont1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(29),
	datad => VCC,
	cin => \inst3|s_pont1[28]~91\,
	combout => \inst3|s_pont1[29]~92_combout\,
	cout => \inst3|s_pont1[29]~93\);

-- Location: FF_X54_Y26_N27
\inst3|s_pont1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[29]~92_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(29));

-- Location: LCCOMB_X54_Y26_N28
\inst3|s_pont1[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[30]~94_combout\ = (\inst3|s_pont1\(30) & (\inst3|s_pont1[29]~93\ $ (GND))) # (!\inst3|s_pont1\(30) & (!\inst3|s_pont1[29]~93\ & VCC))
-- \inst3|s_pont1[30]~95\ = CARRY((\inst3|s_pont1\(30) & !\inst3|s_pont1[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(30),
	datad => VCC,
	cin => \inst3|s_pont1[29]~93\,
	combout => \inst3|s_pont1[30]~94_combout\,
	cout => \inst3|s_pont1[30]~95\);

-- Location: FF_X54_Y26_N29
\inst3|s_pont1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[30]~94_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(30));

-- Location: LCCOMB_X54_Y26_N30
\inst3|s_pont1[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[31]~96_combout\ = \inst3|s_pont1\(31) $ (\inst3|s_pont1[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(31),
	cin => \inst3|s_pont1[30]~95\,
	combout => \inst3|s_pont1[31]~96_combout\);

-- Location: FF_X54_Y26_N31
\inst3|s_pont1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[31]~96_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(31));

-- Location: LCCOMB_X53_Y27_N0
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = (\inst3|s_pont2\(0) & (\inst3|s_pont1\(0) $ (VCC))) # (!\inst3|s_pont2\(0) & ((\inst3|s_pont1\(0)) # (GND)))
-- \inst3|Add0~1\ = CARRY((\inst3|s_pont1\(0)) # (!\inst3|s_pont2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(0),
	datab => \inst3|s_pont1\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X53_Y27_N2
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|s_pont1\(1) & ((\inst3|s_pont2\(1) & (!\inst3|Add0~1\)) # (!\inst3|s_pont2\(1) & (\inst3|Add0~1\ & VCC)))) # (!\inst3|s_pont1\(1) & ((\inst3|s_pont2\(1) & ((\inst3|Add0~1\) # (GND))) # (!\inst3|s_pont2\(1) & 
-- (!\inst3|Add0~1\))))
-- \inst3|Add0~3\ = CARRY((\inst3|s_pont1\(1) & (\inst3|s_pont2\(1) & !\inst3|Add0~1\)) # (!\inst3|s_pont1\(1) & ((\inst3|s_pont2\(1)) # (!\inst3|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(1),
	datab => \inst3|s_pont2\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X53_Y27_N4
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = ((\inst3|s_pont1\(2) $ (\inst3|s_pont2\(2) $ (\inst3|Add0~3\)))) # (GND)
-- \inst3|Add0~5\ = CARRY((\inst3|s_pont1\(2) & ((!\inst3|Add0~3\) # (!\inst3|s_pont2\(2)))) # (!\inst3|s_pont1\(2) & (!\inst3|s_pont2\(2) & !\inst3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(2),
	datab => \inst3|s_pont2\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X53_Y27_N6
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|s_pont1\(3) & ((\inst3|s_pont2\(3) & (!\inst3|Add0~5\)) # (!\inst3|s_pont2\(3) & (\inst3|Add0~5\ & VCC)))) # (!\inst3|s_pont1\(3) & ((\inst3|s_pont2\(3) & ((\inst3|Add0~5\) # (GND))) # (!\inst3|s_pont2\(3) & 
-- (!\inst3|Add0~5\))))
-- \inst3|Add0~7\ = CARRY((\inst3|s_pont1\(3) & (\inst3|s_pont2\(3) & !\inst3|Add0~5\)) # (!\inst3|s_pont1\(3) & ((\inst3|s_pont2\(3)) # (!\inst3|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(3),
	datab => \inst3|s_pont2\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X53_Y27_N8
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = ((\inst3|s_pont2\(4) $ (\inst3|s_pont1\(4) $ (\inst3|Add0~7\)))) # (GND)
-- \inst3|Add0~9\ = CARRY((\inst3|s_pont2\(4) & (\inst3|s_pont1\(4) & !\inst3|Add0~7\)) # (!\inst3|s_pont2\(4) & ((\inst3|s_pont1\(4)) # (!\inst3|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(4),
	datab => \inst3|s_pont1\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X53_Y27_N10
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|s_pont2\(5) & ((\inst3|s_pont1\(5) & (!\inst3|Add0~9\)) # (!\inst3|s_pont1\(5) & ((\inst3|Add0~9\) # (GND))))) # (!\inst3|s_pont2\(5) & ((\inst3|s_pont1\(5) & (\inst3|Add0~9\ & VCC)) # (!\inst3|s_pont1\(5) & 
-- (!\inst3|Add0~9\))))
-- \inst3|Add0~11\ = CARRY((\inst3|s_pont2\(5) & ((!\inst3|Add0~9\) # (!\inst3|s_pont1\(5)))) # (!\inst3|s_pont2\(5) & (!\inst3|s_pont1\(5) & !\inst3|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(5),
	datab => \inst3|s_pont1\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X53_Y27_N12
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = ((\inst3|s_pont2\(6) $ (\inst3|s_pont1\(6) $ (\inst3|Add0~11\)))) # (GND)
-- \inst3|Add0~13\ = CARRY((\inst3|s_pont2\(6) & (\inst3|s_pont1\(6) & !\inst3|Add0~11\)) # (!\inst3|s_pont2\(6) & ((\inst3|s_pont1\(6)) # (!\inst3|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(6),
	datab => \inst3|s_pont1\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X53_Y27_N14
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|s_pont1\(7) & ((\inst3|s_pont2\(7) & (!\inst3|Add0~13\)) # (!\inst3|s_pont2\(7) & (\inst3|Add0~13\ & VCC)))) # (!\inst3|s_pont1\(7) & ((\inst3|s_pont2\(7) & ((\inst3|Add0~13\) # (GND))) # (!\inst3|s_pont2\(7) & 
-- (!\inst3|Add0~13\))))
-- \inst3|Add0~15\ = CARRY((\inst3|s_pont1\(7) & (\inst3|s_pont2\(7) & !\inst3|Add0~13\)) # (!\inst3|s_pont1\(7) & ((\inst3|s_pont2\(7)) # (!\inst3|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(7),
	datab => \inst3|s_pont2\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X53_Y27_N16
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = ((\inst3|s_pont2\(8) $ (\inst3|s_pont1\(8) $ (\inst3|Add0~15\)))) # (GND)
-- \inst3|Add0~17\ = CARRY((\inst3|s_pont2\(8) & (\inst3|s_pont1\(8) & !\inst3|Add0~15\)) # (!\inst3|s_pont2\(8) & ((\inst3|s_pont1\(8)) # (!\inst3|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(8),
	datab => \inst3|s_pont1\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X53_Y27_N18
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|s_pont1\(9) & ((\inst3|s_pont2\(9) & (!\inst3|Add0~17\)) # (!\inst3|s_pont2\(9) & (\inst3|Add0~17\ & VCC)))) # (!\inst3|s_pont1\(9) & ((\inst3|s_pont2\(9) & ((\inst3|Add0~17\) # (GND))) # (!\inst3|s_pont2\(9) & 
-- (!\inst3|Add0~17\))))
-- \inst3|Add0~19\ = CARRY((\inst3|s_pont1\(9) & (\inst3|s_pont2\(9) & !\inst3|Add0~17\)) # (!\inst3|s_pont1\(9) & ((\inst3|s_pont2\(9)) # (!\inst3|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(9),
	datab => \inst3|s_pont2\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X53_Y27_N20
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = ((\inst3|s_pont1\(10) $ (\inst3|s_pont2\(10) $ (\inst3|Add0~19\)))) # (GND)
-- \inst3|Add0~21\ = CARRY((\inst3|s_pont1\(10) & ((!\inst3|Add0~19\) # (!\inst3|s_pont2\(10)))) # (!\inst3|s_pont1\(10) & (!\inst3|s_pont2\(10) & !\inst3|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(10),
	datab => \inst3|s_pont2\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X53_Y27_N22
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|s_pont2\(11) & ((\inst3|s_pont1\(11) & (!\inst3|Add0~21\)) # (!\inst3|s_pont1\(11) & ((\inst3|Add0~21\) # (GND))))) # (!\inst3|s_pont2\(11) & ((\inst3|s_pont1\(11) & (\inst3|Add0~21\ & VCC)) # (!\inst3|s_pont1\(11) & 
-- (!\inst3|Add0~21\))))
-- \inst3|Add0~23\ = CARRY((\inst3|s_pont2\(11) & ((!\inst3|Add0~21\) # (!\inst3|s_pont1\(11)))) # (!\inst3|s_pont2\(11) & (!\inst3|s_pont1\(11) & !\inst3|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(11),
	datab => \inst3|s_pont1\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X53_Y27_N24
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = ((\inst3|s_pont2\(12) $ (\inst3|s_pont1\(12) $ (\inst3|Add0~23\)))) # (GND)
-- \inst3|Add0~25\ = CARRY((\inst3|s_pont2\(12) & (\inst3|s_pont1\(12) & !\inst3|Add0~23\)) # (!\inst3|s_pont2\(12) & ((\inst3|s_pont1\(12)) # (!\inst3|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(12),
	datab => \inst3|s_pont1\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X53_Y27_N26
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|s_pont2\(13) & ((\inst3|s_pont1\(13) & (!\inst3|Add0~25\)) # (!\inst3|s_pont1\(13) & ((\inst3|Add0~25\) # (GND))))) # (!\inst3|s_pont2\(13) & ((\inst3|s_pont1\(13) & (\inst3|Add0~25\ & VCC)) # (!\inst3|s_pont1\(13) & 
-- (!\inst3|Add0~25\))))
-- \inst3|Add0~27\ = CARRY((\inst3|s_pont2\(13) & ((!\inst3|Add0~25\) # (!\inst3|s_pont1\(13)))) # (!\inst3|s_pont2\(13) & (!\inst3|s_pont1\(13) & !\inst3|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(13),
	datab => \inst3|s_pont1\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X53_Y27_N28
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = ((\inst3|s_pont2\(14) $ (\inst3|s_pont1\(14) $ (\inst3|Add0~27\)))) # (GND)
-- \inst3|Add0~29\ = CARRY((\inst3|s_pont2\(14) & (\inst3|s_pont1\(14) & !\inst3|Add0~27\)) # (!\inst3|s_pont2\(14) & ((\inst3|s_pont1\(14)) # (!\inst3|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(14),
	datab => \inst3|s_pont1\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X53_Y27_N30
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|s_pont1\(15) & ((\inst3|s_pont2\(15) & (!\inst3|Add0~29\)) # (!\inst3|s_pont2\(15) & (\inst3|Add0~29\ & VCC)))) # (!\inst3|s_pont1\(15) & ((\inst3|s_pont2\(15) & ((\inst3|Add0~29\) # (GND))) # (!\inst3|s_pont2\(15) & 
-- (!\inst3|Add0~29\))))
-- \inst3|Add0~31\ = CARRY((\inst3|s_pont1\(15) & (\inst3|s_pont2\(15) & !\inst3|Add0~29\)) # (!\inst3|s_pont1\(15) & ((\inst3|s_pont2\(15)) # (!\inst3|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(15),
	datab => \inst3|s_pont2\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X53_Y26_N0
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = ((\inst3|s_pont2\(16) $ (\inst3|s_pont1\(16) $ (\inst3|Add0~31\)))) # (GND)
-- \inst3|Add0~33\ = CARRY((\inst3|s_pont2\(16) & (\inst3|s_pont1\(16) & !\inst3|Add0~31\)) # (!\inst3|s_pont2\(16) & ((\inst3|s_pont1\(16)) # (!\inst3|Add0~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(16),
	datab => \inst3|s_pont1\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X53_Y26_N2
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|s_pont1\(17) & ((\inst3|s_pont2\(17) & (!\inst3|Add0~33\)) # (!\inst3|s_pont2\(17) & (\inst3|Add0~33\ & VCC)))) # (!\inst3|s_pont1\(17) & ((\inst3|s_pont2\(17) & ((\inst3|Add0~33\) # (GND))) # (!\inst3|s_pont2\(17) & 
-- (!\inst3|Add0~33\))))
-- \inst3|Add0~35\ = CARRY((\inst3|s_pont1\(17) & (\inst3|s_pont2\(17) & !\inst3|Add0~33\)) # (!\inst3|s_pont1\(17) & ((\inst3|s_pont2\(17)) # (!\inst3|Add0~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(17),
	datab => \inst3|s_pont2\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X53_Y26_N4
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = ((\inst3|s_pont1\(18) $ (\inst3|s_pont2\(18) $ (\inst3|Add0~35\)))) # (GND)
-- \inst3|Add0~37\ = CARRY((\inst3|s_pont1\(18) & ((!\inst3|Add0~35\) # (!\inst3|s_pont2\(18)))) # (!\inst3|s_pont1\(18) & (!\inst3|s_pont2\(18) & !\inst3|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(18),
	datab => \inst3|s_pont2\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X53_Y26_N6
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|s_pont1\(19) & ((\inst3|s_pont2\(19) & (!\inst3|Add0~37\)) # (!\inst3|s_pont2\(19) & (\inst3|Add0~37\ & VCC)))) # (!\inst3|s_pont1\(19) & ((\inst3|s_pont2\(19) & ((\inst3|Add0~37\) # (GND))) # (!\inst3|s_pont2\(19) & 
-- (!\inst3|Add0~37\))))
-- \inst3|Add0~39\ = CARRY((\inst3|s_pont1\(19) & (\inst3|s_pont2\(19) & !\inst3|Add0~37\)) # (!\inst3|s_pont1\(19) & ((\inst3|s_pont2\(19)) # (!\inst3|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(19),
	datab => \inst3|s_pont2\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X53_Y26_N8
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = ((\inst3|s_pont2\(20) $ (\inst3|s_pont1\(20) $ (\inst3|Add0~39\)))) # (GND)
-- \inst3|Add0~41\ = CARRY((\inst3|s_pont2\(20) & (\inst3|s_pont1\(20) & !\inst3|Add0~39\)) # (!\inst3|s_pont2\(20) & ((\inst3|s_pont1\(20)) # (!\inst3|Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(20),
	datab => \inst3|s_pont1\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X53_Y26_N10
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|s_pont2\(21) & ((\inst3|s_pont1\(21) & (!\inst3|Add0~41\)) # (!\inst3|s_pont1\(21) & ((\inst3|Add0~41\) # (GND))))) # (!\inst3|s_pont2\(21) & ((\inst3|s_pont1\(21) & (\inst3|Add0~41\ & VCC)) # (!\inst3|s_pont1\(21) & 
-- (!\inst3|Add0~41\))))
-- \inst3|Add0~43\ = CARRY((\inst3|s_pont2\(21) & ((!\inst3|Add0~41\) # (!\inst3|s_pont1\(21)))) # (!\inst3|s_pont2\(21) & (!\inst3|s_pont1\(21) & !\inst3|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(21),
	datab => \inst3|s_pont1\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X53_Y26_N12
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = ((\inst3|s_pont2\(22) $ (\inst3|s_pont1\(22) $ (\inst3|Add0~43\)))) # (GND)
-- \inst3|Add0~45\ = CARRY((\inst3|s_pont2\(22) & (\inst3|s_pont1\(22) & !\inst3|Add0~43\)) # (!\inst3|s_pont2\(22) & ((\inst3|s_pont1\(22)) # (!\inst3|Add0~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(22),
	datab => \inst3|s_pont1\(22),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: LCCOMB_X53_Y26_N14
\inst3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = (\inst3|s_pont2\(23) & ((\inst3|s_pont1\(23) & (!\inst3|Add0~45\)) # (!\inst3|s_pont1\(23) & ((\inst3|Add0~45\) # (GND))))) # (!\inst3|s_pont2\(23) & ((\inst3|s_pont1\(23) & (\inst3|Add0~45\ & VCC)) # (!\inst3|s_pont1\(23) & 
-- (!\inst3|Add0~45\))))
-- \inst3|Add0~47\ = CARRY((\inst3|s_pont2\(23) & ((!\inst3|Add0~45\) # (!\inst3|s_pont1\(23)))) # (!\inst3|s_pont2\(23) & (!\inst3|s_pont1\(23) & !\inst3|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(23),
	datab => \inst3|s_pont1\(23),
	datad => VCC,
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\,
	cout => \inst3|Add0~47\);

-- Location: LCCOMB_X53_Y26_N16
\inst3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~48_combout\ = ((\inst3|s_pont2\(24) $ (\inst3|s_pont1\(24) $ (\inst3|Add0~47\)))) # (GND)
-- \inst3|Add0~49\ = CARRY((\inst3|s_pont2\(24) & (\inst3|s_pont1\(24) & !\inst3|Add0~47\)) # (!\inst3|s_pont2\(24) & ((\inst3|s_pont1\(24)) # (!\inst3|Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(24),
	datab => \inst3|s_pont1\(24),
	datad => VCC,
	cin => \inst3|Add0~47\,
	combout => \inst3|Add0~48_combout\,
	cout => \inst3|Add0~49\);

-- Location: LCCOMB_X53_Y26_N18
\inst3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~50_combout\ = (\inst3|s_pont1\(25) & ((\inst3|s_pont2\(25) & (!\inst3|Add0~49\)) # (!\inst3|s_pont2\(25) & (\inst3|Add0~49\ & VCC)))) # (!\inst3|s_pont1\(25) & ((\inst3|s_pont2\(25) & ((\inst3|Add0~49\) # (GND))) # (!\inst3|s_pont2\(25) & 
-- (!\inst3|Add0~49\))))
-- \inst3|Add0~51\ = CARRY((\inst3|s_pont1\(25) & (\inst3|s_pont2\(25) & !\inst3|Add0~49\)) # (!\inst3|s_pont1\(25) & ((\inst3|s_pont2\(25)) # (!\inst3|Add0~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(25),
	datab => \inst3|s_pont2\(25),
	datad => VCC,
	cin => \inst3|Add0~49\,
	combout => \inst3|Add0~50_combout\,
	cout => \inst3|Add0~51\);

-- Location: LCCOMB_X53_Y26_N20
\inst3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~52_combout\ = ((\inst3|s_pont2\(26) $ (\inst3|s_pont1\(26) $ (\inst3|Add0~51\)))) # (GND)
-- \inst3|Add0~53\ = CARRY((\inst3|s_pont2\(26) & (\inst3|s_pont1\(26) & !\inst3|Add0~51\)) # (!\inst3|s_pont2\(26) & ((\inst3|s_pont1\(26)) # (!\inst3|Add0~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(26),
	datab => \inst3|s_pont1\(26),
	datad => VCC,
	cin => \inst3|Add0~51\,
	combout => \inst3|Add0~52_combout\,
	cout => \inst3|Add0~53\);

-- Location: LCCOMB_X53_Y26_N22
\inst3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~54_combout\ = (\inst3|s_pont2\(27) & ((\inst3|s_pont1\(27) & (!\inst3|Add0~53\)) # (!\inst3|s_pont1\(27) & ((\inst3|Add0~53\) # (GND))))) # (!\inst3|s_pont2\(27) & ((\inst3|s_pont1\(27) & (\inst3|Add0~53\ & VCC)) # (!\inst3|s_pont1\(27) & 
-- (!\inst3|Add0~53\))))
-- \inst3|Add0~55\ = CARRY((\inst3|s_pont2\(27) & ((!\inst3|Add0~53\) # (!\inst3|s_pont1\(27)))) # (!\inst3|s_pont2\(27) & (!\inst3|s_pont1\(27) & !\inst3|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(27),
	datab => \inst3|s_pont1\(27),
	datad => VCC,
	cin => \inst3|Add0~53\,
	combout => \inst3|Add0~54_combout\,
	cout => \inst3|Add0~55\);

-- Location: LCCOMB_X53_Y26_N24
\inst3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~56_combout\ = ((\inst3|s_pont2\(28) $ (\inst3|s_pont1\(28) $ (\inst3|Add0~55\)))) # (GND)
-- \inst3|Add0~57\ = CARRY((\inst3|s_pont2\(28) & (\inst3|s_pont1\(28) & !\inst3|Add0~55\)) # (!\inst3|s_pont2\(28) & ((\inst3|s_pont1\(28)) # (!\inst3|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(28),
	datab => \inst3|s_pont1\(28),
	datad => VCC,
	cin => \inst3|Add0~55\,
	combout => \inst3|Add0~56_combout\,
	cout => \inst3|Add0~57\);

-- Location: LCCOMB_X53_Y26_N26
\inst3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~58_combout\ = (\inst3|s_pont2\(29) & ((\inst3|s_pont1\(29) & (!\inst3|Add0~57\)) # (!\inst3|s_pont1\(29) & ((\inst3|Add0~57\) # (GND))))) # (!\inst3|s_pont2\(29) & ((\inst3|s_pont1\(29) & (\inst3|Add0~57\ & VCC)) # (!\inst3|s_pont1\(29) & 
-- (!\inst3|Add0~57\))))
-- \inst3|Add0~59\ = CARRY((\inst3|s_pont2\(29) & ((!\inst3|Add0~57\) # (!\inst3|s_pont1\(29)))) # (!\inst3|s_pont2\(29) & (!\inst3|s_pont1\(29) & !\inst3|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(29),
	datab => \inst3|s_pont1\(29),
	datad => VCC,
	cin => \inst3|Add0~57\,
	combout => \inst3|Add0~58_combout\,
	cout => \inst3|Add0~59\);

-- Location: LCCOMB_X53_Y26_N28
\inst3|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~60_combout\ = ((\inst3|s_pont2\(30) $ (\inst3|s_pont1\(30) $ (\inst3|Add0~59\)))) # (GND)
-- \inst3|Add0~61\ = CARRY((\inst3|s_pont2\(30) & (\inst3|s_pont1\(30) & !\inst3|Add0~59\)) # (!\inst3|s_pont2\(30) & ((\inst3|s_pont1\(30)) # (!\inst3|Add0~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(30),
	datab => \inst3|s_pont1\(30),
	datad => VCC,
	cin => \inst3|Add0~59\,
	combout => \inst3|Add0~60_combout\,
	cout => \inst3|Add0~61\);

-- Location: LCCOMB_X53_Y26_N30
\inst3|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~62_combout\ = \inst3|s_pont1\(31) $ (\inst3|Add0~61\ $ (!\inst3|s_pont2\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(31),
	datad => \inst3|s_pont2\(31),
	cin => \inst3|Add0~61\,
	combout => \inst3|Add0~62_combout\);

-- Location: LCCOMB_X52_Y29_N16
\inst3|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~2_combout\ = \inst3|Add0~62_combout\ $ (\inst3|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~62_combout\,
	datad => \inst3|Add0~0_combout\,
	combout => \inst3|p1~2_combout\);

-- Location: LCCOMB_X53_Y29_N0
\inst3|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~1_cout\ = CARRY((\inst3|p1~2_combout\ & \inst3|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|p1~2_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cout => \inst3|Add1~1_cout\);

-- Location: LCCOMB_X53_Y29_N2
\inst3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|Add1~1_cout\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~2_combout\)))) # (!\inst3|Add1~1_cout\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~2_combout\)) # (GND)))
-- \inst3|Add1~3\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~2_combout\)) # (!\inst3|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~2_combout\,
	datad => VCC,
	cin => \inst3|Add1~1_cout\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X53_Y29_N4
\inst3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = (\inst3|Add1~3\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~4_combout\)))) # (!\inst3|Add1~3\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~4_combout\ $ (VCC))))
-- \inst3|Add1~5\ = CARRY((!\inst3|Add1~3\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~4_combout\,
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X53_Y29_N6
\inst3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|Add1~5\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~6_combout\)))) # (!\inst3|Add1~5\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~6_combout\)) # (GND)))
-- \inst3|Add1~7\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~6_combout\)) # (!\inst3|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~6_combout\,
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X53_Y29_N8
\inst3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = (\inst3|Add1~7\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~8_combout\)))) # (!\inst3|Add1~7\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~8_combout\ $ (VCC))))
-- \inst3|Add1~9\ = CARRY((!\inst3|Add1~7\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~8_combout\,
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X53_Y29_N10
\inst3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst3|Add1~9\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~10_combout\)))) # (!\inst3|Add1~9\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~10_combout\)) # (GND)))
-- \inst3|Add1~11\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~10_combout\)) # (!\inst3|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~10_combout\,
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X53_Y29_N12
\inst3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = (\inst3|Add1~11\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~12_combout\)))) # (!\inst3|Add1~11\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~12_combout\ $ (VCC))))
-- \inst3|Add1~13\ = CARRY((!\inst3|Add1~11\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~12_combout\,
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X53_Y29_N14
\inst3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = (\inst3|Add1~13\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~14_combout\)))) # (!\inst3|Add1~13\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~14_combout\)) # (GND)))
-- \inst3|Add1~15\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~14_combout\)) # (!\inst3|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~14_combout\,
	datad => VCC,
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\,
	cout => \inst3|Add1~15\);

-- Location: LCCOMB_X53_Y29_N16
\inst3|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~16_combout\ = (\inst3|Add1~15\ & ((\inst3|Add0~16_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~15\ & (\inst3|Add0~16_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~17\ = CARRY((!\inst3|Add1~15\ & (\inst3|Add0~16_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~16_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~15\,
	combout => \inst3|Add1~16_combout\,
	cout => \inst3|Add1~17\);

-- Location: LCCOMB_X53_Y29_N18
\inst3|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~18_combout\ = (\inst3|Add1~17\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~18_combout\)))) # (!\inst3|Add1~17\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~18_combout\)) # (GND)))
-- \inst3|Add1~19\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~18_combout\)) # (!\inst3|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~17\,
	combout => \inst3|Add1~18_combout\,
	cout => \inst3|Add1~19\);

-- Location: LCCOMB_X53_Y29_N20
\inst3|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~20_combout\ = (\inst3|Add1~19\ & ((\inst3|Add0~20_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~19\ & (\inst3|Add0~20_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~21\ = CARRY((!\inst3|Add1~19\ & (\inst3|Add0~20_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~20_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~19\,
	combout => \inst3|Add1~20_combout\,
	cout => \inst3|Add1~21\);

-- Location: LCCOMB_X53_Y29_N22
\inst3|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~22_combout\ = (\inst3|Add1~21\ & (\inst3|Add0~22_combout\ $ ((!\inst3|Add0~62_combout\)))) # (!\inst3|Add1~21\ & ((\inst3|Add0~22_combout\ $ (\inst3|Add0~62_combout\)) # (GND)))
-- \inst3|Add1~23\ = CARRY((\inst3|Add0~22_combout\ $ (!\inst3|Add0~62_combout\)) # (!\inst3|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~22_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~21\,
	combout => \inst3|Add1~22_combout\,
	cout => \inst3|Add1~23\);

-- Location: LCCOMB_X53_Y29_N24
\inst3|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~24_combout\ = (\inst3|Add1~23\ & ((\inst3|Add0~24_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~23\ & (\inst3|Add0~24_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~25\ = CARRY((!\inst3|Add1~23\ & (\inst3|Add0~24_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~24_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~23\,
	combout => \inst3|Add1~24_combout\,
	cout => \inst3|Add1~25\);

-- Location: LCCOMB_X53_Y29_N26
\inst3|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~26_combout\ = (\inst3|Add1~25\ & (\inst3|Add0~26_combout\ $ ((!\inst3|Add0~62_combout\)))) # (!\inst3|Add1~25\ & ((\inst3|Add0~26_combout\ $ (\inst3|Add0~62_combout\)) # (GND)))
-- \inst3|Add1~27\ = CARRY((\inst3|Add0~26_combout\ $ (!\inst3|Add0~62_combout\)) # (!\inst3|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~26_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~25\,
	combout => \inst3|Add1~26_combout\,
	cout => \inst3|Add1~27\);

-- Location: LCCOMB_X53_Y29_N28
\inst3|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~28_combout\ = (\inst3|Add1~27\ & ((\inst3|Add0~28_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~27\ & (\inst3|Add0~28_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~29\ = CARRY((!\inst3|Add1~27\ & (\inst3|Add0~28_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~28_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~27\,
	combout => \inst3|Add1~28_combout\,
	cout => \inst3|Add1~29\);

-- Location: LCCOMB_X53_Y29_N30
\inst3|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~30_combout\ = (\inst3|Add1~29\ & (\inst3|Add0~30_combout\ $ ((!\inst3|Add0~62_combout\)))) # (!\inst3|Add1~29\ & ((\inst3|Add0~30_combout\ $ (\inst3|Add0~62_combout\)) # (GND)))
-- \inst3|Add1~31\ = CARRY((\inst3|Add0~30_combout\ $ (!\inst3|Add0~62_combout\)) # (!\inst3|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~30_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~29\,
	combout => \inst3|Add1~30_combout\,
	cout => \inst3|Add1~31\);

-- Location: LCCOMB_X53_Y28_N0
\inst3|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~32_combout\ = (\inst3|Add1~31\ & ((\inst3|Add0~32_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~31\ & (\inst3|Add0~32_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~33\ = CARRY((!\inst3|Add1~31\ & (\inst3|Add0~32_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~32_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~31\,
	combout => \inst3|Add1~32_combout\,
	cout => \inst3|Add1~33\);

-- Location: LCCOMB_X53_Y28_N2
\inst3|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~34_combout\ = (\inst3|Add1~33\ & (\inst3|Add0~34_combout\ $ ((!\inst3|Add0~62_combout\)))) # (!\inst3|Add1~33\ & ((\inst3|Add0~34_combout\ $ (\inst3|Add0~62_combout\)) # (GND)))
-- \inst3|Add1~35\ = CARRY((\inst3|Add0~34_combout\ $ (!\inst3|Add0~62_combout\)) # (!\inst3|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~34_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~33\,
	combout => \inst3|Add1~34_combout\,
	cout => \inst3|Add1~35\);

-- Location: LCCOMB_X53_Y28_N4
\inst3|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~36_combout\ = (\inst3|Add1~35\ & ((\inst3|Add0~36_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~35\ & (\inst3|Add0~36_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~37\ = CARRY((!\inst3|Add1~35\ & (\inst3|Add0~36_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~36_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~35\,
	combout => \inst3|Add1~36_combout\,
	cout => \inst3|Add1~37\);

-- Location: LCCOMB_X53_Y28_N6
\inst3|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~38_combout\ = (\inst3|Add1~37\ & (\inst3|Add0~38_combout\ $ ((!\inst3|Add0~62_combout\)))) # (!\inst3|Add1~37\ & ((\inst3|Add0~38_combout\ $ (\inst3|Add0~62_combout\)) # (GND)))
-- \inst3|Add1~39\ = CARRY((\inst3|Add0~38_combout\ $ (!\inst3|Add0~62_combout\)) # (!\inst3|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~38_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~37\,
	combout => \inst3|Add1~38_combout\,
	cout => \inst3|Add1~39\);

-- Location: LCCOMB_X53_Y28_N8
\inst3|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~40_combout\ = (\inst3|Add1~39\ & ((\inst3|Add0~40_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~39\ & (\inst3|Add0~40_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~41\ = CARRY((!\inst3|Add1~39\ & (\inst3|Add0~40_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~40_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~39\,
	combout => \inst3|Add1~40_combout\,
	cout => \inst3|Add1~41\);

-- Location: LCCOMB_X53_Y28_N10
\inst3|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~42_combout\ = (\inst3|Add1~41\ & (\inst3|Add0~42_combout\ $ ((!\inst3|Add0~62_combout\)))) # (!\inst3|Add1~41\ & ((\inst3|Add0~42_combout\ $ (\inst3|Add0~62_combout\)) # (GND)))
-- \inst3|Add1~43\ = CARRY((\inst3|Add0~42_combout\ $ (!\inst3|Add0~62_combout\)) # (!\inst3|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~42_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~41\,
	combout => \inst3|Add1~42_combout\,
	cout => \inst3|Add1~43\);

-- Location: LCCOMB_X53_Y28_N12
\inst3|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~44_combout\ = (\inst3|Add1~43\ & ((\inst3|Add0~44_combout\ $ (\inst3|Add0~62_combout\)))) # (!\inst3|Add1~43\ & (\inst3|Add0~44_combout\ $ (\inst3|Add0~62_combout\ $ (VCC))))
-- \inst3|Add1~45\ = CARRY((!\inst3|Add1~43\ & (\inst3|Add0~44_combout\ $ (\inst3|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~44_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~43\,
	combout => \inst3|Add1~44_combout\,
	cout => \inst3|Add1~45\);

-- Location: LCCOMB_X53_Y28_N14
\inst3|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~46_combout\ = (\inst3|Add1~45\ & (\inst3|Add0~46_combout\ $ ((!\inst3|Add0~62_combout\)))) # (!\inst3|Add1~45\ & ((\inst3|Add0~46_combout\ $ (\inst3|Add0~62_combout\)) # (GND)))
-- \inst3|Add1~47\ = CARRY((\inst3|Add0~46_combout\ $ (!\inst3|Add0~62_combout\)) # (!\inst3|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~46_combout\,
	datab => \inst3|Add0~62_combout\,
	datad => VCC,
	cin => \inst3|Add1~45\,
	combout => \inst3|Add1~46_combout\,
	cout => \inst3|Add1~47\);

-- Location: LCCOMB_X53_Y28_N16
\inst3|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~48_combout\ = (\inst3|Add1~47\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~48_combout\)))) # (!\inst3|Add1~47\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~48_combout\ $ (VCC))))
-- \inst3|Add1~49\ = CARRY((!\inst3|Add1~47\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~48_combout\,
	datad => VCC,
	cin => \inst3|Add1~47\,
	combout => \inst3|Add1~48_combout\,
	cout => \inst3|Add1~49\);

-- Location: LCCOMB_X53_Y28_N18
\inst3|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~50_combout\ = (\inst3|Add1~49\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~50_combout\)))) # (!\inst3|Add1~49\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~50_combout\)) # (GND)))
-- \inst3|Add1~51\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~50_combout\)) # (!\inst3|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~50_combout\,
	datad => VCC,
	cin => \inst3|Add1~49\,
	combout => \inst3|Add1~50_combout\,
	cout => \inst3|Add1~51\);

-- Location: LCCOMB_X53_Y28_N20
\inst3|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~52_combout\ = (\inst3|Add1~51\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~52_combout\)))) # (!\inst3|Add1~51\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~52_combout\ $ (VCC))))
-- \inst3|Add1~53\ = CARRY((!\inst3|Add1~51\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~52_combout\,
	datad => VCC,
	cin => \inst3|Add1~51\,
	combout => \inst3|Add1~52_combout\,
	cout => \inst3|Add1~53\);

-- Location: LCCOMB_X53_Y28_N22
\inst3|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~54_combout\ = (\inst3|Add1~53\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~54_combout\)))) # (!\inst3|Add1~53\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~54_combout\)) # (GND)))
-- \inst3|Add1~55\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~54_combout\)) # (!\inst3|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~54_combout\,
	datad => VCC,
	cin => \inst3|Add1~53\,
	combout => \inst3|Add1~54_combout\,
	cout => \inst3|Add1~55\);

-- Location: LCCOMB_X53_Y28_N24
\inst3|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~56_combout\ = (\inst3|Add1~55\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~56_combout\)))) # (!\inst3|Add1~55\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~56_combout\ $ (VCC))))
-- \inst3|Add1~57\ = CARRY((!\inst3|Add1~55\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~56_combout\,
	datad => VCC,
	cin => \inst3|Add1~55\,
	combout => \inst3|Add1~56_combout\,
	cout => \inst3|Add1~57\);

-- Location: LCCOMB_X53_Y28_N26
\inst3|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~58_combout\ = (\inst3|Add1~57\ & (\inst3|Add0~62_combout\ $ ((!\inst3|Add0~58_combout\)))) # (!\inst3|Add1~57\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~58_combout\)) # (GND)))
-- \inst3|Add1~59\ = CARRY((\inst3|Add0~62_combout\ $ (!\inst3|Add0~58_combout\)) # (!\inst3|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~58_combout\,
	datad => VCC,
	cin => \inst3|Add1~57\,
	combout => \inst3|Add1~58_combout\,
	cout => \inst3|Add1~59\);

-- Location: LCCOMB_X53_Y28_N28
\inst3|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~60_combout\ = (\inst3|Add1~59\ & ((\inst3|Add0~62_combout\ $ (\inst3|Add0~60_combout\)))) # (!\inst3|Add1~59\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~60_combout\ $ (VCC))))
-- \inst3|Add1~61\ = CARRY((!\inst3|Add1~59\ & (\inst3|Add0~62_combout\ $ (\inst3|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~62_combout\,
	datab => \inst3|Add0~60_combout\,
	datad => VCC,
	cin => \inst3|Add1~59\,
	combout => \inst3|Add1~60_combout\,
	cout => \inst3|Add1~61\);

-- Location: LCCOMB_X53_Y28_N30
\inst3|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~62_combout\ = \inst3|Add1~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add1~61\,
	combout => \inst3|Add1~62_combout\);

-- Location: LCCOMB_X57_Y27_N14
\inst3|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~0_combout\ = (\inst3|s_pont1\(3) & ((\inst3|s_pont1\(0)) # ((\inst3|s_pont1\(2)) # (\inst3|s_pont1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(0),
	datab => \inst3|s_pont1\(2),
	datac => \inst3|s_pont1\(3),
	datad => \inst3|s_pont1\(1),
	combout => \inst3|p1~0_combout\);

-- Location: LCCOMB_X57_Y26_N2
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (!\inst3|s_pont1\(23) & (!\inst3|s_pont1\(21) & (!\inst3|s_pont1\(22) & !\inst3|s_pont1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(23),
	datab => \inst3|s_pont1\(21),
	datac => \inst3|s_pont1\(22),
	datad => \inst3|s_pont1\(24),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y26_N28
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (!\inst3|s_pont1\(26) & (!\inst3|s_pont1\(27) & (!\inst3|s_pont1\(25) & !\inst3|s_pont1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(26),
	datab => \inst3|s_pont1\(27),
	datac => \inst3|s_pont1\(25),
	datad => \inst3|s_pont1\(28),
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y26_N30
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (!\inst3|s_pont1\(30) & !\inst3|s_pont1\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_pont1\(30),
	datad => \inst3|s_pont1\(29),
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y27_N26
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|s_pont1\(12) & (!\inst3|s_pont1\(9) & (!\inst3|s_pont1\(10) & !\inst3|s_pont1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(12),
	datab => \inst3|s_pont1\(9),
	datac => \inst3|s_pont1\(10),
	datad => \inst3|s_pont1\(11),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y26_N0
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|s_pont1\(17) & (!\inst3|s_pont1\(20) & (!\inst3|s_pont1\(18) & !\inst3|s_pont1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(17),
	datab => \inst3|s_pont1\(20),
	datac => \inst3|s_pont1\(18),
	datad => \inst3|s_pont1\(19),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y27_N4
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|s_pont1\(14) & (!\inst3|s_pont1\(15) & (!\inst3|s_pont1\(13) & !\inst3|s_pont1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(14),
	datab => \inst3|s_pont1\(15),
	datac => \inst3|s_pont1\(13),
	datad => \inst3|s_pont1\(16),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y27_N16
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|s_pont1\(8) & (!\inst3|s_pont1\(6) & (!\inst3|s_pont1\(5) & !\inst3|s_pont1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(8),
	datab => \inst3|s_pont1\(6),
	datac => \inst3|s_pont1\(5),
	datad => \inst3|s_pont1\(7),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y27_N18
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~1_combout\ & (\inst3|Equal0~3_combout\ & (\inst3|Equal0~2_combout\ & \inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~1_combout\,
	datab => \inst3|Equal0~3_combout\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y27_N12
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (\inst3|Equal0~5_combout\ & (\inst3|Equal0~6_combout\ & (\inst3|Equal0~7_combout\ & \inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~7_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X57_Y27_N0
\inst3|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~1_combout\ = (\inst3|s_pont1\(31)) # ((\inst3|Equal0~8_combout\ & ((!\inst3|p1~0_combout\) # (!\inst3|s_pont1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(4),
	datab => \inst3|s_pont1\(31),
	datac => \inst3|p1~0_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|p1~1_combout\);

-- Location: LCCOMB_X54_Y28_N4
\inst3|p1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~6_combout\ = (!\inst3|Add1~58_combout\ & !\inst3|Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add1~58_combout\,
	datad => \inst3|Add1~60_combout\,
	combout => \inst3|p1~6_combout\);

-- Location: LCCOMB_X54_Y28_N26
\inst3|p1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~4_combout\ = (\inst3|Add1~46_combout\) # ((\inst3|Add1~50_combout\) # ((\inst3|Add1~56_combout\) # (\inst3|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~46_combout\,
	datab => \inst3|Add1~50_combout\,
	datac => \inst3|Add1~56_combout\,
	datad => \inst3|Add1~54_combout\,
	combout => \inst3|p1~4_combout\);

-- Location: LCCOMB_X54_Y28_N16
\inst3|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~5_combout\ = (!\inst3|Add1~34_combout\ & (!\inst3|Add1~36_combout\ & (!\inst3|Add1~38_combout\ & !\inst3|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~34_combout\,
	datab => \inst3|Add1~36_combout\,
	datac => \inst3|Add1~38_combout\,
	datad => \inst3|Add1~40_combout\,
	combout => \inst3|LessThan1~5_combout\);

-- Location: LCCOMB_X54_Y29_N12
\inst3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = (!\inst3|Add1~2_combout\ & (!\inst3|Add1~4_combout\ & (!\inst3|Add1~6_combout\ & !\inst3|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~2_combout\,
	datab => \inst3|Add1~4_combout\,
	datac => \inst3|Add1~6_combout\,
	datad => \inst3|Add1~8_combout\,
	combout => \inst3|LessThan1~0_combout\);

-- Location: LCCOMB_X54_Y29_N18
\inst3|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~1_combout\ = (!\inst3|Add1~14_combout\ & (!\inst3|Add1~10_combout\ & (!\inst3|Add1~16_combout\ & !\inst3|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~14_combout\,
	datab => \inst3|Add1~10_combout\,
	datac => \inst3|Add1~16_combout\,
	datad => \inst3|Add1~12_combout\,
	combout => \inst3|LessThan1~1_combout\);

-- Location: LCCOMB_X54_Y29_N16
\inst3|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~2_combout\ = (\inst3|LessThan1~0_combout\ & (!\inst3|Add1~18_combout\ & (!\inst3|Add1~20_combout\ & \inst3|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan1~0_combout\,
	datab => \inst3|Add1~18_combout\,
	datac => \inst3|Add1~20_combout\,
	datad => \inst3|LessThan1~1_combout\,
	combout => \inst3|LessThan1~2_combout\);

-- Location: LCCOMB_X54_Y29_N10
\inst3|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~3_combout\ = (!\inst3|Add1~26_combout\ & (!\inst3|Add1~24_combout\ & (!\inst3|Add1~22_combout\ & \inst3|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~26_combout\,
	datab => \inst3|Add1~24_combout\,
	datac => \inst3|Add1~22_combout\,
	datad => \inst3|LessThan1~2_combout\,
	combout => \inst3|LessThan1~3_combout\);

-- Location: LCCOMB_X54_Y29_N4
\inst3|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~4_combout\ = (!\inst3|Add1~32_combout\ & (!\inst3|Add1~28_combout\ & (!\inst3|Add1~30_combout\ & \inst3|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~32_combout\,
	datab => \inst3|Add1~28_combout\,
	datac => \inst3|Add1~30_combout\,
	datad => \inst3|LessThan1~3_combout\,
	combout => \inst3|LessThan1~4_combout\);

-- Location: LCCOMB_X55_Y28_N28
\inst3|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~3_combout\ = (!\inst3|Add1~42_combout\ & (!\inst3|Add1~44_combout\ & (\inst3|LessThan1~5_combout\ & \inst3|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~42_combout\,
	datab => \inst3|Add1~44_combout\,
	datac => \inst3|LessThan1~5_combout\,
	datad => \inst3|LessThan1~4_combout\,
	combout => \inst3|p1~3_combout\);

-- Location: LCCOMB_X55_Y28_N2
\inst3|p1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~5_combout\ = (!\inst3|Add1~52_combout\ & (!\inst3|Add1~48_combout\ & (!\inst3|p1~4_combout\ & \inst3|p1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~52_combout\,
	datab => \inst3|Add1~48_combout\,
	datac => \inst3|p1~4_combout\,
	datad => \inst3|p1~3_combout\,
	combout => \inst3|p1~5_combout\);

-- Location: LCCOMB_X55_Y28_N12
\inst3|p1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~7_combout\ = (\inst3|p1~1_combout\) # ((!\inst3|Add1~62_combout\ & (\inst3|p1~6_combout\ & \inst3|p1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~62_combout\,
	datab => \inst3|p1~1_combout\,
	datac => \inst3|p1~6_combout\,
	datad => \inst3|p1~5_combout\,
	combout => \inst3|p1~7_combout\);

-- Location: LCCOMB_X55_Y28_N30
\inst3|s_pont2[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[25]~36_combout\ = (\inst29~1_combout\) # ((!\inst3|s_pont2[25]~35_combout\ & (\inst3|p1~15_combout\ & \inst3|p1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2[25]~35_combout\,
	datab => \inst29~1_combout\,
	datac => \inst3|p1~15_combout\,
	datad => \inst3|p1~7_combout\,
	combout => \inst3|s_pont2[25]~36_combout\);

-- Location: FF_X56_Y27_N11
\inst3|s_pont2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[5]~45_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(5));

-- Location: LCCOMB_X56_Y27_N12
\inst3|s_pont2[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[6]~47_combout\ = (\inst3|s_pont2\(6) & (\inst3|s_pont2[5]~46\ $ (GND))) # (!\inst3|s_pont2\(6) & (!\inst3|s_pont2[5]~46\ & VCC))
-- \inst3|s_pont2[6]~48\ = CARRY((\inst3|s_pont2\(6) & !\inst3|s_pont2[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(6),
	datad => VCC,
	cin => \inst3|s_pont2[5]~46\,
	combout => \inst3|s_pont2[6]~47_combout\,
	cout => \inst3|s_pont2[6]~48\);

-- Location: FF_X56_Y27_N13
\inst3|s_pont2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[6]~47_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(6));

-- Location: LCCOMB_X56_Y27_N14
\inst3|s_pont2[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[7]~49_combout\ = (\inst3|s_pont2\(7) & (!\inst3|s_pont2[6]~48\)) # (!\inst3|s_pont2\(7) & ((\inst3|s_pont2[6]~48\) # (GND)))
-- \inst3|s_pont2[7]~50\ = CARRY((!\inst3|s_pont2[6]~48\) # (!\inst3|s_pont2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(7),
	datad => VCC,
	cin => \inst3|s_pont2[6]~48\,
	combout => \inst3|s_pont2[7]~49_combout\,
	cout => \inst3|s_pont2[7]~50\);

-- Location: FF_X55_Y27_N3
\inst3|s_pont2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[7]~49_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(7));

-- Location: LCCOMB_X56_Y27_N16
\inst3|s_pont2[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[8]~51_combout\ = (\inst3|s_pont2\(8) & (\inst3|s_pont2[7]~50\ $ (GND))) # (!\inst3|s_pont2\(8) & (!\inst3|s_pont2[7]~50\ & VCC))
-- \inst3|s_pont2[8]~52\ = CARRY((\inst3|s_pont2\(8) & !\inst3|s_pont2[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(8),
	datad => VCC,
	cin => \inst3|s_pont2[7]~50\,
	combout => \inst3|s_pont2[8]~51_combout\,
	cout => \inst3|s_pont2[8]~52\);

-- Location: FF_X56_Y27_N17
\inst3|s_pont2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[8]~51_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(8));

-- Location: LCCOMB_X56_Y27_N18
\inst3|s_pont2[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[9]~53_combout\ = (\inst3|s_pont2\(9) & (!\inst3|s_pont2[8]~52\)) # (!\inst3|s_pont2\(9) & ((\inst3|s_pont2[8]~52\) # (GND)))
-- \inst3|s_pont2[9]~54\ = CARRY((!\inst3|s_pont2[8]~52\) # (!\inst3|s_pont2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(9),
	datad => VCC,
	cin => \inst3|s_pont2[8]~52\,
	combout => \inst3|s_pont2[9]~53_combout\,
	cout => \inst3|s_pont2[9]~54\);

-- Location: FF_X56_Y27_N19
\inst3|s_pont2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[9]~53_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(9));

-- Location: LCCOMB_X56_Y27_N20
\inst3|s_pont2[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[10]~55_combout\ = (\inst3|s_pont2\(10) & (\inst3|s_pont2[9]~54\ $ (GND))) # (!\inst3|s_pont2\(10) & (!\inst3|s_pont2[9]~54\ & VCC))
-- \inst3|s_pont2[10]~56\ = CARRY((\inst3|s_pont2\(10) & !\inst3|s_pont2[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(10),
	datad => VCC,
	cin => \inst3|s_pont2[9]~54\,
	combout => \inst3|s_pont2[10]~55_combout\,
	cout => \inst3|s_pont2[10]~56\);

-- Location: FF_X55_Y27_N7
\inst3|s_pont2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[10]~55_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(10));

-- Location: LCCOMB_X56_Y27_N22
\inst3|s_pont2[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[11]~57_combout\ = (\inst3|s_pont2\(11) & (!\inst3|s_pont2[10]~56\)) # (!\inst3|s_pont2\(11) & ((\inst3|s_pont2[10]~56\) # (GND)))
-- \inst3|s_pont2[11]~58\ = CARRY((!\inst3|s_pont2[10]~56\) # (!\inst3|s_pont2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(11),
	datad => VCC,
	cin => \inst3|s_pont2[10]~56\,
	combout => \inst3|s_pont2[11]~57_combout\,
	cout => \inst3|s_pont2[11]~58\);

-- Location: FF_X56_Y27_N23
\inst3|s_pont2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[11]~57_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(11));

-- Location: LCCOMB_X56_Y27_N24
\inst3|s_pont2[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[12]~59_combout\ = (\inst3|s_pont2\(12) & (\inst3|s_pont2[11]~58\ $ (GND))) # (!\inst3|s_pont2\(12) & (!\inst3|s_pont2[11]~58\ & VCC))
-- \inst3|s_pont2[12]~60\ = CARRY((\inst3|s_pont2\(12) & !\inst3|s_pont2[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(12),
	datad => VCC,
	cin => \inst3|s_pont2[11]~58\,
	combout => \inst3|s_pont2[12]~59_combout\,
	cout => \inst3|s_pont2[12]~60\);

-- Location: FF_X56_Y27_N25
\inst3|s_pont2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[12]~59_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(12));

-- Location: LCCOMB_X56_Y27_N26
\inst3|s_pont2[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[13]~61_combout\ = (\inst3|s_pont2\(13) & (!\inst3|s_pont2[12]~60\)) # (!\inst3|s_pont2\(13) & ((\inst3|s_pont2[12]~60\) # (GND)))
-- \inst3|s_pont2[13]~62\ = CARRY((!\inst3|s_pont2[12]~60\) # (!\inst3|s_pont2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(13),
	datad => VCC,
	cin => \inst3|s_pont2[12]~60\,
	combout => \inst3|s_pont2[13]~61_combout\,
	cout => \inst3|s_pont2[13]~62\);

-- Location: FF_X56_Y27_N27
\inst3|s_pont2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[13]~61_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(13));

-- Location: LCCOMB_X56_Y27_N28
\inst3|s_pont2[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[14]~63_combout\ = (\inst3|s_pont2\(14) & (\inst3|s_pont2[13]~62\ $ (GND))) # (!\inst3|s_pont2\(14) & (!\inst3|s_pont2[13]~62\ & VCC))
-- \inst3|s_pont2[14]~64\ = CARRY((\inst3|s_pont2\(14) & !\inst3|s_pont2[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(14),
	datad => VCC,
	cin => \inst3|s_pont2[13]~62\,
	combout => \inst3|s_pont2[14]~63_combout\,
	cout => \inst3|s_pont2[14]~64\);

-- Location: FF_X55_Y27_N31
\inst3|s_pont2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[14]~63_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(14));

-- Location: LCCOMB_X56_Y27_N30
\inst3|s_pont2[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[15]~65_combout\ = (\inst3|s_pont2\(15) & (!\inst3|s_pont2[14]~64\)) # (!\inst3|s_pont2\(15) & ((\inst3|s_pont2[14]~64\) # (GND)))
-- \inst3|s_pont2[15]~66\ = CARRY((!\inst3|s_pont2[14]~64\) # (!\inst3|s_pont2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(15),
	datad => VCC,
	cin => \inst3|s_pont2[14]~64\,
	combout => \inst3|s_pont2[15]~65_combout\,
	cout => \inst3|s_pont2[15]~66\);

-- Location: FF_X55_Y27_N23
\inst3|s_pont2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[15]~65_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(15));

-- Location: LCCOMB_X56_Y26_N0
\inst3|s_pont2[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[16]~67_combout\ = (\inst3|s_pont2\(16) & (\inst3|s_pont2[15]~66\ $ (GND))) # (!\inst3|s_pont2\(16) & (!\inst3|s_pont2[15]~66\ & VCC))
-- \inst3|s_pont2[16]~68\ = CARRY((\inst3|s_pont2\(16) & !\inst3|s_pont2[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(16),
	datad => VCC,
	cin => \inst3|s_pont2[15]~66\,
	combout => \inst3|s_pont2[16]~67_combout\,
	cout => \inst3|s_pont2[16]~68\);

-- Location: FF_X55_Y26_N5
\inst3|s_pont2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[16]~67_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(16));

-- Location: LCCOMB_X56_Y26_N2
\inst3|s_pont2[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[17]~69_combout\ = (\inst3|s_pont2\(17) & (!\inst3|s_pont2[16]~68\)) # (!\inst3|s_pont2\(17) & ((\inst3|s_pont2[16]~68\) # (GND)))
-- \inst3|s_pont2[17]~70\ = CARRY((!\inst3|s_pont2[16]~68\) # (!\inst3|s_pont2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(17),
	datad => VCC,
	cin => \inst3|s_pont2[16]~68\,
	combout => \inst3|s_pont2[17]~69_combout\,
	cout => \inst3|s_pont2[17]~70\);

-- Location: FF_X56_Y26_N3
\inst3|s_pont2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[17]~69_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(17));

-- Location: LCCOMB_X56_Y26_N4
\inst3|s_pont2[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[18]~71_combout\ = (\inst3|s_pont2\(18) & (\inst3|s_pont2[17]~70\ $ (GND))) # (!\inst3|s_pont2\(18) & (!\inst3|s_pont2[17]~70\ & VCC))
-- \inst3|s_pont2[18]~72\ = CARRY((\inst3|s_pont2\(18) & !\inst3|s_pont2[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(18),
	datad => VCC,
	cin => \inst3|s_pont2[17]~70\,
	combout => \inst3|s_pont2[18]~71_combout\,
	cout => \inst3|s_pont2[18]~72\);

-- Location: FF_X55_Y26_N7
\inst3|s_pont2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[18]~71_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(18));

-- Location: LCCOMB_X56_Y26_N6
\inst3|s_pont2[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[19]~73_combout\ = (\inst3|s_pont2\(19) & (!\inst3|s_pont2[18]~72\)) # (!\inst3|s_pont2\(19) & ((\inst3|s_pont2[18]~72\) # (GND)))
-- \inst3|s_pont2[19]~74\ = CARRY((!\inst3|s_pont2[18]~72\) # (!\inst3|s_pont2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(19),
	datad => VCC,
	cin => \inst3|s_pont2[18]~72\,
	combout => \inst3|s_pont2[19]~73_combout\,
	cout => \inst3|s_pont2[19]~74\);

-- Location: FF_X56_Y26_N7
\inst3|s_pont2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[19]~73_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(19));

-- Location: LCCOMB_X56_Y26_N8
\inst3|s_pont2[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[20]~75_combout\ = (\inst3|s_pont2\(20) & (\inst3|s_pont2[19]~74\ $ (GND))) # (!\inst3|s_pont2\(20) & (!\inst3|s_pont2[19]~74\ & VCC))
-- \inst3|s_pont2[20]~76\ = CARRY((\inst3|s_pont2\(20) & !\inst3|s_pont2[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(20),
	datad => VCC,
	cin => \inst3|s_pont2[19]~74\,
	combout => \inst3|s_pont2[20]~75_combout\,
	cout => \inst3|s_pont2[20]~76\);

-- Location: FF_X56_Y26_N9
\inst3|s_pont2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[20]~75_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(20));

-- Location: LCCOMB_X56_Y26_N10
\inst3|s_pont2[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[21]~77_combout\ = (\inst3|s_pont2\(21) & (!\inst3|s_pont2[20]~76\)) # (!\inst3|s_pont2\(21) & ((\inst3|s_pont2[20]~76\) # (GND)))
-- \inst3|s_pont2[21]~78\ = CARRY((!\inst3|s_pont2[20]~76\) # (!\inst3|s_pont2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(21),
	datad => VCC,
	cin => \inst3|s_pont2[20]~76\,
	combout => \inst3|s_pont2[21]~77_combout\,
	cout => \inst3|s_pont2[21]~78\);

-- Location: FF_X55_Y26_N19
\inst3|s_pont2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[21]~77_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(21));

-- Location: LCCOMB_X56_Y26_N12
\inst3|s_pont2[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[22]~79_combout\ = (\inst3|s_pont2\(22) & (\inst3|s_pont2[21]~78\ $ (GND))) # (!\inst3|s_pont2\(22) & (!\inst3|s_pont2[21]~78\ & VCC))
-- \inst3|s_pont2[22]~80\ = CARRY((\inst3|s_pont2\(22) & !\inst3|s_pont2[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(22),
	datad => VCC,
	cin => \inst3|s_pont2[21]~78\,
	combout => \inst3|s_pont2[22]~79_combout\,
	cout => \inst3|s_pont2[22]~80\);

-- Location: FF_X55_Y26_N3
\inst3|s_pont2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[22]~79_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(22));

-- Location: LCCOMB_X56_Y26_N14
\inst3|s_pont2[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[23]~81_combout\ = (\inst3|s_pont2\(23) & (!\inst3|s_pont2[22]~80\)) # (!\inst3|s_pont2\(23) & ((\inst3|s_pont2[22]~80\) # (GND)))
-- \inst3|s_pont2[23]~82\ = CARRY((!\inst3|s_pont2[22]~80\) # (!\inst3|s_pont2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(23),
	datad => VCC,
	cin => \inst3|s_pont2[22]~80\,
	combout => \inst3|s_pont2[23]~81_combout\,
	cout => \inst3|s_pont2[23]~82\);

-- Location: FF_X56_Y26_N15
\inst3|s_pont2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[23]~81_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(23));

-- Location: LCCOMB_X56_Y26_N16
\inst3|s_pont2[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[24]~83_combout\ = (\inst3|s_pont2\(24) & (\inst3|s_pont2[23]~82\ $ (GND))) # (!\inst3|s_pont2\(24) & (!\inst3|s_pont2[23]~82\ & VCC))
-- \inst3|s_pont2[24]~84\ = CARRY((\inst3|s_pont2\(24) & !\inst3|s_pont2[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(24),
	datad => VCC,
	cin => \inst3|s_pont2[23]~82\,
	combout => \inst3|s_pont2[24]~83_combout\,
	cout => \inst3|s_pont2[24]~84\);

-- Location: FF_X56_Y26_N17
\inst3|s_pont2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[24]~83_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(24));

-- Location: LCCOMB_X56_Y26_N18
\inst3|s_pont2[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[25]~85_combout\ = (\inst3|s_pont2\(25) & (!\inst3|s_pont2[24]~84\)) # (!\inst3|s_pont2\(25) & ((\inst3|s_pont2[24]~84\) # (GND)))
-- \inst3|s_pont2[25]~86\ = CARRY((!\inst3|s_pont2[24]~84\) # (!\inst3|s_pont2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(25),
	datad => VCC,
	cin => \inst3|s_pont2[24]~84\,
	combout => \inst3|s_pont2[25]~85_combout\,
	cout => \inst3|s_pont2[25]~86\);

-- Location: FF_X56_Y26_N19
\inst3|s_pont2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[25]~85_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(25));

-- Location: LCCOMB_X56_Y26_N20
\inst3|s_pont2[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[26]~87_combout\ = (\inst3|s_pont2\(26) & (\inst3|s_pont2[25]~86\ $ (GND))) # (!\inst3|s_pont2\(26) & (!\inst3|s_pont2[25]~86\ & VCC))
-- \inst3|s_pont2[26]~88\ = CARRY((\inst3|s_pont2\(26) & !\inst3|s_pont2[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(26),
	datad => VCC,
	cin => \inst3|s_pont2[25]~86\,
	combout => \inst3|s_pont2[26]~87_combout\,
	cout => \inst3|s_pont2[26]~88\);

-- Location: FF_X56_Y26_N21
\inst3|s_pont2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[26]~87_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(26));

-- Location: LCCOMB_X56_Y26_N22
\inst3|s_pont2[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[27]~89_combout\ = (\inst3|s_pont2\(27) & (!\inst3|s_pont2[26]~88\)) # (!\inst3|s_pont2\(27) & ((\inst3|s_pont2[26]~88\) # (GND)))
-- \inst3|s_pont2[27]~90\ = CARRY((!\inst3|s_pont2[26]~88\) # (!\inst3|s_pont2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(27),
	datad => VCC,
	cin => \inst3|s_pont2[26]~88\,
	combout => \inst3|s_pont2[27]~89_combout\,
	cout => \inst3|s_pont2[27]~90\);

-- Location: FF_X56_Y26_N23
\inst3|s_pont2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[27]~89_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(27));

-- Location: LCCOMB_X56_Y26_N24
\inst3|s_pont2[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[28]~91_combout\ = (\inst3|s_pont2\(28) & (\inst3|s_pont2[27]~90\ $ (GND))) # (!\inst3|s_pont2\(28) & (!\inst3|s_pont2[27]~90\ & VCC))
-- \inst3|s_pont2[28]~92\ = CARRY((\inst3|s_pont2\(28) & !\inst3|s_pont2[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(28),
	datad => VCC,
	cin => \inst3|s_pont2[27]~90\,
	combout => \inst3|s_pont2[28]~91_combout\,
	cout => \inst3|s_pont2[28]~92\);

-- Location: FF_X56_Y26_N25
\inst3|s_pont2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[28]~91_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(28));

-- Location: LCCOMB_X56_Y26_N26
\inst3|s_pont2[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[29]~93_combout\ = (\inst3|s_pont2\(29) & (!\inst3|s_pont2[28]~92\)) # (!\inst3|s_pont2\(29) & ((\inst3|s_pont2[28]~92\) # (GND)))
-- \inst3|s_pont2[29]~94\ = CARRY((!\inst3|s_pont2[28]~92\) # (!\inst3|s_pont2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(29),
	datad => VCC,
	cin => \inst3|s_pont2[28]~92\,
	combout => \inst3|s_pont2[29]~93_combout\,
	cout => \inst3|s_pont2[29]~94\);

-- Location: FF_X56_Y26_N27
\inst3|s_pont2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[29]~93_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(29));

-- Location: LCCOMB_X56_Y26_N28
\inst3|s_pont2[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[30]~95_combout\ = (\inst3|s_pont2\(30) & (\inst3|s_pont2[29]~94\ $ (GND))) # (!\inst3|s_pont2\(30) & (!\inst3|s_pont2[29]~94\ & VCC))
-- \inst3|s_pont2[30]~96\ = CARRY((\inst3|s_pont2\(30) & !\inst3|s_pont2[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(30),
	datad => VCC,
	cin => \inst3|s_pont2[29]~94\,
	combout => \inst3|s_pont2[30]~95_combout\,
	cout => \inst3|s_pont2[30]~96\);

-- Location: FF_X55_Y26_N15
\inst3|s_pont2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[30]~95_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(30));

-- Location: LCCOMB_X56_Y26_N30
\inst3|s_pont2[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[31]~97_combout\ = \inst3|s_pont2\(31) $ (\inst3|s_pont2[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(31),
	cin => \inst3|s_pont2[30]~96\,
	combout => \inst3|s_pont2[31]~97_combout\);

-- Location: FF_X56_Y26_N31
\inst3|s_pont2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[31]~97_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(31));

-- Location: LCCOMB_X57_Y26_N26
\inst3|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~7_combout\ = (!\inst3|s_pont2\(29) & !\inst3|s_pont2\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_pont2\(29),
	datad => \inst3|s_pont2\(30),
	combout => \inst3|Equal1~7_combout\);

-- Location: LCCOMB_X57_Y26_N18
\inst3|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~5_combout\ = (!\inst3|s_pont2\(24) & (!\inst3|s_pont2\(21) & (!\inst3|s_pont2\(22) & !\inst3|s_pont2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(24),
	datab => \inst3|s_pont2\(21),
	datac => \inst3|s_pont2\(22),
	datad => \inst3|s_pont2\(23),
	combout => \inst3|Equal1~5_combout\);

-- Location: LCCOMB_X57_Y26_N4
\inst3|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~6_combout\ = (!\inst3|s_pont2\(26) & (!\inst3|s_pont2\(28) & (!\inst3|s_pont2\(25) & !\inst3|s_pont2\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(26),
	datab => \inst3|s_pont2\(28),
	datac => \inst3|s_pont2\(25),
	datad => \inst3|s_pont2\(27),
	combout => \inst3|Equal1~6_combout\);

-- Location: LCCOMB_X57_Y26_N12
\inst3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~3_combout\ = (!\inst3|s_pont2\(17) & (!\inst3|s_pont2\(19) & (!\inst3|s_pont2\(20) & !\inst3|s_pont2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(17),
	datab => \inst3|s_pont2\(19),
	datac => \inst3|s_pont2\(20),
	datad => \inst3|s_pont2\(18),
	combout => \inst3|Equal1~3_combout\);

-- Location: LCCOMB_X57_Y27_N24
\inst3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (!\inst3|s_pont2\(10) & (!\inst3|s_pont2\(9) & (!\inst3|s_pont2\(12) & !\inst3|s_pont2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(10),
	datab => \inst3|s_pont2\(9),
	datac => \inst3|s_pont2\(12),
	datad => \inst3|s_pont2\(11),
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X57_Y27_N22
\inst3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~2_combout\ = (!\inst3|s_pont2\(15) & (!\inst3|s_pont2\(14) & (!\inst3|s_pont2\(13) & !\inst3|s_pont2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(15),
	datab => \inst3|s_pont2\(14),
	datac => \inst3|s_pont2\(13),
	datad => \inst3|s_pont2\(16),
	combout => \inst3|Equal1~2_combout\);

-- Location: LCCOMB_X57_Y27_N2
\inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (!\inst3|s_pont2\(6) & (!\inst3|s_pont2\(8) & (!\inst3|s_pont2\(7) & !\inst3|s_pont2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(6),
	datab => \inst3|s_pont2\(8),
	datac => \inst3|s_pont2\(7),
	datad => \inst3|s_pont2\(5),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X57_Y27_N28
\inst3|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~4_combout\ = (\inst3|Equal1~3_combout\ & (\inst3|Equal1~1_combout\ & (\inst3|Equal1~2_combout\ & \inst3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~3_combout\,
	datab => \inst3|Equal1~1_combout\,
	datac => \inst3|Equal1~2_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|Equal1~4_combout\);

-- Location: LCCOMB_X57_Y26_N24
\inst3|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~8_combout\ = (\inst3|Equal1~7_combout\ & (\inst3|Equal1~5_combout\ & (\inst3|Equal1~6_combout\ & \inst3|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~7_combout\,
	datab => \inst3|Equal1~5_combout\,
	datac => \inst3|Equal1~6_combout\,
	datad => \inst3|Equal1~4_combout\,
	combout => \inst3|Equal1~8_combout\);

-- Location: LCCOMB_X57_Y26_N16
\inst3|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~10_combout\ = (\inst3|Equal1~9_combout\ & (!\inst3|s_pont2\(31) & (!\inst3|s_pont2\(0) & \inst3|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~9_combout\,
	datab => \inst3|s_pont2\(31),
	datac => \inst3|s_pont2\(0),
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|Equal1~10_combout\);

-- Location: LCCOMB_X54_Y31_N26
\inst|s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~7_combout\ = (!\inst|internalReset~q\ & ((\inst23|zero_to_one_pulse~q\) # (\inst|s_currentState.Inicio~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|zero_to_one_pulse~q\,
	datac => \inst|s_currentState.Inicio~q\,
	datad => \inst|internalReset~q\,
	combout => \inst|s_currentState~7_combout\);

-- Location: FF_X54_Y31_N27
\inst|s_currentState.Inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.Inicio~q\);

-- Location: LCCOMB_X54_Y31_N4
\inst|s_currentState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~6_combout\ = (!\inst|internalReset~q\ & ((\inst|s_currentState~5_combout\) # ((\inst23|zero_to_one_pulse~q\ & !\inst|s_currentState.Inicio~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|zero_to_one_pulse~q\,
	datab => \inst|s_currentState~5_combout\,
	datac => \inst|s_currentState.Inicio~q\,
	datad => \inst|internalReset~q\,
	combout => \inst|s_currentState~6_combout\);

-- Location: FF_X54_Y31_N5
\inst|s_currentState.JogarSet\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.JogarSet~q\);

-- Location: LCCOMB_X55_Y31_N8
\inst|s_currentState~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~5_combout\ = (!\inst202|winner~0_combout\ & \inst|s_currentState.JogarSet~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|winner~0_combout\,
	datac => \inst|s_currentState.JogarSet~q\,
	combout => \inst|s_currentState~5_combout\);

-- Location: LCCOMB_X55_Y31_N22
\inst3|s_pont2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2~32_combout\ = (!\inst22|zero_to_one_pulse~q\ & (!\inst3|Equal1~10_combout\ & (\inst|s_currentState~5_combout\ & !\inst3|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|zero_to_one_pulse~q\,
	datab => \inst3|Equal1~10_combout\,
	datac => \inst|s_currentState~5_combout\,
	datad => \inst3|Equal0~10_combout\,
	combout => \inst3|s_pont2~32_combout\);

-- Location: LCCOMB_X55_Y31_N16
\inst3|s_pont1[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[28]~34_combout\ = (\inst|internalReset~q\) # ((!\inst24|zero_to_one_pulse~q\) # (!\inst3|s_pont2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|internalReset~q\,
	datac => \inst3|s_pont2~32_combout\,
	datad => \inst24|zero_to_one_pulse~q\,
	combout => \inst3|s_pont1[28]~34_combout\);

-- Location: LCCOMB_X55_Y28_N24
\inst3|s_pont1[28]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[28]~35_combout\ = (\inst29~1_combout\) # ((!\inst3|s_pont1[28]~34_combout\ & (\inst3|p1~15_combout\ & \inst3|p1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1[28]~34_combout\,
	datab => \inst29~1_combout\,
	datac => \inst3|p1~15_combout\,
	datad => \inst3|p1~7_combout\,
	combout => \inst3|s_pont1[28]~35_combout\);

-- Location: FF_X54_Y27_N1
\inst3|s_pont1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[0]~32_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(0));

-- Location: LCCOMB_X54_Y27_N2
\inst3|s_pont1[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[1]~36_combout\ = (\inst3|s_pont1\(1) & (!\inst3|s_pont1[0]~33\)) # (!\inst3|s_pont1\(1) & ((\inst3|s_pont1[0]~33\) # (GND)))
-- \inst3|s_pont1[1]~37\ = CARRY((!\inst3|s_pont1[0]~33\) # (!\inst3|s_pont1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(1),
	datad => VCC,
	cin => \inst3|s_pont1[0]~33\,
	combout => \inst3|s_pont1[1]~36_combout\,
	cout => \inst3|s_pont1[1]~37\);

-- Location: FF_X54_Y27_N3
\inst3|s_pont1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[1]~36_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(1));

-- Location: LCCOMB_X54_Y27_N4
\inst3|s_pont1[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[2]~38_combout\ = (\inst3|s_pont1\(2) & (\inst3|s_pont1[1]~37\ $ (GND))) # (!\inst3|s_pont1\(2) & (!\inst3|s_pont1[1]~37\ & VCC))
-- \inst3|s_pont1[2]~39\ = CARRY((\inst3|s_pont1\(2) & !\inst3|s_pont1[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(2),
	datad => VCC,
	cin => \inst3|s_pont1[1]~37\,
	combout => \inst3|s_pont1[2]~38_combout\,
	cout => \inst3|s_pont1[2]~39\);

-- Location: FF_X54_Y27_N5
\inst3|s_pont1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[2]~38_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(2));

-- Location: LCCOMB_X54_Y27_N6
\inst3|s_pont1[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont1[3]~40_combout\ = (\inst3|s_pont1\(3) & (!\inst3|s_pont1[2]~39\)) # (!\inst3|s_pont1\(3) & ((\inst3|s_pont1[2]~39\) # (GND)))
-- \inst3|s_pont1[3]~41\ = CARRY((!\inst3|s_pont1[2]~39\) # (!\inst3|s_pont1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(3),
	datad => VCC,
	cin => \inst3|s_pont1[2]~39\,
	combout => \inst3|s_pont1[3]~40_combout\,
	cout => \inst3|s_pont1[3]~41\);

-- Location: FF_X54_Y27_N7
\inst3|s_pont1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[3]~40_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(3));

-- Location: FF_X54_Y27_N9
\inst3|s_pont1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont1[4]~42_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont1[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont1\(4));

-- Location: LCCOMB_X57_Y27_N30
\inst3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~9_combout\ = (\inst3|s_pont1\(4) & (\inst3|s_pont1\(2) & (\inst3|s_pont1\(3) & \inst3|s_pont1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(4),
	datab => \inst3|s_pont1\(2),
	datac => \inst3|s_pont1\(3),
	datad => \inst3|s_pont1\(1),
	combout => \inst3|Equal0~9_combout\);

-- Location: LCCOMB_X57_Y27_N20
\inst3|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~10_combout\ = (\inst3|Equal0~9_combout\ & (!\inst3|s_pont1\(31) & (!\inst3|s_pont1\(0) & \inst3|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~9_combout\,
	datab => \inst3|s_pont1\(31),
	datac => \inst3|s_pont1\(0),
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|Equal0~10_combout\);

-- Location: LCCOMB_X55_Y28_N4
\inst3|setGanhou1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|setGanhou1~0_combout\ = (!\inst29~1_combout\ & (((\inst3|Equal0~10_combout\ & \inst3|p1~15_combout\)) # (!\inst3|p1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~10_combout\,
	datab => \inst29~1_combout\,
	datac => \inst3|p1~15_combout\,
	datad => \inst3|p1~7_combout\,
	combout => \inst3|setGanhou1~0_combout\);

-- Location: FF_X55_Y28_N5
\inst3|setGanhou1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|setGanhou1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|setGanhou1~q\);

-- Location: LCCOMB_X55_Y31_N12
\inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29~0_combout\ = (\inst3|setGanhou2~q\) # ((\inst3|setGanhou1~q\) # (\inst|internalReset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|setGanhou2~q\,
	datac => \inst3|setGanhou1~q\,
	datad => \inst|internalReset~q\,
	combout => \inst29~0_combout\);

-- Location: LCCOMB_X55_Y31_N10
\inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29~1_combout\ = (\inst29~0_combout\) # ((\inst|s_currentState.JogarSet~q\ & ((\inst202|winner~0_combout\) # (\inst22|zero_to_one_pulse~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~0_combout\,
	datab => \inst|s_currentState.JogarSet~q\,
	datac => \inst202|winner~0_combout\,
	datad => \inst22|zero_to_one_pulse~q\,
	combout => \inst29~1_combout\);

-- Location: FF_X55_Y27_N21
\inst3|s_pont2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_pont2[0]~33_combout\,
	sclr => \inst29~1_combout\,
	sload => VCC,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(0));

-- Location: LCCOMB_X56_Y27_N2
\inst3|s_pont2[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[1]~37_combout\ = (\inst3|s_pont2\(1) & (!\inst3|s_pont2[0]~34\)) # (!\inst3|s_pont2\(1) & ((\inst3|s_pont2[0]~34\) # (GND)))
-- \inst3|s_pont2[1]~38\ = CARRY((!\inst3|s_pont2[0]~34\) # (!\inst3|s_pont2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(1),
	datad => VCC,
	cin => \inst3|s_pont2[0]~34\,
	combout => \inst3|s_pont2[1]~37_combout\,
	cout => \inst3|s_pont2[1]~38\);

-- Location: FF_X56_Y27_N3
\inst3|s_pont2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[1]~37_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(1));

-- Location: LCCOMB_X56_Y27_N4
\inst3|s_pont2[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[2]~39_combout\ = (\inst3|s_pont2\(2) & (\inst3|s_pont2[1]~38\ $ (GND))) # (!\inst3|s_pont2\(2) & (!\inst3|s_pont2[1]~38\ & VCC))
-- \inst3|s_pont2[2]~40\ = CARRY((\inst3|s_pont2\(2) & !\inst3|s_pont2[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(2),
	datad => VCC,
	cin => \inst3|s_pont2[1]~38\,
	combout => \inst3|s_pont2[2]~39_combout\,
	cout => \inst3|s_pont2[2]~40\);

-- Location: FF_X56_Y27_N5
\inst3|s_pont2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[2]~39_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(2));

-- Location: LCCOMB_X56_Y27_N6
\inst3|s_pont2[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pont2[3]~41_combout\ = (\inst3|s_pont2\(3) & (!\inst3|s_pont2[2]~40\)) # (!\inst3|s_pont2\(3) & ((\inst3|s_pont2[2]~40\) # (GND)))
-- \inst3|s_pont2[3]~42\ = CARRY((!\inst3|s_pont2[2]~40\) # (!\inst3|s_pont2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(3),
	datad => VCC,
	cin => \inst3|s_pont2[2]~40\,
	combout => \inst3|s_pont2[3]~41_combout\,
	cout => \inst3|s_pont2[3]~42\);

-- Location: FF_X56_Y27_N7
\inst3|s_pont2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[3]~41_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(3));

-- Location: FF_X56_Y27_N9
\inst3|s_pont2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pont2[4]~43_combout\,
	sclr => \inst29~1_combout\,
	ena => \inst3|s_pont2[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pont2\(4));

-- Location: LCCOMB_X57_Y26_N22
\inst3|p1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~8_combout\ = (\inst3|s_pont2\(3) & ((\inst3|s_pont2\(1)) # ((\inst3|s_pont2\(2)) # (\inst3|s_pont2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(1),
	datab => \inst3|s_pont2\(2),
	datac => \inst3|s_pont2\(0),
	datad => \inst3|s_pont2\(3),
	combout => \inst3|p1~8_combout\);

-- Location: LCCOMB_X57_Y26_N8
\inst3|p1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~9_combout\ = (\inst3|s_pont2\(31)) # ((\inst3|Equal1~8_combout\ & ((!\inst3|p1~8_combout\) # (!\inst3|s_pont2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(4),
	datab => \inst3|s_pont2\(31),
	datac => \inst3|p1~8_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|p1~9_combout\);

-- Location: LCCOMB_X55_Y27_N0
\inst3|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~0_combout\ = (\inst3|s_pont1\(0) & (\inst3|s_pont2\(0) $ (VCC))) # (!\inst3|s_pont1\(0) & ((\inst3|s_pont2\(0)) # (GND)))
-- \inst3|Add2~1\ = CARRY((\inst3|s_pont2\(0)) # (!\inst3|s_pont1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(0),
	datab => \inst3|s_pont2\(0),
	datad => VCC,
	combout => \inst3|Add2~0_combout\,
	cout => \inst3|Add2~1\);

-- Location: LCCOMB_X55_Y27_N2
\inst3|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~2_combout\ = (\inst3|s_pont1\(1) & ((\inst3|s_pont2\(1) & (!\inst3|Add2~1\)) # (!\inst3|s_pont2\(1) & ((\inst3|Add2~1\) # (GND))))) # (!\inst3|s_pont1\(1) & ((\inst3|s_pont2\(1) & (\inst3|Add2~1\ & VCC)) # (!\inst3|s_pont2\(1) & 
-- (!\inst3|Add2~1\))))
-- \inst3|Add2~3\ = CARRY((\inst3|s_pont1\(1) & ((!\inst3|Add2~1\) # (!\inst3|s_pont2\(1)))) # (!\inst3|s_pont1\(1) & (!\inst3|s_pont2\(1) & !\inst3|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(1),
	datab => \inst3|s_pont2\(1),
	datad => VCC,
	cin => \inst3|Add2~1\,
	combout => \inst3|Add2~2_combout\,
	cout => \inst3|Add2~3\);

-- Location: LCCOMB_X55_Y27_N4
\inst3|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~4_combout\ = ((\inst3|s_pont2\(2) $ (\inst3|s_pont1\(2) $ (\inst3|Add2~3\)))) # (GND)
-- \inst3|Add2~5\ = CARRY((\inst3|s_pont2\(2) & ((!\inst3|Add2~3\) # (!\inst3|s_pont1\(2)))) # (!\inst3|s_pont2\(2) & (!\inst3|s_pont1\(2) & !\inst3|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(2),
	datab => \inst3|s_pont1\(2),
	datad => VCC,
	cin => \inst3|Add2~3\,
	combout => \inst3|Add2~4_combout\,
	cout => \inst3|Add2~5\);

-- Location: LCCOMB_X55_Y27_N6
\inst3|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~6_combout\ = (\inst3|s_pont1\(3) & ((\inst3|s_pont2\(3) & (!\inst3|Add2~5\)) # (!\inst3|s_pont2\(3) & ((\inst3|Add2~5\) # (GND))))) # (!\inst3|s_pont1\(3) & ((\inst3|s_pont2\(3) & (\inst3|Add2~5\ & VCC)) # (!\inst3|s_pont2\(3) & 
-- (!\inst3|Add2~5\))))
-- \inst3|Add2~7\ = CARRY((\inst3|s_pont1\(3) & ((!\inst3|Add2~5\) # (!\inst3|s_pont2\(3)))) # (!\inst3|s_pont1\(3) & (!\inst3|s_pont2\(3) & !\inst3|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(3),
	datab => \inst3|s_pont2\(3),
	datad => VCC,
	cin => \inst3|Add2~5\,
	combout => \inst3|Add2~6_combout\,
	cout => \inst3|Add2~7\);

-- Location: LCCOMB_X55_Y27_N8
\inst3|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~8_combout\ = ((\inst3|s_pont1\(4) $ (\inst3|s_pont2\(4) $ (\inst3|Add2~7\)))) # (GND)
-- \inst3|Add2~9\ = CARRY((\inst3|s_pont1\(4) & (\inst3|s_pont2\(4) & !\inst3|Add2~7\)) # (!\inst3|s_pont1\(4) & ((\inst3|s_pont2\(4)) # (!\inst3|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(4),
	datab => \inst3|s_pont2\(4),
	datad => VCC,
	cin => \inst3|Add2~7\,
	combout => \inst3|Add2~8_combout\,
	cout => \inst3|Add2~9\);

-- Location: LCCOMB_X55_Y27_N10
\inst3|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~10_combout\ = (\inst3|s_pont1\(5) & ((\inst3|s_pont2\(5) & (!\inst3|Add2~9\)) # (!\inst3|s_pont2\(5) & ((\inst3|Add2~9\) # (GND))))) # (!\inst3|s_pont1\(5) & ((\inst3|s_pont2\(5) & (\inst3|Add2~9\ & VCC)) # (!\inst3|s_pont2\(5) & 
-- (!\inst3|Add2~9\))))
-- \inst3|Add2~11\ = CARRY((\inst3|s_pont1\(5) & ((!\inst3|Add2~9\) # (!\inst3|s_pont2\(5)))) # (!\inst3|s_pont1\(5) & (!\inst3|s_pont2\(5) & !\inst3|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(5),
	datab => \inst3|s_pont2\(5),
	datad => VCC,
	cin => \inst3|Add2~9\,
	combout => \inst3|Add2~10_combout\,
	cout => \inst3|Add2~11\);

-- Location: LCCOMB_X55_Y27_N12
\inst3|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~12_combout\ = ((\inst3|s_pont1\(6) $ (\inst3|s_pont2\(6) $ (\inst3|Add2~11\)))) # (GND)
-- \inst3|Add2~13\ = CARRY((\inst3|s_pont1\(6) & (\inst3|s_pont2\(6) & !\inst3|Add2~11\)) # (!\inst3|s_pont1\(6) & ((\inst3|s_pont2\(6)) # (!\inst3|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(6),
	datab => \inst3|s_pont2\(6),
	datad => VCC,
	cin => \inst3|Add2~11\,
	combout => \inst3|Add2~12_combout\,
	cout => \inst3|Add2~13\);

-- Location: LCCOMB_X55_Y27_N14
\inst3|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~14_combout\ = (\inst3|s_pont1\(7) & ((\inst3|s_pont2\(7) & (!\inst3|Add2~13\)) # (!\inst3|s_pont2\(7) & ((\inst3|Add2~13\) # (GND))))) # (!\inst3|s_pont1\(7) & ((\inst3|s_pont2\(7) & (\inst3|Add2~13\ & VCC)) # (!\inst3|s_pont2\(7) & 
-- (!\inst3|Add2~13\))))
-- \inst3|Add2~15\ = CARRY((\inst3|s_pont1\(7) & ((!\inst3|Add2~13\) # (!\inst3|s_pont2\(7)))) # (!\inst3|s_pont1\(7) & (!\inst3|s_pont2\(7) & !\inst3|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(7),
	datab => \inst3|s_pont2\(7),
	datad => VCC,
	cin => \inst3|Add2~13\,
	combout => \inst3|Add2~14_combout\,
	cout => \inst3|Add2~15\);

-- Location: LCCOMB_X55_Y27_N16
\inst3|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~16_combout\ = ((\inst3|s_pont1\(8) $ (\inst3|s_pont2\(8) $ (\inst3|Add2~15\)))) # (GND)
-- \inst3|Add2~17\ = CARRY((\inst3|s_pont1\(8) & (\inst3|s_pont2\(8) & !\inst3|Add2~15\)) # (!\inst3|s_pont1\(8) & ((\inst3|s_pont2\(8)) # (!\inst3|Add2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(8),
	datab => \inst3|s_pont2\(8),
	datad => VCC,
	cin => \inst3|Add2~15\,
	combout => \inst3|Add2~16_combout\,
	cout => \inst3|Add2~17\);

-- Location: LCCOMB_X55_Y27_N18
\inst3|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~18_combout\ = (\inst3|s_pont2\(9) & ((\inst3|s_pont1\(9) & (!\inst3|Add2~17\)) # (!\inst3|s_pont1\(9) & (\inst3|Add2~17\ & VCC)))) # (!\inst3|s_pont2\(9) & ((\inst3|s_pont1\(9) & ((\inst3|Add2~17\) # (GND))) # (!\inst3|s_pont1\(9) & 
-- (!\inst3|Add2~17\))))
-- \inst3|Add2~19\ = CARRY((\inst3|s_pont2\(9) & (\inst3|s_pont1\(9) & !\inst3|Add2~17\)) # (!\inst3|s_pont2\(9) & ((\inst3|s_pont1\(9)) # (!\inst3|Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(9),
	datab => \inst3|s_pont1\(9),
	datad => VCC,
	cin => \inst3|Add2~17\,
	combout => \inst3|Add2~18_combout\,
	cout => \inst3|Add2~19\);

-- Location: LCCOMB_X55_Y27_N20
\inst3|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~20_combout\ = ((\inst3|s_pont2\(10) $ (\inst3|s_pont1\(10) $ (\inst3|Add2~19\)))) # (GND)
-- \inst3|Add2~21\ = CARRY((\inst3|s_pont2\(10) & ((!\inst3|Add2~19\) # (!\inst3|s_pont1\(10)))) # (!\inst3|s_pont2\(10) & (!\inst3|s_pont1\(10) & !\inst3|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(10),
	datab => \inst3|s_pont1\(10),
	datad => VCC,
	cin => \inst3|Add2~19\,
	combout => \inst3|Add2~20_combout\,
	cout => \inst3|Add2~21\);

-- Location: LCCOMB_X55_Y27_N22
\inst3|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~22_combout\ = (\inst3|s_pont2\(11) & ((\inst3|s_pont1\(11) & (!\inst3|Add2~21\)) # (!\inst3|s_pont1\(11) & (\inst3|Add2~21\ & VCC)))) # (!\inst3|s_pont2\(11) & ((\inst3|s_pont1\(11) & ((\inst3|Add2~21\) # (GND))) # (!\inst3|s_pont1\(11) & 
-- (!\inst3|Add2~21\))))
-- \inst3|Add2~23\ = CARRY((\inst3|s_pont2\(11) & (\inst3|s_pont1\(11) & !\inst3|Add2~21\)) # (!\inst3|s_pont2\(11) & ((\inst3|s_pont1\(11)) # (!\inst3|Add2~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(11),
	datab => \inst3|s_pont1\(11),
	datad => VCC,
	cin => \inst3|Add2~21\,
	combout => \inst3|Add2~22_combout\,
	cout => \inst3|Add2~23\);

-- Location: LCCOMB_X55_Y27_N24
\inst3|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~24_combout\ = ((\inst3|s_pont2\(12) $ (\inst3|s_pont1\(12) $ (\inst3|Add2~23\)))) # (GND)
-- \inst3|Add2~25\ = CARRY((\inst3|s_pont2\(12) & ((!\inst3|Add2~23\) # (!\inst3|s_pont1\(12)))) # (!\inst3|s_pont2\(12) & (!\inst3|s_pont1\(12) & !\inst3|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(12),
	datab => \inst3|s_pont1\(12),
	datad => VCC,
	cin => \inst3|Add2~23\,
	combout => \inst3|Add2~24_combout\,
	cout => \inst3|Add2~25\);

-- Location: LCCOMB_X55_Y27_N26
\inst3|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~26_combout\ = (\inst3|s_pont1\(13) & ((\inst3|s_pont2\(13) & (!\inst3|Add2~25\)) # (!\inst3|s_pont2\(13) & ((\inst3|Add2~25\) # (GND))))) # (!\inst3|s_pont1\(13) & ((\inst3|s_pont2\(13) & (\inst3|Add2~25\ & VCC)) # (!\inst3|s_pont2\(13) & 
-- (!\inst3|Add2~25\))))
-- \inst3|Add2~27\ = CARRY((\inst3|s_pont1\(13) & ((!\inst3|Add2~25\) # (!\inst3|s_pont2\(13)))) # (!\inst3|s_pont1\(13) & (!\inst3|s_pont2\(13) & !\inst3|Add2~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(13),
	datab => \inst3|s_pont2\(13),
	datad => VCC,
	cin => \inst3|Add2~25\,
	combout => \inst3|Add2~26_combout\,
	cout => \inst3|Add2~27\);

-- Location: LCCOMB_X55_Y27_N28
\inst3|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~28_combout\ = ((\inst3|s_pont2\(14) $ (\inst3|s_pont1\(14) $ (\inst3|Add2~27\)))) # (GND)
-- \inst3|Add2~29\ = CARRY((\inst3|s_pont2\(14) & ((!\inst3|Add2~27\) # (!\inst3|s_pont1\(14)))) # (!\inst3|s_pont2\(14) & (!\inst3|s_pont1\(14) & !\inst3|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(14),
	datab => \inst3|s_pont1\(14),
	datad => VCC,
	cin => \inst3|Add2~27\,
	combout => \inst3|Add2~28_combout\,
	cout => \inst3|Add2~29\);

-- Location: LCCOMB_X55_Y27_N30
\inst3|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~30_combout\ = (\inst3|s_pont2\(15) & ((\inst3|s_pont1\(15) & (!\inst3|Add2~29\)) # (!\inst3|s_pont1\(15) & (\inst3|Add2~29\ & VCC)))) # (!\inst3|s_pont2\(15) & ((\inst3|s_pont1\(15) & ((\inst3|Add2~29\) # (GND))) # (!\inst3|s_pont1\(15) & 
-- (!\inst3|Add2~29\))))
-- \inst3|Add2~31\ = CARRY((\inst3|s_pont2\(15) & (\inst3|s_pont1\(15) & !\inst3|Add2~29\)) # (!\inst3|s_pont2\(15) & ((\inst3|s_pont1\(15)) # (!\inst3|Add2~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(15),
	datab => \inst3|s_pont1\(15),
	datad => VCC,
	cin => \inst3|Add2~29\,
	combout => \inst3|Add2~30_combout\,
	cout => \inst3|Add2~31\);

-- Location: LCCOMB_X55_Y26_N0
\inst3|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~32_combout\ = ((\inst3|s_pont1\(16) $ (\inst3|s_pont2\(16) $ (\inst3|Add2~31\)))) # (GND)
-- \inst3|Add2~33\ = CARRY((\inst3|s_pont1\(16) & (\inst3|s_pont2\(16) & !\inst3|Add2~31\)) # (!\inst3|s_pont1\(16) & ((\inst3|s_pont2\(16)) # (!\inst3|Add2~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(16),
	datab => \inst3|s_pont2\(16),
	datad => VCC,
	cin => \inst3|Add2~31\,
	combout => \inst3|Add2~32_combout\,
	cout => \inst3|Add2~33\);

-- Location: LCCOMB_X55_Y26_N2
\inst3|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~34_combout\ = (\inst3|s_pont2\(17) & ((\inst3|s_pont1\(17) & (!\inst3|Add2~33\)) # (!\inst3|s_pont1\(17) & (\inst3|Add2~33\ & VCC)))) # (!\inst3|s_pont2\(17) & ((\inst3|s_pont1\(17) & ((\inst3|Add2~33\) # (GND))) # (!\inst3|s_pont1\(17) & 
-- (!\inst3|Add2~33\))))
-- \inst3|Add2~35\ = CARRY((\inst3|s_pont2\(17) & (\inst3|s_pont1\(17) & !\inst3|Add2~33\)) # (!\inst3|s_pont2\(17) & ((\inst3|s_pont1\(17)) # (!\inst3|Add2~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(17),
	datab => \inst3|s_pont1\(17),
	datad => VCC,
	cin => \inst3|Add2~33\,
	combout => \inst3|Add2~34_combout\,
	cout => \inst3|Add2~35\);

-- Location: LCCOMB_X55_Y26_N4
\inst3|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~36_combout\ = ((\inst3|s_pont2\(18) $ (\inst3|s_pont1\(18) $ (\inst3|Add2~35\)))) # (GND)
-- \inst3|Add2~37\ = CARRY((\inst3|s_pont2\(18) & ((!\inst3|Add2~35\) # (!\inst3|s_pont1\(18)))) # (!\inst3|s_pont2\(18) & (!\inst3|s_pont1\(18) & !\inst3|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(18),
	datab => \inst3|s_pont1\(18),
	datad => VCC,
	cin => \inst3|Add2~35\,
	combout => \inst3|Add2~36_combout\,
	cout => \inst3|Add2~37\);

-- Location: LCCOMB_X55_Y26_N6
\inst3|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~38_combout\ = (\inst3|s_pont2\(19) & ((\inst3|s_pont1\(19) & (!\inst3|Add2~37\)) # (!\inst3|s_pont1\(19) & (\inst3|Add2~37\ & VCC)))) # (!\inst3|s_pont2\(19) & ((\inst3|s_pont1\(19) & ((\inst3|Add2~37\) # (GND))) # (!\inst3|s_pont1\(19) & 
-- (!\inst3|Add2~37\))))
-- \inst3|Add2~39\ = CARRY((\inst3|s_pont2\(19) & (\inst3|s_pont1\(19) & !\inst3|Add2~37\)) # (!\inst3|s_pont2\(19) & ((\inst3|s_pont1\(19)) # (!\inst3|Add2~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(19),
	datab => \inst3|s_pont1\(19),
	datad => VCC,
	cin => \inst3|Add2~37\,
	combout => \inst3|Add2~38_combout\,
	cout => \inst3|Add2~39\);

-- Location: LCCOMB_X55_Y26_N8
\inst3|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~40_combout\ = ((\inst3|s_pont1\(20) $ (\inst3|s_pont2\(20) $ (\inst3|Add2~39\)))) # (GND)
-- \inst3|Add2~41\ = CARRY((\inst3|s_pont1\(20) & (\inst3|s_pont2\(20) & !\inst3|Add2~39\)) # (!\inst3|s_pont1\(20) & ((\inst3|s_pont2\(20)) # (!\inst3|Add2~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(20),
	datab => \inst3|s_pont2\(20),
	datad => VCC,
	cin => \inst3|Add2~39\,
	combout => \inst3|Add2~40_combout\,
	cout => \inst3|Add2~41\);

-- Location: LCCOMB_X55_Y26_N10
\inst3|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~42_combout\ = (\inst3|s_pont1\(21) & ((\inst3|s_pont2\(21) & (!\inst3|Add2~41\)) # (!\inst3|s_pont2\(21) & ((\inst3|Add2~41\) # (GND))))) # (!\inst3|s_pont1\(21) & ((\inst3|s_pont2\(21) & (\inst3|Add2~41\ & VCC)) # (!\inst3|s_pont2\(21) & 
-- (!\inst3|Add2~41\))))
-- \inst3|Add2~43\ = CARRY((\inst3|s_pont1\(21) & ((!\inst3|Add2~41\) # (!\inst3|s_pont2\(21)))) # (!\inst3|s_pont1\(21) & (!\inst3|s_pont2\(21) & !\inst3|Add2~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(21),
	datab => \inst3|s_pont2\(21),
	datad => VCC,
	cin => \inst3|Add2~41\,
	combout => \inst3|Add2~42_combout\,
	cout => \inst3|Add2~43\);

-- Location: LCCOMB_X55_Y26_N12
\inst3|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~44_combout\ = ((\inst3|s_pont1\(22) $ (\inst3|s_pont2\(22) $ (\inst3|Add2~43\)))) # (GND)
-- \inst3|Add2~45\ = CARRY((\inst3|s_pont1\(22) & (\inst3|s_pont2\(22) & !\inst3|Add2~43\)) # (!\inst3|s_pont1\(22) & ((\inst3|s_pont2\(22)) # (!\inst3|Add2~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(22),
	datab => \inst3|s_pont2\(22),
	datad => VCC,
	cin => \inst3|Add2~43\,
	combout => \inst3|Add2~44_combout\,
	cout => \inst3|Add2~45\);

-- Location: LCCOMB_X55_Y26_N14
\inst3|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~46_combout\ = (\inst3|s_pont1\(23) & ((\inst3|s_pont2\(23) & (!\inst3|Add2~45\)) # (!\inst3|s_pont2\(23) & ((\inst3|Add2~45\) # (GND))))) # (!\inst3|s_pont1\(23) & ((\inst3|s_pont2\(23) & (\inst3|Add2~45\ & VCC)) # (!\inst3|s_pont2\(23) & 
-- (!\inst3|Add2~45\))))
-- \inst3|Add2~47\ = CARRY((\inst3|s_pont1\(23) & ((!\inst3|Add2~45\) # (!\inst3|s_pont2\(23)))) # (!\inst3|s_pont1\(23) & (!\inst3|s_pont2\(23) & !\inst3|Add2~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(23),
	datab => \inst3|s_pont2\(23),
	datad => VCC,
	cin => \inst3|Add2~45\,
	combout => \inst3|Add2~46_combout\,
	cout => \inst3|Add2~47\);

-- Location: LCCOMB_X55_Y26_N16
\inst3|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~48_combout\ = ((\inst3|s_pont1\(24) $ (\inst3|s_pont2\(24) $ (\inst3|Add2~47\)))) # (GND)
-- \inst3|Add2~49\ = CARRY((\inst3|s_pont1\(24) & (\inst3|s_pont2\(24) & !\inst3|Add2~47\)) # (!\inst3|s_pont1\(24) & ((\inst3|s_pont2\(24)) # (!\inst3|Add2~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(24),
	datab => \inst3|s_pont2\(24),
	datad => VCC,
	cin => \inst3|Add2~47\,
	combout => \inst3|Add2~48_combout\,
	cout => \inst3|Add2~49\);

-- Location: LCCOMB_X55_Y26_N18
\inst3|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~50_combout\ = (\inst3|s_pont2\(25) & ((\inst3|s_pont1\(25) & (!\inst3|Add2~49\)) # (!\inst3|s_pont1\(25) & (\inst3|Add2~49\ & VCC)))) # (!\inst3|s_pont2\(25) & ((\inst3|s_pont1\(25) & ((\inst3|Add2~49\) # (GND))) # (!\inst3|s_pont1\(25) & 
-- (!\inst3|Add2~49\))))
-- \inst3|Add2~51\ = CARRY((\inst3|s_pont2\(25) & (\inst3|s_pont1\(25) & !\inst3|Add2~49\)) # (!\inst3|s_pont2\(25) & ((\inst3|s_pont1\(25)) # (!\inst3|Add2~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(25),
	datab => \inst3|s_pont1\(25),
	datad => VCC,
	cin => \inst3|Add2~49\,
	combout => \inst3|Add2~50_combout\,
	cout => \inst3|Add2~51\);

-- Location: LCCOMB_X55_Y26_N20
\inst3|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~52_combout\ = ((\inst3|s_pont2\(26) $ (\inst3|s_pont1\(26) $ (\inst3|Add2~51\)))) # (GND)
-- \inst3|Add2~53\ = CARRY((\inst3|s_pont2\(26) & ((!\inst3|Add2~51\) # (!\inst3|s_pont1\(26)))) # (!\inst3|s_pont2\(26) & (!\inst3|s_pont1\(26) & !\inst3|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(26),
	datab => \inst3|s_pont1\(26),
	datad => VCC,
	cin => \inst3|Add2~51\,
	combout => \inst3|Add2~52_combout\,
	cout => \inst3|Add2~53\);

-- Location: LCCOMB_X55_Y26_N22
\inst3|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~54_combout\ = (\inst3|s_pont2\(27) & ((\inst3|s_pont1\(27) & (!\inst3|Add2~53\)) # (!\inst3|s_pont1\(27) & (\inst3|Add2~53\ & VCC)))) # (!\inst3|s_pont2\(27) & ((\inst3|s_pont1\(27) & ((\inst3|Add2~53\) # (GND))) # (!\inst3|s_pont1\(27) & 
-- (!\inst3|Add2~53\))))
-- \inst3|Add2~55\ = CARRY((\inst3|s_pont2\(27) & (\inst3|s_pont1\(27) & !\inst3|Add2~53\)) # (!\inst3|s_pont2\(27) & ((\inst3|s_pont1\(27)) # (!\inst3|Add2~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(27),
	datab => \inst3|s_pont1\(27),
	datad => VCC,
	cin => \inst3|Add2~53\,
	combout => \inst3|Add2~54_combout\,
	cout => \inst3|Add2~55\);

-- Location: LCCOMB_X55_Y26_N24
\inst3|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~56_combout\ = ((\inst3|s_pont2\(28) $ (\inst3|s_pont1\(28) $ (\inst3|Add2~55\)))) # (GND)
-- \inst3|Add2~57\ = CARRY((\inst3|s_pont2\(28) & ((!\inst3|Add2~55\) # (!\inst3|s_pont1\(28)))) # (!\inst3|s_pont2\(28) & (!\inst3|s_pont1\(28) & !\inst3|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(28),
	datab => \inst3|s_pont1\(28),
	datad => VCC,
	cin => \inst3|Add2~55\,
	combout => \inst3|Add2~56_combout\,
	cout => \inst3|Add2~57\);

-- Location: LCCOMB_X55_Y26_N26
\inst3|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~58_combout\ = (\inst3|s_pont1\(29) & ((\inst3|s_pont2\(29) & (!\inst3|Add2~57\)) # (!\inst3|s_pont2\(29) & ((\inst3|Add2~57\) # (GND))))) # (!\inst3|s_pont1\(29) & ((\inst3|s_pont2\(29) & (\inst3|Add2~57\ & VCC)) # (!\inst3|s_pont2\(29) & 
-- (!\inst3|Add2~57\))))
-- \inst3|Add2~59\ = CARRY((\inst3|s_pont1\(29) & ((!\inst3|Add2~57\) # (!\inst3|s_pont2\(29)))) # (!\inst3|s_pont1\(29) & (!\inst3|s_pont2\(29) & !\inst3|Add2~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(29),
	datab => \inst3|s_pont2\(29),
	datad => VCC,
	cin => \inst3|Add2~57\,
	combout => \inst3|Add2~58_combout\,
	cout => \inst3|Add2~59\);

-- Location: LCCOMB_X55_Y26_N28
\inst3|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~60_combout\ = ((\inst3|s_pont1\(30) $ (\inst3|s_pont2\(30) $ (\inst3|Add2~59\)))) # (GND)
-- \inst3|Add2~61\ = CARRY((\inst3|s_pont1\(30) & (\inst3|s_pont2\(30) & !\inst3|Add2~59\)) # (!\inst3|s_pont1\(30) & ((\inst3|s_pont2\(30)) # (!\inst3|Add2~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(30),
	datab => \inst3|s_pont2\(30),
	datad => VCC,
	cin => \inst3|Add2~59\,
	combout => \inst3|Add2~60_combout\,
	cout => \inst3|Add2~61\);

-- Location: LCCOMB_X55_Y26_N30
\inst3|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~62_combout\ = \inst3|s_pont1\(31) $ (\inst3|Add2~61\ $ (!\inst3|s_pont2\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(31),
	datad => \inst3|s_pont2\(31),
	cin => \inst3|Add2~61\,
	combout => \inst3|Add2~62_combout\);

-- Location: LCCOMB_X55_Y29_N4
\inst3|p1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~10_combout\ = \inst3|Add2~0_combout\ $ (\inst3|Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~0_combout\,
	datad => \inst3|Add2~62_combout\,
	combout => \inst3|p1~10_combout\);

-- Location: LCCOMB_X56_Y29_N0
\inst3|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~1_cout\ = CARRY((\inst3|Add2~62_combout\ & \inst3|p1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|p1~10_combout\,
	datad => VCC,
	cout => \inst3|Add3~1_cout\);

-- Location: LCCOMB_X56_Y29_N2
\inst3|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~2_combout\ = (\inst3|Add3~1_cout\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~2_combout\)))) # (!\inst3|Add3~1_cout\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~2_combout\)) # (GND)))
-- \inst3|Add3~3\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~2_combout\)) # (!\inst3|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~2_combout\,
	datad => VCC,
	cin => \inst3|Add3~1_cout\,
	combout => \inst3|Add3~2_combout\,
	cout => \inst3|Add3~3\);

-- Location: LCCOMB_X56_Y29_N4
\inst3|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~4_combout\ = (\inst3|Add3~3\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~4_combout\)))) # (!\inst3|Add3~3\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~4_combout\ $ (VCC))))
-- \inst3|Add3~5\ = CARRY((!\inst3|Add3~3\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~4_combout\,
	datad => VCC,
	cin => \inst3|Add3~3\,
	combout => \inst3|Add3~4_combout\,
	cout => \inst3|Add3~5\);

-- Location: LCCOMB_X56_Y29_N6
\inst3|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~6_combout\ = (\inst3|Add3~5\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~6_combout\)))) # (!\inst3|Add3~5\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~6_combout\)) # (GND)))
-- \inst3|Add3~7\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~6_combout\)) # (!\inst3|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~6_combout\,
	datad => VCC,
	cin => \inst3|Add3~5\,
	combout => \inst3|Add3~6_combout\,
	cout => \inst3|Add3~7\);

-- Location: LCCOMB_X56_Y29_N8
\inst3|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~8_combout\ = (\inst3|Add3~7\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~8_combout\)))) # (!\inst3|Add3~7\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~8_combout\ $ (VCC))))
-- \inst3|Add3~9\ = CARRY((!\inst3|Add3~7\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~8_combout\,
	datad => VCC,
	cin => \inst3|Add3~7\,
	combout => \inst3|Add3~8_combout\,
	cout => \inst3|Add3~9\);

-- Location: LCCOMB_X56_Y29_N10
\inst3|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~10_combout\ = (\inst3|Add3~9\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~10_combout\)))) # (!\inst3|Add3~9\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~10_combout\)) # (GND)))
-- \inst3|Add3~11\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~10_combout\)) # (!\inst3|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~10_combout\,
	datad => VCC,
	cin => \inst3|Add3~9\,
	combout => \inst3|Add3~10_combout\,
	cout => \inst3|Add3~11\);

-- Location: LCCOMB_X56_Y29_N12
\inst3|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~12_combout\ = (\inst3|Add3~11\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~12_combout\)))) # (!\inst3|Add3~11\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~12_combout\ $ (VCC))))
-- \inst3|Add3~13\ = CARRY((!\inst3|Add3~11\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~12_combout\,
	datad => VCC,
	cin => \inst3|Add3~11\,
	combout => \inst3|Add3~12_combout\,
	cout => \inst3|Add3~13\);

-- Location: LCCOMB_X56_Y29_N14
\inst3|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~14_combout\ = (\inst3|Add3~13\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~14_combout\)))) # (!\inst3|Add3~13\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~14_combout\)) # (GND)))
-- \inst3|Add3~15\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~14_combout\)) # (!\inst3|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~14_combout\,
	datad => VCC,
	cin => \inst3|Add3~13\,
	combout => \inst3|Add3~14_combout\,
	cout => \inst3|Add3~15\);

-- Location: LCCOMB_X56_Y29_N16
\inst3|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~16_combout\ = (\inst3|Add3~15\ & ((\inst3|Add2~16_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~15\ & (\inst3|Add2~16_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~17\ = CARRY((!\inst3|Add3~15\ & (\inst3|Add2~16_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~16_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~15\,
	combout => \inst3|Add3~16_combout\,
	cout => \inst3|Add3~17\);

-- Location: LCCOMB_X56_Y29_N18
\inst3|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~18_combout\ = (\inst3|Add3~17\ & (\inst3|Add2~18_combout\ $ ((!\inst3|Add2~62_combout\)))) # (!\inst3|Add3~17\ & ((\inst3|Add2~18_combout\ $ (\inst3|Add2~62_combout\)) # (GND)))
-- \inst3|Add3~19\ = CARRY((\inst3|Add2~18_combout\ $ (!\inst3|Add2~62_combout\)) # (!\inst3|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~18_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~17\,
	combout => \inst3|Add3~18_combout\,
	cout => \inst3|Add3~19\);

-- Location: LCCOMB_X56_Y29_N20
\inst3|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~20_combout\ = (\inst3|Add3~19\ & ((\inst3|Add2~20_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~19\ & (\inst3|Add2~20_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~21\ = CARRY((!\inst3|Add3~19\ & (\inst3|Add2~20_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~20_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~19\,
	combout => \inst3|Add3~20_combout\,
	cout => \inst3|Add3~21\);

-- Location: LCCOMB_X56_Y29_N22
\inst3|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~22_combout\ = (\inst3|Add3~21\ & (\inst3|Add2~22_combout\ $ ((!\inst3|Add2~62_combout\)))) # (!\inst3|Add3~21\ & ((\inst3|Add2~22_combout\ $ (\inst3|Add2~62_combout\)) # (GND)))
-- \inst3|Add3~23\ = CARRY((\inst3|Add2~22_combout\ $ (!\inst3|Add2~62_combout\)) # (!\inst3|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~22_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~21\,
	combout => \inst3|Add3~22_combout\,
	cout => \inst3|Add3~23\);

-- Location: LCCOMB_X56_Y29_N24
\inst3|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~24_combout\ = (\inst3|Add3~23\ & ((\inst3|Add2~24_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~23\ & (\inst3|Add2~24_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~25\ = CARRY((!\inst3|Add3~23\ & (\inst3|Add2~24_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~24_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~23\,
	combout => \inst3|Add3~24_combout\,
	cout => \inst3|Add3~25\);

-- Location: LCCOMB_X56_Y29_N26
\inst3|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~26_combout\ = (\inst3|Add3~25\ & (\inst3|Add2~26_combout\ $ ((!\inst3|Add2~62_combout\)))) # (!\inst3|Add3~25\ & ((\inst3|Add2~26_combout\ $ (\inst3|Add2~62_combout\)) # (GND)))
-- \inst3|Add3~27\ = CARRY((\inst3|Add2~26_combout\ $ (!\inst3|Add2~62_combout\)) # (!\inst3|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~26_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~25\,
	combout => \inst3|Add3~26_combout\,
	cout => \inst3|Add3~27\);

-- Location: LCCOMB_X56_Y29_N28
\inst3|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~28_combout\ = (\inst3|Add3~27\ & ((\inst3|Add2~28_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~27\ & (\inst3|Add2~28_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~29\ = CARRY((!\inst3|Add3~27\ & (\inst3|Add2~28_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~28_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~27\,
	combout => \inst3|Add3~28_combout\,
	cout => \inst3|Add3~29\);

-- Location: LCCOMB_X56_Y29_N30
\inst3|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~30_combout\ = (\inst3|Add3~29\ & (\inst3|Add2~30_combout\ $ ((!\inst3|Add2~62_combout\)))) # (!\inst3|Add3~29\ & ((\inst3|Add2~30_combout\ $ (\inst3|Add2~62_combout\)) # (GND)))
-- \inst3|Add3~31\ = CARRY((\inst3|Add2~30_combout\ $ (!\inst3|Add2~62_combout\)) # (!\inst3|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~30_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~29\,
	combout => \inst3|Add3~30_combout\,
	cout => \inst3|Add3~31\);

-- Location: LCCOMB_X56_Y28_N0
\inst3|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~32_combout\ = (\inst3|Add3~31\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~32_combout\)))) # (!\inst3|Add3~31\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~32_combout\ $ (VCC))))
-- \inst3|Add3~33\ = CARRY((!\inst3|Add3~31\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~32_combout\,
	datad => VCC,
	cin => \inst3|Add3~31\,
	combout => \inst3|Add3~32_combout\,
	cout => \inst3|Add3~33\);

-- Location: LCCOMB_X56_Y28_N2
\inst3|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~34_combout\ = (\inst3|Add3~33\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~34_combout\)))) # (!\inst3|Add3~33\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~34_combout\)) # (GND)))
-- \inst3|Add3~35\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~34_combout\)) # (!\inst3|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~34_combout\,
	datad => VCC,
	cin => \inst3|Add3~33\,
	combout => \inst3|Add3~34_combout\,
	cout => \inst3|Add3~35\);

-- Location: LCCOMB_X56_Y28_N4
\inst3|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~36_combout\ = (\inst3|Add3~35\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~36_combout\)))) # (!\inst3|Add3~35\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~36_combout\ $ (VCC))))
-- \inst3|Add3~37\ = CARRY((!\inst3|Add3~35\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~36_combout\,
	datad => VCC,
	cin => \inst3|Add3~35\,
	combout => \inst3|Add3~36_combout\,
	cout => \inst3|Add3~37\);

-- Location: LCCOMB_X56_Y28_N6
\inst3|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~38_combout\ = (\inst3|Add3~37\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~38_combout\)))) # (!\inst3|Add3~37\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~38_combout\)) # (GND)))
-- \inst3|Add3~39\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~38_combout\)) # (!\inst3|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~38_combout\,
	datad => VCC,
	cin => \inst3|Add3~37\,
	combout => \inst3|Add3~38_combout\,
	cout => \inst3|Add3~39\);

-- Location: LCCOMB_X56_Y28_N8
\inst3|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~40_combout\ = (\inst3|Add3~39\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~40_combout\)))) # (!\inst3|Add3~39\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~40_combout\ $ (VCC))))
-- \inst3|Add3~41\ = CARRY((!\inst3|Add3~39\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~40_combout\,
	datad => VCC,
	cin => \inst3|Add3~39\,
	combout => \inst3|Add3~40_combout\,
	cout => \inst3|Add3~41\);

-- Location: LCCOMB_X56_Y28_N10
\inst3|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~42_combout\ = (\inst3|Add3~41\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~42_combout\)))) # (!\inst3|Add3~41\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~42_combout\)) # (GND)))
-- \inst3|Add3~43\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~42_combout\)) # (!\inst3|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~42_combout\,
	datad => VCC,
	cin => \inst3|Add3~41\,
	combout => \inst3|Add3~42_combout\,
	cout => \inst3|Add3~43\);

-- Location: LCCOMB_X56_Y28_N12
\inst3|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~44_combout\ = (\inst3|Add3~43\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~44_combout\)))) # (!\inst3|Add3~43\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~44_combout\ $ (VCC))))
-- \inst3|Add3~45\ = CARRY((!\inst3|Add3~43\ & (\inst3|Add2~62_combout\ $ (\inst3|Add2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~44_combout\,
	datad => VCC,
	cin => \inst3|Add3~43\,
	combout => \inst3|Add3~44_combout\,
	cout => \inst3|Add3~45\);

-- Location: LCCOMB_X56_Y28_N14
\inst3|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~46_combout\ = (\inst3|Add3~45\ & (\inst3|Add2~62_combout\ $ ((!\inst3|Add2~46_combout\)))) # (!\inst3|Add3~45\ & ((\inst3|Add2~62_combout\ $ (\inst3|Add2~46_combout\)) # (GND)))
-- \inst3|Add3~47\ = CARRY((\inst3|Add2~62_combout\ $ (!\inst3|Add2~46_combout\)) # (!\inst3|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~62_combout\,
	datab => \inst3|Add2~46_combout\,
	datad => VCC,
	cin => \inst3|Add3~45\,
	combout => \inst3|Add3~46_combout\,
	cout => \inst3|Add3~47\);

-- Location: LCCOMB_X56_Y28_N16
\inst3|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~48_combout\ = (\inst3|Add3~47\ & ((\inst3|Add2~48_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~47\ & (\inst3|Add2~48_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~49\ = CARRY((!\inst3|Add3~47\ & (\inst3|Add2~48_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~48_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~47\,
	combout => \inst3|Add3~48_combout\,
	cout => \inst3|Add3~49\);

-- Location: LCCOMB_X56_Y28_N18
\inst3|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~50_combout\ = (\inst3|Add3~49\ & (\inst3|Add2~50_combout\ $ ((!\inst3|Add2~62_combout\)))) # (!\inst3|Add3~49\ & ((\inst3|Add2~50_combout\ $ (\inst3|Add2~62_combout\)) # (GND)))
-- \inst3|Add3~51\ = CARRY((\inst3|Add2~50_combout\ $ (!\inst3|Add2~62_combout\)) # (!\inst3|Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~50_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~49\,
	combout => \inst3|Add3~50_combout\,
	cout => \inst3|Add3~51\);

-- Location: LCCOMB_X56_Y28_N20
\inst3|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~52_combout\ = (\inst3|Add3~51\ & ((\inst3|Add2~52_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~51\ & (\inst3|Add2~52_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~53\ = CARRY((!\inst3|Add3~51\ & (\inst3|Add2~52_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~52_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~51\,
	combout => \inst3|Add3~52_combout\,
	cout => \inst3|Add3~53\);

-- Location: LCCOMB_X56_Y28_N22
\inst3|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~54_combout\ = (\inst3|Add3~53\ & (\inst3|Add2~54_combout\ $ ((!\inst3|Add2~62_combout\)))) # (!\inst3|Add3~53\ & ((\inst3|Add2~54_combout\ $ (\inst3|Add2~62_combout\)) # (GND)))
-- \inst3|Add3~55\ = CARRY((\inst3|Add2~54_combout\ $ (!\inst3|Add2~62_combout\)) # (!\inst3|Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~54_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~53\,
	combout => \inst3|Add3~54_combout\,
	cout => \inst3|Add3~55\);

-- Location: LCCOMB_X56_Y28_N24
\inst3|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~56_combout\ = (\inst3|Add3~55\ & ((\inst3|Add2~56_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~55\ & (\inst3|Add2~56_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~57\ = CARRY((!\inst3|Add3~55\ & (\inst3|Add2~56_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~56_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~55\,
	combout => \inst3|Add3~56_combout\,
	cout => \inst3|Add3~57\);

-- Location: LCCOMB_X56_Y28_N26
\inst3|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~58_combout\ = (\inst3|Add3~57\ & (\inst3|Add2~58_combout\ $ ((!\inst3|Add2~62_combout\)))) # (!\inst3|Add3~57\ & ((\inst3|Add2~58_combout\ $ (\inst3|Add2~62_combout\)) # (GND)))
-- \inst3|Add3~59\ = CARRY((\inst3|Add2~58_combout\ $ (!\inst3|Add2~62_combout\)) # (!\inst3|Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~58_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~57\,
	combout => \inst3|Add3~58_combout\,
	cout => \inst3|Add3~59\);

-- Location: LCCOMB_X56_Y28_N28
\inst3|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~60_combout\ = (\inst3|Add3~59\ & ((\inst3|Add2~60_combout\ $ (\inst3|Add2~62_combout\)))) # (!\inst3|Add3~59\ & (\inst3|Add2~60_combout\ $ (\inst3|Add2~62_combout\ $ (VCC))))
-- \inst3|Add3~61\ = CARRY((!\inst3|Add3~59\ & (\inst3|Add2~60_combout\ $ (\inst3|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~60_combout\,
	datab => \inst3|Add2~62_combout\,
	datad => VCC,
	cin => \inst3|Add3~59\,
	combout => \inst3|Add3~60_combout\,
	cout => \inst3|Add3~61\);

-- Location: LCCOMB_X55_Y28_N20
\inst3|p1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~14_combout\ = (!\inst3|Add3~60_combout\ & !\inst3|Add3~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add3~60_combout\,
	datad => \inst3|Add3~58_combout\,
	combout => \inst3|p1~14_combout\);

-- Location: LCCOMB_X56_Y28_N30
\inst3|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add3~62_combout\ = \inst3|Add3~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add3~61\,
	combout => \inst3|Add3~62_combout\);

-- Location: LCCOMB_X57_Y28_N8
\inst3|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~0_combout\ = (!\inst3|Add3~40_combout\ & (!\inst3|Add3~38_combout\ & (!\inst3|Add3~36_combout\ & !\inst3|Add3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~40_combout\,
	datab => \inst3|Add3~38_combout\,
	datac => \inst3|Add3~36_combout\,
	datad => \inst3|Add3~34_combout\,
	combout => \inst3|LessThan3~0_combout\);

-- Location: LCCOMB_X57_Y28_N22
\inst3|p1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~11_combout\ = (!\inst3|Add3~42_combout\ & (!\inst3|Add3~46_combout\ & (\inst3|LessThan3~0_combout\ & !\inst3|Add3~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~42_combout\,
	datab => \inst3|Add3~46_combout\,
	datac => \inst3|LessThan3~0_combout\,
	datad => \inst3|Add3~44_combout\,
	combout => \inst3|p1~11_combout\);

-- Location: LCCOMB_X55_Y29_N30
\inst3|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~1_combout\ = (!\inst3|Add3~6_combout\ & (!\inst3|Add3~2_combout\ & (!\inst3|Add3~8_combout\ & !\inst3|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~6_combout\,
	datab => \inst3|Add3~2_combout\,
	datac => \inst3|Add3~8_combout\,
	datad => \inst3|Add3~4_combout\,
	combout => \inst3|LessThan3~1_combout\);

-- Location: LCCOMB_X55_Y29_N8
\inst3|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~2_combout\ = (!\inst3|Add3~10_combout\ & (!\inst3|Add3~14_combout\ & (!\inst3|Add3~12_combout\ & !\inst3|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~10_combout\,
	datab => \inst3|Add3~14_combout\,
	datac => \inst3|Add3~12_combout\,
	datad => \inst3|Add3~16_combout\,
	combout => \inst3|LessThan3~2_combout\);

-- Location: LCCOMB_X55_Y28_N10
\inst3|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~3_combout\ = (!\inst3|Add3~20_combout\ & (!\inst3|Add3~18_combout\ & (\inst3|LessThan3~1_combout\ & \inst3|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~20_combout\,
	datab => \inst3|Add3~18_combout\,
	datac => \inst3|LessThan3~1_combout\,
	datad => \inst3|LessThan3~2_combout\,
	combout => \inst3|LessThan3~3_combout\);

-- Location: LCCOMB_X55_Y28_N0
\inst3|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~4_combout\ = (!\inst3|Add3~24_combout\ & (!\inst3|Add3~22_combout\ & (!\inst3|Add3~26_combout\ & \inst3|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~24_combout\,
	datab => \inst3|Add3~22_combout\,
	datac => \inst3|Add3~26_combout\,
	datad => \inst3|LessThan3~3_combout\,
	combout => \inst3|LessThan3~4_combout\);

-- Location: LCCOMB_X55_Y28_N18
\inst3|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~5_combout\ = (!\inst3|Add3~28_combout\ & (!\inst3|Add3~32_combout\ & (!\inst3|Add3~30_combout\ & \inst3|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~28_combout\,
	datab => \inst3|Add3~32_combout\,
	datac => \inst3|Add3~30_combout\,
	datad => \inst3|LessThan3~4_combout\,
	combout => \inst3|LessThan3~5_combout\);

-- Location: LCCOMB_X55_Y28_N16
\inst3|p1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~12_combout\ = (\inst3|Add3~50_combout\) # ((\inst3|Add3~54_combout\) # ((\inst3|Add3~56_combout\) # (!\inst3|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~50_combout\,
	datab => \inst3|Add3~54_combout\,
	datac => \inst3|Add3~56_combout\,
	datad => \inst3|LessThan3~5_combout\,
	combout => \inst3|p1~12_combout\);

-- Location: LCCOMB_X55_Y28_N6
\inst3|p1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~13_combout\ = (!\inst3|Add3~52_combout\ & (!\inst3|Add3~48_combout\ & (\inst3|p1~11_combout\ & !\inst3|p1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add3~52_combout\,
	datab => \inst3|Add3~48_combout\,
	datac => \inst3|p1~11_combout\,
	datad => \inst3|p1~12_combout\,
	combout => \inst3|p1~13_combout\);

-- Location: LCCOMB_X55_Y28_N26
\inst3|p1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~15_combout\ = (\inst3|p1~9_combout\) # ((\inst3|p1~14_combout\ & (!\inst3|Add3~62_combout\ & \inst3|p1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|p1~9_combout\,
	datab => \inst3|p1~14_combout\,
	datac => \inst3|Add3~62_combout\,
	datad => \inst3|p1~13_combout\,
	combout => \inst3|p1~15_combout\);

-- Location: LCCOMB_X55_Y28_N8
\inst3|setGanhou2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|setGanhou2~0_combout\ = (\inst3|Equal1~10_combout\ & !\inst3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal1~10_combout\,
	datad => \inst3|Equal0~10_combout\,
	combout => \inst3|setGanhou2~0_combout\);

-- Location: LCCOMB_X55_Y28_N22
\inst3|setGanhou2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|setGanhou2~1_combout\ = (!\inst29~1_combout\ & (\inst3|p1~7_combout\ & ((\inst3|setGanhou2~0_combout\) # (!\inst3|p1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|p1~15_combout\,
	datab => \inst29~1_combout\,
	datac => \inst3|setGanhou2~0_combout\,
	datad => \inst3|p1~7_combout\,
	combout => \inst3|setGanhou2~1_combout\);

-- Location: FF_X55_Y28_N23
\inst3|setGanhou2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|setGanhou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|setGanhou2~q\);

-- Location: LCCOMB_X55_Y31_N18
\inst4|s_set2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_set2[0]~2_combout\ = (\inst4|s_set2\(0) & (\inst3|setGanhou2~q\ $ (VCC))) # (!\inst4|s_set2\(0) & (\inst3|setGanhou2~q\ & VCC))
-- \inst4|s_set2[0]~3\ = CARRY((\inst4|s_set2\(0) & \inst3|setGanhou2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_set2\(0),
	datab => \inst3|setGanhou2~q\,
	datad => VCC,
	combout => \inst4|s_set2[0]~2_combout\,
	cout => \inst4|s_set2[0]~3\);

-- Location: LCCOMB_X55_Y31_N4
\inst|resetJogoOutput~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|resetJogoOutput~0_combout\ = (\inst|internalReset~q\) # ((\inst202|winner~0_combout\ & \inst|s_currentState.JogarSet~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|winner~0_combout\,
	datac => \inst|s_currentState.JogarSet~q\,
	datad => \inst|internalReset~q\,
	combout => \inst|resetJogoOutput~0_combout\);

-- Location: LCCOMB_X55_Y31_N0
\inst4|s_set2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_set2[2]~4_combout\ = ((\inst|internalReset~q\) # ((\inst202|winner~0_combout\ & \inst|s_currentState.JogarSet~q\))) # (!\inst3|setGanhou1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|winner~0_combout\,
	datab => \inst|s_currentState.JogarSet~q\,
	datac => \inst3|setGanhou1~q\,
	datad => \inst|internalReset~q\,
	combout => \inst4|s_set2[2]~4_combout\);

-- Location: FF_X55_Y31_N19
\inst4|s_set2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_set2[0]~2_combout\,
	sclr => \inst|resetJogoOutput~0_combout\,
	ena => \inst4|s_set2[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_set2\(0));

-- Location: LCCOMB_X55_Y31_N20
\inst4|s_set2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_set2[1]~5_combout\ = \inst4|s_set2[0]~3\ $ (\inst4|s_set2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|s_set2\(1),
	cin => \inst4|s_set2[0]~3\,
	combout => \inst4|s_set2[1]~5_combout\);

-- Location: FF_X55_Y31_N21
\inst4|s_set2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_set2[1]~5_combout\,
	sclr => \inst|resetJogoOutput~0_combout\,
	ena => \inst4|s_set2[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_set2\(1));

-- Location: LCCOMB_X55_Y31_N28
\inst4|s_set1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_set1[0]~2_combout\ = (\inst3|setGanhou1~q\ & (\inst4|s_set1\(0) $ (VCC))) # (!\inst3|setGanhou1~q\ & (\inst4|s_set1\(0) & VCC))
-- \inst4|s_set1[0]~3\ = CARRY((\inst3|setGanhou1~q\ & \inst4|s_set1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|setGanhou1~q\,
	datab => \inst4|s_set1\(0),
	datad => VCC,
	combout => \inst4|s_set1[0]~2_combout\,
	cout => \inst4|s_set1[0]~3\);

-- Location: FF_X55_Y31_N29
\inst4|s_set1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_set1[0]~2_combout\,
	sclr => \inst|resetJogoOutput~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_set1\(0));

-- Location: LCCOMB_X55_Y31_N30
\inst4|s_set1[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_set1[1]~4_combout\ = \inst4|s_set1\(1) $ (\inst4|s_set1[0]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_set1\(1),
	cin => \inst4|s_set1[0]~3\,
	combout => \inst4|s_set1[1]~4_combout\);

-- Location: FF_X55_Y31_N31
\inst4|s_set1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_set1[1]~4_combout\,
	sclr => \inst|resetJogoOutput~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_set1\(1));

-- Location: LCCOMB_X55_Y31_N26
\inst202|winner~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|winner~0_combout\ = (\inst4|s_set2\(1) & ((\inst4|s_set2\(0)) # ((\inst4|s_set1\(1) & \inst4|s_set1\(0))))) # (!\inst4|s_set2\(1) & (((\inst4|s_set1\(1) & \inst4|s_set1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_set2\(1),
	datab => \inst4|s_set2\(0),
	datac => \inst4|s_set1\(1),
	datad => \inst4|s_set1\(0),
	combout => \inst202|winner~0_combout\);

-- Location: LCCOMB_X54_Y31_N2
\inst2|line1[104]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[104]~0_combout\ = (!\inst202|winner~0_combout\ & ((\inst|s_currentState.Inicio~q\) # ((\inst23|zero_to_one_pulse~q\ & !\inst|internalReset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|zero_to_one_pulse~q\,
	datab => \inst202|winner~0_combout\,
	datac => \inst|s_currentState.Inicio~q\,
	datad => \inst|internalReset~q\,
	combout => \inst2|line1[104]~0_combout\);

-- Location: LCCOMB_X55_Y31_N2
\inst4|everySet~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|everySet~0_combout\ = (!\inst|resetJogoOutput~0_combout\ & ((\inst3|setGanhou1~q\) # ((\inst4|everySet~q\) # (\inst3|setGanhou2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|setGanhou1~q\,
	datab => \inst|resetJogoOutput~0_combout\,
	datac => \inst4|everySet~q\,
	datad => \inst3|setGanhou2~q\,
	combout => \inst4|everySet~0_combout\);

-- Location: FF_X55_Y31_N3
\inst4|everySet\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|everySet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|everySet~q\);

-- Location: LCCOMB_X54_Y31_N16
\inst2|line1[104]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[104]~1_combout\ = (\inst4|everySet~q\) # (!\inst2|line1[104]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|line1[104]~0_combout\,
	datad => \inst4|everySet~q\,
	combout => \inst2|line1[104]~1_combout\);

-- Location: FF_X50_Y34_N19
\inst2|line1[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line1[72]~feeder_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line1\(72));

-- Location: LCCOMB_X54_Y31_N8
\inst2|line0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line0~0_combout\ = (\inst202|winner~0_combout\) # ((\inst|s_currentState.Inicio~q\) # ((\inst23|zero_to_one_pulse~q\ & !\inst|internalReset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|zero_to_one_pulse~q\,
	datab => \inst202|winner~0_combout\,
	datac => \inst|s_currentState.Inicio~q\,
	datad => \inst|internalReset~q\,
	combout => \inst2|line0~0_combout\);

-- Location: LCCOMB_X50_Y34_N8
\inst2|line1[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[64]~feeder_combout\ = \inst2|line0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|line0~0_combout\,
	combout => \inst2|line1[64]~feeder_combout\);

-- Location: FF_X50_Y34_N9
\inst2|line1[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line1[64]~feeder_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line1\(64));

-- Location: LCCOMB_X50_Y34_N0
\inst2|line1[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[9]~2_combout\ = !\inst2|line0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|line0~0_combout\,
	combout => \inst2|line1[9]~2_combout\);

-- Location: FF_X50_Y34_N1
\inst2|line1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line1[9]~2_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line1\(9));

-- Location: LCCOMB_X48_Y35_N12
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|index\(0) & ((\inst2|index\(1) & (\inst2|line1\(64))) # (!\inst2|index\(1) & ((\inst2|line1\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|line1\(64),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y35_N2
\inst2|Mux8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~18_combout\ = (!\inst2|index\(0) & \inst2|line1\(72))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|index\(0),
	datad => \inst2|line1\(72),
	combout => \inst2|Mux8~18_combout\);

-- Location: LCCOMB_X48_Y35_N22
\inst2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = (\inst2|index\(3) & (((\inst2|line1\(9))))) # (!\inst2|index\(3) & ((\inst2|Mux2~0_combout\) # ((\inst2|Mux8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|line1\(9),
	datac => \inst2|index\(3),
	datad => \inst2|Mux8~18_combout\,
	combout => \inst2|Mux2~1_combout\);

-- Location: LCCOMB_X48_Y36_N24
\inst2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\inst2|index\(4) & (\inst2|line1\(72) & (!\inst2|index\(5)))) # (!\inst2|index\(4) & (((\inst2|index\(5) & \inst2|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(72),
	datab => \inst2|index\(4),
	datac => \inst2|index\(5),
	datad => \inst2|Mux2~1_combout\,
	combout => \inst2|Mux2~2_combout\);

-- Location: LCCOMB_X47_Y35_N6
\inst2|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~8_combout\ = (\inst2|index\(0) & (\inst2|line1\(72))) # (!\inst2|index\(0) & ((\inst2|line1\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|line1\(72),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~8_combout\);

-- Location: LCCOMB_X48_Y35_N20
\inst2|Mux8~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~43_combout\ = (\inst2|index\(0) & ((\inst2|index\(3) & (\inst2|line1\(9))) # (!\inst2|index\(3) & ((\inst2|line1\(72))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|line1\(9),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(72),
	combout => \inst2|Mux8~43_combout\);

-- Location: LCCOMB_X48_Y35_N26
\inst2|Mux8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~44_combout\ = (\inst2|index\(1) & (((\inst2|Mux8~43_combout\)))) # (!\inst2|index\(1) & (\inst2|index\(3) & (\inst2|Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|Mux8~8_combout\,
	datac => \inst2|index\(1),
	datad => \inst2|Mux8~43_combout\,
	combout => \inst2|Mux8~44_combout\);

-- Location: LCCOMB_X48_Y36_N2
\inst2|Mux8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~48_combout\ = (!\inst2|index\(3) & (\inst2|line1\(9) & ((!\inst2|index\(1)) # (!\inst2|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(1),
	datac => \inst2|index\(3),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~48_combout\);

-- Location: LCCOMB_X48_Y36_N10
\inst2|Mux8~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~47_combout\ = (\inst2|index\(1)) # (\inst2|index\(0) $ (\inst2|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(1),
	datac => \inst2|index\(3),
	combout => \inst2|Mux8~47_combout\);

-- Location: LCCOMB_X54_Y31_N0
\inst2|line1[56]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[56]~3_combout\ = !\inst2|line1[104]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|line1[104]~0_combout\,
	combout => \inst2|line1[56]~3_combout\);

-- Location: FF_X54_Y31_N1
\inst2|line1[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line1[56]~3_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line1\(56));

-- Location: LCCOMB_X49_Y35_N8
\inst2|Mux8~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~45_combout\ = (\inst2|index\(0) & (\inst2|index\(3) $ (\inst2|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|index\(0),
	datac => \inst2|index\(3),
	datad => \inst2|index\(1),
	combout => \inst2|Mux8~45_combout\);

-- Location: LCCOMB_X49_Y35_N14
\inst2|Mux8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~46_combout\ = (\inst2|index\(1) & (((\inst2|Mux8~45_combout\)))) # (!\inst2|index\(1) & ((\inst2|Mux8~45_combout\ & (\inst2|line1\(56))) # (!\inst2|Mux8~45_combout\ & ((\inst2|line1\(64))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(56),
	datab => \inst2|index\(1),
	datac => \inst2|Mux8~45_combout\,
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~46_combout\);

-- Location: LCCOMB_X48_Y36_N20
\inst2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~3_combout\ = (\inst2|index\(4) & (((\inst2|index\(5))))) # (!\inst2|index\(4) & ((\inst2|index\(5) & ((\inst2|Mux8~46_combout\))) # (!\inst2|index\(5) & (!\inst2|Mux8~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~47_combout\,
	datab => \inst2|index\(4),
	datac => \inst2|index\(5),
	datad => \inst2|Mux8~46_combout\,
	combout => \inst2|Mux2~3_combout\);

-- Location: LCCOMB_X48_Y36_N28
\inst2|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~4_combout\ = (\inst2|index\(4) & ((\inst2|Mux2~3_combout\ & ((\inst2|Mux8~48_combout\))) # (!\inst2|Mux2~3_combout\ & (\inst2|Mux8~44_combout\)))) # (!\inst2|index\(4) & (((\inst2|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~44_combout\,
	datab => \inst2|Mux8~48_combout\,
	datac => \inst2|index\(4),
	datad => \inst2|Mux2~3_combout\,
	combout => \inst2|Mux2~4_combout\);

-- Location: LCCOMB_X48_Y36_N6
\inst2|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~5_combout\ = (\inst2|index\(2) & (\inst2|Mux2~2_combout\)) # (!\inst2|index\(2) & ((\inst2|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux2~2_combout\,
	datac => \inst2|index\(2),
	datad => \inst2|Mux2~4_combout\,
	combout => \inst2|Mux2~5_combout\);

-- Location: FF_X48_Y36_N7
\inst2|txd_rs_and_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(6));

-- Location: LCCOMB_X46_Y36_N24
\inst2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\inst2|index\(2)) # ((\inst2|index\(3)) # ((\inst2|index\(1) & \inst2|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|index\(0),
	datac => \inst2|index\(2),
	datad => \inst2|index\(3),
	combout => \inst2|Mux3~2_combout\);

-- Location: LCCOMB_X46_Y36_N18
\inst2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = (\inst2|index\(5) & ((\inst2|Mux1~2_combout\ & ((\inst2|index\(4)) # (!\inst2|Mux3~0_combout\))) # (!\inst2|Mux1~2_combout\ & ((!\inst2|index\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~0_combout\,
	datab => \inst2|Mux1~2_combout\,
	datac => \inst2|index\(5),
	datad => \inst2|index\(4),
	combout => \inst2|Mux3~1_combout\);

-- Location: LCCOMB_X46_Y36_N26
\inst2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~3_combout\ = (\inst2|Mux3~1_combout\) # ((\inst2|index\(4) & (\inst2|Mux3~2_combout\ & !\inst2|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(4),
	datab => \inst2|Mux3~2_combout\,
	datac => \inst2|index\(5),
	datad => \inst2|Mux3~1_combout\,
	combout => \inst2|Mux3~3_combout\);

-- Location: FF_X46_Y36_N27
\inst2|txd_rs_and_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(5));

-- Location: LCCOMB_X47_Y36_N12
\inst2|Mux8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~42_combout\ = (!\inst2|index\(0) & (\inst2|index\(1) & (\inst2|line1\(9) & \inst2|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(1),
	datac => \inst2|line1\(9),
	datad => \inst2|Mux1~2_combout\,
	combout => \inst2|Mux8~42_combout\);

-- Location: LCCOMB_X47_Y36_N30
\inst2|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~14_combout\ = (\inst2|index\(2) & ((\inst2|index\(0) & ((\inst2|index\(3)) # (!\inst2|index\(1)))) # (!\inst2|index\(0) & ((\inst2|index\(1)) # (!\inst2|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(3),
	datac => \inst2|index\(1),
	datad => \inst2|index\(2),
	combout => \inst2|Mux8~14_combout\);

-- Location: LCCOMB_X47_Y36_N18
\inst2|Mux8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~40_combout\ = (\inst2|index\(0) & (!\inst2|index\(3) & (\inst2|line1\(9)))) # (!\inst2|index\(0) & (\inst2|index\(3) & ((\inst2|line1\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(3),
	datac => \inst2|line1\(9),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~40_combout\);

-- Location: LCCOMB_X48_Y36_N0
\inst2|Mux8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~38_combout\ = (\inst2|index\(2) & (\inst2|line1\(9) & (\inst2|index\(3) $ (!\inst2|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(2),
	datab => \inst2|index\(3),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~38_combout\);

-- Location: LCCOMB_X49_Y36_N24
\inst2|Mux8~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~29_combout\ = (\inst2|index\(0) & \inst2|line1\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|index\(0),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~29_combout\);

-- Location: LCCOMB_X48_Y36_N22
\inst2|Mux8~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~39_combout\ = (\inst2|Mux8~38_combout\) # ((!\inst2|index\(2) & (\inst2|index\(3) & \inst2|Mux8~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(2),
	datab => \inst2|Mux8~38_combout\,
	datac => \inst2|index\(3),
	datad => \inst2|Mux8~29_combout\,
	combout => \inst2|Mux8~39_combout\);

-- Location: LCCOMB_X47_Y36_N20
\inst2|Mux8~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~41_combout\ = (\inst2|index\(1) & (!\inst2|index\(2) & (\inst2|Mux8~40_combout\))) # (!\inst2|index\(1) & (((\inst2|Mux8~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(2),
	datab => \inst2|Mux8~40_combout\,
	datac => \inst2|index\(1),
	datad => \inst2|Mux8~39_combout\,
	combout => \inst2|Mux8~41_combout\);

-- Location: LCCOMB_X47_Y36_N14
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst2|index\(4) & (((\inst2|index\(5)) # (\inst2|Mux8~41_combout\)))) # (!\inst2|index\(4) & (\inst2|Mux8~14_combout\ & (!\inst2|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~14_combout\,
	datab => \inst2|index\(4),
	datac => \inst2|index\(5),
	datad => \inst2|Mux8~41_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y31_N10
\inst2|line1[104]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[104]~4_combout\ = !\inst202|winner~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst202|winner~0_combout\,
	combout => \inst2|line1[104]~4_combout\);

-- Location: FF_X54_Y31_N11
\inst2|line1[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line1[104]~4_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line1\(104));

-- Location: LCCOMB_X48_Y35_N30
\inst2|Mux8~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~37_combout\ = (\inst2|index\(2) & ((\inst2|index\(0) & ((\inst2|line1\(9)))) # (!\inst2|index\(0) & (\inst2|line1\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(2),
	datab => \inst2|index\(0),
	datac => \inst2|line1\(104),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~37_combout\);

-- Location: LCCOMB_X54_Y31_N22
\inst2|line1[92]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[92]~feeder_combout\ = \inst2|line1[104]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|line1[104]~0_combout\,
	combout => \inst2|line1[92]~feeder_combout\);

-- Location: FF_X54_Y31_N23
\inst2|line1[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line1[92]~feeder_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line1\(92));

-- Location: LCCOMB_X49_Y35_N10
\inst2|Mux8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~36_combout\ = (\inst2|index\(3) & ((\inst2|index\(0) & ((\inst2|line1\(9)))) # (!\inst2|index\(0) & (\inst2|line1\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(92),
	datab => \inst2|index\(0),
	datac => \inst2|index\(3),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~36_combout\);

-- Location: LCCOMB_X49_Y35_N28
\inst2|Mux8~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~49_combout\ = (!\inst2|index\(2) & ((\inst2|Mux8~36_combout\) # ((!\inst2|index\(3) & \inst2|Mux8~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|Mux8~29_combout\,
	datac => \inst2|index\(2),
	datad => \inst2|Mux8~36_combout\,
	combout => \inst2|Mux8~49_combout\);

-- Location: LCCOMB_X48_Y35_N2
\inst2|Mux8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~50_combout\ = (\inst2|index\(1) & (!\inst2|index\(3) & (\inst2|Mux8~37_combout\))) # (!\inst2|index\(1) & (((\inst2|Mux8~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|index\(3),
	datac => \inst2|Mux8~37_combout\,
	datad => \inst2|Mux8~49_combout\,
	combout => \inst2|Mux8~50_combout\);

-- Location: LCCOMB_X47_Y36_N2
\inst2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~1_combout\ = (\inst2|Mux4~0_combout\ & ((\inst2|Mux8~42_combout\) # ((!\inst2|index\(5))))) # (!\inst2|Mux4~0_combout\ & (((\inst2|index\(5) & \inst2|Mux8~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~42_combout\,
	datab => \inst2|Mux4~0_combout\,
	datac => \inst2|index\(5),
	datad => \inst2|Mux8~50_combout\,
	combout => \inst2|Mux4~1_combout\);

-- Location: FF_X47_Y36_N3
\inst2|txd_rs_and_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(4));

-- Location: LCCOMB_X8_Y44_N24
\inst2|ca|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|process_0~1_combout\ = (!\inst2|txd_rs_and_data\(7) & (!\inst2|txd_rs_and_data\(6) & (!\inst2|txd_rs_and_data\(5) & !\inst2|txd_rs_and_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txd_rs_and_data\(7),
	datab => \inst2|txd_rs_and_data\(6),
	datac => \inst2|txd_rs_and_data\(5),
	datad => \inst2|txd_rs_and_data\(4),
	combout => \inst2|ca|process_0~1_combout\);

-- Location: LCCOMB_X48_Y36_N4
\inst2|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~9_combout\ = (\inst2|index\(3) & (\inst2|index\(2))) # (!\inst2|index\(3) & (((\inst2|index\(1) & \inst2|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(2),
	datab => \inst2|index\(1),
	datac => \inst2|index\(0),
	datad => \inst2|index\(3),
	combout => \inst2|Mux6~9_combout\);

-- Location: LCCOMB_X54_Y31_N20
\inst2|line1[81]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line1[81]~feeder_combout\ = \inst202|winner~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst202|winner~0_combout\,
	combout => \inst2|line1[81]~feeder_combout\);

-- Location: FF_X54_Y31_N21
\inst2|line1[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line1[81]~feeder_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line1\(81));

-- Location: LCCOMB_X49_Y36_N22
\inst2|Mux8~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~23_combout\ = (\inst2|index\(1) & (\inst2|line1\(9) & (!\inst2|index\(0)))) # (!\inst2|index\(1) & (((\inst2|line1\(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(9),
	datab => \inst2|index\(1),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(81),
	combout => \inst2|Mux8~23_combout\);

-- Location: LCCOMB_X49_Y36_N28
\inst2|Mux8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~24_combout\ = (!\inst2|index\(1) & (!\inst2|index\(0) & \inst2|line1\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|index\(1),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~24_combout\);

-- Location: LCCOMB_X49_Y36_N6
\inst2|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~7_combout\ = (\inst2|index\(2) & (((\inst2|index\(3))))) # (!\inst2|index\(2) & ((\inst2|index\(3) & (\inst2|Mux8~23_combout\)) # (!\inst2|index\(3) & ((\inst2|Mux8~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~23_combout\,
	datab => \inst2|index\(2),
	datac => \inst2|index\(3),
	datad => \inst2|Mux8~24_combout\,
	combout => \inst2|Mux6~7_combout\);

-- Location: LCCOMB_X49_Y36_N8
\inst2|Mux8~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~25_combout\ = (\inst2|line1\(9) & !\inst2|index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(9),
	datac => \inst2|index\(1),
	combout => \inst2|Mux8~25_combout\);

-- Location: LCCOMB_X49_Y36_N14
\inst2|Mux8~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~21_combout\ = (\inst2|index\(0) & \inst2|line1\(81))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|index\(0),
	datac => \inst2|line1\(81),
	combout => \inst2|Mux8~21_combout\);

-- Location: LCCOMB_X49_Y36_N20
\inst2|Mux8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~20_combout\ = (!\inst2|index\(0) & \inst2|line1\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|index\(0),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~20_combout\);

-- Location: LCCOMB_X49_Y36_N0
\inst2|Mux8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~22_combout\ = (\inst2|index\(1) & (((\inst2|Mux8~21_combout\) # (\inst2|Mux8~20_combout\)))) # (!\inst2|index\(1) & (\inst2|Mux8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~18_combout\,
	datab => \inst2|index\(1),
	datac => \inst2|Mux8~21_combout\,
	datad => \inst2|Mux8~20_combout\,
	combout => \inst2|Mux8~22_combout\);

-- Location: LCCOMB_X49_Y36_N26
\inst2|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~8_combout\ = (\inst2|Mux6~7_combout\ & (((\inst2|Mux8~25_combout\)) # (!\inst2|index\(2)))) # (!\inst2|Mux6~7_combout\ & (\inst2|index\(2) & ((\inst2|Mux8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~7_combout\,
	datab => \inst2|index\(2),
	datac => \inst2|Mux8~25_combout\,
	datad => \inst2|Mux8~22_combout\,
	combout => \inst2|Mux6~8_combout\);

-- Location: LCCOMB_X48_Y36_N30
\inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst2|index\(5) & ((\inst2|index\(4)) # ((\inst2|Mux6~8_combout\)))) # (!\inst2|index\(5) & (!\inst2|index\(4) & (\inst2|Mux6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(5),
	datab => \inst2|index\(4),
	datac => \inst2|Mux6~9_combout\,
	datad => \inst2|Mux6~8_combout\,
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X47_Y35_N24
\inst2|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~7_combout\ = (\inst2|index\(0) & ((\inst2|line1\(64)))) # (!\inst2|index\(0) & (\inst2|line1\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|line1\(72),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~7_combout\);

-- Location: LCCOMB_X48_Y35_N4
\inst2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~2_combout\ = (!\inst2|index\(1) & ((\inst2|index\(3) & ((\inst2|Mux8~18_combout\))) # (!\inst2|index\(3) & (\inst2|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|Mux8~7_combout\,
	datac => \inst2|index\(1),
	datad => \inst2|Mux8~18_combout\,
	combout => \inst2|Mux6~2_combout\);

-- Location: LCCOMB_X47_Y35_N12
\inst2|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~11_combout\ = (\inst2|index\(0) & ((\inst2|line1\(9)))) # (!\inst2|index\(0) & (\inst2|line1\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(64),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~11_combout\);

-- Location: LCCOMB_X47_Y35_N26
\inst2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~3_combout\ = (\inst2|Mux6~2_combout\) # ((\inst2|Mux8~11_combout\ & (\inst2|index\(3) & \inst2|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~2_combout\,
	datab => \inst2|Mux8~11_combout\,
	datac => \inst2|index\(3),
	datad => \inst2|index\(1),
	combout => \inst2|Mux6~3_combout\);

-- Location: LCCOMB_X47_Y35_N8
\inst2|Mux8~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~19_combout\ = (!\inst2|index\(3) & ((\inst2|index\(0) & (\inst2|line1\(64) & \inst2|index\(1))) # (!\inst2|index\(0) & ((!\inst2|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(64),
	datab => \inst2|index\(0),
	datac => \inst2|index\(3),
	datad => \inst2|index\(1),
	combout => \inst2|Mux8~19_combout\);

-- Location: LCCOMB_X54_Y31_N28
\inst202|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Equal0~0_combout\ = (\inst4|s_set1\(1) & \inst4|s_set1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_set1\(1),
	datad => \inst4|s_set1\(0),
	combout => \inst202|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y31_N14
\inst202|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Equal1~0_combout\ = (\inst4|s_set2\(1) & \inst4|s_set2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_set2\(1),
	datad => \inst4|s_set2\(0),
	combout => \inst202|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y31_N6
\inst202|numberX[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|numberX\(1) = (!\inst202|Equal0~0_combout\ & ((\inst202|Equal1~0_combout\) # (\inst202|numberX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst202|Equal0~0_combout\,
	datac => \inst202|Equal1~0_combout\,
	datad => \inst202|numberX\(1),
	combout => \inst202|numberX\(1));

-- Location: LCCOMB_X54_Y31_N12
\inst2|line0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line0~2_combout\ = (\inst2|line0~0_combout\ & \inst202|numberX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|line0~0_combout\,
	datad => \inst202|numberX\(1),
	combout => \inst2|line0~2_combout\);

-- Location: FF_X54_Y31_N13
\inst2|line0[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line0~2_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line0\(65));

-- Location: LCCOMB_X47_Y35_N14
\inst2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~4_combout\ = (\inst2|index\(1) & ((\inst2|index\(0) & ((\inst2|line1\(9)))) # (!\inst2|index\(0) & (\inst2|line0\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line0\(65),
	datab => \inst2|index\(1),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux6~4_combout\);

-- Location: LCCOMB_X47_Y35_N16
\inst2|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~5_combout\ = (\inst2|index\(3) & ((\inst2|Mux6~4_combout\) # ((\inst2|Mux8~8_combout\ & !\inst2|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~8_combout\,
	datab => \inst2|Mux6~4_combout\,
	datac => \inst2|index\(3),
	datad => \inst2|index\(1),
	combout => \inst2|Mux6~5_combout\);

-- Location: LCCOMB_X47_Y35_N22
\inst2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~6_combout\ = (\inst2|index\(2) & (\inst2|Mux6~3_combout\)) # (!\inst2|index\(2) & (((\inst2|Mux8~19_combout\) # (\inst2|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~3_combout\,
	datab => \inst2|Mux8~19_combout\,
	datac => \inst2|index\(2),
	datad => \inst2|Mux6~5_combout\,
	combout => \inst2|Mux6~6_combout\);

-- Location: LCCOMB_X47_Y36_N0
\inst2|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~10_combout\ = (!\inst2|index\(0) & (!\inst2|index\(3) & (\inst2|line1\(9) & !\inst2|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(3),
	datac => \inst2|line1\(9),
	datad => \inst2|index\(2),
	combout => \inst2|Mux6~10_combout\);

-- Location: LCCOMB_X47_Y36_N22
\inst2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = (\inst2|Mux7~0_combout\ & (((\inst2|Mux6~10_combout\) # (!\inst2|index\(4))))) # (!\inst2|Mux7~0_combout\ & (\inst2|Mux6~6_combout\ & (\inst2|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~0_combout\,
	datab => \inst2|Mux6~6_combout\,
	datac => \inst2|index\(4),
	datad => \inst2|Mux6~10_combout\,
	combout => \inst2|Mux7~1_combout\);

-- Location: FF_X47_Y36_N23
\inst2|txd_rs_and_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(1));

-- Location: LCCOMB_X47_Y35_N30
\inst2|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~19_combout\ = (!\inst2|index\(0) & (\inst2|line1\(9) & (\inst2|index\(1) $ (\inst2|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|index\(0),
	datac => \inst2|index\(3),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux6~19_combout\);

-- Location: LCCOMB_X47_Y35_N20
\inst2|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~18_combout\ = (\inst2|Mux8~19_combout\) # ((\inst2|index\(3) & (\inst2|Mux8~11_combout\ & !\inst2|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|Mux8~19_combout\,
	datac => \inst2|Mux8~11_combout\,
	datad => \inst2|index\(1),
	combout => \inst2|Mux6~18_combout\);

-- Location: LCCOMB_X47_Y35_N28
\inst2|Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~20_combout\ = (\inst2|index\(3) & (\inst2|Mux8~8_combout\ & ((\inst2|index\(1))))) # (!\inst2|index\(3) & (((\inst2|Mux8~11_combout\ & !\inst2|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~8_combout\,
	datab => \inst2|Mux8~11_combout\,
	datac => \inst2|index\(3),
	datad => \inst2|index\(1),
	combout => \inst2|Mux6~20_combout\);

-- Location: LCCOMB_X47_Y35_N2
\inst2|Mux6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~21_combout\ = (\inst2|index\(2) & ((\inst2|Mux6~19_combout\) # ((\inst2|Mux6~20_combout\)))) # (!\inst2|index\(2) & (((\inst2|Mux6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~19_combout\,
	datab => \inst2|Mux6~18_combout\,
	datac => \inst2|index\(2),
	datad => \inst2|Mux6~20_combout\,
	combout => \inst2|Mux6~21_combout\);

-- Location: LCCOMB_X49_Y36_N2
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (!\inst2|index\(1) & (((\inst2|line1\(81) & !\inst2|index\(2))) # (!\inst2|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(5),
	datab => \inst2|index\(1),
	datac => \inst2|line1\(81),
	datad => \inst2|index\(2),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y36_N12
\inst2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = (\inst2|index\(3) & (\inst2|index\(0) & \inst2|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datac => \inst2|index\(0),
	datad => \inst2|Mux5~0_combout\,
	combout => \inst2|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y35_N12
\inst2|Mux8~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~33_combout\ = (\inst2|index\(0) & ((\inst2|line1\(81)))) # (!\inst2|index\(0) & (\inst2|line1\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(56),
	datab => \inst2|index\(0),
	datac => \inst2|line1\(81),
	combout => \inst2|Mux8~33_combout\);

-- Location: LCCOMB_X49_Y35_N6
\inst2|Mux8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~34_combout\ = (\inst2|index\(1) & ((\inst2|Mux8~33_combout\) # ((\inst2|index\(3))))) # (!\inst2|index\(1) & (((!\inst2|index\(3) & \inst2|Mux8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~33_combout\,
	datab => \inst2|index\(1),
	datac => \inst2|index\(3),
	datad => \inst2|Mux8~18_combout\,
	combout => \inst2|Mux8~34_combout\);

-- Location: LCCOMB_X49_Y35_N4
\inst2|Mux8~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~35_combout\ = (\inst2|index\(3) & (\inst2|line1\(9) & (\inst2|Mux8~34_combout\ $ (\inst2|index\(0))))) # (!\inst2|index\(3) & (\inst2|Mux8~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~34_combout\,
	datab => \inst2|index\(0),
	datac => \inst2|index\(3),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~35_combout\);

-- Location: LCCOMB_X49_Y35_N18
\inst2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~2_combout\ = (\inst2|index\(1) & (((\inst2|index\(3) & \inst2|line1\(9))))) # (!\inst2|index\(1) & (\inst2|line1\(64) & (!\inst2|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(64),
	datab => \inst2|index\(1),
	datac => \inst2|index\(3),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux5~2_combout\);

-- Location: LCCOMB_X49_Y35_N0
\inst2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~3_combout\ = (\inst2|index\(2) & (((\inst2|Mux8~35_combout\)))) # (!\inst2|index\(2) & (!\inst2|index\(0) & ((\inst2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(2),
	datac => \inst2|Mux8~35_combout\,
	datad => \inst2|Mux5~2_combout\,
	combout => \inst2|Mux5~3_combout\);

-- Location: LCCOMB_X48_Y36_N26
\inst2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~4_combout\ = (\inst2|Mux5~1_combout\) # ((\inst2|index\(5) & ((\inst2|Mux5~3_combout\))) # (!\inst2|index\(5) & (\inst2|Mux6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~1_combout\,
	datab => \inst2|Mux6~9_combout\,
	datac => \inst2|index\(5),
	datad => \inst2|Mux5~3_combout\,
	combout => \inst2|Mux5~4_combout\);

-- Location: LCCOMB_X47_Y36_N16
\inst2|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~5_combout\ = (\inst2|index\(4) & (\inst2|Mux6~21_combout\ & (!\inst2|index\(5)))) # (!\inst2|index\(4) & (((\inst2|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~21_combout\,
	datab => \inst2|index\(4),
	datac => \inst2|index\(5),
	datad => \inst2|Mux5~4_combout\,
	combout => \inst2|Mux5~5_combout\);

-- Location: FF_X47_Y36_N17
\inst2|txd_rs_and_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(3));

-- Location: LCCOMB_X47_Y36_N26
\inst2|Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~16_combout\ = (\inst2|line1\(9) & (!\inst2|index\(3) & (!\inst2|index\(1) & !\inst2|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(9),
	datab => \inst2|index\(3),
	datac => \inst2|index\(1),
	datad => \inst2|index\(2),
	combout => \inst2|Mux8~16_combout\);

-- Location: LCCOMB_X48_Y35_N24
\inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_combout\ = (\inst2|index\(0) & ((\inst2|line1\(9)))) # (!\inst2|index\(0) & (\inst2|line1\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(72),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~0_combout\);

-- Location: LCCOMB_X47_Y35_N4
\inst2|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~9_combout\ = (\inst2|index\(1) & (((\inst2|index\(3)) # (\inst2|Mux8~0_combout\)))) # (!\inst2|index\(1) & (\inst2|Mux8~8_combout\ & (!\inst2|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~8_combout\,
	datab => \inst2|index\(1),
	datac => \inst2|index\(3),
	datad => \inst2|Mux8~0_combout\,
	combout => \inst2|Mux8~9_combout\);

-- Location: LCCOMB_X47_Y35_N18
\inst2|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~10_combout\ = (\inst2|index\(3) & ((\inst2|Mux8~9_combout\ & ((\inst2|line1\(9)))) # (!\inst2|Mux8~9_combout\ & (\inst2|Mux8~7_combout\)))) # (!\inst2|index\(3) & (((\inst2|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|Mux8~7_combout\,
	datac => \inst2|Mux8~9_combout\,
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~10_combout\);

-- Location: LCCOMB_X54_Y31_N30
\inst202|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|comb~0_combout\ = (\inst4|s_set2\(0) & (\inst4|s_set2\(1) & ((!\inst4|s_set1\(0)) # (!\inst4|s_set1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_set1\(1),
	datab => \inst4|s_set2\(0),
	datac => \inst4|s_set2\(1),
	datad => \inst4|s_set1\(0),
	combout => \inst202|comb~0_combout\);

-- Location: LCCOMB_X54_Y31_N24
\inst202|numberX[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|numberX\(0) = (!\inst202|comb~0_combout\ & ((\inst202|Equal0~0_combout\) # (\inst202|numberX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst202|Equal0~0_combout\,
	datac => \inst202|comb~0_combout\,
	datad => \inst202|numberX\(0),
	combout => \inst202|numberX\(0));

-- Location: LCCOMB_X54_Y31_N18
\inst2|line0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|line0~1_combout\ = (\inst2|line0~0_combout\ & \inst202|numberX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|line0~0_combout\,
	datad => \inst202|numberX\(0),
	combout => \inst2|line0~1_combout\);

-- Location: FF_X54_Y31_N19
\inst2|line0[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|line0~1_combout\,
	ena => \inst2|line1[104]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|line0\(64));

-- Location: LCCOMB_X47_Y35_N10
\inst2|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~12_combout\ = (\inst2|index\(1) & (\inst2|line0\(64) & (!\inst2|index\(0)))) # (!\inst2|index\(1) & (((\inst2|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line0\(64),
	datab => \inst2|index\(0),
	datac => \inst2|Mux8~11_combout\,
	datad => \inst2|index\(1),
	combout => \inst2|Mux8~12_combout\);

-- Location: LCCOMB_X47_Y35_N0
\inst2|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~13_combout\ = (\inst2|index\(2) & (((\inst2|Mux8~10_combout\)))) # (!\inst2|index\(2) & (\inst2|index\(3) & ((\inst2|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|Mux8~10_combout\,
	datac => \inst2|index\(2),
	datad => \inst2|Mux8~12_combout\,
	combout => \inst2|Mux8~13_combout\);

-- Location: LCCOMB_X47_Y36_N8
\inst2|Mux8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~15_combout\ = (\inst2|index\(4) & (((\inst2|index\(5)) # (\inst2|Mux8~13_combout\)))) # (!\inst2|index\(4) & (\inst2|Mux8~14_combout\ & (!\inst2|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~14_combout\,
	datab => \inst2|index\(4),
	datac => \inst2|index\(5),
	datad => \inst2|Mux8~13_combout\,
	combout => \inst2|Mux8~15_combout\);

-- Location: LCCOMB_X49_Y35_N30
\inst2|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~4_combout\ = (\inst2|index\(3) & ((\inst2|index\(1) & (\inst2|line1\(72))) # (!\inst2|index\(1) & ((\inst2|line1\(81)))))) # (!\inst2|index\(3) & (((\inst2|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(72),
	datab => \inst2|line1\(81),
	datac => \inst2|index\(3),
	datad => \inst2|index\(1),
	combout => \inst2|Mux8~4_combout\);

-- Location: LCCOMB_X49_Y35_N20
\inst2|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~5_combout\ = (\inst2|index\(3) & ((\inst2|index\(0) & ((\inst2|line1\(64)))) # (!\inst2|index\(0) & (\inst2|Mux8~4_combout\)))) # (!\inst2|index\(3) & (!\inst2|Mux8~4_combout\ & ((\inst2|line1\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~4_combout\,
	datab => \inst2|index\(0),
	datac => \inst2|index\(3),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux8~5_combout\);

-- Location: LCCOMB_X48_Y35_N18
\inst2|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~1_combout\ = (\inst2|index\(1) & ((\inst2|index\(0) & ((\inst2|line1\(72)))) # (!\inst2|index\(0) & (\inst2|line1\(104))))) # (!\inst2|index\(1) & (\inst2|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|index\(0),
	datac => \inst2|line1\(104),
	datad => \inst2|line1\(72),
	combout => \inst2|Mux8~1_combout\);

-- Location: LCCOMB_X48_Y35_N8
\inst2|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~2_combout\ = (\inst2|index\(3) & (((\inst2|index\(1)) # (\inst2|Mux8~1_combout\)))) # (!\inst2|index\(3) & ((\inst2|index\(1) & ((\inst2|Mux8~1_combout\))) # (!\inst2|index\(1) & (\inst2|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|Mux8~0_combout\,
	datac => \inst2|index\(1),
	datad => \inst2|Mux8~1_combout\,
	combout => \inst2|Mux8~2_combout\);

-- Location: LCCOMB_X49_Y35_N24
\inst2|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~3_combout\ = (\inst2|index\(3) & ((\inst2|Mux8~2_combout\ & ((\inst2|line1\(9)))) # (!\inst2|Mux8~2_combout\ & (\inst2|line1\(56))))) # (!\inst2|index\(3) & (((\inst2|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(56),
	datab => \inst2|line1\(9),
	datac => \inst2|index\(3),
	datad => \inst2|Mux8~2_combout\,
	combout => \inst2|Mux8~3_combout\);

-- Location: LCCOMB_X48_Y35_N14
\inst2|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~6_combout\ = (\inst2|index\(2) & ((\inst2|Mux8~3_combout\))) # (!\inst2|index\(2) & (\inst2|Mux8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(2),
	datac => \inst2|Mux8~5_combout\,
	datad => \inst2|Mux8~3_combout\,
	combout => \inst2|Mux8~6_combout\);

-- Location: LCCOMB_X47_Y36_N28
\inst2|Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~17_combout\ = (\inst2|Mux8~15_combout\ & ((\inst2|Mux8~16_combout\) # ((!\inst2|index\(5))))) # (!\inst2|Mux8~15_combout\ & (((\inst2|index\(5) & \inst2|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~16_combout\,
	datab => \inst2|Mux8~15_combout\,
	datac => \inst2|index\(5),
	datad => \inst2|Mux8~6_combout\,
	combout => \inst2|Mux8~17_combout\);

-- Location: FF_X47_Y36_N29
\inst2|txd_rs_and_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux8~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(0));

-- Location: LCCOMB_X48_Y35_N16
\inst2|Mux8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~26_combout\ = (\inst2|index\(0) & (\inst2|line1\(64))) # (!\inst2|index\(0) & ((\inst2|line1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|line1\(64),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux8~26_combout\);

-- Location: LCCOMB_X48_Y35_N6
\inst2|Mux8~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~27_combout\ = (\inst2|index\(3) & (((\inst2|index\(1)) # (\inst2|Mux8~0_combout\)))) # (!\inst2|index\(3) & (\inst2|line1\(64) & (!\inst2|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|line1\(64),
	datac => \inst2|index\(1),
	datad => \inst2|Mux8~0_combout\,
	combout => \inst2|Mux8~27_combout\);

-- Location: LCCOMB_X48_Y35_N28
\inst2|Mux8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~28_combout\ = (\inst2|index\(1) & ((\inst2|Mux8~27_combout\ & (\inst2|Mux8~11_combout\)) # (!\inst2|Mux8~27_combout\ & ((\inst2|Mux8~26_combout\))))) # (!\inst2|index\(1) & (((\inst2|Mux8~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~11_combout\,
	datab => \inst2|Mux8~26_combout\,
	datac => \inst2|index\(1),
	datad => \inst2|Mux8~27_combout\,
	combout => \inst2|Mux8~28_combout\);

-- Location: LCCOMB_X48_Y35_N10
\inst2|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~11_combout\ = (\inst2|index\(3) & ((\inst2|index\(0) & ((\inst2|line1\(9)))) # (!\inst2|index\(0) & (\inst2|line1\(64))))) # (!\inst2|index\(3) & (((!\inst2|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|line1\(64),
	datac => \inst2|index\(0),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux6~11_combout\);

-- Location: LCCOMB_X48_Y35_N0
\inst2|Mux6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~22_combout\ = (\inst2|index\(2) & (\inst2|Mux8~28_combout\)) # (!\inst2|index\(2) & (((!\inst2|index\(1) & \inst2|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(2),
	datab => \inst2|Mux8~28_combout\,
	datac => \inst2|index\(1),
	datad => \inst2|Mux6~11_combout\,
	combout => \inst2|Mux6~22_combout\);

-- Location: LCCOMB_X48_Y36_N8
\inst2|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~12_combout\ = (!\inst2|index\(5) & ((\inst2|index\(4) & ((\inst2|Mux6~22_combout\))) # (!\inst2|index\(4) & (\inst2|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(5),
	datab => \inst2|index\(4),
	datac => \inst2|Mux6~9_combout\,
	datad => \inst2|Mux6~22_combout\,
	combout => \inst2|Mux6~12_combout\);

-- Location: LCCOMB_X48_Y36_N14
\inst2|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~13_combout\ = (!\inst2|index\(0) & (\inst2|index\(1) & (\inst2|index\(3) & \inst2|line1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(0),
	datab => \inst2|index\(1),
	datac => \inst2|index\(3),
	datad => \inst2|line1\(9),
	combout => \inst2|Mux6~13_combout\);

-- Location: LCCOMB_X49_Y36_N16
\inst2|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~14_combout\ = (\inst2|index\(3) & ((\inst2|index\(0) & (\inst2|line1\(81))) # (!\inst2|index\(0) & ((\inst2|line1\(64)))))) # (!\inst2|index\(3) & (((\inst2|line1\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(3),
	datab => \inst2|index\(0),
	datac => \inst2|line1\(81),
	datad => \inst2|line1\(64),
	combout => \inst2|Mux6~14_combout\);

-- Location: LCCOMB_X49_Y36_N30
\inst2|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~15_combout\ = (!\inst2|index\(2) & ((\inst2|Mux6~13_combout\) # ((!\inst2|index\(1) & \inst2|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~13_combout\,
	datab => \inst2|index\(2),
	datac => \inst2|index\(1),
	datad => \inst2|Mux6~14_combout\,
	combout => \inst2|Mux6~15_combout\);

-- Location: LCCOMB_X49_Y36_N10
\inst2|Mux8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~30_combout\ = (\inst2|line1\(9) & \inst2|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|line1\(9),
	datac => \inst2|index\(0),
	combout => \inst2|Mux8~30_combout\);

-- Location: LCCOMB_X49_Y36_N12
\inst2|Mux8~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~31_combout\ = (\inst2|index\(1) & (((\inst2|index\(3))))) # (!\inst2|index\(1) & ((\inst2|Mux8~30_combout\) # ((!\inst2|index\(3) & \inst2|Mux8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~30_combout\,
	datab => \inst2|index\(3),
	datac => \inst2|index\(1),
	datad => \inst2|Mux8~20_combout\,
	combout => \inst2|Mux8~31_combout\);

-- Location: LCCOMB_X49_Y36_N18
\inst2|Mux8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~32_combout\ = (\inst2|Mux8~31_combout\ & (((\inst2|line1\(9))) # (!\inst2|index\(1)))) # (!\inst2|Mux8~31_combout\ & (\inst2|index\(1) & ((\inst2|Mux8~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~31_combout\,
	datab => \inst2|index\(1),
	datac => \inst2|line1\(9),
	datad => \inst2|Mux8~29_combout\,
	combout => \inst2|Mux8~32_combout\);

-- Location: LCCOMB_X49_Y36_N4
\inst2|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~16_combout\ = (\inst2|Mux6~15_combout\) # ((\inst2|index\(2) & \inst2|Mux8~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|index\(2),
	datac => \inst2|Mux6~15_combout\,
	datad => \inst2|Mux8~32_combout\,
	combout => \inst2|Mux6~16_combout\);

-- Location: LCCOMB_X48_Y36_N16
\inst2|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~17_combout\ = (\inst2|Mux6~12_combout\) # ((\inst2|index\(5) & (!\inst2|index\(4) & \inst2|Mux6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(5),
	datab => \inst2|index\(4),
	datac => \inst2|Mux6~12_combout\,
	datad => \inst2|Mux6~16_combout\,
	combout => \inst2|Mux6~17_combout\);

-- Location: FF_X48_Y36_N17
\inst2|txd_rs_and_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux6~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(2));

-- Location: LCCOMB_X7_Y44_N10
\inst2|ca|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|process_0~0_combout\ = (!\inst2|txd_rs_and_data\(3) & (!\inst2|txd_rs_and_data\(2) & ((\inst2|txd_rs_and_data\(1)) # (\inst2|txd_rs_and_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txd_rs_and_data\(1),
	datab => \inst2|txd_rs_and_data\(3),
	datac => \inst2|txd_rs_and_data\(0),
	datad => \inst2|txd_rs_and_data\(2),
	combout => \inst2|ca|process_0~0_combout\);

-- Location: LCCOMB_X46_Y36_N22
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|index\(1) & (((\inst2|index\(3)) # (!\inst2|index\(5))) # (!\inst2|index\(0)))) # (!\inst2|index\(1) & ((\inst2|index\(5)) # (\inst2|index\(0) $ (\inst2|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|index\(0),
	datac => \inst2|index\(5),
	datad => \inst2|index\(3),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y36_N28
\inst2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst2|index\(5) & (((\inst2|index\(3))))) # (!\inst2|index\(5) & (\inst2|index\(1) & (!\inst2|index\(0) & !\inst2|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|index\(1),
	datab => \inst2|index\(0),
	datac => \inst2|index\(5),
	datad => \inst2|index\(3),
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X46_Y36_N0
\inst2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~2_combout\ = (\inst2|index\(2)) # ((\inst2|index\(4) & ((!\inst2|Mux0~1_combout\))) # (!\inst2|index\(4) & (\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|Mux0~1_combout\,
	datac => \inst2|index\(2),
	datad => \inst2|index\(4),
	combout => \inst2|Mux0~2_combout\);

-- Location: FF_X46_Y36_N1
\inst2|txd_rs_and_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|txd_rs_and_data\(8));

-- Location: LCCOMB_X6_Y44_N4
\inst2|ca|delay_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~5_combout\ = (\inst2|ca|process_0~1_combout\ & (\inst2|ca|state.process_txd_requests~q\ & (\inst2|ca|process_0~0_combout\ & !\inst2|txd_rs_and_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|process_0~1_combout\,
	datab => \inst2|ca|state.process_txd_requests~q\,
	datac => \inst2|ca|process_0~0_combout\,
	datad => \inst2|txd_rs_and_data\(8),
	combout => \inst2|ca|delay_counter~5_combout\);

-- Location: LCCOMB_X8_Y44_N18
\inst2|ca|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector22~0_combout\ = (\inst2|ca|state.power_on_phase1~q\ & !\inst2|ca|state.power_on_phase2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|state.power_on_phase1~q\,
	datad => \inst2|ca|state.power_on_phase2~q\,
	combout => \inst2|ca|Selector22~0_combout\);

-- Location: LCCOMB_X7_Y44_N30
\inst2|ca|delay_counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~32_combout\ = (\inst2|ca|state.power_on_phase8~q\) # ((\inst2|ca|state.power_on_phase7~q\) # ((\inst2|ca|delay_counter~5_combout\) # (!\inst2|ca|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase8~q\,
	datab => \inst2|ca|state.power_on_phase7~q\,
	datac => \inst2|ca|delay_counter~5_combout\,
	datad => \inst2|ca|Selector22~0_combout\,
	combout => \inst2|ca|delay_counter~32_combout\);

-- Location: LCCOMB_X6_Y44_N30
\inst2|ca|delay_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~6_combout\ = (!\inst2|ca|delay_counter~5_combout\ & (!\inst2|ca|state.power_on_phase8~q\ & !\inst2|ca|state.power_on_phase7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter~5_combout\,
	datac => \inst2|ca|state.power_on_phase8~q\,
	datad => \inst2|ca|state.power_on_phase7~q\,
	combout => \inst2|ca|delay_counter~6_combout\);

-- Location: LCCOMB_X6_Y44_N12
\inst2|ca|delay_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~13_combout\ = (\inst2|ca|state.power_on_phase1~q\ & (!\inst2|ca|state.power_on_phase7~q\ & (!\inst2|ca|state.power_on_phase8~q\ & !\inst2|ca|state.process_txd_requests~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase1~q\,
	datab => \inst2|ca|state.power_on_phase7~q\,
	datac => \inst2|ca|state.power_on_phase8~q\,
	datad => \inst2|ca|state.process_txd_requests~q\,
	combout => \inst2|ca|delay_counter~13_combout\);

-- Location: LCCOMB_X5_Y45_N12
\inst2|ca|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~0_combout\ = \inst2|ca|delay_counter\(0) $ (VCC)
-- \inst2|ca|Add2~1\ = CARRY(\inst2|ca|delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(0),
	datad => VCC,
	combout => \inst2|ca|Add2~0_combout\,
	cout => \inst2|ca|Add2~1\);

-- Location: LCCOMB_X5_Y45_N0
\inst2|ca|delay_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~11_combout\ = (!\inst2|ca|Equal0~6_combout\ & (\inst2|ca|Equal2~6_combout\ & \inst2|ca|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|Equal2~6_combout\,
	datad => \inst2|ca|Add2~0_combout\,
	combout => \inst2|ca|delay_counter~11_combout\);

-- Location: LCCOMB_X4_Y44_N22
\inst2|ca|lcd_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_en~0_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|enable_counter\(0)) # (!\inst2|ca|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(0),
	datac => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|Equal1~0_combout\,
	combout => \inst2|ca|lcd_en~0_combout\);

-- Location: FF_X5_Y45_N1
\inst2|ca|delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~11_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(0));

-- Location: LCCOMB_X5_Y45_N14
\inst2|ca|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~2_combout\ = (\inst2|ca|delay_counter\(1) & (\inst2|ca|Add2~1\ & VCC)) # (!\inst2|ca|delay_counter\(1) & (!\inst2|ca|Add2~1\))
-- \inst2|ca|Add2~3\ = CARRY((!\inst2|ca|delay_counter\(1) & !\inst2|ca|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(1),
	datad => VCC,
	cin => \inst2|ca|Add2~1\,
	combout => \inst2|ca|Add2~2_combout\,
	cout => \inst2|ca|Add2~3\);

-- Location: LCCOMB_X5_Y45_N10
\inst2|ca|delay_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~12_combout\ = (!\inst2|ca|Equal0~6_combout\ & (\inst2|ca|Equal2~6_combout\ & \inst2|ca|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|Equal2~6_combout\,
	datad => \inst2|ca|Add2~2_combout\,
	combout => \inst2|ca|delay_counter~12_combout\);

-- Location: FF_X5_Y45_N11
\inst2|ca|delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~12_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(1));

-- Location: LCCOMB_X5_Y45_N16
\inst2|ca|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~4_combout\ = (\inst2|ca|delay_counter\(2) & ((GND) # (!\inst2|ca|Add2~3\))) # (!\inst2|ca|delay_counter\(2) & (\inst2|ca|Add2~3\ $ (GND)))
-- \inst2|ca|Add2~5\ = CARRY((\inst2|ca|delay_counter\(2)) # (!\inst2|ca|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(2),
	datad => VCC,
	cin => \inst2|ca|Add2~3\,
	combout => \inst2|ca|Add2~4_combout\,
	cout => \inst2|ca|Add2~5\);

-- Location: LCCOMB_X6_Y45_N12
\inst2|ca|delay_counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~14_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|Add2~4_combout\))) # (!\inst2|ca|Equal2~6_combout\ & (\inst2|ca|delay_counter~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal0~6_combout\,
	datab => \inst2|ca|delay_counter~13_combout\,
	datac => \inst2|ca|Add2~4_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~14_combout\);

-- Location: FF_X6_Y45_N13
\inst2|ca|delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~14_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(2));

-- Location: LCCOMB_X5_Y45_N18
\inst2|ca|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~6_combout\ = (\inst2|ca|delay_counter\(3) & (\inst2|ca|Add2~5\ & VCC)) # (!\inst2|ca|delay_counter\(3) & (!\inst2|ca|Add2~5\))
-- \inst2|ca|Add2~7\ = CARRY((!\inst2|ca|delay_counter\(3) & !\inst2|ca|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(3),
	datad => VCC,
	cin => \inst2|ca|Add2~5\,
	combout => \inst2|ca|Add2~6_combout\,
	cout => \inst2|ca|Add2~7\);

-- Location: LCCOMB_X6_Y44_N2
\inst2|ca|delay_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~15_combout\ = (\inst2|ca|state.process_txd_requests~q\ & (((\inst2|txd_rs_and_data\(8)) # (!\inst2|ca|process_0~0_combout\)) # (!\inst2|ca|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|process_0~1_combout\,
	datab => \inst2|ca|state.process_txd_requests~q\,
	datac => \inst2|ca|process_0~0_combout\,
	datad => \inst2|txd_rs_and_data\(8),
	combout => \inst2|ca|delay_counter~15_combout\);

-- Location: LCCOMB_X6_Y45_N24
\inst2|ca|delay_counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~16_combout\ = (\inst2|ca|delay_counter~15_combout\) # (\inst2|ca|state.power_on_phase2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|delay_counter~15_combout\,
	datad => \inst2|ca|state.power_on_phase2~q\,
	combout => \inst2|ca|delay_counter~16_combout\);

-- Location: LCCOMB_X5_Y45_N4
\inst2|ca|delay_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~17_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~6_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|delay_counter~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Add2~6_combout\,
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|Equal2~6_combout\,
	datad => \inst2|ca|delay_counter~16_combout\,
	combout => \inst2|ca|delay_counter~17_combout\);

-- Location: FF_X5_Y45_N5
\inst2|ca|delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~17_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(3));

-- Location: LCCOMB_X5_Y45_N20
\inst2|ca|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~8_combout\ = (\inst2|ca|delay_counter\(4) & ((GND) # (!\inst2|ca|Add2~7\))) # (!\inst2|ca|delay_counter\(4) & (\inst2|ca|Add2~7\ $ (GND)))
-- \inst2|ca|Add2~9\ = CARRY((\inst2|ca|delay_counter\(4)) # (!\inst2|ca|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(4),
	datad => VCC,
	cin => \inst2|ca|Add2~7\,
	combout => \inst2|ca|Add2~8_combout\,
	cout => \inst2|ca|Add2~9\);

-- Location: LCCOMB_X6_Y45_N22
\inst2|ca|delay_counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~18_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~8_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((!\inst2|ca|delay_counter~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal2~6_combout\,
	datab => \inst2|ca|Add2~8_combout\,
	datac => \inst2|ca|delay_counter~4_combout\,
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|delay_counter~18_combout\);

-- Location: FF_X6_Y45_N23
\inst2|ca|delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~18_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(4));

-- Location: LCCOMB_X5_Y45_N22
\inst2|ca|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~10_combout\ = (\inst2|ca|delay_counter\(5) & (\inst2|ca|Add2~9\ & VCC)) # (!\inst2|ca|delay_counter\(5) & (!\inst2|ca|Add2~9\))
-- \inst2|ca|Add2~11\ = CARRY((!\inst2|ca|delay_counter\(5) & !\inst2|ca|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(5),
	datad => VCC,
	cin => \inst2|ca|Add2~9\,
	combout => \inst2|ca|Add2~10_combout\,
	cout => \inst2|ca|Add2~11\);

-- Location: LCCOMB_X6_Y45_N30
\inst2|ca|delay_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~19_combout\ = (\inst2|ca|delay_counter~15_combout\) # (!\inst2|ca|state.power_on_phase1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|delay_counter~15_combout\,
	datad => \inst2|ca|state.power_on_phase1~q\,
	combout => \inst2|ca|delay_counter~19_combout\);

-- Location: LCCOMB_X6_Y45_N0
\inst2|ca|delay_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~20_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~10_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|delay_counter~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal2~6_combout\,
	datab => \inst2|ca|Add2~10_combout\,
	datac => \inst2|ca|delay_counter~19_combout\,
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|delay_counter~20_combout\);

-- Location: FF_X6_Y45_N1
\inst2|ca|delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~20_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(5));

-- Location: LCCOMB_X5_Y45_N24
\inst2|ca|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~12_combout\ = (\inst2|ca|delay_counter\(6) & ((GND) # (!\inst2|ca|Add2~11\))) # (!\inst2|ca|delay_counter\(6) & (\inst2|ca|Add2~11\ $ (GND)))
-- \inst2|ca|Add2~13\ = CARRY((\inst2|ca|delay_counter\(6)) # (!\inst2|ca|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(6),
	datad => VCC,
	cin => \inst2|ca|Add2~11\,
	combout => \inst2|ca|Add2~12_combout\,
	cout => \inst2|ca|Add2~13\);

-- Location: LCCOMB_X6_Y45_N28
\inst2|ca|delay_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~21_combout\ = (\inst2|ca|Equal0~6_combout\) # ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~12_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|delay_counter~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal2~6_combout\,
	datab => \inst2|ca|Add2~12_combout\,
	datac => \inst2|ca|delay_counter~4_combout\,
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|delay_counter~21_combout\);

-- Location: FF_X6_Y45_N29
\inst2|ca|delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~21_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(6));

-- Location: LCCOMB_X5_Y45_N26
\inst2|ca|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~14_combout\ = (\inst2|ca|delay_counter\(7) & (\inst2|ca|Add2~13\ & VCC)) # (!\inst2|ca|delay_counter\(7) & (!\inst2|ca|Add2~13\))
-- \inst2|ca|Add2~15\ = CARRY((!\inst2|ca|delay_counter\(7) & !\inst2|ca|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(7),
	datad => VCC,
	cin => \inst2|ca|Add2~13\,
	combout => \inst2|ca|Add2~14_combout\,
	cout => \inst2|ca|Add2~15\);

-- Location: LCCOMB_X6_Y45_N2
\inst2|ca|delay_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~22_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|Add2~14_combout\))) # (!\inst2|ca|Equal2~6_combout\ & (!\inst2|ca|state.power_on_phase2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal2~6_combout\,
	datab => \inst2|ca|state.power_on_phase2~q\,
	datac => \inst2|ca|Add2~14_combout\,
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|delay_counter~22_combout\);

-- Location: FF_X6_Y45_N3
\inst2|ca|delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~22_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(7));

-- Location: LCCOMB_X5_Y45_N28
\inst2|ca|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~16_combout\ = (\inst2|ca|delay_counter\(8) & ((GND) # (!\inst2|ca|Add2~15\))) # (!\inst2|ca|delay_counter\(8) & (\inst2|ca|Add2~15\ $ (GND)))
-- \inst2|ca|Add2~17\ = CARRY((\inst2|ca|delay_counter\(8)) # (!\inst2|ca|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(8),
	datad => VCC,
	cin => \inst2|ca|Add2~15\,
	combout => \inst2|ca|Add2~16_combout\,
	cout => \inst2|ca|Add2~17\);

-- Location: LCCOMB_X5_Y45_N8
\inst2|ca|delay_counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~23_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Add2~16_combout\) # (!\inst2|ca|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|Equal2~6_combout\,
	datad => \inst2|ca|Add2~16_combout\,
	combout => \inst2|ca|delay_counter~23_combout\);

-- Location: FF_X5_Y45_N9
\inst2|ca|delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~23_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(8));

-- Location: LCCOMB_X5_Y45_N30
\inst2|ca|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~18_combout\ = (\inst2|ca|delay_counter\(9) & (\inst2|ca|Add2~17\ & VCC)) # (!\inst2|ca|delay_counter\(9) & (!\inst2|ca|Add2~17\))
-- \inst2|ca|Add2~19\ = CARRY((!\inst2|ca|delay_counter\(9) & !\inst2|ca|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(9),
	datad => VCC,
	cin => \inst2|ca|Add2~17\,
	combout => \inst2|ca|Add2~18_combout\,
	cout => \inst2|ca|Add2~19\);

-- Location: LCCOMB_X6_Y45_N18
\inst2|ca|delay_counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~24_combout\ = (\inst2|ca|Equal0~6_combout\) # ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~18_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((!\inst2|ca|delay_counter~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal0~6_combout\,
	datab => \inst2|ca|Add2~18_combout\,
	datac => \inst2|ca|delay_counter~13_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~24_combout\);

-- Location: FF_X6_Y45_N19
\inst2|ca|delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~24_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(9));

-- Location: LCCOMB_X5_Y44_N0
\inst2|ca|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~20_combout\ = (\inst2|ca|delay_counter\(10) & ((GND) # (!\inst2|ca|Add2~19\))) # (!\inst2|ca|delay_counter\(10) & (\inst2|ca|Add2~19\ $ (GND)))
-- \inst2|ca|Add2~21\ = CARRY((\inst2|ca|delay_counter\(10)) # (!\inst2|ca|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(10),
	datad => VCC,
	cin => \inst2|ca|Add2~19\,
	combout => \inst2|ca|Add2~20_combout\,
	cout => \inst2|ca|Add2~21\);

-- Location: LCCOMB_X6_Y44_N24
\inst2|ca|delay_counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~25_combout\ = (\inst2|ca|Equal2~6_combout\ & (((\inst2|ca|Add2~20_combout\)))) # (!\inst2|ca|Equal2~6_combout\ & (((\inst2|ca|state.power_on_phase2~q\)) # (!\inst2|ca|delay_counter~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter~6_combout\,
	datab => \inst2|ca|Equal2~6_combout\,
	datac => \inst2|ca|Add2~20_combout\,
	datad => \inst2|ca|state.power_on_phase2~q\,
	combout => \inst2|ca|delay_counter~25_combout\);

-- Location: LCCOMB_X6_Y44_N20
\inst2|ca|delay_counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~26_combout\ = (!\inst2|ca|Equal0~6_combout\ & \inst2|ca|delay_counter~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|delay_counter~25_combout\,
	combout => \inst2|ca|delay_counter~26_combout\);

-- Location: FF_X6_Y44_N21
\inst2|ca|delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~26_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(10));

-- Location: LCCOMB_X5_Y44_N2
\inst2|ca|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~22_combout\ = (\inst2|ca|delay_counter\(11) & (\inst2|ca|Add2~21\ & VCC)) # (!\inst2|ca|delay_counter\(11) & (!\inst2|ca|Add2~21\))
-- \inst2|ca|Add2~23\ = CARRY((!\inst2|ca|delay_counter\(11) & !\inst2|ca|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(11),
	datad => VCC,
	cin => \inst2|ca|Add2~21\,
	combout => \inst2|ca|Add2~22_combout\,
	cout => \inst2|ca|Add2~23\);

-- Location: LCCOMB_X6_Y44_N26
\inst2|ca|delay_counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~27_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|Add2~22_combout\))) # (!\inst2|ca|Equal2~6_combout\ & (\inst2|ca|state.power_on_phase1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase1~q\,
	datab => \inst2|ca|Equal2~6_combout\,
	datac => \inst2|ca|Add2~22_combout\,
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|delay_counter~27_combout\);

-- Location: FF_X6_Y44_N27
\inst2|ca|delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~27_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(11));

-- Location: LCCOMB_X5_Y44_N4
\inst2|ca|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~24_combout\ = (\inst2|ca|delay_counter\(12) & ((GND) # (!\inst2|ca|Add2~23\))) # (!\inst2|ca|delay_counter\(12) & (\inst2|ca|Add2~23\ $ (GND)))
-- \inst2|ca|Add2~25\ = CARRY((\inst2|ca|delay_counter\(12)) # (!\inst2|ca|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(12),
	datad => VCC,
	cin => \inst2|ca|Add2~23\,
	combout => \inst2|ca|Add2~24_combout\,
	cout => \inst2|ca|Add2~25\);

-- Location: LCCOMB_X6_Y44_N22
\inst2|ca|delay_counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~28_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|Add2~24_combout\))) # (!\inst2|ca|Equal2~6_combout\ & (\inst2|ca|delay_counter~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter~32_combout\,
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|Add2~24_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~28_combout\);

-- Location: FF_X6_Y44_N23
\inst2|ca|delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~28_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(12));

-- Location: LCCOMB_X5_Y44_N6
\inst2|ca|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~26_combout\ = (\inst2|ca|delay_counter\(13) & (\inst2|ca|Add2~25\ & VCC)) # (!\inst2|ca|delay_counter\(13) & (!\inst2|ca|Add2~25\))
-- \inst2|ca|Add2~27\ = CARRY((!\inst2|ca|delay_counter\(13) & !\inst2|ca|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(13),
	datad => VCC,
	cin => \inst2|ca|Add2~25\,
	combout => \inst2|ca|Add2~26_combout\,
	cout => \inst2|ca|Add2~27\);

-- Location: LCCOMB_X5_Y44_N24
\inst2|ca|delay_counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~29_combout\ = (\inst2|ca|Add2~26_combout\ & (!\inst2|ca|Equal0~6_combout\ & \inst2|ca|Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Add2~26_combout\,
	datac => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~29_combout\);

-- Location: FF_X5_Y44_N25
\inst2|ca|delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~29_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(13));

-- Location: LCCOMB_X5_Y44_N8
\inst2|ca|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~28_combout\ = (\inst2|ca|delay_counter\(14) & ((GND) # (!\inst2|ca|Add2~27\))) # (!\inst2|ca|delay_counter\(14) & (\inst2|ca|Add2~27\ $ (GND)))
-- \inst2|ca|Add2~29\ = CARRY((\inst2|ca|delay_counter\(14)) # (!\inst2|ca|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(14),
	datad => VCC,
	cin => \inst2|ca|Add2~27\,
	combout => \inst2|ca|Add2~28_combout\,
	cout => \inst2|ca|Add2~29\);

-- Location: LCCOMB_X6_Y44_N28
\inst2|ca|delay_counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~30_combout\ = (\inst2|ca|Equal0~6_combout\) # ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~28_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((!\inst2|ca|delay_counter~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Add2~28_combout\,
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|delay_counter~6_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~30_combout\);

-- Location: FF_X6_Y44_N29
\inst2|ca|delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~30_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(14));

-- Location: LCCOMB_X5_Y44_N10
\inst2|ca|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~30_combout\ = (\inst2|ca|delay_counter\(15) & (\inst2|ca|Add2~29\ & VCC)) # (!\inst2|ca|delay_counter\(15) & (!\inst2|ca|Add2~29\))
-- \inst2|ca|Add2~31\ = CARRY((!\inst2|ca|delay_counter\(15) & !\inst2|ca|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(15),
	datad => VCC,
	cin => \inst2|ca|Add2~29\,
	combout => \inst2|ca|Add2~30_combout\,
	cout => \inst2|ca|Add2~31\);

-- Location: LCCOMB_X5_Y44_N30
\inst2|ca|delay_counter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~31_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~30_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((!\inst2|ca|state.power_on_phase1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Add2~30_combout\,
	datab => \inst2|ca|Equal2~6_combout\,
	datac => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|state.power_on_phase1~q\,
	combout => \inst2|ca|delay_counter~31_combout\);

-- Location: FF_X5_Y44_N31
\inst2|ca|delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~31_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(15));

-- Location: LCCOMB_X6_Y44_N10
\inst2|ca|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal2~5_combout\ = (\inst2|ca|delay_counter\(12)) # ((\inst2|ca|delay_counter\(13)) # ((\inst2|ca|delay_counter\(14)) # (\inst2|ca|delay_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(12),
	datab => \inst2|ca|delay_counter\(13),
	datac => \inst2|ca|delay_counter\(14),
	datad => \inst2|ca|delay_counter\(15),
	combout => \inst2|ca|Equal2~5_combout\);

-- Location: LCCOMB_X6_Y44_N8
\inst2|ca|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal2~4_combout\ = (\inst2|ca|delay_counter\(11)) # ((\inst2|ca|delay_counter\(9)) # ((\inst2|ca|delay_counter\(8)) # (\inst2|ca|delay_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(11),
	datab => \inst2|ca|delay_counter\(9),
	datac => \inst2|ca|delay_counter\(8),
	datad => \inst2|ca|delay_counter\(10),
	combout => \inst2|ca|Equal2~4_combout\);

-- Location: LCCOMB_X5_Y44_N12
\inst2|ca|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~32_combout\ = (\inst2|ca|delay_counter\(16) & ((GND) # (!\inst2|ca|Add2~31\))) # (!\inst2|ca|delay_counter\(16) & (\inst2|ca|Add2~31\ $ (GND)))
-- \inst2|ca|Add2~33\ = CARRY((\inst2|ca|delay_counter\(16)) # (!\inst2|ca|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(16),
	datad => VCC,
	cin => \inst2|ca|Add2~31\,
	combout => \inst2|ca|Add2~32_combout\,
	cout => \inst2|ca|Add2~33\);

-- Location: LCCOMB_X6_Y44_N6
\inst2|ca|delay_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~7_combout\ = (\inst2|ca|Equal0~6_combout\) # ((\inst2|ca|Equal2~6_combout\ & (\inst2|ca|Add2~32_combout\)) # (!\inst2|ca|Equal2~6_combout\ & ((!\inst2|ca|delay_counter~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Add2~32_combout\,
	datab => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|delay_counter~6_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~7_combout\);

-- Location: FF_X6_Y44_N7
\inst2|ca|delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~7_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(16));

-- Location: LCCOMB_X5_Y44_N14
\inst2|ca|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~34_combout\ = (\inst2|ca|delay_counter\(17) & (\inst2|ca|Add2~33\ & VCC)) # (!\inst2|ca|delay_counter\(17) & (!\inst2|ca|Add2~33\))
-- \inst2|ca|Add2~35\ = CARRY((!\inst2|ca|delay_counter\(17) & !\inst2|ca|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|delay_counter\(17),
	datad => VCC,
	cin => \inst2|ca|Add2~33\,
	combout => \inst2|ca|Add2~34_combout\,
	cout => \inst2|ca|Add2~35\);

-- Location: LCCOMB_X5_Y44_N28
\inst2|ca|delay_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~8_combout\ = (\inst2|ca|Equal0~6_combout\) # ((\inst2|ca|Add2~34_combout\ & \inst2|ca|Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal0~6_combout\,
	datac => \inst2|ca|Add2~34_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~8_combout\);

-- Location: FF_X5_Y44_N29
\inst2|ca|delay_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~8_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(17));

-- Location: LCCOMB_X5_Y44_N16
\inst2|ca|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~36_combout\ = (\inst2|ca|delay_counter\(18) & ((GND) # (!\inst2|ca|Add2~35\))) # (!\inst2|ca|delay_counter\(18) & (\inst2|ca|Add2~35\ $ (GND)))
-- \inst2|ca|Add2~37\ = CARRY((\inst2|ca|delay_counter\(18)) # (!\inst2|ca|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(18),
	datad => VCC,
	cin => \inst2|ca|Add2~35\,
	combout => \inst2|ca|Add2~36_combout\,
	cout => \inst2|ca|Add2~37\);

-- Location: LCCOMB_X5_Y44_N22
\inst2|ca|delay_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~9_combout\ = (\inst2|ca|Equal0~6_combout\) # ((\inst2|ca|Equal2~6_combout\ & ((\inst2|ca|Add2~36_combout\))) # (!\inst2|ca|Equal2~6_combout\ & (!\inst2|ca|state.power_on_phase1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase1~q\,
	datab => \inst2|ca|Add2~36_combout\,
	datac => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~9_combout\);

-- Location: FF_X5_Y44_N23
\inst2|ca|delay_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~9_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(18));

-- Location: LCCOMB_X5_Y44_N18
\inst2|ca|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Add2~38_combout\ = \inst2|ca|Add2~37\ $ (!\inst2|ca|delay_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ca|delay_counter\(19),
	cin => \inst2|ca|Add2~37\,
	combout => \inst2|ca|Add2~38_combout\);

-- Location: LCCOMB_X5_Y44_N20
\inst2|ca|delay_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|delay_counter~10_combout\ = (\inst2|ca|Equal0~6_combout\) # ((\inst2|ca|Add2~38_combout\ & \inst2|ca|Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|Add2~38_combout\,
	datac => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|delay_counter~10_combout\);

-- Location: FF_X5_Y44_N21
\inst2|ca|delay_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|delay_counter~10_combout\,
	ena => \inst2|ca|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|delay_counter\(19));

-- Location: LCCOMB_X5_Y44_N26
\inst2|ca|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal2~0_combout\ = (\inst2|ca|delay_counter\(16)) # ((\inst2|ca|delay_counter\(19)) # ((\inst2|ca|delay_counter\(18)) # (\inst2|ca|delay_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(16),
	datab => \inst2|ca|delay_counter\(19),
	datac => \inst2|ca|delay_counter\(18),
	datad => \inst2|ca|delay_counter\(17),
	combout => \inst2|ca|Equal2~0_combout\);

-- Location: LCCOMB_X6_Y45_N10
\inst2|ca|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal2~2_combout\ = (\inst2|ca|delay_counter\(4)) # (\inst2|ca|delay_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|delay_counter\(4),
	datad => \inst2|ca|delay_counter\(5),
	combout => \inst2|ca|Equal2~2_combout\);

-- Location: LCCOMB_X5_Y45_N6
\inst2|ca|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal2~1_combout\ = (\inst2|ca|delay_counter\(1)) # ((\inst2|ca|delay_counter\(3)) # ((\inst2|ca|delay_counter\(2)) # (\inst2|ca|delay_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|delay_counter\(1),
	datab => \inst2|ca|delay_counter\(3),
	datac => \inst2|ca|delay_counter\(2),
	datad => \inst2|ca|delay_counter\(0),
	combout => \inst2|ca|Equal2~1_combout\);

-- Location: LCCOMB_X6_Y45_N4
\inst2|ca|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal2~3_combout\ = (\inst2|ca|Equal2~2_combout\) # ((\inst2|ca|delay_counter\(7)) # ((\inst2|ca|Equal2~1_combout\) # (\inst2|ca|delay_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal2~2_combout\,
	datab => \inst2|ca|delay_counter\(7),
	datac => \inst2|ca|Equal2~1_combout\,
	datad => \inst2|ca|delay_counter\(6),
	combout => \inst2|ca|Equal2~3_combout\);

-- Location: LCCOMB_X6_Y44_N16
\inst2|ca|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal2~6_combout\ = (\inst2|ca|Equal2~5_combout\) # ((\inst2|ca|Equal2~4_combout\) # ((\inst2|ca|Equal2~0_combout\) # (\inst2|ca|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal2~5_combout\,
	datab => \inst2|ca|Equal2~4_combout\,
	datac => \inst2|ca|Equal2~0_combout\,
	datad => \inst2|ca|Equal2~3_combout\,
	combout => \inst2|ca|Equal2~6_combout\);

-- Location: LCCOMB_X4_Y44_N18
\inst2|ca|enable_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|enable_counter[3]~1_combout\ = (!\inst2|ca|Equal0~6_combout\ & ((\inst2|ca|enable_counter\(0)) # ((!\inst2|ca|Equal2~6_combout\) # (!\inst2|ca|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(0),
	datab => \inst2|ca|Equal1~0_combout\,
	datac => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|enable_counter[3]~1_combout\);

-- Location: LCCOMB_X4_Y44_N2
\inst2|ca|enable_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|enable_counter[1]~2_combout\ = (\inst2|ca|enable_counter[3]~1_combout\ & ((\inst2|ca|enable_counter\(0) & ((\inst2|ca|enable_counter\(1)))) # (!\inst2|ca|enable_counter\(0) & ((\inst2|ca|Equal1~0_combout\) # (!\inst2|ca|enable_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(0),
	datab => \inst2|ca|Equal1~0_combout\,
	datac => \inst2|ca|enable_counter\(1),
	datad => \inst2|ca|enable_counter[3]~1_combout\,
	combout => \inst2|ca|enable_counter[1]~2_combout\);

-- Location: FF_X4_Y44_N3
\inst2|ca|enable_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|enable_counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|enable_counter\(1));

-- Location: LCCOMB_X4_Y44_N4
\inst2|ca|enable_counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|enable_counter[2]~3_combout\ = (\inst2|ca|enable_counter[3]~1_combout\ & (\inst2|ca|enable_counter\(2) $ (((!\inst2|ca|enable_counter\(0) & !\inst2|ca|enable_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(0),
	datab => \inst2|ca|enable_counter\(1),
	datac => \inst2|ca|enable_counter\(2),
	datad => \inst2|ca|enable_counter[3]~1_combout\,
	combout => \inst2|ca|enable_counter[2]~3_combout\);

-- Location: FF_X4_Y44_N5
\inst2|ca|enable_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|enable_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|enable_counter\(2));

-- Location: LCCOMB_X4_Y44_N8
\inst2|ca|enable_counter[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|enable_counter[3]~4_combout\ = \inst2|ca|enable_counter\(3) $ (((\inst2|ca|enable_counter\(0)) # ((\inst2|ca|enable_counter\(1)) # (\inst2|ca|enable_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(0),
	datab => \inst2|ca|enable_counter\(1),
	datac => \inst2|ca|enable_counter\(2),
	datad => \inst2|ca|enable_counter\(3),
	combout => \inst2|ca|enable_counter[3]~4_combout\);

-- Location: LCCOMB_X4_Y44_N10
\inst2|ca|enable_counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|enable_counter[3]~5_combout\ = (!\inst2|ca|enable_counter[3]~4_combout\ & \inst2|ca|enable_counter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|enable_counter[3]~4_combout\,
	datad => \inst2|ca|enable_counter[3]~1_combout\,
	combout => \inst2|ca|enable_counter[3]~5_combout\);

-- Location: FF_X4_Y44_N11
\inst2|ca|enable_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|enable_counter[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|enable_counter\(3));

-- Location: LCCOMB_X4_Y44_N28
\inst2|ca|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Equal1~0_combout\ = (!\inst2|ca|enable_counter\(3) & (!\inst2|ca|enable_counter\(2) & !\inst2|ca|enable_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(3),
	datac => \inst2|ca|enable_counter\(2),
	datad => \inst2|ca|enable_counter\(1),
	combout => \inst2|ca|Equal1~0_combout\);

-- Location: LCCOMB_X4_Y44_N12
\inst2|ca|enable_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|enable_counter[0]~0_combout\ = (!\inst2|ca|Equal0~6_combout\ & (!\inst2|ca|enable_counter\(0) & ((!\inst2|ca|Equal2~6_combout\) # (!\inst2|ca|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|Equal0~6_combout\,
	datab => \inst2|ca|Equal1~0_combout\,
	datac => \inst2|ca|enable_counter\(0),
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|enable_counter[0]~0_combout\);

-- Location: FF_X4_Y44_N13
\inst2|ca|enable_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|enable_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|enable_counter\(0));

-- Location: LCCOMB_X4_Y44_N24
\inst2|ca|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~13_combout\ = (\inst2|ca|enable_counter\(0)) # ((\inst2|ca|Equal2~6_combout\) # (!\inst2|ca|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(0),
	datab => \inst2|ca|Equal1~0_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|state~13_combout\);

-- Location: LCCOMB_X7_Y44_N24
\inst2|ca|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|state~15_combout\ = (\inst2|ca|state~14_combout\ & ((\inst2|ca|state.process_txd_requests~q\) # ((!\inst2|ca|state~13_combout\ & \inst2|ca|state.power_on_phase8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state~13_combout\,
	datab => \inst2|ca|state.power_on_phase8~q\,
	datac => \inst2|ca|state.process_txd_requests~q\,
	datad => \inst2|ca|state~14_combout\,
	combout => \inst2|ca|state~15_combout\);

-- Location: FF_X7_Y44_N25
\inst2|ca|state.process_txd_requests\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|state.process_txd_requests~q\);

-- Location: LCCOMB_X8_Y44_N4
\inst2|ca|lcd_data[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[7]~8_combout\ = (\inst2|ca|state.process_txd_requests~q\ & \inst2|txd_rs_and_data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|state.process_txd_requests~q\,
	datac => \inst2|txd_rs_and_data\(7),
	combout => \inst2|ca|lcd_data[7]~8_combout\);

-- Location: LCCOMB_X4_Y44_N6
\inst2|ca|lcd_data[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[7]~9_combout\ = (\inst2|ca|Equal0~6_combout\) # ((!\inst2|ca|enable_counter\(0) & (\inst2|ca|Equal1~0_combout\ & !\inst2|ca|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|enable_counter\(0),
	datab => \inst2|ca|Equal1~0_combout\,
	datac => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|Equal2~6_combout\,
	combout => \inst2|ca|lcd_data[7]~9_combout\);

-- Location: FF_X8_Y44_N5
\inst2|ca|lcd_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[7]~8_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[7]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N2
\inst2|ca|lcd_data[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[7]~11_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[7]~11_combout\);

-- Location: FF_X1_Y44_N3
\inst2|ca|lcd_data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[7]~11_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[7]~en_q\);

-- Location: LCCOMB_X8_Y44_N14
\inst2|ca|lcd_data[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[6]~10_combout\ = (\inst2|ca|state.process_txd_requests~q\ & \inst2|txd_rs_and_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|state.process_txd_requests~q\,
	datac => \inst2|txd_rs_and_data\(6),
	combout => \inst2|ca|lcd_data[6]~10_combout\);

-- Location: FF_X8_Y44_N15
\inst2|ca|lcd_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[6]~10_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[6]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N28
\inst2|ca|lcd_data[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[6]~12_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[6]~12_combout\);

-- Location: FF_X1_Y44_N29
\inst2|ca|lcd_data[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[6]~12_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[6]~en_q\);

-- Location: LCCOMB_X8_Y44_N0
\inst2|ca|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector22~1_combout\ = (\inst2|ca|state.power_on_phase3~q\) # (((\inst2|txd_rs_and_data\(5) & \inst2|ca|state.process_txd_requests~q\)) # (!\inst2|ca|Selector22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase3~q\,
	datab => \inst2|ca|Selector22~0_combout\,
	datac => \inst2|txd_rs_and_data\(5),
	datad => \inst2|ca|state.process_txd_requests~q\,
	combout => \inst2|ca|Selector22~1_combout\);

-- Location: FF_X8_Y44_N1
\inst2|ca|lcd_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Selector22~1_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[5]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N18
\inst2|ca|lcd_data[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[5]~13_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[5]~13_combout\);

-- Location: FF_X1_Y44_N19
\inst2|ca|lcd_data[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[5]~13_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[5]~en_q\);

-- Location: LCCOMB_X8_Y44_N8
\inst2|ca|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector23~0_combout\ = (\inst2|ca|state.power_on_phase5~q\) # (((\inst2|ca|state.power_on_phase3~q\) # (\inst2|ca|state.power_on_phase2~q\)) # (!\inst2|ca|state.power_on_phase1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase5~q\,
	datab => \inst2|ca|state.power_on_phase1~q\,
	datac => \inst2|ca|state.power_on_phase3~q\,
	datad => \inst2|ca|state.power_on_phase2~q\,
	combout => \inst2|ca|Selector23~0_combout\);

-- Location: LCCOMB_X8_Y44_N30
\inst2|ca|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector23~1_combout\ = (\inst2|ca|Selector23~0_combout\) # ((\inst2|txd_rs_and_data\(4) & \inst2|ca|state.process_txd_requests~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txd_rs_and_data\(4),
	datab => \inst2|ca|state.process_txd_requests~q\,
	datac => \inst2|ca|Selector23~0_combout\,
	combout => \inst2|ca|Selector23~1_combout\);

-- Location: FF_X8_Y44_N31
\inst2|ca|lcd_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Selector23~1_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[4]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N24
\inst2|ca|lcd_data[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[4]~14_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[4]~14_combout\);

-- Location: FF_X1_Y44_N25
\inst2|ca|lcd_data[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[4]~14_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[4]~en_q\);

-- Location: LCCOMB_X7_Y44_N6
\inst2|ca|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector24~0_combout\ = (\inst2|ca|state.power_on_phase6~q\) # ((\inst2|ca|state.power_on_phase3~q\) # ((\inst2|ca|state.process_txd_requests~q\ & \inst2|txd_rs_and_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.power_on_phase6~q\,
	datab => \inst2|ca|state.process_txd_requests~q\,
	datac => \inst2|txd_rs_and_data\(3),
	datad => \inst2|ca|state.power_on_phase3~q\,
	combout => \inst2|ca|Selector24~0_combout\);

-- Location: FF_X7_Y44_N7
\inst2|ca|lcd_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Selector24~0_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[3]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N10
\inst2|ca|lcd_data[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[3]~15_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[3]~15_combout\);

-- Location: FF_X1_Y44_N11
\inst2|ca|lcd_data[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[3]~15_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[3]~en_q\);

-- Location: LCCOMB_X7_Y44_N20
\inst2|ca|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector25~0_combout\ = (\inst2|ca|state.power_on_phase4~q\) # ((\inst2|ca|state.power_on_phase6~q\) # ((\inst2|ca|state.process_txd_requests~q\ & \inst2|txd_rs_and_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ca|state.process_txd_requests~q\,
	datab => \inst2|ca|state.power_on_phase4~q\,
	datac => \inst2|ca|state.power_on_phase6~q\,
	datad => \inst2|txd_rs_and_data\(2),
	combout => \inst2|ca|Selector25~0_combout\);

-- Location: FF_X7_Y44_N21
\inst2|ca|lcd_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Selector25~0_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[2]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N16
\inst2|ca|lcd_data[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[2]~16_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[2]~16_combout\);

-- Location: FF_X1_Y44_N17
\inst2|ca|lcd_data[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[2]~16_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[2]~en_q\);

-- Location: LCCOMB_X7_Y44_N2
\inst2|ca|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector26~0_combout\ = (\inst2|ca|state.power_on_phase8~q\) # ((\inst2|ca|state.power_on_phase4~q\) # ((\inst2|txd_rs_and_data\(1) & \inst2|ca|state.process_txd_requests~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txd_rs_and_data\(1),
	datab => \inst2|ca|state.process_txd_requests~q\,
	datac => \inst2|ca|state.power_on_phase8~q\,
	datad => \inst2|ca|state.power_on_phase4~q\,
	combout => \inst2|ca|Selector26~0_combout\);

-- Location: FF_X7_Y44_N3
\inst2|ca|lcd_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Selector26~0_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[1]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N14
\inst2|ca|lcd_data[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[1]~17_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[1]~17_combout\);

-- Location: FF_X1_Y44_N15
\inst2|ca|lcd_data[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[1]~17_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[1]~en_q\);

-- Location: LCCOMB_X7_Y44_N4
\inst2|ca|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|Selector27~0_combout\ = (\inst2|ca|state.power_on_phase7~q\) # ((\inst2|txd_rs_and_data\(0) & \inst2|ca|state.process_txd_requests~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|state.power_on_phase7~q\,
	datac => \inst2|txd_rs_and_data\(0),
	datad => \inst2|ca|state.process_txd_requests~q\,
	combout => \inst2|ca|Selector27~0_combout\);

-- Location: FF_X7_Y44_N5
\inst2|ca|lcd_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|Selector27~0_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[0]~reg0_q\);

-- Location: LCCOMB_X1_Y44_N4
\inst2|ca|lcd_data[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_data[0]~18_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_data[0]~18_combout\);

-- Location: FF_X1_Y44_N5
\inst2|ca|lcd_data[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_data[0]~18_combout\,
	ena => \inst2|ca|lcd_data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_data[0]~en_q\);

-- Location: LCCOMB_X1_Y45_N28
\inst2|ca|lcd_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_on~0_combout\ = !\inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_on~0_combout\);

-- Location: FF_X1_Y45_N29
\inst2|ca|lcd_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_on~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_on~q\);

-- Location: LCCOMB_X4_Y44_N16
\inst2|ca|lcd_rw~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_rw~feeder_combout\ = \inst2|ca|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|Equal0~6_combout\,
	combout => \inst2|ca|lcd_rw~feeder_combout\);

-- Location: FF_X4_Y44_N17
\inst2|ca|lcd_rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_rw~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_rw~q\);

-- Location: LCCOMB_X4_Y44_N26
\inst2|ca|lcd_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_en~feeder_combout\ = \inst2|ca|lcd_en~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ca|lcd_en~0_combout\,
	combout => \inst2|ca|lcd_en~feeder_combout\);

-- Location: FF_X4_Y44_N27
\inst2|ca|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_en~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_en~q\);

-- Location: LCCOMB_X6_Y44_N18
\inst2|ca|lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_rs~0_combout\ = (\inst2|ca|state~13_combout\ & (((\inst2|ca|lcd_rs~q\)))) # (!\inst2|ca|state~13_combout\ & (\inst2|txd_rs_and_data\(8) & ((\inst2|ca|state.process_txd_requests~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|txd_rs_and_data\(8),
	datab => \inst2|ca|lcd_rs~q\,
	datac => \inst2|ca|state~13_combout\,
	datad => \inst2|ca|state.process_txd_requests~q\,
	combout => \inst2|ca|lcd_rs~0_combout\);

-- Location: LCCOMB_X6_Y44_N0
\inst2|ca|lcd_rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ca|lcd_rs~1_combout\ = (!\inst2|ca|Equal0~6_combout\ & \inst2|ca|lcd_rs~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ca|Equal0~6_combout\,
	datad => \inst2|ca|lcd_rs~0_combout\,
	combout => \inst2|ca|lcd_rs~1_combout\);

-- Location: FF_X6_Y44_N1
\inst2|ca|lcd_rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|ca|lcd_rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ca|lcd_rs~q\);

-- Location: LCCOMB_X55_Y35_N6
\inst4|s_setAtual[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_setAtual[0]~3_combout\ = \inst4|s_setAtual\(0) $ (VCC)
-- \inst4|s_setAtual[0]~4\ = CARRY(\inst4|s_setAtual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(0),
	datad => VCC,
	combout => \inst4|s_setAtual[0]~3_combout\,
	cout => \inst4|s_setAtual[0]~4\);

-- Location: LCCOMB_X55_Y31_N14
\inst4|s_setAtual[29]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_setAtual[29]~5_combout\ = (\inst|resetJogoOutput~0_combout\) # ((\inst3|setGanhou1~q\) # (\inst3|setGanhou2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|resetJogoOutput~0_combout\,
	datac => \inst3|setGanhou1~q\,
	datad => \inst3|setGanhou2~q\,
	combout => \inst4|s_setAtual[29]~5_combout\);

-- Location: FF_X55_Y35_N7
\inst4|s_setAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_setAtual[0]~3_combout\,
	sclr => \inst|resetJogoOutput~0_combout\,
	ena => \inst4|s_setAtual[29]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_setAtual\(0));

-- Location: LCCOMB_X55_Y35_N8
\inst4|s_setAtual[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_setAtual[1]~6_combout\ = (\inst4|s_setAtual\(1) & (!\inst4|s_setAtual[0]~4\)) # (!\inst4|s_setAtual\(1) & ((\inst4|s_setAtual[0]~4\) # (GND)))
-- \inst4|s_setAtual[1]~7\ = CARRY((!\inst4|s_setAtual[0]~4\) # (!\inst4|s_setAtual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_setAtual\(1),
	datad => VCC,
	cin => \inst4|s_setAtual[0]~4\,
	combout => \inst4|s_setAtual[1]~6_combout\,
	cout => \inst4|s_setAtual[1]~7\);

-- Location: FF_X55_Y35_N9
\inst4|s_setAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_setAtual[1]~6_combout\,
	sclr => \inst|resetJogoOutput~0_combout\,
	ena => \inst4|s_setAtual[29]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_setAtual\(1));

-- Location: LCCOMB_X55_Y35_N10
\inst4|s_setAtual[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_setAtual[2]~8_combout\ = \inst4|s_setAtual[1]~7\ $ (!\inst4|s_setAtual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|s_setAtual\(2),
	cin => \inst4|s_setAtual[1]~7\,
	combout => \inst4|s_setAtual[2]~8_combout\);

-- Location: FF_X55_Y35_N11
\inst4|s_setAtual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_setAtual[2]~8_combout\,
	sclr => \inst|resetJogoOutput~0_combout\,
	ena => \inst4|s_setAtual[29]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_setAtual\(2));

-- Location: LCCOMB_X107_Y65_N24
\inst17|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux0~0_combout\ = (\inst4|s_setAtual\(1) & (\inst4|s_setAtual\(0) & \inst4|s_setAtual\(2))) # (!\inst4|s_setAtual\(1) & ((!\inst4|s_setAtual\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(1),
	datac => \inst4|s_setAtual\(0),
	datad => \inst4|s_setAtual\(2),
	combout => \inst17|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y65_N26
\inst17|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux1~0_combout\ = (\inst4|s_setAtual\(1) & ((\inst4|s_setAtual\(0)) # (!\inst4|s_setAtual\(2)))) # (!\inst4|s_setAtual\(1) & (\inst4|s_setAtual\(0) & !\inst4|s_setAtual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(1),
	datac => \inst4|s_setAtual\(0),
	datad => \inst4|s_setAtual\(2),
	combout => \inst17|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y65_N16
\inst17|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux2~0_combout\ = (\inst4|s_setAtual\(0)) # ((!\inst4|s_setAtual\(1) & \inst4|s_setAtual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(1),
	datac => \inst4|s_setAtual\(0),
	datad => \inst4|s_setAtual\(2),
	combout => \inst17|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y65_N2
\inst17|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux3~0_combout\ = (\inst4|s_setAtual\(1) & (\inst4|s_setAtual\(0) & \inst4|s_setAtual\(2))) # (!\inst4|s_setAtual\(1) & (\inst4|s_setAtual\(0) $ (\inst4|s_setAtual\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(1),
	datac => \inst4|s_setAtual\(0),
	datad => \inst4|s_setAtual\(2),
	combout => \inst17|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y65_N0
\inst17|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux4~0_combout\ = (\inst4|s_setAtual\(1) & (!\inst4|s_setAtual\(0) & !\inst4|s_setAtual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(1),
	datac => \inst4|s_setAtual\(0),
	datad => \inst4|s_setAtual\(2),
	combout => \inst17|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y65_N22
\inst17|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux5~0_combout\ = (\inst4|s_setAtual\(1) $ (!\inst4|s_setAtual\(0))) # (!\inst4|s_setAtual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(1),
	datac => \inst4|s_setAtual\(0),
	datad => \inst4|s_setAtual\(2),
	combout => \inst17|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y65_N12
\inst17|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux6~0_combout\ = (!\inst4|s_setAtual\(1) & (\inst4|s_setAtual\(0) $ (\inst4|s_setAtual\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_setAtual\(1),
	datac => \inst4|s_setAtual\(0),
	datad => \inst4|s_setAtual\(2),
	combout => \inst17|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y21_N12
\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|s_pont1\(2) $ (VCC)
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst3|s_pont1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(2),
	datad => VCC,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X61_Y21_N14
\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|s_pont1\(3) & (\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst3|s_pont1\(3) & 
-- (!\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst3|s_pont1\(3) & !\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(3),
	datad => VCC,
	cin => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X61_Y21_N16
\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|s_pont1\(4) & (\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst3|s_pont1\(4) & 
-- (!\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst3|s_pont1\(4) & !\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(4),
	datad => VCC,
	cin => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X61_Y21_N18
\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X61_Y21_N28
\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X61_Y21_N10
\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\inst3|s_pont1\(2) & \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_pont1\(2),
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X60_Y21_N26
\inst15|Mod0|auto_generated|divider|divider|StageOut[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ = (\inst3|s_pont1\(1) & !\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_pont1\(1),
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: LCCOMB_X60_Y21_N28
\inst15|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\inst3|s_pont1\(1) & \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_pont1\(1),
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X60_Y21_N10
\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst15|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\inst15|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst15|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\inst15|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => VCC,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X60_Y21_N12
\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X61_Y21_N4
\inst15|Mod0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X60_Y21_N4
\inst15|Mod0|auto_generated|divider|divider|StageOut[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ = (\inst3|s_pont1\(4) & \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(4),
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LCCOMB_X61_Y21_N20
\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X61_Y21_N26
\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\inst3|s_pont1\(3) & \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(3),
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X60_Y21_N14
\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # (!\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))))
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => VCC,
	cin => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X60_Y21_N16
\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst15|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\inst15|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & 
-- !\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datad => VCC,
	cin => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y21_N18
\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X60_Y21_N24
\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\) # 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\)))) # (!\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X60_Y21_N20
\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- ((\inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # (!\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X60_Y21_N22
\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ = (\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst3|s_pont1\(1))) # 
-- (!\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst3|s_pont1\(1),
	datad => \inst15|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LCCOMB_X61_Y23_N8
\inst21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Mux0~0_combout\ = (\inst3|s_pont1\(0) & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # (!\inst3|s_pont1\(0) & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \inst3|s_pont1\(0),
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst21|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y23_N6
\inst21|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Mux1~0_combout\ = (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst3|s_pont1\(0) & (\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # (!\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\inst3|s_pont1\(0)) # 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \inst3|s_pont1\(0),
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst21|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y23_N20
\inst21|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Mux2~0_combout\ = (\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (((!\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & \inst3|s_pont1\(0))))) # 
-- (!\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # 
-- (!\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((\inst3|s_pont1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \inst3|s_pont1\(0),
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst21|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y23_N10
\inst21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Mux3~0_combout\ = (\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((\inst3|s_pont1\(0)))) # 
-- (!\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & !\inst3|s_pont1\(0))))) # (!\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- (!\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (\inst3|s_pont1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \inst3|s_pont1\(0),
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst21|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y23_N4
\inst21|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Mux4~0_combout\ = (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # 
-- (!\inst3|s_pont1\(0))))) # (!\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!\inst3|s_pont1\(0) & 
-- \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \inst3|s_pont1\(0),
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst21|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y23_N18
\inst21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Mux5~0_combout\ = (\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\inst3|s_pont1\(0) & ((\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\))) # (!\inst3|s_pont1\(0) & 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # (!\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst3|s_pont1\(0) $ 
-- (\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \inst3|s_pont1\(0),
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst21|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y23_N12
\inst21|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Mux6~0_combout\ = (\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ 
-- (!\inst3|s_pont1\(0))))) # (!\inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst3|s_pont1\(0) & (\inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ 
-- (!\inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datab => \inst15|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \inst3|s_pont1\(0),
	datad => \inst15|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst21|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y21_N16
\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|s_pont1\(2) $ (VCC)
-- \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst3|s_pont1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(2),
	datad => VCC,
	combout => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X59_Y21_N18
\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|s_pont1\(3) & (\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst3|s_pont1\(3) & 
-- (!\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst3|s_pont1\(3) & !\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(3),
	datad => VCC,
	cin => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X59_Y21_N20
\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|s_pont1\(4) & (\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst3|s_pont1\(4) & 
-- (!\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst3|s_pont1\(4) & !\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(4),
	datad => VCC,
	cin => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X59_Y21_N22
\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X60_Y21_N30
\inst15|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\inst3|s_pont1\(4) & \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont1\(4),
	datad => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X59_Y21_N14
\inst15|Div0|auto_generated|divider|divider|StageOut[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (!\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X59_Y21_N26
\inst15|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (!\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X59_Y21_N24
\inst15|Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|s_pont1\(3),
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X59_Y21_N10
\inst15|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (!\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X59_Y21_N28
\inst15|Div0|auto_generated|divider|divider|StageOut[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\inst3|s_pont1\(2) & \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont1\(2),
	datac => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X59_Y21_N12
\inst15|Div0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|s_pont1\(1),
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X59_Y21_N30
\inst15|Div0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (!\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|s_pont1\(1),
	combout => \inst15|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X59_Y21_N0
\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\inst15|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\) # (\inst15|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datab => \inst15|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datad => VCC,
	cout => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X59_Y21_N2
\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\inst15|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (!\inst15|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & 
-- !\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \inst15|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datad => VCC,
	cin => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X59_Y21_N4
\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\inst15|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\) # 
-- (\inst15|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datab => \inst15|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datad => VCC,
	cin => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X59_Y21_N6
\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst15|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\inst15|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- !\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \inst15|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y21_N8
\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X73_Y1_N8
\inst18|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux1~0_combout\ = (!\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mux1~0_combout\);

-- Location: LCCOMB_X73_Y1_N6
\inst18|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux3~0_combout\ = (!\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mux3~0_combout\);

-- Location: LCCOMB_X73_Y1_N0
\inst18|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux4~0_combout\ = (\inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst15|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mux4~0_combout\);

-- Location: LCCOMB_X58_Y24_N16
\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|s_pont2\(2) $ (VCC)
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst3|s_pont2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(2),
	datad => VCC,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X58_Y24_N18
\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|s_pont2\(3) & (\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst3|s_pont2\(3) & 
-- (!\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst3|s_pont2\(3) & !\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(3),
	datad => VCC,
	cin => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X58_Y24_N20
\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|s_pont2\(4) & (\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst3|s_pont2\(4) & 
-- (!\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst3|s_pont2\(4) & !\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(4),
	datad => VCC,
	cin => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X58_Y24_N22
\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X58_Y24_N14
\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (!\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X58_Y24_N24
\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|s_pont2\(3),
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X58_Y24_N10
\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (!\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X58_Y24_N4
\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\inst3|s_pont2\(2) & \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(2),
	datac => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X59_Y24_N26
\inst16|Mod0|auto_generated|divider|divider|StageOut[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ = (\inst3|s_pont2\(1) & !\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_pont2\(1),
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: LCCOMB_X59_Y24_N24
\inst16|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\inst3|s_pont2\(1) & \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_pont2\(1),
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X59_Y24_N10
\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst16|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\inst16|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst16|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\inst16|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => VCC,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X59_Y24_N12
\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X59_Y24_N14
\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # (!\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))))
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => VCC,
	cin => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X58_Y24_N12
\inst16|Mod0|auto_generated|divider|divider|StageOut[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ = (\inst3|s_pont2\(4) & \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(4),
	datac => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LCCOMB_X58_Y24_N6
\inst16|Mod0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (!\inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X59_Y24_N16
\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst16|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y24_N18
\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y24_N20
\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- ((\inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # (!\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datac => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X59_Y24_N30
\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- ((\inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst16|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X59_Y24_N0
\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ = (\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst3|s_pont2\(1))) # 
-- (!\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst3|s_pont2\(1),
	datad => \inst16|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LCCOMB_X60_Y20_N12
\inst20|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux0~0_combout\ = (\inst3|s_pont2\(0) & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # (!\inst3|s_pont2\(0) & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # (\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \inst3|s_pont2\(0),
	datad => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst20|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y20_N14
\inst20|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux1~0_combout\ = (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst3|s_pont2\(0) & (\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # (!\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\inst3|s_pont2\(0)) # 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \inst3|s_pont2\(0),
	datad => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst20|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y20_N16
\inst20|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux2~0_combout\ = (\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\inst3|s_pont2\(0))))) # 
-- (!\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # 
-- (!\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((\inst3|s_pont2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \inst3|s_pont2\(0),
	datad => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst20|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y20_N2
\inst20|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux3~0_combout\ = (\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((\inst3|s_pont2\(0)))) # 
-- (!\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & !\inst3|s_pont2\(0))))) # (!\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- (!\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (\inst3|s_pont2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \inst3|s_pont2\(0),
	datad => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst20|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y20_N4
\inst20|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux4~0_combout\ = (\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # 
-- (!\inst3|s_pont2\(0))))) # (!\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\inst3|s_pont2\(0) & 
-- \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \inst3|s_pont2\(0),
	datad => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst20|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y20_N10
\inst20|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux5~0_combout\ = (\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\inst3|s_pont2\(0) & ((\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\))) # (!\inst3|s_pont2\(0) & 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # (!\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\inst3|s_pont2\(0) $ 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \inst3|s_pont2\(0),
	datad => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst20|Mux5~0_combout\);

-- Location: LCCOMB_X60_Y20_N28
\inst20|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux6~0_combout\ = (\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\inst3|s_pont2\(0) & (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # (!\inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!\inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- (\inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (\inst3|s_pont2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \inst16|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \inst3|s_pont2\(0),
	datad => \inst16|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \inst20|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y20_N12
\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|s_pont2\(2) $ (VCC)
-- \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst3|s_pont2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(2),
	datad => VCC,
	combout => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X59_Y20_N14
\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|s_pont2\(3) & (\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst3|s_pont2\(3) & 
-- (!\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst3|s_pont2\(3) & !\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pont2\(3),
	datad => VCC,
	cin => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X59_Y20_N16
\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|s_pont2\(4) & (\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst3|s_pont2\(4) & 
-- (!\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst3|s_pont2\(4) & !\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pont2\(4),
	datad => VCC,
	cin => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X59_Y20_N18
\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X59_Y20_N26
\inst16|Div0|auto_generated|divider|divider|StageOut[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (!\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X59_Y20_N4
\inst16|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst3|s_pont2\(4),
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X59_Y20_N6
\inst16|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X59_Y20_N28
\inst16|Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|s_pont2\(3),
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X59_Y20_N10
\inst16|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (!\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X59_Y20_N24
\inst16|Div0|auto_generated|divider|divider|StageOut[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst3|s_pont2\(2),
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X59_Y20_N22
\inst16|Div0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (!\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst3|s_pont2\(1),
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X59_Y20_N20
\inst16|Div0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|s_pont2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst3|s_pont2\(1),
	combout => \inst16|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X60_Y20_N18
\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\inst16|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\) # (\inst16|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datab => \inst16|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datad => VCC,
	cout => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X60_Y20_N20
\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\inst16|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (!\inst16|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & 
-- !\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \inst16|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datad => VCC,
	cin => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X60_Y20_N22
\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\inst16|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\) # 
-- (\inst16|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datab => \inst16|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datad => VCC,
	cin => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X60_Y20_N24
\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst16|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & (!\inst16|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & 
-- !\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datab => \inst16|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datad => VCC,
	cin => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y20_N26
\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y1_N28
\inst19|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~0_combout\ = (!\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst19|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y1_N18
\inst19|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~0_combout\ = (!\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst19|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y1_N16
\inst19|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux4~0_combout\ = (\inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst16|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst19|Mux4~0_combout\);

ww_lcd_on <= \lcd_on~output_o\;

ww_lcd_blon <= \lcd_blon~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_i2c_sclk <= \i2c_sclk~output_o\;

ww_i2c_sdat <= \i2c_sdat~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;
END structure;


