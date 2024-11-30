-- No diagrama de blocos está "stop" mas aqui está "dFreeze". Serve para parar o tempo dos numeros enquanto eles 
-- estão a ser mostrados no display hex.

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity StateMachine is
	port( clk	   : in  std_logic;
			start	   : in  std_logic;
		   dFreeze  : in  std_logic;
			load	   : in  std_logic;
		   sort     : in  std_logic;
		   mostrar  : out std_logic;
		   parado   : out std_logic;
			novoSet  : out std_logic;
			reset    : out std_logic);
end StateMachine;

architecture Behavioral of StateMachine is

	type TState is (S0, S1, S2, S3, S4, S5);
	signal s_pState, s_nState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			s_pState <= s_nState;
		end if;
	end process;

	comb_proc : process(s_pState, dFreeze, start, load, sort)
	begin
		case (s_pState) is
		when S0 =>
			mostrar <= '0';
			parado  <= '0';
			novoSet <= '0';
			reset   <= '1';
			if(start ='1') then
				s_nState <= S1;
			else
				s_nState <= S0;
			end if;
			
		when S1 =>
			mostrar <= '0';
			parado <= '0';
			novoSet <= '0';
			reset <= '0';
			if (load = '1') then
				s_nState <= S2;
			else
				s_nState <= S1;
			end if;
			
		when S2 =>
			mostrar <= '0';
			parado <= '0';
			novoSet <= '1';
			reset <= '1';
			s_nState <= S3;
			
		when S3 =>
			mostrar <= '0';
			parado <= '0';
			novoSet <= '0';
			reset <= '1';
			if (sort = '1') then
				s_nState <= S4;
			elsif (start = '1') then
				s_nState <= S1;
			else
				s_nState <= S3;
			end if;
			
		when S4 =>
			mostrar <= '1';
			parado <= '0';
			novoSet <= '0';
			reset <= '1';
			if (start = '1') then
				s_nState <= S1;
			elsif (dFreeze = '1') then
				s_nState <= S5;
			else
				s_nState <= S4;
			end if;

		when S5 =>
			mostrar <= '1';
			parado <= '1';
			novoSet <= '0';
			reset <= '1';
			if (dFreeze = '1') then
				s_nState <= S4 after 10 ns;
			else
				s_nState <= S5 after 10 ns;
			end if;

		when others =>
			s_nState <= S0;
			
		end case;
	end process;
end Behavioral;