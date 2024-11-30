library ieee;
use ieee.std_logic_1164.all;

entity xor2_1 is
	
	port(in0, in1 : in std_logic;
		  out0	  : out std_logic);
	
end xor2_1;

architecture behavioral of xor2_1 is
begin
		
		out0 <= (in0 and not in1) or (not in0 and in1);

end behavioral;

