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

-- DATE "05/10/2023 02:22:36"

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

ENTITY 	booth IS
    PORT (
	A_in : IN std_logic_vector(3 DOWNTO 0);
	B_in : IN std_logic_vector(3 DOWNTO 0);
	rstN : IN std_logic;
	clk : IN std_logic;
	res : BUFFER std_logic_vector(7 DOWNTO 0);
	done : BUFFER std_logic
	);
END booth;

-- Design Ports Information
-- res[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstN	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF booth IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rstN : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_res : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \rstN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \res[0]~output_o\ : std_logic;
SIGNAL \res[1]~output_o\ : std_logic;
SIGNAL \res[2]~output_o\ : std_logic;
SIGNAL \res[3]~output_o\ : std_logic;
SIGNAL \res[4]~output_o\ : std_logic;
SIGNAL \res[5]~output_o\ : std_logic;
SIGNAL \res[6]~output_o\ : std_logic;
SIGNAL \res[7]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rstN~input_o\ : std_logic;
SIGNAL \B_in[0]~input_o\ : std_logic;
SIGNAL \rstN~inputclkctrl_outclk\ : std_logic;
SIGNAL \DP|B[0]~5_combout\ : std_logic;
SIGNAL \B_in[1]~input_o\ : std_logic;
SIGNAL \DP|B[1]~1_combout\ : std_logic;
SIGNAL \CU|first_clk~feeder_combout\ : std_logic;
SIGNAL \CU|first_clk~q\ : std_logic;
SIGNAL \B_in[3]~input_o\ : std_logic;
SIGNAL \DP|B[3]~9_combout\ : std_logic;
SIGNAL \CU|B_shift_amount[1]~6_combout\ : std_logic;
SIGNAL \B_in[2]~input_o\ : std_logic;
SIGNAL \DP|B[2]~13_combout\ : std_logic;
SIGNAL \CU|B_shift_amount[1]~5_combout\ : std_logic;
SIGNAL \DP|ShiftRight0~0_combout\ : std_logic;
SIGNAL \DP|B[2]~15_combout\ : std_logic;
SIGNAL \DP|B[2]~_emulated_q\ : std_logic;
SIGNAL \DP|B[2]~14_combout\ : std_logic;
SIGNAL \CU|B_shift_amount[0]~4_combout\ : std_logic;
SIGNAL \DP|B[3]~11_combout\ : std_logic;
SIGNAL \DP|B[3]~_emulated_q\ : std_logic;
SIGNAL \DP|B[3]~10_combout\ : std_logic;
SIGNAL \CU|B_shift_amount[1]~3_combout\ : std_logic;
SIGNAL \DP|B[1]~30_combout\ : std_logic;
SIGNAL \DP|B[1]~28_combout\ : std_logic;
SIGNAL \DP|B[1]~29_combout\ : std_logic;
SIGNAL \DP|B[1]~3_combout\ : std_logic;
SIGNAL \DP|B[1]~_emulated_q\ : std_logic;
SIGNAL \DP|B[1]~2_combout\ : std_logic;
SIGNAL \DP|B[0]~31_combout\ : std_logic;
SIGNAL \DP|B[0]~7_combout\ : std_logic;
SIGNAL \DP|B[0]~_emulated_q\ : std_logic;
SIGNAL \DP|B[0]~6_combout\ : std_logic;
SIGNAL \CU|B_shift_amount[1]~2_combout\ : std_logic;
SIGNAL \CU|Add0~6_combout\ : std_logic;
SIGNAL \CU|Add0~4_combout\ : std_logic;
SIGNAL \CU|Add0~7_combout\ : std_logic;
SIGNAL \A_in[0]~input_o\ : std_logic;
SIGNAL \CU|Add0~9_combout\ : std_logic;
SIGNAL \CU|Add0~8_combout\ : std_logic;
SIGNAL \CU|Add0~5_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \DP|acc[0]~8_combout\ : std_logic;
SIGNAL \CU|op~combout\ : std_logic;
SIGNAL \A_in[1]~input_o\ : std_logic;
SIGNAL \DP|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|$00030|left_bit[0]~0_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \DP|acc[0]~9\ : std_logic;
SIGNAL \DP|acc[1]~10_combout\ : std_logic;
SIGNAL \A_in[2]~input_o\ : std_logic;
SIGNAL \DP|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \DP|acc[1]~11\ : std_logic;
SIGNAL \DP|acc[2]~12_combout\ : std_logic;
SIGNAL \A_in[3]~input_o\ : std_logic;
SIGNAL \DP|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \DP|acc[2]~13\ : std_logic;
SIGNAL \DP|acc[3]~14_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \DP|acc[3]~15\ : std_logic;
SIGNAL \DP|acc[4]~16_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \DP|acc[4]~17\ : std_logic;
SIGNAL \DP|acc[5]~18_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \DP|acc[5]~19\ : std_logic;
SIGNAL \DP|acc[6]~20_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \DP|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~40_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~41_combout\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \DP|acc[6]~21\ : std_logic;
SIGNAL \DP|acc[7]~22_combout\ : std_logic;
SIGNAL \CU|LessThan0~0_combout\ : std_logic;
SIGNAL \CU|shifted\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DP|acc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|A\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A_in <= A_in;
ww_B_in <= B_in;
ww_rstN <= rstN;
ww_clk <= clk;
res <= ww_res;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rstN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rstN~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X33_Y27_N9
\res[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(0),
	devoe => ww_devoe,
	o => \res[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\res[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(1),
	devoe => ww_devoe,
	o => \res[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\res[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(2),
	devoe => ww_devoe,
	o => \res[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\res[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(3),
	devoe => ww_devoe,
	o => \res[3]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\res[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(4),
	devoe => ww_devoe,
	o => \res[4]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\res[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(5),
	devoe => ww_devoe,
	o => \res[5]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\res[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(6),
	devoe => ww_devoe,
	o => \res[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\res[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|acc\(7),
	devoe => ww_devoe,
	o => \res[7]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

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

-- Location: IOIBUF_X33_Y16_N1
\B_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(0),
	o => \B_in[0]~input_o\);

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

-- Location: LCCOMB_X29_Y18_N6
\DP|B[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[0]~5_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & (\DP|B[0]~5_combout\)) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & ((\B_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[0]~5_combout\,
	datab => \B_in[0]~input_o\,
	datad => \rstN~inputclkctrl_outclk\,
	combout => \DP|B[0]~5_combout\);

-- Location: IOIBUF_X33_Y16_N8
\B_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(1),
	o => \B_in[1]~input_o\);

-- Location: LCCOMB_X29_Y18_N8
\DP|B[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[1]~1_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\DP|B[1]~1_combout\))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\B_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_in[1]~input_o\,
	datac => \DP|B[1]~1_combout\,
	datad => \rstN~inputclkctrl_outclk\,
	combout => \DP|B[1]~1_combout\);

-- Location: LCCOMB_X30_Y18_N28
\CU|first_clk~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|first_clk~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CU|first_clk~feeder_combout\);

-- Location: FF_X30_Y18_N29
\CU|first_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|first_clk~feeder_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|first_clk~q\);

-- Location: IOIBUF_X33_Y22_N1
\B_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(3),
	o => \B_in[3]~input_o\);

-- Location: LCCOMB_X29_Y18_N4
\DP|B[3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[3]~9_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\DP|B[3]~9_combout\))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\B_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in[3]~input_o\,
	datab => \DP|B[3]~9_combout\,
	datad => \rstN~inputclkctrl_outclk\,
	combout => \DP|B[3]~9_combout\);

-- Location: LCCOMB_X30_Y18_N2
\CU|B_shift_amount[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|B_shift_amount[1]~6_combout\ = (\DP|B[1]~2_combout\ & ((\CU|B_shift_amount[1]~3_combout\))) # (!\DP|B[1]~2_combout\ & (!\DP|B[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[1]~2_combout\,
	datab => \DP|B[0]~6_combout\,
	datad => \CU|B_shift_amount[1]~3_combout\,
	combout => \CU|B_shift_amount[1]~6_combout\);

-- Location: IOIBUF_X33_Y22_N8
\B_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(2),
	o => \B_in[2]~input_o\);

-- Location: LCCOMB_X30_Y18_N26
\DP|B[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[2]~13_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & (\DP|B[2]~13_combout\)) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & ((\B_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[2]~13_combout\,
	datab => \B_in[2]~input_o\,
	datac => \rstN~inputclkctrl_outclk\,
	combout => \DP|B[2]~13_combout\);

-- Location: LCCOMB_X29_Y18_N16
\CU|B_shift_amount[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|B_shift_amount[1]~5_combout\ = (\DP|B[1]~2_combout\ & \CU|B_shift_amount[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[1]~2_combout\,
	datad => \CU|B_shift_amount[1]~3_combout\,
	combout => \CU|B_shift_amount[1]~5_combout\);

-- Location: LCCOMB_X30_Y18_N14
\DP|ShiftRight0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftRight0~0_combout\ = (\CU|B_shift_amount[0]~4_combout\ & ((\DP|B[3]~10_combout\))) # (!\CU|B_shift_amount[0]~4_combout\ & (\DP|B[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|B_shift_amount[0]~4_combout\,
	datac => \DP|B[2]~14_combout\,
	datad => \DP|B[3]~10_combout\,
	combout => \DP|ShiftRight0~0_combout\);

-- Location: LCCOMB_X30_Y18_N4
\DP|B[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[2]~15_combout\ = \DP|B[2]~13_combout\ $ (((!\CU|B_shift_amount[1]~2_combout\ & (!\CU|B_shift_amount[1]~5_combout\ & \DP|ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[2]~13_combout\,
	datab => \CU|B_shift_amount[1]~2_combout\,
	datac => \CU|B_shift_amount[1]~5_combout\,
	datad => \DP|ShiftRight0~0_combout\,
	combout => \DP|B[2]~15_combout\);

-- Location: FF_X30_Y18_N5
\DP|B[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|B[2]~15_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|B[2]~_emulated_q\);

-- Location: LCCOMB_X30_Y18_N22
\DP|B[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[2]~14_combout\ = (\rstN~input_o\ & (\DP|B[2]~13_combout\ $ (((\DP|B[2]~_emulated_q\))))) # (!\rstN~input_o\ & (((\B_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[2]~13_combout\,
	datab => \B_in[2]~input_o\,
	datac => \DP|B[2]~_emulated_q\,
	datad => \rstN~input_o\,
	combout => \DP|B[2]~14_combout\);

-- Location: LCCOMB_X29_Y18_N20
\CU|B_shift_amount[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|B_shift_amount[0]~4_combout\ = (\DP|B[0]~6_combout\ & (\CU|first_clk~q\ & ((\DP|B[2]~14_combout\) # (!\DP|B[1]~2_combout\)))) # (!\DP|B[0]~6_combout\ & (((\DP|B[1]~2_combout\) # (!\DP|B[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|first_clk~q\,
	datab => \DP|B[2]~14_combout\,
	datac => \DP|B[0]~6_combout\,
	datad => \DP|B[1]~2_combout\,
	combout => \CU|B_shift_amount[0]~4_combout\);

-- Location: LCCOMB_X29_Y18_N28
\DP|B[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[3]~11_combout\ = \DP|B[3]~9_combout\ $ (((!\CU|B_shift_amount[1]~6_combout\ & (\DP|B[3]~10_combout\ & !\CU|B_shift_amount[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|B_shift_amount[1]~6_combout\,
	datab => \DP|B[3]~9_combout\,
	datac => \DP|B[3]~10_combout\,
	datad => \CU|B_shift_amount[0]~4_combout\,
	combout => \DP|B[3]~11_combout\);

-- Location: FF_X29_Y18_N29
\DP|B[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|B[3]~11_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|B[3]~_emulated_q\);

-- Location: LCCOMB_X29_Y18_N26
\DP|B[3]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[3]~10_combout\ = (\rstN~input_o\ & ((\DP|B[3]~9_combout\ $ (\DP|B[3]~_emulated_q\)))) # (!\rstN~input_o\ & (\B_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstN~input_o\,
	datab => \B_in[3]~input_o\,
	datac => \DP|B[3]~9_combout\,
	datad => \DP|B[3]~_emulated_q\,
	combout => \DP|B[3]~10_combout\);

-- Location: LCCOMB_X29_Y18_N18
\CU|B_shift_amount[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|B_shift_amount[1]~3_combout\ = (\CU|first_clk~q\ & (\DP|B[0]~6_combout\ & ((!\DP|B[2]~14_combout\) # (!\DP|B[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[3]~10_combout\,
	datab => \CU|first_clk~q\,
	datac => \DP|B[0]~6_combout\,
	datad => \DP|B[2]~14_combout\,
	combout => \CU|B_shift_amount[1]~3_combout\);

-- Location: LCCOMB_X30_Y18_N24
\DP|B[1]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[1]~30_combout\ = (\DP|B[1]~2_combout\ & ((\CU|B_shift_amount[1]~3_combout\) # ((!\CU|first_clk~q\ & \DP|B[0]~6_combout\)))) # (!\DP|B[1]~2_combout\ & (((!\DP|B[0]~6_combout\)) # (!\CU|first_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[1]~2_combout\,
	datab => \CU|first_clk~q\,
	datac => \DP|B[0]~6_combout\,
	datad => \CU|B_shift_amount[1]~3_combout\,
	combout => \DP|B[1]~30_combout\);

-- Location: LCCOMB_X30_Y18_N12
\DP|B[1]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[1]~28_combout\ = (\DP|B[0]~6_combout\ & !\CU|first_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|B[0]~6_combout\,
	datad => \CU|first_clk~q\,
	combout => \DP|B[1]~28_combout\);

-- Location: LCCOMB_X30_Y18_N6
\DP|B[1]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[1]~29_combout\ = (\DP|B[1]~28_combout\ & (((\DP|B[1]~2_combout\)))) # (!\DP|B[1]~28_combout\ & (\DP|B[3]~10_combout\ & (!\CU|B_shift_amount[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[3]~10_combout\,
	datab => \CU|B_shift_amount[0]~4_combout\,
	datac => \DP|B[1]~2_combout\,
	datad => \DP|B[1]~28_combout\,
	combout => \DP|B[1]~29_combout\);

-- Location: LCCOMB_X30_Y18_N18
\DP|B[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[1]~3_combout\ = \DP|B[1]~1_combout\ $ (((\DP|B[1]~30_combout\ & (\DP|B[1]~29_combout\)) # (!\DP|B[1]~30_combout\ & ((\DP|B[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[1]~30_combout\,
	datab => \DP|B[1]~1_combout\,
	datac => \DP|B[1]~29_combout\,
	datad => \DP|B[2]~14_combout\,
	combout => \DP|B[1]~3_combout\);

-- Location: FF_X30_Y18_N19
\DP|B[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|B[1]~3_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|B[1]~_emulated_q\);

-- Location: LCCOMB_X29_Y18_N10
\DP|B[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[1]~2_combout\ = (\rstN~input_o\ & ((\DP|B[1]~1_combout\ $ (\DP|B[1]~_emulated_q\)))) # (!\rstN~input_o\ & (\B_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstN~input_o\,
	datab => \B_in[1]~input_o\,
	datac => \DP|B[1]~1_combout\,
	datad => \DP|B[1]~_emulated_q\,
	combout => \DP|B[1]~2_combout\);

-- Location: LCCOMB_X30_Y18_N20
\DP|B[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[0]~31_combout\ = ((\DP|B[1]~2_combout\) # (!\CU|first_clk~q\)) # (!\DP|B[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|B[0]~6_combout\,
	datac => \DP|B[1]~2_combout\,
	datad => \CU|first_clk~q\,
	combout => \DP|B[0]~31_combout\);

-- Location: LCCOMB_X30_Y18_N0
\DP|B[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[0]~7_combout\ = \DP|B[0]~5_combout\ $ (((\DP|B[0]~31_combout\ & ((\DP|ShiftRight0~0_combout\) # (!\CU|B_shift_amount[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[0]~5_combout\,
	datab => \DP|B[0]~31_combout\,
	datac => \DP|ShiftRight0~0_combout\,
	datad => \CU|B_shift_amount[1]~6_combout\,
	combout => \DP|B[0]~7_combout\);

-- Location: FF_X29_Y18_N5
\DP|B[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DP|B[0]~7_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|B[0]~_emulated_q\);

-- Location: LCCOMB_X29_Y18_N14
\DP|B[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|B[0]~6_combout\ = (\rstN~input_o\ & ((\DP|B[0]~_emulated_q\ $ (\DP|B[0]~5_combout\)))) # (!\rstN~input_o\ & (\B_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstN~input_o\,
	datab => \B_in[0]~input_o\,
	datac => \DP|B[0]~_emulated_q\,
	datad => \DP|B[0]~5_combout\,
	combout => \DP|B[0]~6_combout\);

-- Location: LCCOMB_X29_Y18_N24
\CU|B_shift_amount[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|B_shift_amount[1]~2_combout\ = (!\DP|B[0]~6_combout\ & !\DP|B[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|B[0]~6_combout\,
	datad => \DP|B[1]~2_combout\,
	combout => \CU|B_shift_amount[1]~2_combout\);

-- Location: FF_X29_Y18_N31
\CU|shifted[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Add0~7_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|shifted\(1));

-- Location: LCCOMB_X29_Y17_N30
\CU|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Add0~6_combout\ = \CU|shifted\(0) $ (\CU|B_shift_amount[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|shifted\(0),
	datad => \CU|B_shift_amount[0]~4_combout\,
	combout => \CU|Add0~6_combout\);

-- Location: FF_X29_Y17_N17
\CU|shifted[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|Add0~6_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|shifted\(0));

-- Location: LCCOMB_X29_Y18_N2
\CU|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Add0~4_combout\ = (\CU|shifted\(0) & \CU|B_shift_amount[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|shifted\(0),
	datad => \CU|B_shift_amount[0]~4_combout\,
	combout => \CU|Add0~4_combout\);

-- Location: LCCOMB_X29_Y18_N30
\CU|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Add0~7_combout\ = \CU|shifted\(1) $ (\CU|Add0~4_combout\ $ (((\CU|B_shift_amount[1]~2_combout\) # (\CU|B_shift_amount[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|B_shift_amount[1]~2_combout\,
	datab => \CU|B_shift_amount[1]~5_combout\,
	datac => \CU|shifted\(1),
	datad => \CU|Add0~4_combout\,
	combout => \CU|Add0~7_combout\);

-- Location: IOIBUF_X33_Y12_N8
\A_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(0),
	o => \A_in[0]~input_o\);

-- Location: LCCOMB_X29_Y17_N28
\DP|A[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|A\(0) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\DP|A\(0)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in[0]~input_o\,
	datab => \DP|A\(0),
	datad => \rstN~inputclkctrl_outclk\,
	combout => \DP|A\(0));

-- Location: LCCOMB_X29_Y18_N22
\CU|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Add0~9_combout\ = (\CU|shifted\(1)) # ((\DP|B[1]~2_combout\ & ((\CU|B_shift_amount[1]~3_combout\))) # (!\DP|B[1]~2_combout\ & (!\DP|B[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[0]~6_combout\,
	datab => \CU|shifted\(1),
	datac => \DP|B[1]~2_combout\,
	datad => \CU|B_shift_amount[1]~3_combout\,
	combout => \CU|Add0~9_combout\);

-- Location: FF_X29_Y18_N1
\CU|shifted[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Add0~5_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|shifted\(2));

-- Location: LCCOMB_X29_Y18_N12
\CU|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Add0~8_combout\ = (\CU|shifted\(1) & ((\DP|B[1]~2_combout\ & ((\CU|B_shift_amount[1]~3_combout\))) # (!\DP|B[1]~2_combout\ & (!\DP|B[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|B[0]~6_combout\,
	datab => \CU|shifted\(1),
	datac => \DP|B[1]~2_combout\,
	datad => \CU|B_shift_amount[1]~3_combout\,
	combout => \CU|Add0~8_combout\);

-- Location: LCCOMB_X29_Y18_N0
\CU|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Add0~5_combout\ = \CU|shifted\(2) $ (((\CU|Add0~8_combout\) # ((\CU|Add0~9_combout\ & \CU|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~9_combout\,
	datab => \CU|Add0~4_combout\,
	datac => \CU|shifted\(2),
	datad => \CU|Add0~8_combout\,
	combout => \CU|Add0~5_combout\);

-- Location: LCCOMB_X29_Y17_N16
\DP|ShiftLeft0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~0_combout\ = (!\CU|Add0~7_combout\ & (\DP|A\(0) & (!\CU|Add0~6_combout\ & !\CU|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~7_combout\,
	datab => \DP|A\(0),
	datac => \CU|Add0~6_combout\,
	datad => \CU|Add0~5_combout\,
	combout => \DP|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X31_Y17_N16
\DP|acc[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[0]~8_combout\ = (\DP|acc\(0) & (\DP|ShiftLeft0~0_combout\ $ (VCC))) # (!\DP|acc\(0) & (\DP|ShiftLeft0~0_combout\ & VCC))
-- \DP|acc[0]~9\ = CARRY((\DP|acc\(0) & \DP|ShiftLeft0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|acc\(0),
	datab => \DP|ShiftLeft0~0_combout\,
	datad => VCC,
	combout => \DP|acc[0]~8_combout\,
	cout => \DP|acc[0]~9\);

-- Location: FF_X31_Y17_N17
\DP|acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[0]~8_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(0));

-- Location: LCCOMB_X30_Y18_N30
\CU|op\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|op~combout\ = (\CU|first_clk~q\ & \DP|B[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|first_clk~q\,
	datad => \DP|B[0]~6_combout\,
	combout => \CU|op~combout\);

-- Location: IOIBUF_X33_Y27_N1
\A_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(1),
	o => \A_in[1]~input_o\);

-- Location: LCCOMB_X29_Y17_N26
\DP|A[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|A\(1) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\DP|A\(1)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in[1]~input_o\,
	datac => \DP|A\(1),
	datad => \rstN~inputclkctrl_outclk\,
	combout => \DP|A\(1));

-- Location: LCCOMB_X29_Y17_N8
\DP|ShiftLeft0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~1_combout\ = (\DP|A\(1) & ((\DP|A\(0)) # (\CU|shifted\(0) $ (!\CU|B_shift_amount[0]~4_combout\)))) # (!\DP|A\(1) & (\DP|A\(0) & (\CU|shifted\(0) $ (\CU|B_shift_amount[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|A\(1),
	datab => \CU|shifted\(0),
	datac => \DP|A\(0),
	datad => \CU|B_shift_amount[0]~4_combout\,
	combout => \DP|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X30_Y17_N2
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29_combout\ = (!\CU|Add0~7_combout\ & (\CU|op~combout\ & (!\CU|Add0~5_combout\ & \DP|ShiftLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~7_combout\,
	datab => \CU|op~combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~1_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29_combout\);

-- Location: LCCOMB_X30_Y17_N28
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28_combout\ = (\CU|op~combout\) # ((\DP|ShiftLeft0~1_combout\ & (!\CU|Add0~5_combout\ & !\CU|Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ShiftLeft0~1_combout\,
	datab => \CU|op~combout\,
	datac => \CU|Add0~5_combout\,
	datad => \CU|Add0~7_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28_combout\);

-- Location: LCCOMB_X30_Y17_N0
\DP|ShiftLeft0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~2_combout\ = (\DP|A\(0) & (\CU|shifted\(0) $ (!\CU|B_shift_amount[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|shifted\(0),
	datac => \DP|A\(0),
	datad => \CU|B_shift_amount[0]~4_combout\,
	combout => \DP|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X30_Y18_N8
\DP|Mult0|mult_core|$00030|left_bit[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|$00030|left_bit[0]~0_combout\ = \CU|op~combout\ $ (((!\CU|Add0~5_combout\ & (!\CU|Add0~7_combout\ & \DP|ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|op~combout\,
	datab => \CU|Add0~5_combout\,
	datac => \CU|Add0~7_combout\,
	datad => \DP|ShiftLeft0~2_combout\,
	combout => \DP|Mult0|mult_core|$00030|left_bit[0]~0_combout\);

-- Location: LCCOMB_X31_Y17_N0
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((!\DP|Mult0|mult_core|$00030|left_bit[0]~0_combout\ & !\CU|op~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|$00030|left_bit[0]~0_combout\,
	datab => \CU|op~combout\,
	datad => VCC,
	cout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X31_Y17_N2
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29_combout\ & (((!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)))) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29_combout\ & ((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28_combout\ & ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (GND))) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28_combout\ & (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\))))
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY(((!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29_combout\ & \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28_combout\)) # 
-- (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~29_combout\,
	datab => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~28_combout\,
	datad => VCC,
	cin => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	combout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X31_Y17_N18
\DP|acc[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[1]~10_combout\ = (\DP|acc\(1) & ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\DP|acc[0]~9\ & VCC)) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\DP|acc[0]~9\)))) # (!\DP|acc\(1) & 
-- ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\DP|acc[0]~9\)) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\DP|acc[0]~9\) # (GND)))))
-- \DP|acc[1]~11\ = CARRY((\DP|acc\(1) & (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\DP|acc[0]~9\)) # (!\DP|acc\(1) & ((!\DP|acc[0]~9\) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|acc\(1),
	datab => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \DP|acc[0]~9\,
	combout => \DP|acc[1]~10_combout\,
	cout => \DP|acc[1]~11\);

-- Location: FF_X31_Y17_N19
\DP|acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[1]~10_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(1));

-- Location: IOIBUF_X33_Y15_N1
\A_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(2),
	o => \A_in[2]~input_o\);

-- Location: LCCOMB_X29_Y17_N4
\DP|A[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|A\(2) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\DP|A\(2)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_in[2]~input_o\,
	datac => \DP|A\(2),
	datad => \rstN~inputclkctrl_outclk\,
	combout => \DP|A\(2));

-- Location: LCCOMB_X29_Y17_N6
\DP|ShiftLeft0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~3_combout\ = (\DP|A\(1) & ((\DP|A\(2)) # (\CU|shifted\(0) $ (\CU|B_shift_amount[0]~4_combout\)))) # (!\DP|A\(1) & (\DP|A\(2) & (\CU|shifted\(0) $ (!\CU|B_shift_amount[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|A\(1),
	datab => \CU|shifted\(0),
	datac => \DP|A\(2),
	datad => \CU|B_shift_amount[0]~4_combout\,
	combout => \DP|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X29_Y17_N12
\DP|ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~4_combout\ = (\CU|Add0~7_combout\ & (\DP|A\(0) & (!\CU|Add0~6_combout\))) # (!\CU|Add0~7_combout\ & (((\DP|ShiftLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~7_combout\,
	datab => \DP|A\(0),
	datac => \CU|Add0~6_combout\,
	datad => \DP|ShiftLeft0~3_combout\,
	combout => \DP|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X30_Y17_N16
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30_combout\ = (\CU|first_clk~q\ & ((\DP|B[0]~6_combout\) # ((!\CU|Add0~5_combout\ & \DP|ShiftLeft0~4_combout\)))) # (!\CU|first_clk~q\ & (((!\CU|Add0~5_combout\ & \DP|ShiftLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|first_clk~q\,
	datab => \DP|B[0]~6_combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~4_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30_combout\);

-- Location: LCCOMB_X30_Y17_N30
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31_combout\ = (\CU|first_clk~q\ & (\DP|B[0]~6_combout\ & (!\CU|Add0~5_combout\ & \DP|ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|first_clk~q\,
	datab => \DP|B[0]~6_combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~4_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31_combout\);

-- Location: LCCOMB_X31_Y17_N4
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & (((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30_combout\)))) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & ((((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30_combout\)))))
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & ((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~30_combout\,
	datab => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~31_combout\,
	datad => VCC,
	cin => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X31_Y17_N20
\DP|acc[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[2]~12_combout\ = ((\DP|acc\(2) $ (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (!\DP|acc[1]~11\)))) # (GND)
-- \DP|acc[2]~13\ = CARRY((\DP|acc\(2) & ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\DP|acc[1]~11\))) # (!\DP|acc\(2) & (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\DP|acc[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|acc\(2),
	datab => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \DP|acc[1]~11\,
	combout => \DP|acc[2]~12_combout\,
	cout => \DP|acc[2]~13\);

-- Location: FF_X31_Y17_N21
\DP|acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[2]~12_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(2));

-- Location: IOIBUF_X33_Y24_N1
\A_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(3),
	o => \A_in[3]~input_o\);

-- Location: LCCOMB_X29_Y17_N22
\DP|A[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|A\(3) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\DP|A\(3)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_in[3]~input_o\,
	datac => \DP|A\(3),
	datad => \rstN~inputclkctrl_outclk\,
	combout => \DP|A\(3));

-- Location: LCCOMB_X30_Y17_N26
\DP|ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~5_combout\ = (\CU|shifted\(0) & ((\CU|B_shift_amount[0]~4_combout\ & ((\DP|A\(3)))) # (!\CU|B_shift_amount[0]~4_combout\ & (\DP|A\(2))))) # (!\CU|shifted\(0) & ((\CU|B_shift_amount[0]~4_combout\ & (\DP|A\(2))) # 
-- (!\CU|B_shift_amount[0]~4_combout\ & ((\DP|A\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|shifted\(0),
	datab => \DP|A\(2),
	datac => \DP|A\(3),
	datad => \CU|B_shift_amount[0]~4_combout\,
	combout => \DP|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X30_Y17_N12
\DP|ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~6_combout\ = (\CU|Add0~7_combout\ & (\DP|ShiftLeft0~1_combout\)) # (!\CU|Add0~7_combout\ & ((\DP|ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ShiftLeft0~1_combout\,
	datac => \DP|ShiftLeft0~5_combout\,
	datad => \CU|Add0~7_combout\,
	combout => \DP|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X30_Y17_N10
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33_combout\ = (\CU|first_clk~q\ & (\DP|B[0]~6_combout\ & (!\CU|Add0~5_combout\ & \DP|ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|first_clk~q\,
	datab => \DP|B[0]~6_combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~6_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33_combout\);

-- Location: LCCOMB_X30_Y17_N4
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32_combout\ = (\CU|first_clk~q\ & ((\DP|B[0]~6_combout\) # ((!\CU|Add0~5_combout\ & \DP|ShiftLeft0~6_combout\)))) # (!\CU|first_clk~q\ & (((!\CU|Add0~5_combout\ & \DP|ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|first_clk~q\,
	datab => \DP|B[0]~6_combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~6_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32_combout\);

-- Location: LCCOMB_X31_Y17_N6
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33_combout\ & (((!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33_combout\ & ((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32_combout\ & ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND))) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32_combout\ & (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\))))
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY(((!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33_combout\ & \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32_combout\)) # 
-- (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~33_combout\,
	datab => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~32_combout\,
	datad => VCC,
	cin => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X31_Y17_N22
\DP|acc[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[3]~14_combout\ = (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\DP|acc\(3) & (\DP|acc[2]~13\ & VCC)) # (!\DP|acc\(3) & (!\DP|acc[2]~13\)))) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\DP|acc\(3) & (!\DP|acc[2]~13\)) # (!\DP|acc\(3) & ((\DP|acc[2]~13\) # (GND)))))
-- \DP|acc[3]~15\ = CARRY((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\DP|acc\(3) & !\DP|acc[2]~13\)) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((!\DP|acc[2]~13\) # (!\DP|acc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \DP|acc\(3),
	datad => VCC,
	cin => \DP|acc[2]~13\,
	combout => \DP|acc[3]~14_combout\,
	cout => \DP|acc[3]~15\);

-- Location: FF_X31_Y17_N23
\DP|acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[3]~14_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(3));

-- Location: LCCOMB_X30_Y17_N18
\DP|ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~7_combout\ = (\CU|Add0~7_combout\ & ((\DP|ShiftLeft0~3_combout\))) # (!\CU|Add0~7_combout\ & (\DP|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|A\(3),
	datac => \DP|ShiftLeft0~3_combout\,
	datad => \CU|Add0~7_combout\,
	combout => \DP|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X30_Y17_N24
\DP|ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~8_combout\ = (\CU|Add0~5_combout\ & (!\CU|Add0~7_combout\ & (\DP|ShiftLeft0~2_combout\))) # (!\CU|Add0~5_combout\ & (((\DP|ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~7_combout\,
	datab => \DP|ShiftLeft0~2_combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~7_combout\,
	combout => \DP|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X30_Y17_N8
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34_combout\ = (\DP|ShiftLeft0~8_combout\) # ((\DP|B[0]~6_combout\ & \CU|first_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|B[0]~6_combout\,
	datac => \CU|first_clk~q\,
	datad => \DP|ShiftLeft0~8_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34_combout\);

-- Location: LCCOMB_X30_Y17_N6
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35_combout\ = (\DP|B[0]~6_combout\ & (\CU|first_clk~q\ & \DP|ShiftLeft0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|B[0]~6_combout\,
	datac => \CU|first_clk~q\,
	datad => \DP|ShiftLeft0~8_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35_combout\);

-- Location: LCCOMB_X31_Y17_N8
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & (((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34_combout\)))) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & ((((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34_combout\)))))
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & ((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~34_combout\,
	datab => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~35_combout\,
	datad => VCC,
	cin => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X31_Y17_N24
\DP|acc[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[4]~16_combout\ = ((\DP|acc\(4) $ (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\DP|acc[3]~15\)))) # (GND)
-- \DP|acc[4]~17\ = CARRY((\DP|acc\(4) & ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\) # (!\DP|acc[3]~15\))) # (!\DP|acc\(4) & (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\DP|acc[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|acc\(4),
	datab => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \DP|acc[3]~15\,
	combout => \DP|acc[4]~16_combout\,
	cout => \DP|acc[4]~17\);

-- Location: FF_X31_Y17_N25
\DP|acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[4]~16_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(4));

-- Location: LCCOMB_X29_Y17_N10
\DP|ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~9_combout\ = (\CU|Add0~7_combout\ & ((\CU|Add0~6_combout\ & ((\DP|A\(2)))) # (!\CU|Add0~6_combout\ & (\DP|A\(3))))) # (!\CU|Add0~7_combout\ & (\DP|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|A\(3),
	datab => \DP|A\(2),
	datac => \CU|Add0~7_combout\,
	datad => \CU|Add0~6_combout\,
	combout => \DP|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X29_Y17_N0
\DP|ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~10_combout\ = (\CU|Add0~5_combout\ & (!\CU|Add0~7_combout\ & (\DP|ShiftLeft0~1_combout\))) # (!\CU|Add0~5_combout\ & (((\DP|ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~7_combout\,
	datab => \DP|ShiftLeft0~1_combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~9_combout\,
	combout => \DP|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X29_Y17_N20
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36_combout\ = (\DP|ShiftLeft0~10_combout\) # ((\CU|first_clk~q\ & \DP|B[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|first_clk~q\,
	datac => \DP|B[0]~6_combout\,
	datad => \DP|ShiftLeft0~10_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36_combout\);

-- Location: LCCOMB_X29_Y17_N18
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37_combout\ = (\CU|first_clk~q\ & (\DP|B[0]~6_combout\ & \DP|ShiftLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|first_clk~q\,
	datac => \DP|B[0]~6_combout\,
	datad => \DP|ShiftLeft0~10_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37_combout\);

-- Location: LCCOMB_X31_Y17_N10
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36_combout\ & ((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37_combout\ & 
-- (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37_combout\ & ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND))))) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36_combout\ & (((!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\))))
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY(((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36_combout\ & !\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37_combout\)) # 
-- (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~36_combout\,
	datab => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~37_combout\,
	datad => VCC,
	cin => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X31_Y17_N26
\DP|acc[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[5]~18_combout\ = (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\DP|acc\(5) & (\DP|acc[4]~17\ & VCC)) # (!\DP|acc\(5) & (!\DP|acc[4]~17\)))) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\DP|acc\(5) & (!\DP|acc[4]~17\)) # (!\DP|acc\(5) & ((\DP|acc[4]~17\) # (GND)))))
-- \DP|acc[5]~19\ = CARRY((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\DP|acc\(5) & !\DP|acc[4]~17\)) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\DP|acc[4]~17\) # (!\DP|acc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \DP|acc\(5),
	datad => VCC,
	cin => \DP|acc[4]~17\,
	combout => \DP|acc[5]~18_combout\,
	cout => \DP|acc[5]~19\);

-- Location: FF_X31_Y17_N27
\DP|acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[5]~18_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(5));

-- Location: LCCOMB_X29_Y17_N2
\DP|ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~11_combout\ = (\CU|Add0~5_combout\ & ((\DP|ShiftLeft0~4_combout\))) # (!\CU|Add0~5_combout\ & (\DP|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|A\(3),
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~4_combout\,
	combout => \DP|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X29_Y17_N24
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38_combout\ = (\DP|ShiftLeft0~11_combout\) # ((\CU|first_clk~q\ & \DP|B[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|first_clk~q\,
	datac => \DP|B[0]~6_combout\,
	datad => \DP|ShiftLeft0~11_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38_combout\);

-- Location: LCCOMB_X29_Y17_N14
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39_combout\ = (\CU|first_clk~q\ & (\DP|B[0]~6_combout\ & \DP|ShiftLeft0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|first_clk~q\,
	datac => \DP|B[0]~6_combout\,
	datad => \DP|ShiftLeft0~11_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39_combout\);

-- Location: LCCOMB_X31_Y17_N12
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & (((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38_combout\)))) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & ((((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38_combout\)))))
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & ((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~38_combout\,
	datab => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~39_combout\,
	datad => VCC,
	cin => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X31_Y17_N28
\DP|acc[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[6]~20_combout\ = ((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\DP|acc\(6) $ (!\DP|acc[5]~19\)))) # (GND)
-- \DP|acc[6]~21\ = CARRY((\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\DP|acc\(6)) # (!\DP|acc[5]~19\))) # (!\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\DP|acc\(6) & !\DP|acc[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \DP|acc\(6),
	datad => VCC,
	cin => \DP|acc[5]~19\,
	combout => \DP|acc[6]~20_combout\,
	cout => \DP|acc[6]~21\);

-- Location: FF_X31_Y17_N29
\DP|acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[6]~20_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(6));

-- Location: LCCOMB_X30_Y18_N10
\DP|ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~12_combout\ = \CU|shifted\(2) $ (((\CU|Add0~8_combout\) # ((\CU|Add0~9_combout\ & \CU|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~8_combout\,
	datab => \CU|Add0~9_combout\,
	datac => \CU|shifted\(2),
	datad => \CU|Add0~4_combout\,
	combout => \DP|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X30_Y18_N16
\DP|ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~13_combout\ = (\CU|Add0~7_combout\ & ((\DP|ShiftLeft0~12_combout\))) # (!\CU|Add0~7_combout\ & (\CU|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~7_combout\,
	datac => \CU|Add0~5_combout\,
	datad => \DP|ShiftLeft0~12_combout\,
	combout => \DP|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X30_Y17_N22
\DP|ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|ShiftLeft0~14_combout\ = (\DP|A\(3) & (((\DP|ShiftLeft0~6_combout\) # (!\DP|ShiftLeft0~13_combout\)))) # (!\DP|A\(3) & (\DP|ShiftLeft0~12_combout\ & ((\DP|ShiftLeft0~6_combout\) # (!\DP|ShiftLeft0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|A\(3),
	datab => \DP|ShiftLeft0~12_combout\,
	datac => \DP|ShiftLeft0~13_combout\,
	datad => \DP|ShiftLeft0~6_combout\,
	combout => \DP|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X30_Y17_N20
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~40_combout\ = (\DP|ShiftLeft0~14_combout\) # ((\CU|first_clk~q\ & \DP|B[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|first_clk~q\,
	datac => \DP|ShiftLeft0~14_combout\,
	datad => \DP|B[0]~6_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~40_combout\);

-- Location: LCCOMB_X30_Y17_N14
\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~41_combout\ = (\CU|first_clk~q\ & (\DP|ShiftLeft0~14_combout\ & \DP|B[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|first_clk~q\,
	datac => \DP|ShiftLeft0~14_combout\,
	datad => \DP|B[0]~6_combout\,
	combout => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~41_combout\);

-- Location: LCCOMB_X31_Y17_N14
\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ $ (((\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~41_combout\) # 
-- (!\DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~40_combout\,
	datad => \DP|Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~41_combout\,
	cin => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X31_Y17_N30
\DP|acc[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|acc[7]~22_combout\ = \DP|acc\(7) $ (\DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ $ (\DP|acc[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|acc\(7),
	datab => \DP|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cin => \DP|acc[6]~21\,
	combout => \DP|acc[7]~22_combout\);

-- Location: FF_X31_Y17_N31
\DP|acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|acc[7]~22_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|acc\(7));

-- Location: LCCOMB_X30_Y15_N20
\CU|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|LessThan0~0_combout\ = (\CU|shifted\(2)) # ((\CU|Add0~8_combout\) # ((\CU|Add0~4_combout\ & \CU|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Add0~4_combout\,
	datab => \CU|Add0~9_combout\,
	datac => \CU|shifted\(2),
	datad => \CU|Add0~8_combout\,
	combout => \CU|LessThan0~0_combout\);

ww_res(0) <= \res[0]~output_o\;

ww_res(1) <= \res[1]~output_o\;

ww_res(2) <= \res[2]~output_o\;

ww_res(3) <= \res[3]~output_o\;

ww_res(4) <= \res[4]~output_o\;

ww_res(5) <= \res[5]~output_o\;

ww_res(6) <= \res[6]~output_o\;

ww_res(7) <= \res[7]~output_o\;

ww_done <= \done~output_o\;
END structure;


