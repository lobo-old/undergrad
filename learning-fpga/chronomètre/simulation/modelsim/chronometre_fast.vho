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

-- DATE "12/17/2015 22:42:40"

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

ENTITY 	Compteur16 IS
    PORT (
	CLK_in : IN std_logic;
	RESET : IN std_logic;
	V_COUNT : OUT std_logic_vector(3 DOWNTO 0);
	CLK_Out : OUT std_logic
	);
END Compteur16;

-- Design Ports Information
-- V_COUNT[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- V_COUNT[1]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- V_COUNT[2]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- V_COUNT[3]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK_Out	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK_in	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Compteur16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_V_COUNT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK_Out : std_logic;
SIGNAL \CLK_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_in~combout\ : std_logic;
SIGNAL \CLK_in~clkctrl_outclk\ : std_logic;
SIGNAL \Cpt_int[0]~3_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \Cpt_int[1]~0_combout\ : std_logic;
SIGNAL \Cpt_int[2]~1_combout\ : std_logic;
SIGNAL \Cpt_int[3]~2_combout\ : std_logic;
SIGNAL \Sgn_out~0_combout\ : std_logic;
SIGNAL \Sgn_out~1_combout\ : std_logic;
SIGNAL \Sgn_out~regout\ : std_logic;
SIGNAL Cpt_int : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK_in <= CLK_in;
ww_RESET <= RESET;
V_COUNT <= ww_V_COUNT;
CLK_Out <= ww_CLK_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_in~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_in~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_in~I\ : cycloneii_io
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
	padio => ww_CLK_in,
	combout => \CLK_in~combout\);

-- Location: CLKCTRL_G3
\CLK_in~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_in~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y17_N24
\Cpt_int[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cpt_int[0]~3_combout\ = !Cpt_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Cpt_int(0),
	combout => \Cpt_int[0]~3_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
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
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G1
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X1_Y17_N25
\Cpt_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_in~clkctrl_outclk\,
	datain => \Cpt_int[0]~3_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_int(0));

-- Location: LCCOMB_X1_Y17_N14
\Cpt_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cpt_int[1]~0_combout\ = Cpt_int(1) $ (Cpt_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Cpt_int(1),
	datad => Cpt_int(0),
	combout => \Cpt_int[1]~0_combout\);

-- Location: LCFF_X1_Y17_N15
\Cpt_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_in~clkctrl_outclk\,
	datain => \Cpt_int[1]~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_int(1));

-- Location: LCCOMB_X1_Y17_N12
\Cpt_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cpt_int[2]~1_combout\ = Cpt_int(2) $ (((Cpt_int(0) & Cpt_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cpt_int(0),
	datac => Cpt_int(2),
	datad => Cpt_int(1),
	combout => \Cpt_int[2]~1_combout\);

-- Location: LCFF_X1_Y17_N13
\Cpt_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_in~clkctrl_outclk\,
	datain => \Cpt_int[2]~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_int(2));

-- Location: LCCOMB_X1_Y17_N30
\Cpt_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cpt_int[3]~2_combout\ = Cpt_int(3) $ (((Cpt_int(2) & (Cpt_int(0) & Cpt_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cpt_int(2),
	datab => Cpt_int(0),
	datac => Cpt_int(3),
	datad => Cpt_int(1),
	combout => \Cpt_int[3]~2_combout\);

-- Location: LCFF_X1_Y17_N31
\Cpt_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_in~clkctrl_outclk\,
	datain => \Cpt_int[3]~2_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_int(3));

-- Location: LCCOMB_X1_Y17_N26
\Sgn_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sgn_out~0_combout\ = (Cpt_int(0) & (Cpt_int(3) & (Cpt_int(1) & Cpt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cpt_int(0),
	datab => Cpt_int(3),
	datac => Cpt_int(1),
	datad => Cpt_int(2),
	combout => \Sgn_out~0_combout\);

-- Location: LCCOMB_X1_Y17_N28
\Sgn_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sgn_out~1_combout\ = (\RESET~combout\ & (\Sgn_out~regout\)) # (!\RESET~combout\ & ((\Sgn_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datac => \Sgn_out~regout\,
	datad => \Sgn_out~0_combout\,
	combout => \Sgn_out~1_combout\);

-- Location: LCFF_X1_Y17_N29
Sgn_out : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_in~clkctrl_outclk\,
	datain => \Sgn_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sgn_out~regout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\V_COUNT[0]~I\ : cycloneii_io
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
	datain => Cpt_int(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_V_COUNT(0));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\V_COUNT[1]~I\ : cycloneii_io
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
	datain => Cpt_int(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_V_COUNT(1));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\V_COUNT[2]~I\ : cycloneii_io
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
	datain => Cpt_int(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_V_COUNT(2));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\V_COUNT[3]~I\ : cycloneii_io
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
	datain => Cpt_int(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_V_COUNT(3));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CLK_Out~I\ : cycloneii_io
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
	datain => \Sgn_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK_Out);
END structure;


