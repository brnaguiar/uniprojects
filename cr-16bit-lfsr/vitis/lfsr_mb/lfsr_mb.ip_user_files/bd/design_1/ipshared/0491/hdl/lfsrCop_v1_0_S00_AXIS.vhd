library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lfsrCop_v1_0_S00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        dataValid    : out std_logic; -- indica que o processamento ja foi concluido e existem dados validos, que podem ser enviados para o microblaze
        lfsrData : out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0); -- valor dos dados...
        readEnabled  : in  std_logic; -- indicacao por parte do mastar que os dados estao a ser transmitidos para o microblaze...
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- AXI4Stream sink: Clock
		S_AXIS_ACLK	: in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN	: in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY	: out std_logic;
		-- Data in
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST	: in std_logic;
		-- Data is in valid
		S_AXIS_TVALID	: in std_logic
	);
end lfsrCop_v1_0_S00_AXIS;

architecture arch_imp of lfsrCop_v1_0_S00_AXIS is
	signal s_ready    : std_logic;
    signal s_validOut : std_logic;
    signal s_dataOut  : std_logic_vector(31 downto 0); 

	signal s_cnt : natural range 0 to 65540;
	signal s_bit : std_logic;
	signal s_data : std_logic_vector(15 downto 0);
	signal s_tmp : natural range 0 to 65536; 

begin
    s_ready <= (not s_validOut) or readEnabled; -- estamos prontos de receber dados do microblaze
    process(S_AXIS_ACLK)
	begin
        if (rising_edge (S_AXIS_ACLK)) then
	        if (S_AXIS_ARESETN = '0') then   --  reset  --  
	           s_validOut <= '0';
	           s_dataOut  <= (others => '0');
       
            elsif (S_AXIS_TVALID = '1') then -- se o microblaze tem dados 
	    		if (s_ready = '1') then -- se nos estamos prontos para os consumir 
			    	s_validOut <= '0';
					-- LFSR CODE
					if (s_cnt = 0) then 
						s_data <= S_AXIS_TDATA(15 downto 0); 
						s_tmp <= to_integer(unsigned(S_AXIS_TDATA(31 downto 16)));      
						s_cnt <= s_cnt + 1; 
					end if;
					--   
	           	end if;
	        
	        elsif (readEnabled = '1') then -- processador a ler os dados do processamento 
	           s_validOut <= '0';                  
            end if;
			-- LFSR Code
			if (s_cnt > 0) and (s_cnt <= s_tmp) then  
					s_data <= (s_data(0) xor s_data(1) xor s_data(3) xor s_data(12)) & s_data(15 downto 1);
				s_validOut <= '0'; 
				s_cnt <= s_cnt + 1; 
			end if;

			if  (s_cnt > s_tmp)  then   
 				s_dataOut(s_data'range) <= s_data;
				s_cnt <= 0;
				s_validOut <= '1';   
			end if;  
			--      
        end if;      
    end process;  
  
	dataValid     <=s_validOut  ;--  
	lfsrData  <= s_dataOut;  
	S_AXIS_TREADY <= s_ready;	 
end arch_imp;         
  


    