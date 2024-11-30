library ieee;
use ieee.std_logic_1164.all;

entity encoder is
	
	port(	a : in std_logic_vector(15 downto 0);
			x : out std_logic_vector(23 downto 0)
	);
	
end encoder;

architecture behavioral of encoder is

	signal s_a : std_logic_vector(13 downto 0) := (others => '0');
	signal s_b : std_logic_vector(24 downto 0) := (others => '0');

	component xor2_1 is
		port (in0, in1 : in std_logic;
		      out0	  : out std_logic);
	end component;
	
	begin 
	
		-- common combinations 
	
		A0 : xor2_1 port map(a(0), a(1), s_a(0));
		B0 :  xor2_1 port map(a(6), a(7), s_a(1));
		C0 :  xor2_1 port map(a(8), a(9), s_a(2));
		D0 :  xor2_1 port map(s_a(1), s_a(2), s_a(3));
		E0 :  xor2_1 port map(a(2), a(4), s_a(4));
		F0 :  xor2_1 port map(a(3), a(5), s_a(5));
		G0 :  xor2_1 port map(a(10), a(11), s_a(6));
		H0 :  xor2_1 port map(a(1), a(10), s_a(7));
		I0 :  xor2_1 port map(a(12), a(15), s_a(8));
		J0 :  xor2_1 port map(a(9), a(14), s_a(9));
		L0 :  xor2_1 port map(a(13), s_a(5), s_a(10));
		M0 :  xor2_1 port map(s_a(3), s_a(4), s_a(11));
		N0 :  xor2_1 port map(s_a(0), s_a(4), s_a(12));
		O0 :  xor2_1 port map(s_a(6), s_a(8), s_a(13)); 
		
		
		-- output 
		
		-- x7
		A1 :  xor2_1 port map(a(14), s_a(6), s_b(0));
		B1 :  xor2_1 port map(s_b(0), s_a(11), s_b(1));
		x(7) <= s_b(1);
		
		
		-- x6
		D1 :  xor2_1 port map(s_a(3), s_a(7), s_b(3));
		E1 :  xor2_1 port map(s_b(3), s_a(10), s_b(4));
		x(6) <= s_b(4);
		
		
		--x5
		F1 :  xor2_1 port map(a(0), a(5), s_b(5));
		G1 :  xor2_1 port map(a(12), s_a(11), s_b(6));
		H1 :  xor2_1 port map(s_b(5), s_b(6), s_b(7));
		x(5) <= s_b(7);
		
		
		--x4
		I1 :  xor2_1 port map(a(2), s_a(5), s_b(8));
		J1 :  xor2_1 port map(s_a(7), s_a(9), s_b(9));
		L1 :  xor2_1 port map(s_b(8), s_b(9), s_b(10));
		x(4) <= s_b(10);
		
		
		--x3
		M1 :  xor2_1 port map(a(13), s_a(2), s_b(11));
		N1	:	xor2_1 port map(s_b(11), s_a(12), s_b(12));
		x(3) <= s_b(12);
		
		
		--x2
		O1 :  xor2_1 port map(a(3), a(6), s_b(13));
		P1	:	xor2_1 port map(s_a(9), s_a(12), s_b(14));
		Q1 :  xor2_1 port map(s_b(13), s_b(14), s_b(15));
		R1 :  xor2_1 port map(s_b(15), s_a(13), s_b(16));
		x(2) <= s_b(16);
		
		--x1
		S1	:	xor2_1 port map(a(4), a(15), s_b(17));
		T1 :  xor2_1 port map(s_a(0), s_a(1), s_b(18));
		U1	:	xor2_1 port map(s_b(17), s_b(18), s_b(19));
		V1 :	xor2_1 port map(s_b(19), s_a(10), s_b(20));
		x(1) <= s_b(20);
		
		--x0
		W1	:	xor2_1 port map(a(0), a(7), s_b(21));
		X1 :  xor2_1 port map(s_a(2), s_a(5), s_b(22));
		Y1	:	xor2_1 port map(s_b(21), s_b(22), s_b(23));
		Z1 :	xor2_1 port map(s_b(23), s_a(13), s_b(24));
		x(0) <= s_b(24);
		x(23 downto 8) <= a;

end behavioral;