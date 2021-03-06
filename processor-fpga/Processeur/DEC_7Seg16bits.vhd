library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity DEC_7Seg16bits is
	port(A: in std_logic_vector (15 downto 0);
	Vout:out std_logic_vector (6 downto 0)
	);
end DEC_7Seg16bits;

architecture arch of DEC_7Seg16bits is
BEGIN
PROCESS(A)
BEGIN
CASE A IS
	when "0000000000000000" => Vout <="0111111";
	when "0000000000000001" => Vout <="0000110";
	when "0000000000000010" => Vout <="1011011";
	when "0000000000000011" => Vout <="1001111";
	when "0000000000000100" => Vout <="1100110";
	when "0000000000000101" => Vout <="1101101";
	when "0000000000000110" => Vout <="1111101";
	when "0000000000000111" => Vout <="0000111";
	when "0000000000001000" => Vout <="1111111";
	when "0000000000001001" => Vout <="1101111";
	when "0000000000001010" =>	Vout <="1110111";
	when "0000000000001011" =>	Vout <="1111100";
	when "0000000000001100" => Vout <="0111001";
	when "0000000000001101" => Vout <="1011110";
	when "0000000000001110" => Vout <="1111001";
	when "0000000000001111" => Vout <="1110001";
	WHEN others => Vout <= "0111111";
END CASE;
END PROCESS ;
end arch;