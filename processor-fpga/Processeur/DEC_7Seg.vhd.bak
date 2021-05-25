library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity DEC_7Seg is
	port(A: in std_logic_vector (3 downto 0);
	VSeg:out std_logic_vector (6 downto 0)
	);
end DEC_7Seg;

architecture arch of DEC_7Seg is
BEGIN
PROCESS(A)
BEGIN
CASE A IS
	WHEN "0000" => VSeg <= "1000000";
	WHEN "0001" => VSeg <= "1111001";
	WHEN "0010" => VSeg <= "0100100";
	WHEN "0011" => VSeg <= "0110000";
	WHEN "0100" => VSeg <= "0011001";
	WHEN "0101" => VSeg <= "0010010";
	WHEN "0110" => VSeg <= "0000010";
	WHEN "0111" => VSeg <= "1111000";
	WHEN "1000" => VSeg <= "0000000";
	WHEN "1001" => VSeg <= "0010000";
	WHEN others => VSeg <= "0111111";
END CASE;
END PROCESS ;
end arch;