LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY test_D_latch IS
PORT
(
	D : IN STD_LOGIC;
	En : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END test_D_latch;

ARCHITECTURE ARCH OF test_D_latch IS
BEGIN
PROCESS(En,D)
BEGIN
IF (En = '1') THEN
	Q <= D;
END IF;
END PROCESS;
END ARCH;