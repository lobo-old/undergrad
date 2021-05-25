library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.Numeric_std.all;

ENTITY CompteurM_Nbits IS
--Passage de la valeure Max du compteur en parametre( Demi periode)
	GENERIC (m:integer:=10;n:integer:=4); --parametre generique fixant M(module du compteur) et N(numéero du bits de sortie)
	--GENERIC (m:integer:=4); --parametre generique fixant le numéro de bits du compteur
PORT (
	CLK_in: IN STD_LOGIC; -- Clock en entree
	RESET: IN STD_LOGIC; -- reset le compteur à la valeur 0
	START: IN STD_LOGIC; --ce signal autorise le comptage
	V_COUNT: OUT STD_LOGIC_VECTOR ( n-1 Downto 0); -- Valeur du Compteur
	CLK_Out:OUT STD_LOGIC -- signal Clock en Sortie
);
END ENTITY;

ARCHITECTURE Arch of CompteurM_Nbits is
	SIGNAL Val_Max: UNSIGNED (n-1 downto 0);
	SIGNAL Cpt_int: UNSIGNED (n-1 downto 0);
	SIGNAL Sgn_out: STD_LOGIC:='0';

BEGIN
--cablage des ports
	CLK_Out<=Sgn_out;
	V_count<= STD_LOGIC_VECTOR (Cpt_int); --Conversion Unsigned --> Std_logic_vector
	Val_Max<=TO_UNSIGNED (m ,Val_Max'Length);--conversion Integer--> Unsigned
-- ******* methode synchrone **********
PROCESS (CLK_in , RESET)
BEGIN
	IF (RESET = '1') then --reset asynchrone
	Cpt_int<=(OTHERS =>'0' ); --mise à du compteur
	ELSE
		if (CLK_in'event and CLK_in='1') THEN
		-- IF (RISING_EDGE (CLK_in)) THEN -- (Ces deux lignes sont équivalentes)
			IF (START='1') THEN --si le comptage est autorisé
			-- val_max-1 Pour que la retenue soit mise a jour qd Cpt_int=Val_max
				IF (Cpt_int= Val_Max-1) THEN
				Cpt_int<= (OTHERS =>'0' ); --remise à zero du compteur
				Sgn_out<='1'; --generation du signal de sortie ou retenue
				ELSE
				Cpt_int<=Cpt_int+1;
				Sgn_out<='0'; --generation du signal de sortie ou retenue
				END IF;
			END IF;
		END IF;
	END IF;
END PROCESS;
-- Validation de la retenue
--Sgn_out <= '1' when (Count = Val_Max) else '0';
end Arch;