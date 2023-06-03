-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Web Edition"

-- DATE "02/28/2023 20:22:41"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, stratixii;
USE IEEE.std_logic_1164.all;
USE stratixii.stratixii_components.all;

ENTITY 	\3_final\ IS
    PORT (
	res : OUT std_logic;
	D3 : IN std_logic_vector(3 DOWNTO 0);
	D2 : IN std_logic_vector(3 DOWNTO 0);
	D1 : IN std_logic_vector(3 DOWNTO 0);
	D0 : IN std_logic_vector(3 DOWNTO 0)
	);
END \3_final\;

ARCHITECTURE structure OF \3_final\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_D3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst7~0_combout\ : std_logic;
SIGNAL \inst5|inst~0_combout\ : std_logic;
SIGNAL \inst15~1_combout\ : std_logic;
SIGNAL \inst15~2_combout\ : std_logic;
SIGNAL \inst|inst7~0_combout\ : std_logic;
SIGNAL \inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst15~3_combout\ : std_logic;
SIGNAL \D0~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D3~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst7~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst7~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst7~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst7~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst15~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst15~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst15~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst15~3_combout\ : std_logic;
SIGNAL \ALT_INV_D0~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_D1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_D2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_D3~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

res <= ww_res;
ww_D3 <= D3;
ww_D2 <= D2;
ww_D1 <= D1;
ww_D0 <= D0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst6|ALT_INV_inst~0_combout\ <= NOT \inst6|inst~0_combout\;
\inst5|ALT_INV_inst~0_combout\ <= NOT \inst5|inst~0_combout\;
\inst5|ALT_INV_inst7~0_combout\ <= NOT \inst5|inst7~0_combout\;
\inst6|ALT_INV_inst7~0_combout\ <= NOT \inst6|inst7~0_combout\;
\inst4|ALT_INV_inst~0_combout\ <= NOT \inst4|inst~0_combout\;
\inst|ALT_INV_inst~0_combout\ <= NOT \inst|inst~0_combout\;
\inst|ALT_INV_inst7~0_combout\ <= NOT \inst|inst7~0_combout\;
\inst4|ALT_INV_inst7~0_combout\ <= NOT \inst4|inst7~0_combout\;
\ALT_INV_inst15~0_combout\ <= NOT \inst15~0_combout\;
\ALT_INV_inst15~1_combout\ <= NOT \inst15~1_combout\;
\ALT_INV_inst15~2_combout\ <= NOT \inst15~2_combout\;
\ALT_INV_inst15~3_combout\ <= NOT \inst15~3_combout\;
\ALT_INV_D0~combout\(1) <= NOT \D0~combout\(1);
\ALT_INV_D0~combout\(3) <= NOT \D0~combout\(3);
\ALT_INV_D0~combout\(0) <= NOT \D0~combout\(0);
\ALT_INV_D0~combout\(2) <= NOT \D0~combout\(2);
\ALT_INV_D1~combout\(1) <= NOT \D1~combout\(1);
\ALT_INV_D1~combout\(3) <= NOT \D1~combout\(3);
\ALT_INV_D1~combout\(0) <= NOT \D1~combout\(0);
\ALT_INV_D1~combout\(2) <= NOT \D1~combout\(2);
\ALT_INV_D2~combout\(1) <= NOT \D2~combout\(1);
\ALT_INV_D2~combout\(3) <= NOT \D2~combout\(3);
\ALT_INV_D2~combout\(2) <= NOT \D2~combout\(2);
\ALT_INV_D2~combout\(0) <= NOT \D2~combout\(0);
\ALT_INV_D3~combout\(1) <= NOT \D3~combout\(1);
\ALT_INV_D3~combout\(3) <= NOT \D3~combout\(3);
\ALT_INV_D3~combout\(2) <= NOT \D3~combout\(2);
\ALT_INV_D3~combout\(0) <= NOT \D3~combout\(0);

