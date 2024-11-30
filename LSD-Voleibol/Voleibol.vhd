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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"
-- CREATED		"Fri Jun 02 23:58:16 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Voleibol IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		KEY :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW :  IN  STD_LOGIC_VECTOR(0 TO 0);
		lcd_on :  OUT  STD_LOGIC;
		lcd_blon :  OUT  STD_LOGIC;
		lcd_rw :  OUT  STD_LOGIC;
		lcd_en :  OUT  STD_LOGIC;
		lcd_rs :  OUT  STD_LOGIC;
		i2c_sclk :  OUT  STD_LOGIC;
		i2c_sdat :  OUT  STD_LOGIC;
		HEX0 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX2 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX3 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX4 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX5 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX6 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX7 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		lcd_data :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END Voleibol;

ARCHITECTURE bdf_type OF Voleibol IS 

COMPONENT statemachine
	PORT(clk : IN STD_LOGIC;
		 resetSetIn : IN STD_LOGIC;
		 jogarSetIn : IN STD_LOGIC;
		 jogador1Ponto : IN STD_LOGIC;
		 jogador2Ponto : IN STD_LOGIC;
		 resetJogo : IN STD_LOGIC;
		 winner : IN STD_LOGIC;
		 resetSetOutput : OUT STD_LOGIC;
		 resetJogoOutput : OUT STD_LOGIC;
		 jogador1Ganhou : OUT STD_LOGIC;
		 jogador2Ganhou : OUT STD_LOGIC;
		 initialState : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displayset
	PORT(setNumber : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 letterE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 numberSet : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bcdconvert
	PORT(pontuacao : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 displayDezenas : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		 displayUnidades : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT seven_segment_decoder
	PORT(enable : IN STD_LOGIC;
		 code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 leds : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lcd_tl
	PORT(clock_50 : IN STD_LOGIC;
		 initialState : IN STD_LOGIC;
		 everySet : IN STD_LOGIC;
		 winner : IN STD_LOGIC;
		 i2c_sclk : INOUT STD_LOGIC;
		 i2c_sdat : INOUT STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 barra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 c : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 e : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 g : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 h : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 j : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 k : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 lcd_data : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 m : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 n : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 nUM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 nX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 o : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 pontoExclamacao : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 r : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 s : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 t : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 lcd_on : OUT STD_LOGIC;
		 lcd_blon : OUT STD_LOGIC;
		 lcd_rw : OUT STD_LOGIC;
		 lcd_en : OUT STD_LOGIC;
		 lcd_rs : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displaywinner
	PORT(clk : IN STD_LOGIC;
		 setPontuacao1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 setPontuacao2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 winner : OUT STD_LOGIC;
		 letterA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterbarra : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterH : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterI : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterJ : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterK : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterNUM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterO : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterU : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 letterY : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 numberX : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 pontoExclamacao : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT debouncer
GENERIC (clock_frequency : REAL;
			initial_level : STD_LOGIC;
			window_duration : REAL
			);
	PORT(clock : IN STD_LOGIC;
		 dirty : IN STD_LOGIC;
		 clean : OUT STD_LOGIC;
		 zero_to_one_pulse : OUT STD_LOGIC;
		 one_to_zero_pulse : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT counterjog
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 jogador1Ganhou : IN STD_LOGIC;
		 jogador2Ganhou : IN STD_LOGIC;
		 setGanhou1 : OUT STD_LOGIC;
		 setGanhou2 : OUT STD_LOGIC;
		 pontJog1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		 pontJog2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT setcounter
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 setGanhou1 : IN STD_LOGIC;
		 setGanhou2 : IN STD_LOGIC;
		 everySet : OUT STD_LOGIC;
		 setAtual : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 setPontuacao1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 setPontuacao2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	clk :  STD_LOGIC;
SIGNAL	reset :  STD_LOGIC;
SIGNAL	winner :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_59 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_61 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_58 <= '1';



b2v_inst : statemachine
PORT MAP(clk => clk,
		 resetSetIn => SYNTHESIZED_WIRE_0,
		 jogarSetIn => SYNTHESIZED_WIRE_1,
		 jogador1Ponto => SYNTHESIZED_WIRE_2,
		 jogador2Ponto => SYNTHESIZED_WIRE_3,
		 resetJogo => reset,
		 winner => winner,
		 resetSetOutput => SYNTHESIZED_WIRE_51,
		 resetJogoOutput => SYNTHESIZED_WIRE_59,
		 jogador1Ganhou => SYNTHESIZED_WIRE_53,
		 jogador2Ganhou => SYNTHESIZED_WIRE_54,
		 initialState => SYNTHESIZED_WIRE_13);


b2v_inst10 : displayset
PORT MAP(setNumber => SYNTHESIZED_WIRE_4,
		 letterE => HEX2,
		 letterS => HEX3,
		 letterT => HEX1,
		 numberSet => SYNTHESIZED_WIRE_8);



b2v_inst15 : bcdconvert
PORT MAP(pontuacao => SYNTHESIZED_WIRE_5,
		 displayDezenas => SYNTHESIZED_WIRE_10,
		 displayUnidades => SYNTHESIZED_WIRE_43);


b2v_inst16 : bcdconvert
PORT MAP(pontuacao => SYNTHESIZED_WIRE_6,
		 displayDezenas => SYNTHESIZED_WIRE_12,
		 displayUnidades => SYNTHESIZED_WIRE_39);


b2v_inst17 : seven_segment_decoder
PORT MAP(enable => SYNTHESIZED_WIRE_58,
		 code => SYNTHESIZED_WIRE_8,
		 leds => HEX0);


b2v_inst18 : seven_segment_decoder
PORT MAP(enable => SYNTHESIZED_WIRE_58,
		 code => SYNTHESIZED_WIRE_10,
		 leds => HEX5);


b2v_inst19 : seven_segment_decoder
PORT MAP(enable => SYNTHESIZED_WIRE_58,
		 code => SYNTHESIZED_WIRE_12,
		 leds => HEX7);


b2v_inst2 : lcd_tl
PORT MAP(clock_50 => clk,
		 initialState => SYNTHESIZED_WIRE_13,
		 everySet => SYNTHESIZED_WIRE_14,
		 winner => winner,
		 i2c_sclk => i2c_sclk,
		 i2c_sdat => i2c_sdat,
		 a => SYNTHESIZED_WIRE_15,
		 b => SYNTHESIZED_WIRE_16,
		 barra => SYNTHESIZED_WIRE_17,
		 c => SYNTHESIZED_WIRE_18,
		 d => SYNTHESIZED_WIRE_19,
		 e => SYNTHESIZED_WIRE_20,
		 g => SYNTHESIZED_WIRE_21,
		 h => SYNTHESIZED_WIRE_22,
		 i => SYNTHESIZED_WIRE_23,
		 j => SYNTHESIZED_WIRE_24,
		 k => SYNTHESIZED_WIRE_25,
		 lcd_data => lcd_data,
		 m => SYNTHESIZED_WIRE_26,
		 n => SYNTHESIZED_WIRE_27,
		 nUM => SYNTHESIZED_WIRE_28,
		 nX => SYNTHESIZED_WIRE_29,
		 o => SYNTHESIZED_WIRE_30,
		 p => SYNTHESIZED_WIRE_31,
		 pontoExclamacao => SYNTHESIZED_WIRE_32,
		 r => SYNTHESIZED_WIRE_33,
		 s => SYNTHESIZED_WIRE_34,
		 t => SYNTHESIZED_WIRE_35,
		 u => SYNTHESIZED_WIRE_36,
		 y => SYNTHESIZED_WIRE_37,
		 lcd_on => lcd_on,
		 lcd_blon => lcd_blon,
		 lcd_rw => lcd_rw,
		 lcd_en => lcd_en,
		 lcd_rs => lcd_rs);


b2v_inst20 : seven_segment_decoder
PORT MAP(enable => SYNTHESIZED_WIRE_58,
		 code => SYNTHESIZED_WIRE_39,
		 leds => HEX6);


b2v_inst202 : displaywinner
PORT MAP(clk => clk,
		 setPontuacao1 => SYNTHESIZED_WIRE_40,
		 setPontuacao2 => SYNTHESIZED_WIRE_41,
		 winner => winner,
		 letterA => SYNTHESIZED_WIRE_15,
		 letterB => SYNTHESIZED_WIRE_16,
		 letterbarra => SYNTHESIZED_WIRE_17,
		 letterC => SYNTHESIZED_WIRE_18,
		 letterD => SYNTHESIZED_WIRE_19,
		 letterE => SYNTHESIZED_WIRE_20,
		 letterG => SYNTHESIZED_WIRE_21,
		 letterH => SYNTHESIZED_WIRE_22,
		 letterI => SYNTHESIZED_WIRE_23,
		 letterJ => SYNTHESIZED_WIRE_24,
		 letterK => SYNTHESIZED_WIRE_25,
		 letterM => SYNTHESIZED_WIRE_26,
		 letterN => SYNTHESIZED_WIRE_27,
		 letterNUM => SYNTHESIZED_WIRE_28,
		 letterO => SYNTHESIZED_WIRE_30,
		 letterP => SYNTHESIZED_WIRE_31,
		 letterR => SYNTHESIZED_WIRE_33,
		 letterS => SYNTHESIZED_WIRE_34,
		 letterT => SYNTHESIZED_WIRE_35,
		 letterU => SYNTHESIZED_WIRE_36,
		 letterY => SYNTHESIZED_WIRE_37,
		 numberX => SYNTHESIZED_WIRE_29,
		 pontoExclamacao => SYNTHESIZED_WIRE_32);


b2v_inst21 : seven_segment_decoder
PORT MAP(enable => SYNTHESIZED_WIRE_58,
		 code => SYNTHESIZED_WIRE_43,
		 leds => HEX4);


b2v_inst22 : debouncer
GENERIC MAP(clock_frequency => 50000000.0,
			initial_level => '0',
			window_duration => 0.1
			)
PORT MAP(clock => clk,
		 dirty => SYNTHESIZED_WIRE_44,
		 zero_to_one_pulse => SYNTHESIZED_WIRE_0);


b2v_inst23 : debouncer
GENERIC MAP(clock_frequency => 50000000.0,
			initial_level => '0',
			window_duration => 0.1
			)
PORT MAP(clock => clk,
		 dirty => SYNTHESIZED_WIRE_45,
		 zero_to_one_pulse => SYNTHESIZED_WIRE_1);


b2v_inst24 : debouncer
GENERIC MAP(clock_frequency => 50000000.0,
			initial_level => '0',
			window_duration => 0.1
			)
PORT MAP(clock => clk,
		 dirty => SYNTHESIZED_WIRE_46,
		 zero_to_one_pulse => SYNTHESIZED_WIRE_2);


b2v_inst25 : debouncer
GENERIC MAP(clock_frequency => 50000000.0,
			initial_level => '0',
			window_duration => 0.1
			)
PORT MAP(clock => clk,
		 dirty => SYNTHESIZED_WIRE_47,
		 zero_to_one_pulse => SYNTHESIZED_WIRE_3);


SYNTHESIZED_WIRE_52 <= SYNTHESIZED_WIRE_59 OR SYNTHESIZED_WIRE_60 OR SYNTHESIZED_WIRE_61 OR SYNTHESIZED_WIRE_51;


b2v_inst3 : counterjog
PORT MAP(clk => clk,
		 reset => SYNTHESIZED_WIRE_52,
		 jogador1Ganhou => SYNTHESIZED_WIRE_53,
		 jogador2Ganhou => SYNTHESIZED_WIRE_54,
		 setGanhou1 => SYNTHESIZED_WIRE_61,
		 setGanhou2 => SYNTHESIZED_WIRE_60,
		 pontJog1 => SYNTHESIZED_WIRE_5,
		 pontJog2 => SYNTHESIZED_WIRE_6);


SYNTHESIZED_WIRE_44 <= NOT(KEY(0));



SYNTHESIZED_WIRE_45 <= NOT(KEY(1));



SYNTHESIZED_WIRE_46 <= NOT(KEY(2));



SYNTHESIZED_WIRE_47 <= NOT(KEY(3));



b2v_inst4 : setcounter
PORT MAP(clk => clk,
		 reset => SYNTHESIZED_WIRE_59,
		 setGanhou1 => SYNTHESIZED_WIRE_61,
		 setGanhou2 => SYNTHESIZED_WIRE_60,
		 everySet => SYNTHESIZED_WIRE_14,
		 setAtual => SYNTHESIZED_WIRE_4,
		 setPontuacao1 => SYNTHESIZED_WIRE_40,
		 setPontuacao2 => SYNTHESIZED_WIRE_41);

clk <= CLOCK_50;
reset <= SW(0);

END bdf_type;