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

-- DATE "05/09/2023 19:47:47"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	incubator IS
    PORT (
	sensor : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	cooler : OUT std_logic;
	heater : OUT std_logic;
	cooler_rps : OUT std_logic_vector(3 DOWNTO 0)
	);
END incubator;

-- Design Ports Information
-- cooler	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- heater	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cooler_rps[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cooler_rps[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cooler_rps[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cooler_rps[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[4]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF incubator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sensor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cooler : std_logic;
SIGNAL ww_heater : std_logic;
SIGNAL ww_cooler_rps : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cooler~output_o\ : std_logic;
SIGNAL \heater~output_o\ : std_logic;
SIGNAL \cooler_rps[0]~output_o\ : std_logic;
SIGNAL \cooler_rps[1]~output_o\ : std_logic;
SIGNAL \cooler_rps[2]~output_o\ : std_logic;
SIGNAL \cooler_rps[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensor[7]~input_o\ : std_logic;
SIGNAL \sensor[5]~input_o\ : std_logic;
SIGNAL \sensor[6]~input_o\ : std_logic;
SIGNAL \sensor[4]~input_o\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \sensor[3]~input_o\ : std_logic;
SIGNAL \sensor[2]~input_o\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \heater~0_combout\ : std_logic;
SIGNAL \cooler~2_combout\ : std_logic;
SIGNAL \sensor[0]~input_o\ : std_logic;
SIGNAL \sensor[1]~input_o\ : std_logic;
SIGNAL \cooler~0_combout\ : std_logic;
SIGNAL \cooler~3_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \cooler~5_combout\ : std_logic;
SIGNAL \cooler~1_combout\ : std_logic;
SIGNAL \cooler~4_combout\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \cooler_rps[2]~7_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \always0~11_combout\ : std_logic;
SIGNAL \always0~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \always0~10_combout\ : std_logic;
SIGNAL \cooler_rps[3]~9_combout\ : std_logic;
SIGNAL \cooler_rps[0]~1_combout\ : std_logic;
SIGNAL \cooler_rps[0]~3_combout\ : std_logic;
SIGNAL \cooler_rps[0]~4_combout\ : std_logic;
SIGNAL \cooler_rps[0]~5_combout\ : std_logic;
SIGNAL \cooler_rps[3]~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cooler_rps[3]~reg0_q\ : std_logic;
SIGNAL \always0~8_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \cooler_rps[0]~2_combout\ : std_logic;
SIGNAL \cooler_rps[2]~8_combout\ : std_logic;
SIGNAL \cooler_rps[2]~reg0_q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \cooler_rps[1]~0_combout\ : std_logic;
SIGNAL \cooler_rps[1]~6_combout\ : std_logic;
SIGNAL \cooler_rps[1]~reg0_q\ : std_logic;
SIGNAL \cooler~6_combout\ : std_logic;
SIGNAL \cooler~7_combout\ : std_logic;
SIGNAL \heater~1_combout\ : std_logic;
SIGNAL \heater~reg0_q\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \cooler~8_combout\ : std_logic;
SIGNAL \cooler~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_sensor <= sensor;
ww_clk <= clk;
ww_reset <= reset;
cooler <= ww_cooler;
heater <= ww_heater;
cooler_rps <= ww_cooler_rps;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X14_Y0_N2
\cooler~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cooler~reg0_q\,
	devoe => ww_devoe,
	o => \cooler~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\heater~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \heater~reg0_q\,
	devoe => ww_devoe,
	o => \heater~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\cooler_rps[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cooler_rps[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\cooler_rps[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cooler_rps[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cooler_rps[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\cooler_rps[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cooler_rps[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cooler_rps[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\cooler_rps[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cooler_rps[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cooler_rps[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N8
\sensor[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(7),
	o => \sensor[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\sensor[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(5),
	o => \sensor[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\sensor[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(6),
	o => \sensor[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\sensor[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(4),
	o => \sensor[4]~input_o\);

-- Location: LCCOMB_X20_Y3_N6
\LessThan5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\sensor[6]~input_o\ & ((!\sensor[4]~input_o\) # (!\sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[5]~input_o\,
	datac => \sensor[6]~input_o\,
	datad => \sensor[4]~input_o\,
	combout => \LessThan5~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\sensor[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(3),
	o => \sensor[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\sensor[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(2),
	o => \sensor[2]~input_o\);

-- Location: LCCOMB_X20_Y3_N24
\LessThan5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ((\sensor[5]~input_o\ & ((\sensor[3]~input_o\) # (\sensor[2]~input_o\)))) # (!\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \sensor[3]~input_o\,
	datac => \sensor[2]~input_o\,
	datad => \sensor[5]~input_o\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X18_Y3_N12
\heater~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \heater~0_combout\ = (!\heater~reg0_q\ & (!\cooler~reg0_q\ & ((\sensor[7]~input_o\) # (!\LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[7]~input_o\,
	datab => \LessThan5~1_combout\,
	datac => \heater~reg0_q\,
	datad => \cooler~reg0_q\,
	combout => \heater~0_combout\);

-- Location: LCCOMB_X20_Y3_N10
\cooler~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~2_combout\ = (!\sensor[5]~input_o\ & !\sensor[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[5]~input_o\,
	datad => \sensor[4]~input_o\,
	combout => \cooler~2_combout\);

-- Location: IOIBUF_X22_Y0_N1
\sensor[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(0),
	o => \sensor[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\sensor[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(1),
	o => \sensor[1]~input_o\);

-- Location: LCCOMB_X20_Y3_N14
\cooler~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~0_combout\ = (\sensor[0]~input_o\ & (\sensor[1]~input_o\ & (\sensor[3]~input_o\ & \sensor[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[0]~input_o\,
	datab => \sensor[1]~input_o\,
	datac => \sensor[3]~input_o\,
	datad => \sensor[2]~input_o\,
	combout => \cooler~0_combout\);

-- Location: LCCOMB_X20_Y3_N8
\cooler~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~3_combout\ = (\LessThan5~1_combout\) # ((\sensor[7]~input_o\) # ((\cooler~2_combout\ & !\cooler~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cooler~2_combout\,
	datab => \LessThan5~1_combout\,
	datac => \cooler~0_combout\,
	datad => \sensor[7]~input_o\,
	combout => \cooler~3_combout\);

-- Location: LCCOMB_X20_Y3_N30
\LessThan4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!\sensor[0]~input_o\ & (!\sensor[2]~input_o\ & !\sensor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[0]~input_o\,
	datac => \sensor[2]~input_o\,
	datad => \sensor[1]~input_o\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X20_Y3_N4
\LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\sensor[6]~input_o\ & !\sensor[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor[6]~input_o\,
	datad => \sensor[5]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X20_Y3_N2
\LessThan4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\LessThan4~0_combout\ & ((\LessThan4~1_combout\) # ((!\sensor[4]~input_o\) # (!\sensor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~1_combout\,
	datab => \LessThan4~0_combout\,
	datac => \sensor[3]~input_o\,
	datad => \sensor[4]~input_o\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X20_Y3_N28
\LessThan3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ((\sensor[3]~input_o\ & (!\LessThan4~1_combout\ & \sensor[5]~input_o\))) # (!\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \sensor[3]~input_o\,
	datac => \LessThan4~1_combout\,
	datad => \sensor[5]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X20_Y3_N16
\cooler~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~5_combout\ = (!\sensor[7]~input_o\ & ((\LessThan3~0_combout\) # (!\LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datac => \LessThan3~0_combout\,
	datad => \sensor[7]~input_o\,
	combout => \cooler~5_combout\);

-- Location: LCCOMB_X20_Y3_N0
\cooler~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~1_combout\ = (\sensor[7]~input_o\) # ((\LessThan4~0_combout\ & ((!\cooler~0_combout\) # (!\sensor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[4]~input_o\,
	datab => \LessThan4~0_combout\,
	datac => \cooler~0_combout\,
	datad => \sensor[7]~input_o\,
	combout => \cooler~1_combout\);

-- Location: LCCOMB_X18_Y3_N8
\cooler~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~4_combout\ = (\heater~reg0_q\ & (\cooler~1_combout\)) # (!\heater~reg0_q\ & (((!\cooler~3_combout\ & !\cooler~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cooler~1_combout\,
	datab => \cooler~3_combout\,
	datac => \heater~reg0_q\,
	datad => \cooler~reg0_q\,
	combout => \cooler~4_combout\);

-- Location: LCCOMB_X18_Y3_N14
\always0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~6_combout\ = (!\heater~reg0_q\ & \cooler~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heater~reg0_q\,
	datad => \cooler~reg0_q\,
	combout => \always0~6_combout\);

-- Location: LCCOMB_X19_Y3_N24
\cooler_rps[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[2]~7_combout\ = ((\LessThan3~0_combout\ & (!\sensor[7]~input_o\ & \Equal2~0_combout\))) # (!\always0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \sensor[7]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \always0~6_combout\,
	combout => \cooler_rps[2]~7_combout\);

-- Location: LCCOMB_X20_Y3_N18
\always0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = (!\sensor[3]~input_o\ & (!\sensor[6]~input_o\ & !\sensor[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sensor[3]~input_o\,
	datac => \sensor[6]~input_o\,
	datad => \sensor[4]~input_o\,
	combout => \always0~4_combout\);

-- Location: LCCOMB_X20_Y3_N12
\always0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~7_combout\ = (\always0~4_combout\ & (!\sensor[2]~input_o\ & ((!\sensor[1]~input_o\) # (!\sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[0]~input_o\,
	datab => \always0~4_combout\,
	datac => \sensor[2]~input_o\,
	datad => \sensor[1]~input_o\,
	combout => \always0~7_combout\);

-- Location: LCCOMB_X20_Y3_N20
\always0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~11_combout\ = (\always0~7_combout\) # ((\sensor[7]~input_o\) # ((!\sensor[6]~input_o\ & !\sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~7_combout\,
	datab => \sensor[7]~input_o\,
	datac => \sensor[6]~input_o\,
	datad => \sensor[5]~input_o\,
	combout => \always0~11_combout\);

-- Location: LCCOMB_X20_Y3_N22
\always0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~9_combout\ = (\sensor[2]~input_o\ & (\sensor[1]~input_o\ & (\sensor[3]~input_o\ & \sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[2]~input_o\,
	datab => \sensor[1]~input_o\,
	datac => \sensor[3]~input_o\,
	datad => \sensor[5]~input_o\,
	combout => \always0~9_combout\);

-- Location: LCCOMB_X19_Y3_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\cooler_rps[3]~reg0_q\ & (\cooler_rps[1]~reg0_q\ & \cooler_rps[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cooler_rps[3]~reg0_q\,
	datac => \cooler_rps[1]~reg0_q\,
	datad => \cooler_rps[2]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y3_N2
\always0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~10_combout\ = (!\sensor[7]~input_o\ & (\Equal0~0_combout\ & ((\always0~9_combout\) # (!\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \always0~9_combout\,
	datac => \sensor[7]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \always0~10_combout\);

-- Location: LCCOMB_X19_Y3_N22
\cooler_rps[3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[3]~9_combout\ = (!\always0~8_combout\ & \always0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \always0~8_combout\,
	datad => \always0~10_combout\,
	combout => \cooler_rps[3]~9_combout\);

-- Location: LCCOMB_X18_Y3_N16
\cooler_rps[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[0]~1_combout\ = (\heater~reg0_q\) # ((!\cooler~reg0_q\ & ((\sensor[7]~input_o\) # (!\LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[7]~input_o\,
	datab => \LessThan5~1_combout\,
	datac => \heater~reg0_q\,
	datad => \cooler~reg0_q\,
	combout => \cooler_rps[0]~1_combout\);

-- Location: LCCOMB_X19_Y3_N14
\cooler_rps[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[0]~3_combout\ = ((!\sensor[7]~input_o\ & (!\LessThan3~0_combout\ & !\LessThan4~2_combout\))) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[7]~input_o\,
	datab => \LessThan3~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \LessThan4~2_combout\,
	combout => \cooler_rps[0]~3_combout\);

-- Location: LCCOMB_X19_Y3_N12
\cooler_rps[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[0]~4_combout\ = (\cooler~reg0_q\ & !\always0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cooler~reg0_q\,
	datad => \always0~10_combout\,
	combout => \cooler_rps[0]~4_combout\);

-- Location: LCCOMB_X19_Y3_N18
\cooler_rps[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[0]~5_combout\ = (\cooler_rps[0]~1_combout\) # ((\cooler_rps[0]~3_combout\ & (\cooler_rps[0]~2_combout\ & \cooler_rps[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cooler_rps[0]~1_combout\,
	datab => \cooler_rps[0]~3_combout\,
	datac => \cooler_rps[0]~2_combout\,
	datad => \cooler_rps[0]~4_combout\,
	combout => \cooler_rps[0]~5_combout\);

-- Location: LCCOMB_X19_Y3_N16
\cooler_rps[3]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[3]~10_combout\ = (\cooler_rps[0]~5_combout\ & (((\cooler_rps[3]~reg0_q\)))) # (!\cooler_rps[0]~5_combout\ & (\cooler_rps[3]~9_combout\ & (\always0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cooler_rps[3]~9_combout\,
	datab => \always0~6_combout\,
	datac => \cooler_rps[3]~reg0_q\,
	datad => \cooler_rps[0]~5_combout\,
	combout => \cooler_rps[3]~10_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X19_Y3_N17
\cooler_rps[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cooler_rps[3]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cooler_rps[3]~reg0_q\);

-- Location: LCCOMB_X19_Y3_N26
\always0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~8_combout\ = (\always0~11_combout\ & (\cooler_rps[1]~reg0_q\ & (\cooler_rps[2]~reg0_q\ & !\cooler_rps[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~11_combout\,
	datab => \cooler_rps[1]~reg0_q\,
	datac => \cooler_rps[2]~reg0_q\,
	datad => \cooler_rps[3]~reg0_q\,
	combout => \always0~8_combout\);

-- Location: LCCOMB_X19_Y3_N6
\always0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = (\cooler_rps[3]~reg0_q\ & (!\cooler_rps[1]~reg0_q\ & !\cooler_rps[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cooler_rps[3]~reg0_q\,
	datac => \cooler_rps[1]~reg0_q\,
	datad => \cooler_rps[2]~reg0_q\,
	combout => \always0~3_combout\);

-- Location: LCCOMB_X19_Y3_N20
\always0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = (\always0~3_combout\ & ((\LessThan4~0_combout\) # ((\always0~4_combout\) # (\sensor[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \always0~4_combout\,
	datac => \sensor[7]~input_o\,
	datad => \always0~3_combout\,
	combout => \always0~5_combout\);

-- Location: LCCOMB_X19_Y3_N4
\cooler_rps[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[0]~2_combout\ = (!\always0~8_combout\ & !\always0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \always0~8_combout\,
	datad => \always0~5_combout\,
	combout => \cooler_rps[0]~2_combout\);

-- Location: LCCOMB_X19_Y3_N10
\cooler_rps[2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[2]~8_combout\ = (\cooler_rps[0]~5_combout\ & (((\cooler_rps[2]~reg0_q\)))) # (!\cooler_rps[0]~5_combout\ & ((\cooler_rps[2]~7_combout\) # ((!\cooler_rps[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cooler_rps[2]~7_combout\,
	datab => \cooler_rps[0]~2_combout\,
	datac => \cooler_rps[2]~reg0_q\,
	datad => \cooler_rps[0]~5_combout\,
	combout => \cooler_rps[2]~8_combout\);

-- Location: FF_X19_Y3_N11
\cooler_rps[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cooler_rps[2]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cooler_rps[2]~reg0_q\);

-- Location: LCCOMB_X19_Y3_N30
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\cooler_rps[2]~reg0_q\ & (!\cooler_rps[1]~reg0_q\ & !\cooler_rps[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cooler_rps[2]~reg0_q\,
	datac => \cooler_rps[1]~reg0_q\,
	datad => \cooler_rps[3]~reg0_q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X19_Y3_N28
\cooler_rps[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[1]~0_combout\ = (\always0~5_combout\) # ((\LessThan3~0_combout\ & (!\sensor[7]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \sensor[7]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \always0~5_combout\,
	combout => \cooler_rps[1]~0_combout\);

-- Location: LCCOMB_X19_Y3_N8
\cooler_rps[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler_rps[1]~6_combout\ = (\cooler_rps[0]~5_combout\ & (((\cooler_rps[1]~reg0_q\)))) # (!\cooler_rps[0]~5_combout\ & (\always0~6_combout\ & (\cooler_rps[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~6_combout\,
	datab => \cooler_rps[1]~0_combout\,
	datac => \cooler_rps[1]~reg0_q\,
	datad => \cooler_rps[0]~5_combout\,
	combout => \cooler_rps[1]~6_combout\);

-- Location: FF_X19_Y3_N9
\cooler_rps[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cooler_rps[1]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cooler_rps[1]~reg0_q\);

-- Location: LCCOMB_X18_Y3_N10
\cooler~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~6_combout\ = (\heater~reg0_q\) # ((\cooler_rps[1]~reg0_q\) # ((\cooler_rps[3]~reg0_q\) # (!\cooler_rps[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heater~reg0_q\,
	datab => \cooler_rps[1]~reg0_q\,
	datac => \cooler_rps[2]~reg0_q\,
	datad => \cooler_rps[3]~reg0_q\,
	combout => \cooler~6_combout\);

-- Location: LCCOMB_X18_Y3_N24
\cooler~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~7_combout\ = (\cooler~4_combout\) # ((\cooler~reg0_q\ & ((\cooler~5_combout\) # (\cooler~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cooler~5_combout\,
	datab => \cooler~reg0_q\,
	datac => \cooler~4_combout\,
	datad => \cooler~6_combout\,
	combout => \cooler~7_combout\);

-- Location: LCCOMB_X18_Y3_N30
\heater~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \heater~1_combout\ = (\cooler~7_combout\ & (((\heater~reg0_q\)))) # (!\cooler~7_combout\ & (\heater~0_combout\ & (\cooler~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heater~0_combout\,
	datab => \cooler~3_combout\,
	datac => \heater~reg0_q\,
	datad => \cooler~7_combout\,
	combout => \heater~1_combout\);

-- Location: FF_X18_Y3_N31
\heater~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \heater~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heater~reg0_q\);

-- Location: LCCOMB_X18_Y3_N22
\always0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (\sensor[7]~input_o\) # (((\heater~reg0_q\) # (\cooler~reg0_q\)) # (!\LessThan5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[7]~input_o\,
	datab => \LessThan5~1_combout\,
	datac => \heater~reg0_q\,
	datad => \cooler~reg0_q\,
	combout => \always0~2_combout\);

-- Location: LCCOMB_X18_Y3_N20
\cooler~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cooler~8_combout\ = (\cooler~7_combout\ & ((\cooler~reg0_q\))) # (!\cooler~7_combout\ & (!\always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datac => \cooler~reg0_q\,
	datad => \cooler~7_combout\,
	combout => \cooler~8_combout\);

-- Location: FF_X18_Y3_N21
\cooler~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cooler~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cooler~reg0_q\);

ww_cooler <= \cooler~output_o\;

ww_heater <= \heater~output_o\;

ww_cooler_rps(0) <= \cooler_rps[0]~output_o\;

ww_cooler_rps(1) <= \cooler_rps[1]~output_o\;

ww_cooler_rps(2) <= \cooler_rps[2]~output_o\;

ww_cooler_rps(3) <= \cooler_rps[3]~output_o\;
END structure;


