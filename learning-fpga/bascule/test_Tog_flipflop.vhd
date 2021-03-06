LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY test_Tog_flipflop IS
PORT
(
	Pst : IN STD_LOGIC;
	Rst : IN STD_LOGIC;
	T : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END test_Tog_flipflop;

ARCHITECTURE Arch OF test_Tog_flipflop IS

BEGIN
PROCESS(Clk,Rst,Pst)
VARIABLE Q_s : STD_LOGIC;

BEGIN
IF (Rst = '0') THEN
	Q_s := '0';
ELSIF (Pst = '0') THEN
	Q_s := '1';
ELSIF (RISING_EDGE(Clk)) THEN
	Q_s := Q_s XOR T;
END IF;
	Q <= Q_s;

END PROCESS;
END Arch;