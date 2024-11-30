library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity conversor is
	port(counterInput : in  std_logic_vector(3 downto 0);
		  unidades : out std_logic_vector(3 downto 0);
		  dezenas  : out std_logic_vector(3 downto 0));
end conversor;

architecture Behavioral of conversor is
	
	signal s_unidades : std_logic_vector(3 downto 0);
	signal s_dezenas  : std_logic_vector(3 downto 0);
	
begin
	
	process(counterInput)
	begin
		if(counterInput < "0110")then
			s_unidades <= counterInput;
			s_dezenas  <= "0000";
		elsif(counterInput = "0110") then
			s_unidades <= "0001";
			s_dezenas  <= "0001";
		else
			s_unidades <= "0010";
			s_dezenas  <= "0001";
		end if;
	end process;
	
	unidades <= s_unidades;
	dezenas  <= s_dezenas;
	
end Behavioral;