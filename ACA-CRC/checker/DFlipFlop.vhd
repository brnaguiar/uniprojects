LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DFlipFlop IS
  PORT (clk, D: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
END DFlipFlop;

ARCHITECTURE behavior OF DFlipFlop IS
BEGIN
  PROCESS (clk)
  BEGIN
   IF (clk = '1') AND (clk'EVENT)
		THEN Q <= D;
		nQ <= NOT D;
	 END IF;
  END PROCESS;
END behavior;

