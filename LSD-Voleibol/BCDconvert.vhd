library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity BCDconvert is
	port( pontuacao       : in  std_logic_vector(4 downto 0);
			displayDezenas  : out std_logic_vector(4 downto 0);
			displayUnidades : out std_logic_vector(4 downto 0)); 
end BCDconvert;

architecture Behavioral of BCDconvert is

	signal s_dezenas, s_unidades : unsigned(4 downto 0);
	signal s_pontuacoes : unsigned(4 downto 0);

begin

	s_pontuacoes <= unsigned(pontuacao);
	
	s_dezenas <= s_pontuacoes / "01010";
	
	s_unidades <= s_pontuacoes rem "01010";
	
	displayDezenas <= "0" & std_logic_vector(s_dezenas(3 downto 0));
	
	displayUnidades <= "0" & std_logic_vector(s_unidades(3 downto 0));
	
end Behavioral;