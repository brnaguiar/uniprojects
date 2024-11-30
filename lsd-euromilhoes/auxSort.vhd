library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity auxSort is

	port( clk : in  std_logic;
			auxInput0  : in  std_logic_vector(5 downto 0);
			auxInput1  : in  std_logic_vector(5 downto 0);
			auxOutput0  : out std_logic_vector(5 downto 0);
			auxOutput1  : out std_logic_vector(5 downto 0));

end auxSort;

architecture Combinatorial of auxSort is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (auxInput0 < auxInput1) then
				auxOutput0 <= auxInput0;
				auxOutput1 <= auxInput1;
			else
				auxOutput0 <= auxInput1;
				auxOutput1 <= auxInput0;
			end if;
		end if;
	end process;
end Combinatorial;