\inst4|inst~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|inst~0_combout\ = \D2~combout\(1) & ( \D2~combout\(2) & \D2~combout\(0) # \D2~combout\(3) ) # !\D2~combout\(1) & ( !\D2~combout\(2) & !\D2~combout\(3) & \D2~combout\(0) # \D2~combout\(2) & (!\D2~combout\(0)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110001000010101011000100000110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2~combout\(2),
	datab => \ALT_INV_D2~combout\(3),
	datad => \ALT_INV_D2~combout\(0),
	dataf => \ALT_INV_D2~combout\(1),
	combout => \inst4|inst~0_combout\);

\D0[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D0(1),
	combout => \D0~combout\(1));

\D1[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D1(1),
	combout => \D1~combout\(1));

\D2[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D2(2),
	combout => \D2~combout\(2));

\D3[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D3(0),
	combout => \D3~combout\(0));

\D0[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D0(2),
	combout => \D0~combout\(2));

\D0[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D0(3),
	combout => \D0~combout\(3));

\D0[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D0(0),
	combout => \D0~combout\(0));

\inst6|inst~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = \D0~combout\(0) & ( !\D0~combout\(1) $ (\D0~combout\(3) # \D0~combout\(2)) ) # !\D0~combout\(0) & ( !\D0~combout\(1) & \D0~combout\(2) # \D0~combout\(1) & (\D0~combout\(3)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011110011001010101011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D0~combout\(1),
	datab => \ALT_INV_D0~combout\(2),
	datad => \ALT_INV_D0~combout\(3),
	dataf => \ALT_INV_D0~combout\(0),
	combout => \inst6|inst~0_combout\);

\inst6|inst7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|inst7~0_combout\ = \D0~combout\(0) & ( !\D0~combout\(1) & \D0~combout\(2) ) # !\D0~combout\(0) & ( !\D0~combout\(1) & (\D0~combout\(3)) # \D0~combout\(1) & !\D0~combout\(2) & !\D0~combout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101001001010010010100100101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D0~combout\(1),
	datab => \ALT_INV_D0~combout\(2),
	datac => \ALT_INV_D0~combout\(3),
	dataf => \ALT_INV_D0~combout\(0),
	combout => \inst6|inst7~0_combout\);

\D3[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D3(3),
	combout => \D3~combout\(3));

\D3[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D3(1),
	combout => \D3~combout\(1));

\D3[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D3(2),
	combout => \D3~combout\(2));

\inst|inst~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = \D3~combout\(2) & ( !\D3~combout\(0) & (!\D3~combout\(1) # \D3~combout\(3)) # \D3~combout\(0) & (\D3~combout\(1)) ) # !\D3~combout\(2) & ( !\D3~combout\(3) & \D3~combout\(0) & !\D3~combout\(1) # \D3~combout\(3) & (\D3~combout\(1)) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111110101010010111111010101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3~combout\(0),
	datac => \ALT_INV_D3~combout\(3),
	datad => \ALT_INV_D3~combout\(1),
	dataf => \ALT_INV_D3~combout\(2),
	combout => \inst|inst~0_combout\);

\D1[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D1(0),
	combout => \D1~combout\(0));

\D1[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D1(2),
	combout => \D1~combout\(2));

\D1[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D1(3),
	combout => \D1~combout\(3));

\inst5|inst7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|inst7~0_combout\ = \D1~combout\(3) & ( !\D1~combout\(1) & (!\D1~combout\(0) # \D1~combout\(2)) ) # !\D1~combout\(3) & ( !\D1~combout\(1) & \D1~combout\(0) & \D1~combout\(2) # \D1~combout\(1) & !\D1~combout\(0) & !\D1~combout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1~combout\(1),
	datac => \ALT_INV_D1~combout\(0),
	datad => \ALT_INV_D1~combout\(2),
	dataf => \ALT_INV_D1~combout\(3),
	combout => \inst5|inst7~0_combout\);

\inst5|inst~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|inst~0_combout\ = \D1~combout\(3) & ( !\D1~combout\(0) & \D1~combout\(2) # \D1~combout\(1) ) # !\D1~combout\(3) & ( !\D1~combout\(1) & (!\D1~combout\(0) $ !\D1~combout\(2)) # \D1~combout\(1) & \D1~combout\(0) & \D1~combout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1~combout\(1),
	datab => \ALT_INV_D1~combout\(0),
	datac => \ALT_INV_D1~combout\(2),
	dataf => \ALT_INV_D1~combout\(3),
	combout => \inst5|inst~0_combout\);

\inst15~1\ : stratixii_lcell_comb
-- Equation(s):
-- \inst15~1_combout\ = \inst5|inst7~0_combout\ & \inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\ # \inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\)) 
-- # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\) # \inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\) ) # !\inst5|inst7~0_combout\ & \inst5|inst~0_combout\ & ( 
-- !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\) # \inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & 
-- \inst6|inst7~0_combout\ & !\inst|inst~0_combout\ # \inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\) ) # \inst5|inst7~0_combout\ & !\inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & 
-- \inst6|inst7~0_combout\ & !\inst|inst~0_combout\ # \inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\ # \inst6|inst~0_combout\ & 
-- (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\)) ) # !\inst5|inst7~0_combout\ & !\inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\ # \inst6|inst~0_combout\ & 
-- (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\)) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\) # \inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000110000110000110000110000110000110000110000110000110000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst~0_combout\,
	datab => \inst6|ALT_INV_inst~0_combout\,
	datac => \inst6|ALT_INV_inst7~0_combout\,
	datad => \inst|ALT_INV_inst~0_combout\,
	datae => \inst5|ALT_INV_inst7~0_combout\,
	dataf => \inst5|ALT_INV_inst~0_combout\,
	combout => \inst15~1_combout\);

