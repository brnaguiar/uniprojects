library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;

entity CounterJog is
	port( clk 		      : in  std_logic;
			reset 	      : in  std_logic;
			jogador1Ganhou : in  std_logic;
			jogador2Ganhou : in  std_logic;
			pontJog1       : out std_logic_vector(4 downto 0);
			pontJog2       : out std_logic_vector(4 downto 0);
			setGanhou1     : out std_logic;
			setGanhou2     : out std_logic);
end CounterJog;

architecture Behavioral of CounterJog is

	signal s_pont1 : integer := 0;
	signal s_pont2 : integer := 0;

begin

p1:	process(clk, s_pont1 , s_pont2)
		begin
			if(rising_edge(clk)) then
				if(reset = '1') then
					s_pont1 <= 0;
					s_pont2 <= 0;
					setGanhou1 <= '0';
					setGanhou2 <= '0';					
				elsif(s_pont1 >= 25) and (abs(s_pont1-s_pont2) >= 2) then
					setGanhou1 <= '1';
				elsif(s_pont2 >= 25) and (abs(s_pont2-s_pont1) >= 2) then
					setGanhou2 <= '1';
				elsif(s_pont1 = 30) then
					setGanhou1 <= '1';
				elsif(s_pont2 = 30) then
					setGanhou2 <= '1';
				elsif(jogador1Ganhou = '1') then
					s_pont1 <= s_pont1 + 1;
					setGanhou1 <= '0';
					setGanhou2 <= '0';
				elsif(jogador2Ganhou = '1') then
					s_pont2 <= s_pont2 + 1;
					setGanhou1 <= '0';
					setGanhou2 <= '0';
				else 
					setGanhou1 <= '0';
					setGanhou2 <= '0';
				end if;
			end if;
			pontJog1 <= conv_std_logic_vector(s_pont1, 5);
			pontJog2 <= conv_std_logic_vector(s_pont2, 5);
		end process;
end Behavioral;