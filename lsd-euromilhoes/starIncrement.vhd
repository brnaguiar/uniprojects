-- Incrementa o valor 1 desde o número 1 até ao número 50, que é o intervalo jogável dos números do Euromilhões.

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity starIncrement is
	port( clk    : in  std_logic;
			reset  : in  std_logic;
			input  : in  std_logic_vector(3 downto 0); 
         incrementOut : out std_logic_vector(11 downto 0);
			load  	: out std_logic);
end starIncrement;

architecture Behavioral of starIncrement is
	
	signal s_count   : unsigned(1 downto 0);
	signal s_dataFlow : std_logic_vector(5 downto 0);
	signal s_incrementOut : std_logic_vector(11 downto 0);
	
	begin
	
	process(clk)
		begin
			if(rising_edge(clk)) then
				if ( reset = '1' ) then
					s_count <= "00";
					load <= '0';
				elsif(s_count = "10") then
					load <='1';
					s_count <= s_count;
				elsif(input = "0000" or input >= "1100") then -- intervalo 1 - 11
						s_count <= s_count;
				else
					s_count <= s_count + 1; -- contador de 0 até 1... (00,01) < 10 
					s_dataFlow <= "00" & input;
					s_incrementOut <= s_incrementOut(5 downto 0) & s_dataFlow; 
				end if;
			end if;
	end process;
		
	incrementOut <= s_incrementOut;
	
end Behavioral;	
		