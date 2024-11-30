library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;

entity displayWinner is
	port( clk 		      : in  std_logic;
			setPontuacao1  : in  std_logic_vector(1 downto 0);
			setPontuacao2  : in  std_logic_vector(1 downto 0);
			letterJ        : out std_logic_vector(7 downto 0);
			letterO        : out std_logic_vector(7 downto 0);
			letterG        : out std_logic_vector(7 downto 0);
			letterA        : out std_logic_vector(7 downto 0);
			letterD        : out std_logic_vector(7 downto 0);
			letterR        : out std_logic_vector(7 downto 0);
			numberX        : out std_logic_vector(7 downto 0);
			letterN        : out std_logic_vector(7 downto 0);
			letterH        : out std_logic_vector(7 downto 0);
			letterU        : out std_logic_vector(7 downto 0);
			letterS        : out std_logic_vector(7 downto 0);
			letterE        : out std_logic_vector(7 downto 0);
			letterT        : out std_logic_vector(7 downto 0);
			letterY        : out std_logic_vector(7 downto 0);
			letterI        : out std_logic_vector(7 downto 0);
			letterM        : out std_logic_vector(7 downto 0);
			letterB        : out std_logic_vector(7 downto 0);
			letterP        : out std_logic_vector(7 downto 0);
			letterK        : out std_logic_vector(7 downto 0);
			letterbarra    : out std_logic_vector(7 downto 0);
			letterC        : out std_logic_vector(7 downto 0);
			letterNUM       : out std_logic_vector(7 downto 0);
			pontoExclamacao: out std_logic_vector(7 downto 0);
			winner         : out std_logic
			);
			
end displayWinner;

architecture Behavioral of displayWinner is
	

begin
	
	process(setPontuacao1, setPontuacao2)
	begin
		
			if(setPontuacao1 = "11") then -- jogador1
				winner <= '1';
				numberX <= "00110001"; --ascii code
			elsif(setPontuacao2 = "11") then
				winner <= '1';
				numberX <= "00110010";
			else
				winner <= '0';
				--numberX <= "00110001";
			end if;
		
	end process;

	
	letterJ <= "01101010"; --
	letterO <= "01101111";
	letterG <= "01100111"; --
	letterA <= "01100001";
	letterD <= "01100100";
	letterR <= "01110010";
	letterN <= "01101110";
	letterH <= "01101000";
	letterU <= "01110101";
	letterS <= "01110011";
	letterE <= "01100101";
	letterT <= "01110100";
	letterY <= "01111001";
	letterI <= "01101001";
	letterM <= "01101101";
	letterB <= "01100010";
	letterP <= "01110000";
	letterK <= "01101011";
	letterbarra <= "00101111";
	letterC <= "01100011";
	letterNUM <= "00110001";
	pontoExclamacao <= "00100001";
	
end Behavioral;
--  --d--