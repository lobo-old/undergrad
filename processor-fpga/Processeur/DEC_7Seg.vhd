library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity DEC_7Seg is
	port(A: in std_logic_vector (3 downto 0);
	Vout:out std_logic_vector (6 downto 0)
	);
end DEC_7Seg;

architecture arch of DEC_7Seg is
SIGNAL Vseg : std_logic_vector (6 downto 0);

BEGIN
PROCESS(A)
BEGIN
CASE A IS
	when "0000" => Vseg <="0111111";
	when "0001" => Vseg <="0000110";
	when "0010" => Vseg <="1011011";
	when "0011" => Vseg <="1001111";
	when "0100" => Vseg <="1100110";
	when "0101" => Vseg <="1101101";
	when "0110" => Vseg <="1111101";
	when "0111" => Vseg <="0000111";
	when "1000" => Vseg <="1111111";
	when "1001" => Vseg <="1101111";
	when "1010" =>	Vseg <="1110111";
	when "1011" =>	Vseg <="1111100";
	when "1100" => Vseg <="0111001";
	when "1101" => Vseg <="1011110";
	when "1110" => Vseg <="1111001";
	when "1111" => Vseg <="1110001";
	WHEN others => Vseg <= "0111111";
END CASE;
	Vout <= NOT(Vseg);
END PROCESS ;
end arch;