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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/18/2023 13:50:43"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	serial_comparator IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	g_out : BUFFER std_logic;
	e_out : BUFFER std_logic;
	l_out : BUFFER std_logic
	);
END serial_comparator;

-- Design Ports Information
-- g_out	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_out	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serial_comparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_g_out : std_logic;
SIGNAL ww_e_out : std_logic;
SIGNAL ww_l_out : std_logic;
SIGNAL \g_out~output_o\ : std_logic;
SIGNAL \e_out~output_o\ : std_logic;
SIGNAL \l_out~output_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \g_out~1_combout\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \e_out~1_combout\ : std_logic;
SIGNAL \e_out~2_combout\ : std_logic;
SIGNAL \g_out~2_combout\ : std_logic;
SIGNAL \g_out~3_combout\ : std_logic;
SIGNAL \l_out~1_combout\ : std_logic;
SIGNAL \l_out~2_combout\ : std_logic;
SIGNAL \ALT_INV_l_out~2_combout\ : std_logic;
SIGNAL \ALT_INV_e_out~2_combout\ : std_logic;
SIGNAL \ALT_INV_g_out~3_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_x <= x;
ww_y <= y;
g_out <= ww_g_out;
e_out <= ww_e_out;
l_out <= ww_l_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_l_out~2_combout\ <= NOT \l_out~2_combout\;
\ALT_INV_e_out~2_combout\ <= NOT \e_out~2_combout\;
\ALT_INV_g_out~3_combout\ <= NOT \g_out~3_combout\;

-- Location: IOOBUF_X8_Y0_N2
\g_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_g_out~3_combout\,
	devoe => ww_devoe,
	o => \g_out~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\e_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_e_out~2_combout\,
	devoe => ww_devoe,
	o => \e_out~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\l_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_l_out~2_combout\,
	devoe => ww_devoe,
	o => \l_out~output_o\);

-- Location: IOIBUF_X31_Y0_N1
\y~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X9_Y1_N0
\g_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_out~1_combout\ = (!\g_out~3_combout\ & ((!\clk~input_o\) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \clk~input_o\,
	datac => \g_out~3_combout\,
	combout => \g_out~1_combout\);

-- Location: IOIBUF_X14_Y0_N8
\x~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X9_Y1_N6
\e_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \e_out~1_combout\ = \x~input_o\ $ (\y~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \y~input_o\,
	combout => \e_out~1_combout\);

-- Location: LCCOMB_X9_Y1_N16
\e_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \e_out~2_combout\ = (\clk~input_o\ & (!\reset~input_o\ & ((\e_out~1_combout\) # (\e_out~2_combout\)))) # (!\clk~input_o\ & (((\e_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_out~1_combout\,
	datab => \clk~input_o\,
	datac => \reset~input_o\,
	datad => \e_out~2_combout\,
	combout => \e_out~2_combout\);

-- Location: LCCOMB_X9_Y1_N2
\g_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_out~2_combout\ = (\clk~input_o\ & (!\reset~input_o\ & !\e_out~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datac => \reset~input_o\,
	datad => \e_out~2_combout\,
	combout => \g_out~2_combout\);

-- Location: LCCOMB_X9_Y1_N4
\g_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_out~3_combout\ = (!\g_out~1_combout\ & ((\y~input_o\) # ((!\g_out~2_combout\) # (!\x~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \g_out~1_combout\,
	datac => \x~input_o\,
	datad => \g_out~2_combout\,
	combout => \g_out~3_combout\);

-- Location: LCCOMB_X9_Y1_N10
\l_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \l_out~1_combout\ = (!\l_out~2_combout\ & ((!\reset~input_o\) # (!\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datac => \reset~input_o\,
	datad => \l_out~2_combout\,
	combout => \l_out~1_combout\);

-- Location: LCCOMB_X9_Y1_N28
\l_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \l_out~2_combout\ = (!\l_out~1_combout\ & (((\x~input_o\) # (!\y~input_o\)) # (!\g_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_out~1_combout\,
	datab => \g_out~2_combout\,
	datac => \x~input_o\,
	datad => \y~input_o\,
	combout => \l_out~2_combout\);

ww_g_out <= \g_out~output_o\;

ww_e_out <= \e_out~output_o\;

ww_l_out <= \l_out~output_o\;
END structure;