\inst15~2\ : stratixii_lcell_comb
-- Equation(s):
-- \inst15~2_combout\ = \inst5|inst7~0_combout\ & \inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & !\inst|inst~0_combout\ & \inst6|inst7~0_combout\ # \inst6|inst~0_combout\ & \inst|inst~0_combout\ & !\inst6|inst7~0_combout\) # 
-- \inst4|inst~0_combout\ & !\inst6|inst7~0_combout\ & (!\inst6|inst~0_combout\ $ !\inst|inst~0_combout\) ) # !\inst5|inst7~0_combout\ & \inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & \inst|inst~0_combout\ & 
-- !\inst6|inst7~0_combout\ # \inst6|inst~0_combout\ & (!\inst|inst~0_combout\ $ \inst6|inst7~0_combout\)) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst|inst~0_combout\ $ \inst6|inst7~0_combout\) # \inst6|inst~0_combout\ & 
-- !\inst|inst~0_combout\ & \inst6|inst7~0_combout\) ) # \inst5|inst7~0_combout\ & !\inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst|inst~0_combout\ $ \inst6|inst7~0_combout\) # \inst6|inst~0_combout\ & 
-- !\inst|inst~0_combout\ & \inst6|inst7~0_combout\) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & !\inst|inst~0_combout\ & \inst6|inst7~0_combout\ # \inst6|inst~0_combout\ & \inst|inst~0_combout\ & !\inst6|inst7~0_combout\) ) # 
-- !\inst5|inst7~0_combout\ & !\inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & !\inst|inst~0_combout\ & \inst6|inst7~0_combout\ # \inst6|inst~0_combout\ & \inst|inst~0_combout\ & !\inst6|inst7~0_combout\) # 
-- \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & \inst|inst~0_combout\ & !\inst6|inst7~0_combout\ # \inst6|inst~0_combout\ & (!\inst|inst~0_combout\ $ \inst6|inst7~0_combout\)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011010000001100000010110100001101000000101100001011010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst~0_combout\,
	datab => \inst6|ALT_INV_inst~0_combout\,
	datac => \inst|ALT_INV_inst~0_combout\,
	datad => \inst6|ALT_INV_inst7~0_combout\,
	datae => \inst5|ALT_INV_inst7~0_combout\,
	dataf => \inst5|ALT_INV_inst~0_combout\,
	combout => \inst15~2_combout\);

