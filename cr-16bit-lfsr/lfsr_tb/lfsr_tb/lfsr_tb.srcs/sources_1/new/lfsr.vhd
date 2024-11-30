library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lfsr is

    Generic (period : natural range 0 to 65536 := 0);

    Port (in_data : in std_logic_vector(15 downto 0);
          clk : in std_logic;
          out_data : out std_logic_vector(15 downto 0));

end lfsr;

architecture Behavioral of lfsr is
    signal s_data : std_logic_vector(15 downto 0);
    signal s_cnt : natural range 0 to 65540;
    signal s_out : std_logic_vector(15 downto 0); -- q

begin

    process(clk)
    begin

        if (rising_edge(clk)) then

            if (s_cnt = 0) then 
                s_data <= in_data;
                s_cnt <= s_cnt + 1; 
            end if;

            if (s_cnt > 0) and (s_cnt <= period) then  
                s_data <= (s_data(0) xor s_data(1) xor s_data(3) xor s_data(12)) & s_data(15 downto 1);
                s_cnt <= s_cnt + 1; 
            end if;
            
            if  (s_cnt > period)  then   
                s_out <= s_data;
                s_cnt <= s_cnt;
            end if;
            
        end if;

    end process;
 
    out_data <= s_out;

end Behavioral;


