library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;

entity SetCounter is
	port( clk 		      : in  std_logic;
			reset 	      : in  std_logic;
			setGanhou1     : in  std_logic;
			setGanhou2     : in  std_logic;
			setAtual       : out std_logic_vector(2 downto 0);
			setPontuacao1  : out std_logic_vector(1 downto 0);
			setPontuacao2  : out std_logic_vector(1 downto 0);
			everySet       : out std_logic); 
end SetCounter;

architecture Behavioral of SetCounter is

	signal s_set1 : integer := 0;
	signal s_set2 : integer := 0;
	signal s_setAtual : integer := 0;

begin
	
	process(clk, s_setAtual)
	begin
		
		if(rising_edge(clk)) then
			if(reset = '1') then
				everySet <= '0';
				s_set1 <= 0;
				s_set2 <= 0;
				s_setAtual <= 0;
				setAtual <= "000";
				setPontuacao1 <= "00";
				setPontuacao2 <= "00";
			elsif(setGanhou1 = '1') then
				everySet <= '1';
				s_setAtual <= s_setAtual + 1;
				s_set1 <= s_set1 + 1;
			elsif(setGanhou2 = '1') then
				everySet <= '1';
				s_setAtual <= s_setAtual + 1;
				s_set2 <= s_set2 + 1;
			end if;
		end if;
		setAtual <= conv_std_logic_vector(s_setAtual,3);
		setPontuacao1 <= conv_std_logic_vector(s_set1,2);
		setPontuacao2 <= conv_std_logic_vector(s_set2,2);
	end process;
end Behavioral;