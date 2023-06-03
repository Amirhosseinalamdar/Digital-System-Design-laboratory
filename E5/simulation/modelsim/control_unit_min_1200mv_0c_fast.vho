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

-- DATE "05/10/2023 02:35:55"

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

ENTITY 	control_unit IS
    PORT (
	B : IN std_logic_vector(3 DOWNTO 0);
	rstN : IN std_logic;
	clk : IN std_logic;
	A_shift_amount : BUFFER std_logic_vector(2 DOWNTO 0);
	B_shift_amount : BUFFER std_logic_vector(2 DOWNTO 0);
	op : BUFFER std_logic;
	done : BUFFER std_logic
	);
END control_unit;

-- Design Ports Information
-- A_shift_amount[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_shift_amount[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_shift_amount[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_shift_amount[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_shift_amount[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_shift_amount[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstN	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rstN : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_A_shift_amount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B_shift_amount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_op : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \rstN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A_shift_amount[0]~output_o\ : std_logic;
SIGNAL \A_shift_amount[1]~output_o\ : std_logic;
SIGNAL \A_shift_amount[2]~output_o\ : std_logic;
SIGNAL \B_shift_amount[0]~output_o\ : std_logic;
SIGNAL \B_shift_amount[1]~output_o\ : std_logic;
SIGNAL \B_shift_amount[2]~output_o\ : std_logic;
SIGNAL \op~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \first_clk~feeder_combout\ : std_logic;
SIGNAL \rstN~input_o\ : std_logic;
SIGNAL \rstN~inputclkctrl_outclk\ : std_logic;
SIGNAL \first_clk~q\ : std_logic;
SIGNAL \B_shift_amount~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B_shift_amount~1_combout\ : std_logic;
SIGNAL \B_shift_amount~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \op~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL shifted : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_B <= B;
ww_rstN <= rstN;
ww_clk <= clk;
A_shift_amount <= ww_A_shift_amount;
B_shift_amount <= ww_B_shift_amount;
op <= ww_op;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rstN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rstN~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X8_Y0_N9
\A_shift_amount[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => \A_shift_amount[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\A_shift_amount[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_combout\,
	devoe => ww_devoe,
	o => \A_shift_amount[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\A_shift_amount[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~3_combout\,
	devoe => ww_devoe,
	o => \A_shift_amount[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\B_shift_amount[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_shift_amount~0_combout\,
	devoe => ww_devoe,
	o => \B_shift_amount[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\B_shift_amount[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_shift_amount~2_combout\,
	devoe => ww_devoe,
	o => \B_shift_amount[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\B_shift_amount[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B_shift_amount[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\op~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op~0_combout\,
	devoe => ww_devoe,
	o => \op~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

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

-- Location: LCCOMB_X15_Y1_N2
\first_clk~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \first_clk~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \first_clk~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rstN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstN,
	o => \rstN~input_o\);

-- Location: CLKCTRL_G19
\rstN~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rstN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rstN~inputclkctrl_outclk\);

-- Location: FF_X15_Y1_N3
first_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \first_clk~feeder_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \first_clk~q\);

-- Location: LCCOMB_X15_Y1_N4
\B_shift_amount~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_shift_amount~0_combout\ = (\B[0]~input_o\ & (\first_clk~q\ & ((\B[2]~input_o\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \first_clk~q\,
	combout => \B_shift_amount~0_combout\);

-- Location: FF_X15_Y1_N25
\shifted[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted(0));

-- Location: LCCOMB_X15_Y1_N30
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B_shift_amount~0_combout\ $ (shifted(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_shift_amount~0_combout\,
	datad => shifted(0),
	combout => \Add0~0_combout\);

-- Location: FF_X15_Y1_N29
\shifted[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~1_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted(1));

-- Location: IOIBUF_X20_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N28
\B_shift_amount~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_shift_amount~1_combout\ = (!\B[3]~input_o\) # (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	combout => \B_shift_amount~1_combout\);

-- Location: LCCOMB_X15_Y1_N10
\B_shift_amount~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_shift_amount~2_combout\ = (\B[0]~input_o\ & (\B_shift_amount~1_combout\ & (\B[1]~input_o\ & \first_clk~q\))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B_shift_amount~1_combout\,
	datac => \B[1]~input_o\,
	datad => \first_clk~q\,
	combout => \B_shift_amount~2_combout\);

-- Location: LCCOMB_X15_Y1_N8
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = shifted(1) $ (\B_shift_amount~2_combout\ $ (((shifted(0) & \B_shift_amount~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shifted(0),
	datab => shifted(1),
	datac => \B_shift_amount~0_combout\,
	datad => \B_shift_amount~2_combout\,
	combout => \Add0~1_combout\);

-- Location: FF_X15_Y1_N23
\shifted[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~3_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted(2));

-- Location: LCCOMB_X15_Y1_N20
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (shifted(1) & ((\B_shift_amount~2_combout\) # ((shifted(0) & \B_shift_amount~0_combout\)))) # (!shifted(1) & (shifted(0) & (\B_shift_amount~0_combout\ & \B_shift_amount~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shifted(0),
	datab => shifted(1),
	datac => \B_shift_amount~0_combout\,
	datad => \B_shift_amount~2_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X15_Y1_N22
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = shifted(2) $ (\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shifted(2),
	datad => \Add0~2_combout\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X15_Y1_N24
\op~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op~0_combout\ = (\B[0]~input_o\ & \first_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \first_clk~q\,
	combout => \op~0_combout\);

-- Location: LCCOMB_X14_Y1_N28
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~2_combout\) # (shifted(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => shifted(2),
	combout => \LessThan0~0_combout\);

ww_A_shift_amount(0) <= \A_shift_amount[0]~output_o\;

ww_A_shift_amount(1) <= \A_shift_amount[1]~output_o\;

ww_A_shift_amount(2) <= \A_shift_amount[2]~output_o\;

ww_B_shift_amount(0) <= \B_shift_amount[0]~output_o\;

ww_B_shift_amount(1) <= \B_shift_amount[1]~output_o\;

ww_B_shift_amount(2) <= \B_shift_amount[2]~output_o\;

ww_op <= \op~output_o\;

ww_done <= \done~output_o\;
END structure;


