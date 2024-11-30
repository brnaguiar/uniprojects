library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity displaySet is
	port( setNumber : in  std_logic_vector(2 downto 0);
			numberSet : out std_logic_vector(4 downto 0);
			letterS   : out std_logic_vector(7 downto 0);
			letterE   : out std_logic_vector(7 downto 0);
			letterT   : out std_logic_vector(7 downto 0)); 
end displaySet;  

architecture Behavioral of displaySet is

begin

	letterS <= "00010010";
	
	letterE <= "00000110";
	
	letterT <= "00000111";
	
	numberSet <= "00" & setNumber ;
	
end Behavioral;

