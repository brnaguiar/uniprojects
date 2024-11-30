library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity auxNumberSort is

	port( clk                  	 : in  std_logic; 
			
			novoSet       				 : in  std_logic;
			antigoInput0  				 : in  std_logic_vector(5 downto 0);
			antigoInput1  				 : in  std_logic_vector(5 downto 0);
			antigoInput2  				 : in  std_logic_vector(5 downto 0);
			antigoInput3  				 : in  std_logic_vector(5 downto 0);
			antigoInput4  				 : in  std_logic_vector(5 downto 0);
			novoInput0    				 : in  std_logic_vector(5 downto 0); 
			novoInput1    				 : in  std_logic_vector(5 downto 0);
			novoInput2    				 : in  std_logic_vector(5 downto 0);
			novoInput3    				 : in  std_logic_vector(5 downto 0);
			novoInput4    				 : in  std_logic_vector(5 downto 0);
			muxOutput0   				 : out std_logic_vector(5 downto 0);
			muxOutput1    				 : out std_logic_vector(5 downto 0);
			muxOutput2    				 : out std_logic_vector(5 downto 0);
			muxOutput3    				 : out std_logic_vector(5 downto 0);
			muxOutput4    		  		 : out std_logic_vector(5 downto 0);
			
			primeiraFaseInput0    	 : in  std_logic_vector(5 downto 0);
			primeiraFaseInput1    	 : in  std_logic_vector(5 downto 0);
			primeiraFaseInput2    	 : in  std_logic_vector(5 downto 0);
			primeiraFaseInput3    	 : in  std_logic_vector(5 downto 0);
			primeiraFaseInput4     	 : in  std_logic_vector(5 downto 0);
			primeiraFaseOutput0   	 : out std_logic_vector(5 downto 0);
			primeiraFaseOutput1   	 : out std_logic_vector(5 downto 0);
			primeiraFaseOutput2   	 : out std_logic_vector(5 downto 0);
			primeiraFaseOutput3   	 : out std_logic_vector(5 downto 0);
			primeiraFaseOutput4    	 : out std_logic_vector(5 downto 0);
			
			segundaFaseInput0    	 : in  std_logic_vector(5 downto 0);
			segundaFaseInput1    	 : in  std_logic_vector(5 downto 0);
			segundaFaseInput2    	 : in  std_logic_vector(5 downto 0);
			segundaFaseInput3    	 : in  std_logic_vector(5 downto 0);
			segundaFaseInput4   	 	 : in  std_logic_vector(5 downto 0);
			segundaFaseOutput0   	 : out std_logic_vector(5 downto 0);
			segundaFaseOutput1   	 : out std_logic_vector(5 downto 0);
			segundaFaseOutput2   	 : out std_logic_vector(5 downto 0);
			segundaFaseOutput3       : out std_logic_vector(5 downto 0);
			segundaFaseOutput4       : out std_logic_vector(5 downto 0);
			
	      ordenacaoFinal0          : in  std_logic_vector(5 downto 0);
			ordenacaoFinal1          : in  std_logic_vector(5 downto 0);
			ordenacaoFinal2          : in  std_logic_vector(5 downto 0);
			ordenacaoFinal3          : in  std_logic_vector(5 downto 0);
			ordenacaoFinal4          : in  std_logic_vector(5 downto 0);
			ordenacaoFinalCompleta   : out std_logic);

end auxNumberSort;

architecture custom of auxNumberSort is

begin

	-- NOVA ORDENACAO ---------------------------
	process(novoSet, novoInput0, novoInput1, novoInput2, novoInput3, novoInput4, antigoInput0, antigoInput1, antigoInput2, antigoInput3, antigoInput4)
		begin
			if (novoSet = '1') then
				muxOutput0 <= antigoInput0;
				muxOutput1 <= antigoInput1;
				muxOutput2 <= antigoInput2;
				muxOutput3 <= antigoInput3;
				muxOutput4 <= antigoInput4;
			else
				muxOutput0 <= novoInput0;
				muxOutput1 <= novoInput1;
				muxOutput2 <= novoInput2;
				muxOutput3 <= novoInput3;
				muxOutput4 <= novoInput4;
			end if;
	end process;
	-- ---------------------------------------------
	
	-- 1º FASE DA ORDENACAO ------------------------
		
	primeiraFase0: entity work.auxSort(Combinatorial)
	port map( clk => clk,
				 auxInput0  => primeiraFaseInput0,
				 auxInput1  => primeiraFaseInput1,
				 auxOutput0  => primeiraFaseOutput0,
				 auxOutput1  => primeiraFaseOutput1);

	primeiraFase1: entity work.auxSort(Combinatorial)
	port map( clk => clk,
				 auxInput0  => primeiraFaseInput2,
				 auxInput1  => primeiraFaseInput3,
				 auxOutput0  => primeiraFaseOutput2,
				 auxOutput1  => primeiraFaseOutput3);
	
	primeiraFaseOutput4 <= primeiraFaseInput4;
	
	-- -----------------------------------------------
	
	-- 2º FASE DA ORDENACAO --------------------------
	
	segundaFase0: entity work.auxSort(Combinatorial)
	port map( clk => clk,
				 auxInput0   => segundaFaseInput1,
				 auxInput1   => segundaFaseInput2,
				 auxOutput0  => segundaFaseOutput1,
				 auxOutput1   => segundaFaseOutput2);

	segundaFase1: entity work.auxSort(Combinatorial)
	port map( clk => clk,
				 auxInput0   => segundaFaseInput3,
				 auxInput1   => segundaFaseInput4,
				 auxOutput0  => segundaFaseOutput3,
				 auxOutput1  => segundaFaseOutput4);
	segundaFaseOutput0 <= segundaFaseInput0;
	
	-- -----------------------------------------------
	
	-- ORDENACAO FINAL -------------------------------
	
	process(ordenacaoFinal0, ordenacaoFinal1, ordenacaoFinal2, ordenacaoFinal3, ordenacaoFinal4)
	begin
		if(ordenacaoFinal0 < ordenacaoFinal1 and ordenacaoFinal1 < ordenacaoFinal2 and ordenacaoFinal2 < ordenacaoFinal3 and ordenacaoFinal3 < ordenacaoFinal4) then
			ordenacaoFinalCompleta <= '1';
		else
			ordenacaoFinalCompleta <= '0';
		end if;
	end process;
	
end custom;
	
	