\inst|inst7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|inst7~0_combout\ = \D3~combout\(2) & ( !\D3~combout\(1) & (\D3~combout\(3) # \D3~combout\(0)) ) # !\D3~combout\(2) & ( !\D3~combout\(0) & (!\D3~combout\(3) $ !\D3~combout\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3~combout\(0),
	datab => \ALT_INV_D3~combout\(3),
	datad => \ALT_INV_D3~combout\(1),
	dataf => \ALT_INV_D3~combout\(2),
	combout => \inst|inst7~0_combout\);

\D2[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D2(3),
	combout => \D2~combout\(3));

\D2[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D2(0),
	combout => \D2~combout\(0));

\D2[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_D2(1),
	combout => \D2~combout\(1));

\inst4|inst7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|inst7~0_combout\ = \D2~combout\(1) & ( !\D2~combout\(2) & !\D2~combout\(3) & !\D2~combout\(0) ) # !\D2~combout\(1) & ( !\D2~combout\(0) & (\D2~combout\(3)) # \D2~combout\(0) & \D2~combout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2~combout\(2),
	datab => \ALT_INV_D2~combout\(3),
	datac => \ALT_INV_D2~combout\(0),
	dataf => \ALT_INV_D2~combout\(1),
	combout => \inst4|inst7~0_combout\);

\inst15~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = \inst5|inst7~0_combout\ & \inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\) # \inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\) 
-- # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\ # \inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\) ) # !\inst5|inst7~0_combout\ & \inst5|inst~0_combout\ & ( 
-- !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\ # \inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & 
-- !\inst6|inst7~0_combout\ & \inst|inst~0_combout\ # \inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\)) ) # \inst5|inst7~0_combout\ & !\inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & 
-- !\inst6|inst7~0_combout\ & \inst|inst~0_combout\ # \inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\)) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\) # 
-- \inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\) ) # !\inst5|inst7~0_combout\ & !\inst5|inst~0_combout\ & ( !\inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & (!\inst6|inst7~0_combout\ $ \inst|inst~0_combout\) # 
-- \inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\) # \inst4|inst~0_combout\ & (!\inst6|inst~0_combout\ & \inst6|inst7~0_combout\ & !\inst|inst~0_combout\ # \inst6|inst~0_combout\ & !\inst6|inst7~0_combout\ & \inst|inst~0_combout\) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011000011000011000011000011000011000011000011000011000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst~0_combout\,
	datab => \inst6|ALT_INV_inst~0_combout\,
	datac => \inst6|ALT_INV_inst7~0_combout\,
	datad => \inst|ALT_INV_inst~0_combout\,
	datae => \inst5|ALT_INV_inst7~0_combout\,
	dataf => \inst5|ALT_INV_inst~0_combout\,
	combout => \inst15~0_combout\);

\inst15~3\ : stratixii_lcell_comb
-- Equation(s):
-- \inst15~3_combout\ = \inst4|inst7~0_combout\ & \inst15~0_combout\ & ( !\inst|inst7~0_combout\ & !\inst15~1_combout\ # \inst|inst7~0_combout\ & (!\inst15~2_combout\) ) # !\inst4|inst7~0_combout\ & \inst15~0_combout\ & ( !\inst15~1_combout\ & 
-- \inst|inst7~0_combout\ ) # \inst4|inst7~0_combout\ & !\inst15~0_combout\ & ( !\inst|inst7~0_combout\ & !\inst15~1_combout\ # \inst|inst7~0_combout\ & (!\inst15~2_combout\) ) # !\inst4|inst7~0_combout\ & !\inst15~0_combout\ & ( !\inst15~1_combout\ # 
-- !\inst|inst7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010101011001010110000001010000010101010110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst15~1_combout\,
	datab => \ALT_INV_inst15~2_combout\,
	datac => \inst|ALT_INV_inst7~0_combout\,
	datae => \inst4|ALT_INV_inst7~0_combout\,
	dataf => \ALT_INV_inst15~0_combout\,
	combout => \inst15~3_combout\);

\res~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_res);
END structure;


