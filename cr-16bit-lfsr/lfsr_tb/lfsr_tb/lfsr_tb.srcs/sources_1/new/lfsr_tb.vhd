library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lfsr_tb is
end lfsr_tb;

architecture Behavioral of lfsr_tb is

    Component lfsr is 
        Generic (period :  natural range 0 to 65536 := 0);
        Port (in_data : in std_logic_vector(15 downto 0);
              clk : in std_logic;
              out_data : out std_logic_vector(15 downto 0));
    End Component;

    signal s_period : natural range 0 to 65536 := 0;
    signal s_data :  std_logic_vector(15 downto 0);
    signal s_clock : std_logic;
    signal s_out   : std_logic_vector(15 downto 0);

begin

    uut: lfsr generic map (period => 1) port map (in_data => s_data, clk => s_clock, out_data => s_out);

    clock_proc : process 
    begin
        s_clock <= '0'; wait for 100 ns;
        s_clock <= '1'; wait for 100 ns;
    end process;

    sim_proc : process
    begin
        s_data <= "1101101011000001";
        wait for 600 ns; --
        --s_period <= 1;

        s_data <= "1001101111010001";
        wait for 600 ns; 

        s_data <= "1101001010001011";
        wait for 600 ns; 

    end process;  



end Behavioral;
