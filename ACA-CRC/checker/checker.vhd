library ieee;
use ieee.Std_logic_1164.all;
use ieee.numeric_std.all;

entity checker is
	port(clk    : in  std_logic;
		  data_in : in  std_logic;
		  error  : out std_logic);
		  
end checker;

architecture structure of checker is

	signal reminder: std_logic_vector(7 downto 0) := (others => '0');
	signal s_flag: std_logic := '0';
	signal s_xor : std_logic_vector(4 downto 0) := (others => '0');
	
	component DFlipFlop is 
			 PORT (clk, D: IN STD_LOGIC;
					 Q, nQ: OUT STD_LOGIC);
	end component;
	
	component xor2_1 is
		port(in0, in1 : in std_logic;
		     out0	  : out std_logic);
		  end component;

	component controlROM is
		port(	clk	  : in  std_logic;
			rem_in   : in  std_logic_vector(7 downto 0);
			flag       : out std_logic := '0');
	end component;   
	
	begin
		
	--FFD
		xor1 : xor2_1 port map (data_in, reminder(7), s_xor(0));
		flipFlop1 : DFlipFlop port map(clk, s_xor(0), reminder(0));
		
		xor2 : xor2_1 port map (reminder(0), reminder(7), s_xor(1));
		flipFlop2 : DFlipFlop port map(clk, s_xor(1),reminder(1));
		
		xor3 : xor2_1 port map (reminder(1), reminder(7), s_xor(2));
		flipFlop3 : DFlipFlop port map(clk, s_xor(2), reminder(2));	
		
		xor4 : xor2_1 port map (reminder(2), reminder(7), s_xor(3));
		flipFlop4 : DFlipFlop port map(clk, s_xor(3), reminder(3));
		
		flipFlop5 : DFlipFlop port map(clk, reminder(3), reminder(4));
		
		xor5: xor2_1 port map (reminder(4), reminder(7), s_xor(4));
		flipFlop6 : DFlipFlop port map(clk, s_xor(4), reminder(5));	
		
		flipFlop7 : DFlipFlop port map(clk, reminder(5), reminder(6));	
		
		flipFlop8 : DFlipFlop port map(clk, reminder(6), reminder(7));	
			
	-- ROM de Controlo
		cR1 : controlROM port map(clk, reminder, s_flag);
	
	error <= s_flag;
 
end structure;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity controlROM is
	port(	clk	  : in  std_logic;
			rem_in  : in  std_logic_vector(7 downto 0);
			flag   : out std_logic := '0');

end controlROM;

architecture behavior of controlROM is

	signal s_clkCounter : std_logic_vector(4 downto 0) := "00000";
	
begin
	
	process (clk)
	begin
		if (clk = '1') AND (clk'EVENT) 
			then if(s_clkCounter = "11000") 
				then s_clkCounter <= "00000";
				flag <= (rem_in(0) or rem_in(1) or rem_in(2) or rem_in(3) or rem_in(4) or rem_in(5) or rem_in(6) or rem_in(7));
			end if;
			s_clkCounter <= std_logic_vector(unsigned(s_clkCounter) + 1);
		end if;
	end process;
	
end behavior;   
		
		