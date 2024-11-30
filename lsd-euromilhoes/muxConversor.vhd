library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity muxConversor is
	port(muxInput : in  std_logic_vector(5 downto 0);
		  unidades : out std_logic_vector(3 downto 0);
		  dezenas  : out std_logic_vector(3 downto 0));
end muxConversor;

architecture Behavioral of muxConversor is
	
	signal s_dezenas, s_unidades : unsigned(5 downto 0);
	signal s_input : unsigned(5 downto 0);
	
begin
	s_input <= unsigned(muxInput);
	s_dezenas <= s_Input / "001010";
	s_unidades <= s_Input rem "001010";
	dezenas <= std_logic_vector(s_dezenas(3 downto 0));
	unidades <= std_logic_vector(s_unidades(3 downto 0));

end Behavioral;