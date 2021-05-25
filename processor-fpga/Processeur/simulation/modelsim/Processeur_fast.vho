-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "01/11/2016 21:11:03"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SCOMP2 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	program_counter_out : OUT std_logic_vector(7 DOWNTO 0);
	register_AC_out : OUT std_logic_vector(15 DOWNTO 0);
	memory_data_register_out : OUT std_logic_vector(15 DOWNTO 0);
	memory_address_register_out : OUT std_logic_vector(7 DOWNTO 0);
	memory_write_out : OUT std_logic;
	instruction_register_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END SCOMP2;

-- Design Ports Information
-- program_counter_out[0]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- program_counter_out[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- program_counter_out[2]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- program_counter_out[3]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- program_counter_out[4]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- program_counter_out[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- program_counter_out[6]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- program_counter_out[7]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[0]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[2]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[4]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[6]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[7]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[8]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[9]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[10]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[11]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[12]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[13]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[14]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_AC_out[15]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[0]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[4]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[6]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[7]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[8]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[9]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[10]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[11]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[12]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[13]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[14]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_data_register_out[15]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[0]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[1]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[2]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[3]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[4]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[5]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[6]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_address_register_out[7]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memory_write_out	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[0]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[1]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[2]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[3]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[4]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[7]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[8]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[10]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[11]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[12]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[13]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[14]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction_register_out[15]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SCOMP2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_program_counter_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_register_AC_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_memory_data_register_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_memory_address_register_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_memory_write_out : std_logic;
SIGNAL ww_instruction_register_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \program_counter[5]~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \state.reset_pc~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \state.reset_pc~regout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \state.decode~feeder_combout\ : std_logic;
SIGNAL \state.decode~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state.execute_AND~regout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \state.execute_add~regout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.execute_JZ~regout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.execute_store~regout\ : std_logic;
SIGNAL \state.execute_store2~regout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.execute_JNZ~regout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \register_AC[1]~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \state.execute_LDI~regout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state.execute_XOR~regout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \instruction_register[0]~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \state.execute_OR~regout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state.execute_ADDI~regout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.execute_jump~regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \instruction_register[11]~feeder_combout\ : std_logic;
SIGNAL \instruction_register[14]~feeder_combout\ : std_logic;
SIGNAL \program_counter[5]~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \program_counter[5]~2_combout\ : std_logic;
SIGNAL \program_counter[0]~3_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \instruction_register[15]~feeder_combout\ : std_logic;
SIGNAL \instruction_register[10]~feeder_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \state.fetch~regout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.execute_load~regout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL register_AC : std_logic_vector(15 DOWNTO 0);
SIGNAL program_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL instruction_register : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
program_counter_out <= ww_program_counter_out;
register_AC_out <= ww_register_AC_out;
memory_data_register_out <= ww_memory_data_register_out;
memory_address_register_out <= ww_memory_address_register_out;
memory_write_out <= ww_memory_write_out;
instruction_register_out <= ww_instruction_register_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (register_AC(15) & register_AC(14) & register_AC(13) & register_AC(12) & register_AC(11) & register_AC(10) & register_AC(9) & register_AC(8) & register_AC(7) & register_AC(6) & 
register_AC(5) & register_AC(4) & register_AC(3) & register_AC(2) & register_AC(1) & register_AC(0));

\memory|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Selector25~0_combout\ & \Selector26~0_combout\ & \Selector27~0_combout\ & \Selector28~0_combout\ & \Selector29~0_combout\ & \Selector30~0_combout\ & \Selector31~0_combout\ & \Selector32~0_combout\);

\memory|auto_generated|q_a\(0) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|auto_generated|q_a\(1) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|auto_generated|q_a\(2) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|auto_generated|q_a\(3) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|auto_generated|q_a\(4) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|auto_generated|q_a\(5) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|auto_generated|q_a\(6) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|auto_generated|q_a\(7) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\memory|auto_generated|q_a\(8) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\memory|auto_generated|q_a\(9) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\memory|auto_generated|q_a\(10) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\memory|auto_generated|q_a\(11) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\memory|auto_generated|q_a\(12) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\memory|auto_generated|q_a\(13) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\memory|auto_generated|q_a\(14) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\memory|auto_generated|q_a\(15) <= \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCCOMB_X10_Y33_N14
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = program_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(program_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => program_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X10_Y33_N18
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (program_counter(2) & (\Add0~3\ $ (GND))) # (!program_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((program_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => program_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X10_Y33_N20
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (program_counter(3) & (!\Add0~5\)) # (!program_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!program_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => program_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X11_Y31_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (instruction_register(1) & ((register_AC(1) & (\Add2~1\ & VCC)) # (!register_AC(1) & (!\Add2~1\)))) # (!instruction_register(1) & ((register_AC(1) & (!\Add2~1\)) # (!register_AC(1) & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((instruction_register(1) & (!register_AC(1) & !\Add2~1\)) # (!instruction_register(1) & ((!\Add2~1\) # (!register_AC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(1),
	datab => register_AC(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X11_Y31_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((register_AC(2) $ (instruction_register(2) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((register_AC(2) & ((instruction_register(2)) # (!\Add2~3\))) # (!register_AC(2) & (instruction_register(2) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(2),
	datab => instruction_register(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X11_Y31_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (instruction_register(5) & ((register_AC(5) & (\Add2~9\ & VCC)) # (!register_AC(5) & (!\Add2~9\)))) # (!instruction_register(5) & ((register_AC(5) & (!\Add2~9\)) # (!register_AC(5) & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((instruction_register(5) & (!register_AC(5) & !\Add2~9\)) # (!instruction_register(5) & ((!\Add2~9\) # (!register_AC(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(5),
	datab => register_AC(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X11_Y31_N20
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (register_AC(10) & (\Add2~19\ $ (GND))) # (!register_AC(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((register_AC(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => register_AC(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X11_Y31_N22
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (register_AC(11) & (!\Add2~21\)) # (!register_AC(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!register_AC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => register_AC(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X11_Y33_N6
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\state.execute_jump~regout\ & (!\state.decode~regout\ & (!\state.fetch~regout\ & \state.reset_pc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_jump~regout\,
	datab => \state.decode~regout\,
	datac => \state.fetch~regout\,
	datad => \state.reset_pc~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X12_Y33_N10
\program_counter[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \program_counter[5]~0_combout\ = (instruction_register(13)) # ((instruction_register(9)) # (!instruction_register(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_register(13),
	datac => instruction_register(9),
	datad => instruction_register(12),
	combout => \program_counter[5]~0_combout\);

-- Location: LCCOMB_X12_Y31_N12
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!register_AC(3) & (!register_AC(2) & (!register_AC(1) & !register_AC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(3),
	datab => register_AC(2),
	datac => register_AC(1),
	datad => register_AC(0),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y31_N6
\Selector23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (register_AC(0) & ((\state.execute_OR~regout\) # ((\memory|auto_generated|q_a\(0) & \state.execute_AND~regout\)))) # (!register_AC(0) & (\memory|auto_generated|q_a\(0) & (\state.execute_OR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(0),
	datab => \memory|auto_generated|q_a\(0),
	datac => \state.execute_OR~regout\,
	datad => \state.execute_AND~regout\,
	combout => \Selector23~4_combout\);

-- Location: LCCOMB_X12_Y31_N28
\Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\state.execute_OR~regout\) # ((\state.execute_load~regout\) # ((register_AC(1) & \state.execute_AND~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(1),
	datab => \state.execute_AND~regout\,
	datac => \state.execute_OR~regout\,
	datad => \state.execute_load~regout\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X16_Y31_N2
\Selector20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\state.execute_load~regout\) # ((\state.execute_OR~regout\) # ((\state.execute_AND~regout\ & register_AC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_load~regout\,
	datab => \state.execute_AND~regout\,
	datac => \state.execute_OR~regout\,
	datad => register_AC(3),
	combout => \Selector20~2_combout\);

-- Location: LCCOMB_X16_Y31_N30
\Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\state.execute_load~regout\) # ((\state.execute_OR~regout\) # ((\state.execute_AND~regout\ & register_AC(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_load~regout\,
	datab => \state.execute_AND~regout\,
	datac => \state.execute_OR~regout\,
	datad => register_AC(4),
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X16_Y31_N16
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.execute_load~regout\) # ((\state.execute_AND~regout\ & register_AC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.execute_AND~regout\,
	datac => \state.execute_load~regout\,
	datad => register_AC(6),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X17_Y31_N20
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (register_AC(8) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(8))))) # (!register_AC(8) & (((\state.execute_XOR~regout\ & \memory|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => \state.execute_XOR~regout\,
	datac => \memory|auto_generated|q_a\(8),
	datad => register_AC(8),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X12_Y31_N6
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (register_AC(11) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(11))))) # (!register_AC(11) & (\state.execute_XOR~regout\ & ((\memory|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => register_AC(11),
	datac => \state.execute_OR~regout\,
	datad => \memory|auto_generated|q_a\(11),
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X16_Y31_N24
\Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\state.execute_load~regout\) # ((\state.execute_OR~regout\) # ((register_AC(12) & \state.execute_AND~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_load~regout\,
	datab => register_AC(12),
	datac => \state.execute_OR~regout\,
	datad => \state.execute_AND~regout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X17_Y31_N24
\Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\state.execute_OR~regout\) # ((\state.execute_load~regout\) # ((register_AC(14) & \state.execute_AND~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => register_AC(14),
	datac => \state.execute_load~regout\,
	datad => \state.execute_AND~regout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X17_Y31_N6
\Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\state.execute_OR~regout\) # ((\state.execute_load~regout\) # ((\state.execute_AND~regout\ & register_AC(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => \state.execute_AND~regout\,
	datac => \state.execute_load~regout\,
	datad => register_AC(15),
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X12_Y33_N12
\state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (instruction_register(9) & (!instruction_register(12) & (\program_counter[5]~1_combout\ & \state.decode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(9),
	datab => instruction_register(12),
	datac => \program_counter[5]~1_combout\,
	datad => \state.decode~regout\,
	combout => \state~21_combout\);

-- Location: LCCOMB_X12_Y33_N6
\state~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (!instruction_register(9) & (instruction_register(13) & (\program_counter[5]~1_combout\ & \state.decode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(9),
	datab => instruction_register(13),
	datac => \program_counter[5]~1_combout\,
	datad => \state.decode~regout\,
	combout => \state~26_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y33_N30
\state.reset_pc~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.reset_pc~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.reset_pc~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X11_Y33_N31
\state.reset_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state.reset_pc~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.reset_pc~regout\);

-- Location: LCCOMB_X10_Y33_N8
\Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\WideOr1~0_combout\ & (((program_counter(0) & \state.reset_pc~regout\)))) # (!\WideOr1~0_combout\ & (instruction_register(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => instruction_register(0),
	datac => program_counter(0),
	datad => \state.reset_pc~regout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X12_Y33_N20
\state.decode~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.decode~feeder_combout\ = \state.fetch~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.fetch~regout\,
	combout => \state.decode~feeder_combout\);

-- Location: LCFF_X12_Y33_N21
\state.decode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state.decode~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.decode~regout\);

-- Location: LCCOMB_X11_Y33_N24
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.fetch~regout\ & (\Add0~6_combout\)) # (!\state.fetch~regout\ & (((\state.reset_pc~regout\ & instruction_register(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \state.reset_pc~regout\,
	datac => instruction_register(3),
	datad => \state.fetch~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X10_Y33_N22
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (program_counter(4) & (\Add0~7\ $ (GND))) # (!program_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((program_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => program_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X10_Y33_N24
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (program_counter(5) & (!\Add0~9\)) # (!program_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!program_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => program_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X10_Y33_N26
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (program_counter(6) & (\Add0~11\ $ (GND))) # (!program_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((program_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => program_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X11_Y31_N0
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (register_AC(0) & (instruction_register(0) $ (VCC))) # (!register_AC(0) & (instruction_register(0) & VCC))
-- \Add2~1\ = CARRY((register_AC(0) & instruction_register(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(0),
	datab => instruction_register(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X11_Y31_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (instruction_register(3) & ((register_AC(3) & (\Add2~5\ & VCC)) # (!register_AC(3) & (!\Add2~5\)))) # (!instruction_register(3) & ((register_AC(3) & (!\Add2~5\)) # (!register_AC(3) & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((instruction_register(3) & (!register_AC(3) & !\Add2~5\)) # (!instruction_register(3) & ((!\Add2~5\) # (!register_AC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(3),
	datab => register_AC(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X12_Y33_N14
\state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (\state~26_combout\ & (!instruction_register(12) & instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~26_combout\,
	datab => instruction_register(12),
	datad => instruction_register(8),
	combout => \state~32_combout\);

-- Location: LCFF_X12_Y33_N15
\state.execute_AND\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~32_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_AND~regout\);

-- Location: LCCOMB_X16_Y31_N10
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.execute_load~regout\) # ((register_AC(5) & \state.execute_AND~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => register_AC(5),
	datac => \state.execute_load~regout\,
	datad => \state.execute_AND~regout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X12_Y31_N16
\Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\state.execute_OR~regout\ & (((register_AC(5)) # (\memory|auto_generated|q_a\(5))))) # (!\state.execute_OR~regout\ & (\state.execute_XOR~regout\ & (register_AC(5) $ (\memory|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => \state.execute_OR~regout\,
	datac => register_AC(5),
	datad => \memory|auto_generated|q_a\(5),
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X12_Y33_N4
\state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~29_combout\ = (\state~19_combout\ & (!instruction_register(12) & !instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~19_combout\,
	datab => instruction_register(12),
	datad => instruction_register(8),
	combout => \state~29_combout\);

-- Location: LCFF_X12_Y33_N5
\state.execute_add\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~29_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_add~regout\);

-- Location: LCCOMB_X14_Y31_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (register_AC(0) & (\memory|auto_generated|q_a\(0) $ (VCC))) # (!register_AC(0) & (\memory|auto_generated|q_a\(0) & VCC))
-- \Add1~1\ = CARRY((register_AC(0) & \memory|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(0),
	datab => \memory|auto_generated|q_a\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X14_Y31_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (register_AC(1) & ((\memory|auto_generated|q_a\(1) & (\Add1~1\ & VCC)) # (!\memory|auto_generated|q_a\(1) & (!\Add1~1\)))) # (!register_AC(1) & ((\memory|auto_generated|q_a\(1) & (!\Add1~1\)) # (!\memory|auto_generated|q_a\(1) & 
-- ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((register_AC(1) & (!\memory|auto_generated|q_a\(1) & !\Add1~1\)) # (!register_AC(1) & ((!\Add1~1\) # (!\memory|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(1),
	datab => \memory|auto_generated|q_a\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X14_Y31_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((register_AC(2) $ (\memory|auto_generated|q_a\(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((register_AC(2) & ((\memory|auto_generated|q_a\(2)) # (!\Add1~3\))) # (!register_AC(2) & (\memory|auto_generated|q_a\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(2),
	datab => \memory|auto_generated|q_a\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X14_Y31_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (register_AC(3) & ((\memory|auto_generated|q_a\(3) & (\Add1~5\ & VCC)) # (!\memory|auto_generated|q_a\(3) & (!\Add1~5\)))) # (!register_AC(3) & ((\memory|auto_generated|q_a\(3) & (!\Add1~5\)) # (!\memory|auto_generated|q_a\(3) & 
-- ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((register_AC(3) & (!\memory|auto_generated|q_a\(3) & !\Add1~5\)) # (!register_AC(3) & ((!\Add1~5\) # (!\memory|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(3),
	datab => \memory|auto_generated|q_a\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X14_Y31_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((register_AC(4) $ (\memory|auto_generated|q_a\(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((register_AC(4) & ((\memory|auto_generated|q_a\(4)) # (!\Add1~7\))) # (!register_AC(4) & (\memory|auto_generated|q_a\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(4),
	datab => \memory|auto_generated|q_a\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X14_Y31_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\memory|auto_generated|q_a\(5) & ((register_AC(5) & (\Add1~9\ & VCC)) # (!register_AC(5) & (!\Add1~9\)))) # (!\memory|auto_generated|q_a\(5) & ((register_AC(5) & (!\Add1~9\)) # (!register_AC(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\memory|auto_generated|q_a\(5) & (!register_AC(5) & !\Add1~9\)) # (!\memory|auto_generated|q_a\(5) & ((!\Add1~9\) # (!register_AC(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(5),
	datab => register_AC(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X12_Y31_N22
\Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\state.execute_LDI~regout\ & ((instruction_register(5)) # ((\state.execute_add~regout\ & \Add1~10_combout\)))) # (!\state.execute_LDI~regout\ & (\state.execute_add~regout\ & ((\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_LDI~regout\,
	datab => \state.execute_add~regout\,
	datac => instruction_register(5),
	datad => \Add1~10_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X12_Y31_N10
\Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (\Selector18~2_combout\) # ((\Selector18~1_combout\) # ((\memory|auto_generated|q_a\(5) & \Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(5),
	datab => \Selector18~0_combout\,
	datac => \Selector18~2_combout\,
	datad => \Selector18~1_combout\,
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X12_Y31_N20
\Selector18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = (\Selector18~3_combout\) # ((\Add2~10_combout\ & \state.execute_ADDI~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \state.execute_ADDI~regout\,
	datad => \Selector18~3_combout\,
	combout => \Selector18~4_combout\);

-- Location: LCCOMB_X12_Y33_N30
\state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!instruction_register(9) & (\program_counter[5]~1_combout\ & (!instruction_register(13) & \state.decode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(9),
	datab => \program_counter[5]~1_combout\,
	datac => instruction_register(13),
	datad => \state.decode~regout\,
	combout => \state~19_combout\);

-- Location: LCCOMB_X11_Y33_N28
\state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (!instruction_register(8) & (\state~19_combout\ & instruction_register(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(8),
	datab => \state~19_combout\,
	datac => instruction_register(12),
	combout => \state~24_combout\);

-- Location: LCFF_X11_Y33_N29
\state.execute_JZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~24_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_JZ~regout\);

-- Location: LCCOMB_X11_Y33_N4
\state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (instruction_register(8) & (\state~19_combout\ & !instruction_register(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(8),
	datab => \state~19_combout\,
	datac => instruction_register(12),
	combout => \state~20_combout\);

-- Location: LCFF_X11_Y33_N5
\state.execute_store\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~20_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_store~regout\);

-- Location: LCFF_X11_Y33_N21
\state.execute_store2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.execute_store~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_store2~regout\);

-- Location: LCCOMB_X12_Y33_N18
\state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\state~19_combout\ & (instruction_register(12) & instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~19_combout\,
	datab => instruction_register(12),
	datad => instruction_register(8),
	combout => \state~25_combout\);

-- Location: LCFF_X12_Y33_N19
\state.execute_JNZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~25_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_JNZ~regout\);

-- Location: LCCOMB_X11_Y33_N20
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\state.execute_JZ~regout\) # ((\state.execute_store2~regout\) # (\state.execute_JNZ~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.execute_JZ~regout\,
	datac => \state.execute_store2~regout\,
	datad => \state.execute_JNZ~regout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X10_Y31_N2
\register_AC[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_AC[1]~0_combout\ = (\WideOr1~0_combout\ & (!\reset~combout\ & (!\WideOr1~1_combout\ & !\state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \reset~combout\,
	datac => \WideOr1~1_combout\,
	datad => \state.fetch~regout\,
	combout => \register_AC[1]~0_combout\);

-- Location: LCFF_X12_Y31_N21
\register_AC[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector18~4_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(5));

-- Location: LCCOMB_X11_Y31_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((register_AC(4) $ (instruction_register(4) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((register_AC(4) & ((instruction_register(4)) # (!\Add2~7\))) # (!register_AC(4) & (instruction_register(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(4),
	datab => instruction_register(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X11_Y31_N12
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((instruction_register(6) $ (register_AC(6) $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((instruction_register(6) & ((register_AC(6)) # (!\Add2~11\))) # (!instruction_register(6) & (register_AC(6) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(6),
	datab => register_AC(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X15_Y31_N24
\Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\state.execute_OR~regout\ & (((register_AC(6)) # (\memory|auto_generated|q_a\(6))))) # (!\state.execute_OR~regout\ & (\state.execute_XOR~regout\ & (register_AC(6) $ (\memory|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => register_AC(6),
	datac => \state.execute_OR~regout\,
	datad => \memory|auto_generated|q_a\(6),
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X12_Y33_N26
\state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (\state~26_combout\ & (instruction_register(12) & !instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~26_combout\,
	datab => instruction_register(12),
	datad => instruction_register(8),
	combout => \state~28_combout\);

-- Location: LCFF_X12_Y33_N27
\state.execute_LDI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~28_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_LDI~regout\);

-- Location: LCCOMB_X14_Y31_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\memory|auto_generated|q_a\(6) $ (register_AC(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\memory|auto_generated|q_a\(6) & ((register_AC(6)) # (!\Add1~11\))) # (!\memory|auto_generated|q_a\(6) & (register_AC(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(6),
	datab => register_AC(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X15_Y31_N22
\Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\state.execute_add~regout\ & ((\Add1~12_combout\) # ((instruction_register(6) & \state.execute_LDI~regout\)))) # (!\state.execute_add~regout\ & (instruction_register(6) & (\state.execute_LDI~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => instruction_register(6),
	datac => \state.execute_LDI~regout\,
	datad => \Add1~12_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X15_Y31_N6
\Selector17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\Selector17~2_combout\) # ((\Selector17~1_combout\) # ((\Selector17~0_combout\ & \memory|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \memory|auto_generated|q_a\(6),
	datac => \Selector17~2_combout\,
	datad => \Selector17~1_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X15_Y31_N8
\Selector17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = (\Selector17~3_combout\) # ((\state.execute_ADDI~regout\ & \Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.execute_ADDI~regout\,
	datac => \Add2~12_combout\,
	datad => \Selector17~3_combout\,
	combout => \Selector17~4_combout\);

-- Location: LCFF_X15_Y31_N9
\register_AC[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector17~4_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(6));

-- Location: LCCOMB_X11_Y31_N14
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (register_AC(7) & ((instruction_register(7) & (\Add2~13\ & VCC)) # (!instruction_register(7) & (!\Add2~13\)))) # (!register_AC(7) & ((instruction_register(7) & (!\Add2~13\)) # (!instruction_register(7) & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((register_AC(7) & (!instruction_register(7) & !\Add2~13\)) # (!register_AC(7) & ((!\Add2~13\) # (!instruction_register(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(7),
	datab => instruction_register(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X10_Y31_N28
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.execute_load~regout\) # ((register_AC(7) & \state.execute_AND~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(7),
	datab => \state.execute_load~regout\,
	datad => \state.execute_AND~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X12_Y33_N22
\state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~30_combout\ = (\state~21_combout\ & (instruction_register(13) & !instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~21_combout\,
	datab => instruction_register(13),
	datad => instruction_register(8),
	combout => \state~30_combout\);

-- Location: LCFF_X12_Y33_N23
\state.execute_XOR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~30_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_XOR~regout\);

-- Location: LCCOMB_X10_Y31_N8
\Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\state.execute_OR~regout\ & ((register_AC(7)) # ((\memory|auto_generated|q_a\(7))))) # (!\state.execute_OR~regout\ & (\state.execute_XOR~regout\ & (register_AC(7) $ (\memory|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(7),
	datab => \state.execute_OR~regout\,
	datac => \memory|auto_generated|q_a\(7),
	datad => \state.execute_XOR~regout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X14_Y31_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (register_AC(7) & ((\memory|auto_generated|q_a\(7) & (\Add1~13\ & VCC)) # (!\memory|auto_generated|q_a\(7) & (!\Add1~13\)))) # (!register_AC(7) & ((\memory|auto_generated|q_a\(7) & (!\Add1~13\)) # (!\memory|auto_generated|q_a\(7) & 
-- ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((register_AC(7) & (!\memory|auto_generated|q_a\(7) & !\Add1~13\)) # (!register_AC(7) & ((!\Add1~13\) # (!\memory|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(7),
	datab => \memory|auto_generated|q_a\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X10_Y31_N18
\Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\state.execute_add~regout\ & ((\Add1~14_combout\) # ((instruction_register(7) & \state.execute_LDI~regout\)))) # (!\state.execute_add~regout\ & (instruction_register(7) & (\state.execute_LDI~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => instruction_register(7),
	datac => \state.execute_LDI~regout\,
	datad => \Add1~14_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X10_Y31_N10
\Selector16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\Selector16~2_combout\) # ((\Selector16~1_combout\) # ((\memory|auto_generated|q_a\(7) & \Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(7),
	datab => \Selector16~0_combout\,
	datac => \Selector16~2_combout\,
	datad => \Selector16~1_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X10_Y31_N12
\Selector16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (\Selector16~3_combout\) # ((\state.execute_ADDI~regout\ & \Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_ADDI~regout\,
	datac => \Add2~14_combout\,
	datad => \Selector16~3_combout\,
	combout => \Selector16~4_combout\);

-- Location: LCFF_X10_Y31_N13
\register_AC[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector16~4_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(7));

-- Location: LCCOMB_X17_Y31_N8
\Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\state.execute_OR~regout\) # ((\state.execute_load~regout\) # ((\state.execute_AND~regout\ & register_AC(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => \state.execute_AND~regout\,
	datac => \state.execute_load~regout\,
	datad => register_AC(8),
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X11_Y31_N16
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (register_AC(8) & (\Add2~15\ $ (GND))) # (!register_AC(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((register_AC(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X14_Y31_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\memory|auto_generated|q_a\(8) $ (register_AC(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\memory|auto_generated|q_a\(8) & ((register_AC(8)) # (!\Add1~15\))) # (!\memory|auto_generated|q_a\(8) & (register_AC(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(8),
	datab => register_AC(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X17_Y31_N10
\Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\state.execute_ADDI~regout\ & ((\Add2~16_combout\) # ((\state.execute_add~regout\ & \Add1~16_combout\)))) # (!\state.execute_ADDI~regout\ & (((\state.execute_add~regout\ & \Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_ADDI~regout\,
	datab => \Add2~16_combout\,
	datac => \state.execute_add~regout\,
	datad => \Add1~16_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X17_Y31_N0
\Selector15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\Selector15~0_combout\) # ((\Selector15~1_combout\) # ((\Selector15~2_combout\ & \memory|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector15~2_combout\,
	datac => \memory|auto_generated|q_a\(8),
	datad => \Selector15~1_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCFF_X17_Y31_N1
\register_AC[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector15~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(8));

-- Location: LCCOMB_X17_Y31_N22
\Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\state.execute_OR~regout\) # ((\state.execute_load~regout\) # ((\state.execute_AND~regout\ & register_AC(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => \state.execute_AND~regout\,
	datac => \state.execute_load~regout\,
	datad => register_AC(9),
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X12_Y31_N26
\Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\state.execute_load~regout\) # ((\state.execute_OR~regout\) # ((register_AC(11) & \state.execute_AND~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_load~regout\,
	datab => register_AC(11),
	datac => \state.execute_OR~regout\,
	datad => \state.execute_AND~regout\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X14_Y31_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (register_AC(9) & ((\memory|auto_generated|q_a\(9) & (\Add1~17\ & VCC)) # (!\memory|auto_generated|q_a\(9) & (!\Add1~17\)))) # (!register_AC(9) & ((\memory|auto_generated|q_a\(9) & (!\Add1~17\)) # (!\memory|auto_generated|q_a\(9) & 
-- ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((register_AC(9) & (!\memory|auto_generated|q_a\(9) & !\Add1~17\)) # (!register_AC(9) & ((!\Add1~17\) # (!\memory|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(9),
	datab => \memory|auto_generated|q_a\(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X14_Y31_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((register_AC(10) $ (\memory|auto_generated|q_a\(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((register_AC(10) & ((\memory|auto_generated|q_a\(10)) # (!\Add1~19\))) # (!register_AC(10) & (\memory|auto_generated|q_a\(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(10),
	datab => \memory|auto_generated|q_a\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X14_Y31_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (register_AC(11) & ((\memory|auto_generated|q_a\(11) & (\Add1~21\ & VCC)) # (!\memory|auto_generated|q_a\(11) & (!\Add1~21\)))) # (!register_AC(11) & ((\memory|auto_generated|q_a\(11) & (!\Add1~21\)) # (!\memory|auto_generated|q_a\(11) 
-- & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((register_AC(11) & (!\memory|auto_generated|q_a\(11) & !\Add1~21\)) # (!register_AC(11) & ((!\Add1~21\) # (!\memory|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(11),
	datab => \memory|auto_generated|q_a\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X12_Y31_N0
\Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Add2~22_combout\ & ((\state.execute_ADDI~regout\) # ((\state.execute_add~regout\ & \Add1~22_combout\)))) # (!\Add2~22_combout\ & (((\state.execute_add~regout\ & \Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \state.execute_ADDI~regout\,
	datac => \state.execute_add~regout\,
	datad => \Add1~22_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X12_Y31_N4
\Selector12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Selector12~0_combout\) # ((\Selector12~1_combout\) # ((\Selector12~2_combout\ & \memory|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector12~2_combout\,
	datac => \memory|auto_generated|q_a\(11),
	datad => \Selector12~1_combout\,
	combout => \Selector12~3_combout\);

-- Location: LCFF_X12_Y31_N5
\register_AC[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector12~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(11));

-- Location: LCCOMB_X16_Y31_N18
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (register_AC(12) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(12))))) # (!register_AC(12) & (\state.execute_XOR~regout\ & ((\memory|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => register_AC(12),
	datac => \state.execute_OR~regout\,
	datad => \memory|auto_generated|q_a\(12),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X11_Y31_N18
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (register_AC(9) & (!\Add2~17\)) # (!register_AC(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!register_AC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X11_Y31_N24
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (register_AC(12) & (\Add2~23\ $ (GND))) # (!register_AC(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((register_AC(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => register_AC(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X14_Y31_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\memory|auto_generated|q_a\(12) $ (register_AC(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\memory|auto_generated|q_a\(12) & ((register_AC(12)) # (!\Add1~23\))) # (!\memory|auto_generated|q_a\(12) & (register_AC(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(12),
	datab => register_AC(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X15_Y31_N16
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\state.execute_add~regout\ & ((\Add1~24_combout\) # ((\state.execute_ADDI~regout\ & \Add2~24_combout\)))) # (!\state.execute_add~regout\ & (\state.execute_ADDI~regout\ & (\Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => \state.execute_ADDI~regout\,
	datac => \Add2~24_combout\,
	datad => \Add1~24_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X16_Y31_N14
\Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\Selector11~0_combout\) # ((\Selector11~1_combout\) # ((\Selector11~2_combout\ & \memory|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~2_combout\,
	datab => \Selector11~0_combout\,
	datac => \memory|auto_generated|q_a\(12),
	datad => \Selector11~1_combout\,
	combout => \Selector11~3_combout\);

-- Location: LCFF_X16_Y31_N15
\register_AC[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector11~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(12));

-- Location: LCCOMB_X16_Y31_N20
\Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\state.execute_load~regout\) # ((\state.execute_OR~regout\) # ((register_AC(13) & \state.execute_AND~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_load~regout\,
	datab => \state.execute_OR~regout\,
	datac => register_AC(13),
	datad => \state.execute_AND~regout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X16_Y31_N26
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (register_AC(13) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(13))))) # (!register_AC(13) & (((\state.execute_XOR~regout\ & \memory|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(13),
	datab => \state.execute_OR~regout\,
	datac => \state.execute_XOR~regout\,
	datad => \memory|auto_generated|q_a\(13),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X11_Y31_N26
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (register_AC(13) & (!\Add2~25\)) # (!register_AC(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!register_AC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => register_AC(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X14_Y31_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\memory|auto_generated|q_a\(13) & ((register_AC(13) & (\Add1~25\ & VCC)) # (!register_AC(13) & (!\Add1~25\)))) # (!\memory|auto_generated|q_a\(13) & ((register_AC(13) & (!\Add1~25\)) # (!register_AC(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\memory|auto_generated|q_a\(13) & (!register_AC(13) & !\Add1~25\)) # (!\memory|auto_generated|q_a\(13) & ((!\Add1~25\) # (!register_AC(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(13),
	datab => register_AC(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X15_Y31_N10
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\state.execute_add~regout\ & ((\Add1~26_combout\) # ((\state.execute_ADDI~regout\ & \Add2~26_combout\)))) # (!\state.execute_add~regout\ & (\state.execute_ADDI~regout\ & (\Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => \state.execute_ADDI~regout\,
	datac => \Add2~26_combout\,
	datad => \Add1~26_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X15_Y31_N30
\Selector10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\Selector10~0_combout\) # ((\Selector10~1_combout\) # ((\memory|auto_generated|q_a\(13) & \Selector10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(13),
	datab => \Selector10~2_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector10~1_combout\,
	combout => \Selector10~3_combout\);

-- Location: LCFF_X15_Y31_N31
\register_AC[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector10~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(13));

-- Location: LCCOMB_X17_Y31_N26
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (register_AC(15) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(15))))) # (!register_AC(15) & (((\state.execute_XOR~regout\ & \memory|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => \state.execute_XOR~regout\,
	datac => \memory|auto_generated|q_a\(15),
	datad => register_AC(15),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X11_Y31_N28
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (register_AC(14) & (\Add2~27\ $ (GND))) # (!register_AC(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((register_AC(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X11_Y31_N30
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = \Add2~29\ $ (register_AC(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => register_AC(15),
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X14_Y31_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\memory|auto_generated|q_a\(14) $ (register_AC(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\memory|auto_generated|q_a\(14) & ((register_AC(14)) # (!\Add1~27\))) # (!\memory|auto_generated|q_a\(14) & (register_AC(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(14),
	datab => register_AC(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X14_Y31_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \memory|auto_generated|q_a\(15) $ (\Add1~29\ $ (register_AC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(15),
	datad => register_AC(15),
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X17_Y31_N28
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\state.execute_ADDI~regout\ & ((\Add2~30_combout\) # ((\state.execute_add~regout\ & \Add1~30_combout\)))) # (!\state.execute_ADDI~regout\ & (((\state.execute_add~regout\ & \Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_ADDI~regout\,
	datab => \Add2~30_combout\,
	datac => \state.execute_add~regout\,
	datad => \Add1~30_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X17_Y31_N30
\Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\Selector8~0_combout\) # ((\Selector8~1_combout\) # ((\Selector8~2_combout\ & \memory|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~2_combout\,
	datab => \Selector8~0_combout\,
	datac => \memory|auto_generated|q_a\(15),
	datad => \Selector8~1_combout\,
	combout => \Selector8~3_combout\);

-- Location: LCFF_X17_Y31_N31
\register_AC[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector8~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(15));

-- Location: M4K_X13_Y31
\memory|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555AAAA0000000000000000000000000000000000000000000003040212011200110210",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:memory|altsyncram_dmp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \state.execute_store~regout\,
	clk0 => \clock~clkctrl_outclk\,
	portadatain => \memory|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y31_N16
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (register_AC(14) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(14))))) # (!register_AC(14) & (((\state.execute_XOR~regout\ & \memory|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => \state.execute_XOR~regout\,
	datac => register_AC(14),
	datad => \memory|auto_generated|q_a\(14),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X17_Y31_N2
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\state.execute_ADDI~regout\ & ((\Add2~28_combout\) # ((\state.execute_add~regout\ & \Add1~28_combout\)))) # (!\state.execute_ADDI~regout\ & (((\state.execute_add~regout\ & \Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_ADDI~regout\,
	datab => \Add2~28_combout\,
	datac => \state.execute_add~regout\,
	datad => \Add1~28_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X17_Y31_N4
\Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\Selector9~0_combout\) # ((\Selector9~1_combout\) # ((\Selector9~2_combout\ & \memory|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~2_combout\,
	datab => \memory|auto_generated|q_a\(14),
	datac => \Selector9~0_combout\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~3_combout\);

-- Location: LCFF_X17_Y31_N5
\register_AC[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector9~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(14));

-- Location: LCCOMB_X12_Y31_N8
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (register_AC(10) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(10))))) # (!register_AC(10) & (\state.execute_XOR~regout\ & ((\memory|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => register_AC(10),
	datac => \state.execute_OR~regout\,
	datad => \memory|auto_generated|q_a\(10),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X12_Y31_N24
\Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\state.execute_load~regout\) # ((\state.execute_OR~regout\) # ((\state.execute_AND~regout\ & register_AC(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_load~regout\,
	datab => \state.execute_AND~regout\,
	datac => \state.execute_OR~regout\,
	datad => register_AC(10),
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X12_Y31_N30
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Add2~20_combout\ & ((\state.execute_ADDI~regout\) # ((\state.execute_add~regout\ & \Add1~20_combout\)))) # (!\Add2~20_combout\ & (((\state.execute_add~regout\ & \Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \state.execute_ADDI~regout\,
	datac => \state.execute_add~regout\,
	datad => \Add1~20_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X12_Y31_N14
\Selector13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~0_combout\) # ((\Selector13~1_combout\) # ((\memory|auto_generated|q_a\(10) & \Selector13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(10),
	datab => \Selector13~0_combout\,
	datac => \Selector13~2_combout\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~3_combout\);

-- Location: LCFF_X12_Y31_N15
\register_AC[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector13~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(10));

-- Location: LCCOMB_X17_Y31_N14
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (register_AC(9) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(9))))) # (!register_AC(9) & (((\state.execute_XOR~regout\ & \memory|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_OR~regout\,
	datab => \state.execute_XOR~regout\,
	datac => \memory|auto_generated|q_a\(9),
	datad => register_AC(9),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X17_Y31_N12
\Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\state.execute_ADDI~regout\ & ((\Add2~18_combout\) # ((\state.execute_add~regout\ & \Add1~18_combout\)))) # (!\state.execute_ADDI~regout\ & (((\state.execute_add~regout\ & \Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_ADDI~regout\,
	datab => \Add2~18_combout\,
	datac => \state.execute_add~regout\,
	datad => \Add1~18_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X17_Y31_N18
\Selector14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\Selector14~0_combout\) # ((\Selector14~1_combout\) # ((\memory|auto_generated|q_a\(9) & \Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(9),
	datab => \Selector14~2_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector14~1_combout\,
	combout => \Selector14~3_combout\);

-- Location: LCFF_X17_Y31_N19
\register_AC[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector14~3_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(9));

-- Location: LCCOMB_X11_Y33_N18
\instruction_register[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instruction_register[0]~0_combout\ = (!\reset~combout\ & \state.fetch~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \state.fetch~regout\,
	combout => \instruction_register[0]~0_combout\);

-- Location: LCFF_X11_Y31_N9
\instruction_register[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(4),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(4));

-- Location: LCCOMB_X16_Y31_N4
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (register_AC(4) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(4))))) # (!register_AC(4) & (\state.execute_XOR~regout\ & ((\memory|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => \state.execute_OR~regout\,
	datac => \memory|auto_generated|q_a\(4),
	datad => register_AC(4),
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X15_Y31_N12
\Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\state.execute_add~regout\ & ((\Add1~8_combout\) # ((instruction_register(4) & \state.execute_LDI~regout\)))) # (!\state.execute_add~regout\ & (instruction_register(4) & (\state.execute_LDI~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => instruction_register(4),
	datac => \state.execute_LDI~regout\,
	datad => \Add1~8_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X16_Y31_N12
\Selector19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\Selector19~0_combout\) # ((\Selector19~1_combout\) # ((\Selector19~2_combout\ & \memory|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~2_combout\,
	datab => \memory|auto_generated|q_a\(4),
	datac => \Selector19~0_combout\,
	datad => \Selector19~1_combout\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X16_Y31_N0
\Selector19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = (\Selector19~3_combout\) # ((\state.execute_ADDI~regout\ & \Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.execute_ADDI~regout\,
	datac => \Add2~8_combout\,
	datad => \Selector19~3_combout\,
	combout => \Selector19~4_combout\);

-- Location: LCFF_X16_Y31_N1
\register_AC[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector19~4_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(4));

-- Location: LCFF_X12_Y33_N29
\instruction_register[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(8),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(8));

-- Location: LCCOMB_X12_Y33_N16
\state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~31_combout\ = (\state~26_combout\ & (!instruction_register(12) & !instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~26_combout\,
	datab => instruction_register(12),
	datad => instruction_register(8),
	combout => \state~31_combout\);

-- Location: LCFF_X12_Y33_N17
\state.execute_OR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~31_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_OR~regout\);

-- Location: LCCOMB_X15_Y31_N14
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (register_AC(3) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(3))))) # (!register_AC(3) & (\state.execute_XOR~regout\ & ((\memory|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => register_AC(3),
	datac => \state.execute_OR~regout\,
	datad => \memory|auto_generated|q_a\(3),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X15_Y31_N0
\Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\state.execute_add~regout\ & ((\Add1~6_combout\) # ((instruction_register(3) & \state.execute_LDI~regout\)))) # (!\state.execute_add~regout\ & (instruction_register(3) & ((\state.execute_LDI~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => instruction_register(3),
	datac => \Add1~6_combout\,
	datad => \state.execute_LDI~regout\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X15_Y31_N18
\Selector20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = (\Selector20~0_combout\) # ((\Selector20~1_combout\) # ((\Selector20~2_combout\ & \memory|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~2_combout\,
	datab => \memory|auto_generated|q_a\(3),
	datac => \Selector20~0_combout\,
	datad => \Selector20~1_combout\,
	combout => \Selector20~3_combout\);

-- Location: LCCOMB_X15_Y31_N26
\Selector20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = (\Selector20~3_combout\) # ((\state.execute_ADDI~regout\ & \Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.execute_ADDI~regout\,
	datac => \Add2~6_combout\,
	datad => \Selector20~3_combout\,
	combout => \Selector20~4_combout\);

-- Location: LCFF_X15_Y31_N27
\register_AC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector20~4_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(3));

-- Location: LCFF_X12_Y33_N1
\instruction_register[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(12),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(12));

-- Location: LCCOMB_X12_Y33_N8
\state~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (\state~26_combout\ & (instruction_register(12) & instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~26_combout\,
	datab => instruction_register(12),
	datad => instruction_register(8),
	combout => \state~27_combout\);

-- Location: LCFF_X12_Y33_N9
\state.execute_ADDI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~27_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_ADDI~regout\);

-- Location: LCCOMB_X16_Y31_N8
\Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\state.execute_load~regout\) # ((\state.execute_OR~regout\) # ((\state.execute_AND~regout\ & register_AC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_load~regout\,
	datab => \state.execute_AND~regout\,
	datac => \state.execute_OR~regout\,
	datad => register_AC(2),
	combout => \Selector21~2_combout\);

-- Location: LCCOMB_X15_Y31_N20
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (register_AC(2) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(2))))) # (!register_AC(2) & (\state.execute_XOR~regout\ & ((\memory|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_XOR~regout\,
	datab => register_AC(2),
	datac => \state.execute_OR~regout\,
	datad => \memory|auto_generated|q_a\(2),
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X15_Y31_N2
\Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\state.execute_add~regout\ & ((\Add1~4_combout\) # ((instruction_register(2) & \state.execute_LDI~regout\)))) # (!\state.execute_add~regout\ & (instruction_register(2) & ((\state.execute_LDI~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => instruction_register(2),
	datac => \Add1~4_combout\,
	datad => \state.execute_LDI~regout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X15_Y31_N28
\Selector21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\Selector21~0_combout\) # ((\Selector21~1_combout\) # ((\memory|auto_generated|q_a\(2) & \Selector21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|auto_generated|q_a\(2),
	datab => \Selector21~2_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector21~1_combout\,
	combout => \Selector21~3_combout\);

-- Location: LCCOMB_X15_Y31_N4
\Selector21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = (\Selector21~3_combout\) # ((\Add2~4_combout\ & \state.execute_ADDI~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \state.execute_ADDI~regout\,
	datad => \Selector21~3_combout\,
	combout => \Selector21~4_combout\);

-- Location: LCFF_X15_Y31_N5
\register_AC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector21~4_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(2));

-- Location: LCCOMB_X10_Y31_N20
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (register_AC(1) & ((\state.execute_OR~regout\) # ((\state.execute_XOR~regout\ & !\memory|auto_generated|q_a\(1))))) # (!register_AC(1) & (\state.execute_XOR~regout\ & ((\memory|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(1),
	datab => \state.execute_XOR~regout\,
	datac => \state.execute_OR~regout\,
	datad => \memory|auto_generated|q_a\(1),
	combout => \Selector22~0_combout\);

-- Location: LCFF_X11_Y31_N3
\instruction_register[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(1),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(1));

-- Location: LCCOMB_X10_Y31_N26
\Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\state.execute_add~regout\ & ((\Add1~2_combout\) # ((instruction_register(1) & \state.execute_LDI~regout\)))) # (!\state.execute_add~regout\ & (instruction_register(1) & (\state.execute_LDI~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => instruction_register(1),
	datac => \state.execute_LDI~regout\,
	datad => \Add1~2_combout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X10_Y31_N16
\Selector22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (\Selector22~0_combout\) # ((\Selector22~1_combout\) # ((\Selector22~2_combout\ & \memory|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~2_combout\,
	datab => \memory|auto_generated|q_a\(1),
	datac => \Selector22~0_combout\,
	datad => \Selector22~1_combout\,
	combout => \Selector22~3_combout\);

-- Location: LCCOMB_X10_Y31_N22
\Selector22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = (\Selector22~3_combout\) # ((\Add2~2_combout\ & \state.execute_ADDI~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Selector22~3_combout\,
	datad => \state.execute_ADDI~regout\,
	combout => \Selector22~4_combout\);

-- Location: LCFF_X10_Y31_N23
\register_AC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector22~4_combout\,
	ena => \register_AC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(1));

-- Location: LCFF_X11_Y31_N15
\instruction_register[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(7),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(7));

-- Location: LCCOMB_X12_Y33_N2
\state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\state~21_combout\ & (!instruction_register(13) & instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~21_combout\,
	datab => instruction_register(13),
	datad => instruction_register(8),
	combout => \state~22_combout\);

-- Location: LCFF_X12_Y33_N3
\state.execute_jump\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~22_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_jump~regout\);

-- Location: LCCOMB_X11_Y33_N2
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\state.decode~regout\ & (!\state.execute_store~regout\ & !\state.execute_jump~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.decode~regout\,
	datac => \state.execute_store~regout\,
	datad => \state.execute_jump~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X10_Y33_N2
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\WideOr1~0_combout\ & (program_counter(7) & (\state.reset_pc~regout\))) # (!\WideOr1~0_combout\ & (((instruction_register(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => program_counter(7),
	datab => \state.reset_pc~regout\,
	datac => instruction_register(7),
	datad => \WideOr1~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCFF_X11_Y31_N13
\instruction_register[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(6),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(6));

-- Location: LCCOMB_X11_Y33_N8
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.fetch~regout\ & (\Add0~12_combout\)) # (!\state.fetch~regout\ & (((instruction_register(6) & \state.reset_pc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~regout\,
	datab => \Add0~12_combout\,
	datac => instruction_register(6),
	datad => \state.reset_pc~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X11_Y33_N9
\program_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(6));

-- Location: LCCOMB_X11_Y33_N12
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\WideOr1~0_combout\ & (program_counter(6) & ((\state.reset_pc~regout\)))) # (!\WideOr1~0_combout\ & (((instruction_register(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => program_counter(6),
	datac => instruction_register(6),
	datad => \state.reset_pc~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCFF_X11_Y31_N11
\instruction_register[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(5),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(5));

-- Location: LCCOMB_X11_Y33_N26
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.fetch~regout\ & (\Add0~10_combout\)) # (!\state.fetch~regout\ & (((instruction_register(5) & \state.reset_pc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~regout\,
	datab => \Add0~10_combout\,
	datac => instruction_register(5),
	datad => \state.reset_pc~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X11_Y33_N27
\program_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(5));

-- Location: LCCOMB_X11_Y33_N10
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\WideOr1~0_combout\ & (program_counter(5) & ((\state.reset_pc~regout\)))) # (!\WideOr1~0_combout\ & (((instruction_register(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => program_counter(5),
	datac => instruction_register(5),
	datad => \state.reset_pc~regout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X14_Y33_N14
\instruction_register[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instruction_register[11]~feeder_combout\ = \memory|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|auto_generated|q_a\(11),
	combout => \instruction_register[11]~feeder_combout\);

-- Location: LCFF_X14_Y33_N15
\instruction_register[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instruction_register[11]~feeder_combout\,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(11));

-- Location: LCCOMB_X14_Y33_N28
\instruction_register[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instruction_register[14]~feeder_combout\ = \memory|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|auto_generated|q_a\(14),
	combout => \instruction_register[14]~feeder_combout\);

-- Location: LCFF_X14_Y33_N29
\instruction_register[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instruction_register[14]~feeder_combout\,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(14));

-- Location: LCCOMB_X14_Y33_N10
\program_counter[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \program_counter[5]~1_combout\ = (!instruction_register(10) & (!instruction_register(15) & (!instruction_register(11) & !instruction_register(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(10),
	datab => instruction_register(15),
	datac => instruction_register(11),
	datad => instruction_register(14),
	combout => \program_counter[5]~1_combout\);

-- Location: LCCOMB_X12_Y31_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!register_AC(8) & (!register_AC(10) & (!register_AC(11) & !register_AC(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(8),
	datab => register_AC(10),
	datac => register_AC(11),
	datad => register_AC(9),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X16_Y31_N28
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!register_AC(13) & (!register_AC(15) & (!register_AC(12) & !register_AC(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(13),
	datab => register_AC(15),
	datac => register_AC(12),
	datad => register_AC(14),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y31_N6
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!register_AC(6) & (!register_AC(5) & (!register_AC(7) & !register_AC(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => register_AC(6),
	datab => register_AC(5),
	datac => register_AC(7),
	datad => register_AC(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y31_N2
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X12_Y33_N28
\program_counter[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \program_counter[5]~2_combout\ = (\program_counter[5]~0_combout\) # ((instruction_register(8) $ (!\Equal0~4_combout\)) # (!\program_counter[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter[5]~0_combout\,
	datab => \program_counter[5]~1_combout\,
	datac => instruction_register(8),
	datad => \Equal0~4_combout\,
	combout => \program_counter[5]~2_combout\);

-- Location: LCCOMB_X11_Y33_N14
\program_counter[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \program_counter[0]~3_combout\ = (!\WideOr0~0_combout\ & (!\reset~combout\ & ((!\program_counter[5]~2_combout\) # (!\state.decode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state.decode~regout\,
	datac => \reset~combout\,
	datad => \program_counter[5]~2_combout\,
	combout => \program_counter[0]~3_combout\);

-- Location: LCFF_X11_Y33_N25
\program_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(3));

-- Location: LCCOMB_X10_Y33_N0
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.fetch~regout\ & (\Add0~4_combout\)) # (!\state.fetch~regout\ & (((instruction_register(2) & \state.reset_pc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => instruction_register(2),
	datac => \state.fetch~regout\,
	datad => \state.reset_pc~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X10_Y33_N1
\program_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(2));

-- Location: LCCOMB_X10_Y33_N16
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (program_counter(1) & (!\Add0~1\)) # (!program_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!program_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => program_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X11_Y33_N0
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.fetch~regout\ & (\Add0~8_combout\)) # (!\state.fetch~regout\ & (((instruction_register(4) & \state.reset_pc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~regout\,
	datab => \Add0~8_combout\,
	datac => instruction_register(4),
	datad => \state.reset_pc~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X11_Y33_N1
\program_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(4));

-- Location: LCCOMB_X11_Y33_N22
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\WideOr1~0_combout\ & (program_counter(4) & ((\state.reset_pc~regout\)))) # (!\WideOr1~0_combout\ & (((instruction_register(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => program_counter(4),
	datac => instruction_register(4),
	datad => \state.reset_pc~regout\,
	combout => \Selector28~0_combout\);

-- Location: LCFF_X11_Y31_N7
\instruction_register[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(3),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(3));

-- Location: LCCOMB_X11_Y33_N16
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\WideOr1~0_combout\ & (((program_counter(3) & \state.reset_pc~regout\)))) # (!\WideOr1~0_combout\ & (instruction_register(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => instruction_register(3),
	datac => program_counter(3),
	datad => \state.reset_pc~regout\,
	combout => \Selector29~0_combout\);

-- Location: LCFF_X11_Y31_N5
\instruction_register[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(2),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(2));

-- Location: LCCOMB_X10_Y33_N12
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\WideOr1~0_combout\ & (((program_counter(2) & \state.reset_pc~regout\)))) # (!\WideOr1~0_combout\ & (instruction_register(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => instruction_register(2),
	datac => program_counter(2),
	datad => \state.reset_pc~regout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X14_Y33_N2
\instruction_register[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instruction_register[15]~feeder_combout\ = \memory|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|auto_generated|q_a\(15),
	combout => \instruction_register[15]~feeder_combout\);

-- Location: LCFF_X14_Y33_N3
\instruction_register[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instruction_register[15]~feeder_combout\,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(15));

-- Location: LCCOMB_X14_Y33_N24
\instruction_register[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instruction_register[10]~feeder_combout\ = \memory|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|auto_generated|q_a\(10),
	combout => \instruction_register[10]~feeder_combout\);

-- Location: LCFF_X14_Y33_N25
\instruction_register[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instruction_register[10]~feeder_combout\,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(10));

-- Location: LCCOMB_X14_Y33_N0
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (instruction_register(15)) # ((instruction_register(10)) # (instruction_register(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_register(15),
	datac => instruction_register(10),
	datad => instruction_register(14),
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X12_Y33_N0
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (instruction_register(9) & ((instruction_register(12)) # ((instruction_register(8) & instruction_register(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(9),
	datab => instruction_register(8),
	datac => instruction_register(12),
	datad => instruction_register(13),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y33_N26
\Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\Selector24~0_combout\) # ((instruction_register(11)) # (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector24~0_combout\,
	datac => instruction_register(11),
	datad => \Mux0~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X14_Y33_N12
\Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\state.decode~regout\ & (((\Selector24~1_combout\)))) # (!\state.decode~regout\ & (!\state.execute_store~regout\ & (!\state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_store~regout\,
	datab => \state.decode~regout\,
	datac => \state.fetch~regout\,
	datad => \Selector24~1_combout\,
	combout => \Selector24~2_combout\);

-- Location: LCFF_X14_Y33_N13
\state.fetch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector24~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.fetch~regout\);

-- Location: LCCOMB_X10_Y33_N30
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.fetch~regout\ & (((\Add0~2_combout\)))) # (!\state.fetch~regout\ & (instruction_register(1) & (\state.reset_pc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_register(1),
	datab => \state.reset_pc~regout\,
	datac => \state.fetch~regout\,
	datad => \Add0~2_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X10_Y33_N31
\program_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(1));

-- Location: LCCOMB_X10_Y33_N6
\Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\WideOr1~0_combout\ & (program_counter(1) & ((\state.reset_pc~regout\)))) # (!\WideOr1~0_combout\ & (((instruction_register(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => program_counter(1),
	datac => instruction_register(1),
	datad => \state.reset_pc~regout\,
	combout => \Selector31~0_combout\);

-- Location: LCFF_X12_Y33_N31
\instruction_register[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(13),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(13));

-- Location: LCCOMB_X12_Y33_N24
\state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\state~21_combout\ & (!instruction_register(13) & !instruction_register(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~21_combout\,
	datab => instruction_register(13),
	datad => instruction_register(8),
	combout => \state~23_combout\);

-- Location: LCFF_X12_Y33_N25
\state.execute_load\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state~23_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.execute_load~regout\);

-- Location: LCCOMB_X10_Y31_N4
\Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\state.execute_LDI~regout\ & ((instruction_register(0)) # ((\Add2~0_combout\ & \state.execute_ADDI~regout\)))) # (!\state.execute_LDI~regout\ & (\Add2~0_combout\ & ((\state.execute_ADDI~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_LDI~regout\,
	datab => \Add2~0_combout\,
	datac => instruction_register(0),
	datad => \state.execute_ADDI~regout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X10_Y31_N14
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (register_AC(0) & (((\WideOr1~1_combout\) # (\state.fetch~regout\)) # (!\WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \WideOr1~1_combout\,
	datac => register_AC(0),
	datad => \state.fetch~regout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X10_Y31_N30
\Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\Add1~0_combout\ & ((\state.execute_add~regout\) # (\state.execute_XOR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.execute_add~regout\,
	datab => \state.execute_XOR~regout\,
	datac => \Add1~0_combout\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X10_Y31_N0
\Selector23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\Selector23~1_combout\) # ((\Selector23~0_combout\) # (\Selector23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector23~1_combout\,
	datac => \Selector23~0_combout\,
	datad => \Selector23~2_combout\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X10_Y31_N24
\Selector23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (\Selector23~4_combout\) # ((\Selector23~3_combout\) # ((\state.execute_load~regout\ & \memory|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~4_combout\,
	datab => \state.execute_load~regout\,
	datac => \memory|auto_generated|q_a\(0),
	datad => \Selector23~3_combout\,
	combout => \Selector23~5_combout\);

-- Location: LCFF_X10_Y31_N25
\register_AC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector23~5_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => register_AC(0));

-- Location: LCFF_X11_Y31_N1
\instruction_register[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(0),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(0));

-- Location: LCCOMB_X10_Y33_N4
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.fetch~regout\ & (\Add0~0_combout\)) # (!\state.fetch~regout\ & (((instruction_register(0) & \state.reset_pc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => instruction_register(0),
	datac => \state.fetch~regout\,
	datad => \state.reset_pc~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X10_Y33_N5
\program_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(0));

-- Location: LCCOMB_X10_Y33_N28
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (program_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => program_counter(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X10_Y33_N10
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.fetch~regout\ & (((\Add0~14_combout\)))) # (!\state.fetch~regout\ & (\state.reset_pc~regout\ & (instruction_register(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.reset_pc~regout\,
	datab => instruction_register(7),
	datac => \state.fetch~regout\,
	datad => \Add0~14_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X10_Y33_N11
\program_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	ena => \program_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => program_counter(7));

-- Location: LCFF_X12_Y33_N11
\instruction_register[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \memory|auto_generated|q_a\(9),
	sload => VCC,
	ena => \instruction_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => instruction_register(9));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(0));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(1));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(2));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(3));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(4));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(5));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(6));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\program_counter_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => program_counter(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_program_counter_out(7));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(1));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(3));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(4));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(5));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(6));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(7));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(8));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(9));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(10));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(11));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(12));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(13));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(14));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_AC_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => register_AC(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_AC_out(15));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(0));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(1));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(2));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(3));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(5));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(6));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(7));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(8));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(9));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(10));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(11));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(12));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(13));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(14));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_data_register_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory|auto_generated|q_a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_data_register_out(15));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(0));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(1));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(2));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(3));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(4));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(5));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(6));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_address_register_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_address_register_out(7));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memory_write_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.execute_store~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memory_write_out);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(0));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(1));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(2));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(3));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(4));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(6));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(7));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(8));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(9));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(10));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(11));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(12));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(13));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(14));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction_register_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => instruction_register(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instruction_register_out(15));
END structure;


