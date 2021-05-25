library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity DEC_7Seg8bits is
	port(A: in std_logic_vector (7 downto 0);
	Vout:out std_logic_vector (6 downto 0)
	);
end DEC_7Seg8bits;

architecture arch of DEC_7Seg8bits is
BEGIN
PROCESS(A)
BEGIN
CASE A IS
	when "00000000" => Vout <="0111111";
	when "00000001" => Vout <="0000110";
	when "00000010" => Vout <="1011011";
	when "00000011" => Vout <="1001111";
	when "00000100" => Vout <="1100110";
	when "00000101" => Vout <="1101101";
	when "00000110" => Vout <="1111101";
	when "00000111" => Vout <="0000111";
	when "00001000" => Vout <="1111111";
	when "00001001" => Vout <="1101111";
	when "00001010" =>	Vout <="1110111";
	when "00001011" =>	Vout <="1111100";
	when "00001100" => Vout <="0111001";
	when "00001101" => Vout <="1011110";
	when "00001110" => Vout <="1111001";
	when "00001111" => Vout <="1110001";
	WHEN others => Vout <= "0111111";
END CASE;
END PROCESS ;
end arch;