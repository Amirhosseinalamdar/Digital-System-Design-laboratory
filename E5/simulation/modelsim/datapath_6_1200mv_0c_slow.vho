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

-- DATE "05/10/2023 01:35:30"

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

ENTITY 	datapath IS
    PORT (
	A_in : IN std_logic_vector(3 DOWNTO 0);
	B_in : IN std_logic_vector(3 DOWNTO 0);
	rstN : IN std_logic;
	clk : IN std_logic;
	A_shift_amount : IN std_logic_vector(2 DOWNTO 0);
	B_shift_amount : IN std_logic_vector(2 DOWNTO 0);
	op : IN std_logic;
	done : IN std_logic;
	acc : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- done	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstN	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_shift_amount[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_shift_amount[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_shift_amount[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_shift_amount[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_shift_amount[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_shift_amount[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_in[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
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
SIGNAL ww_A_shift_amount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B_shift_amount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_op : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_acc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \rstN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~input_o\ : std_logic;
SIGNAL \acc[0]~output_o\ : std_logic;
SIGNAL \acc[1]~output_o\ : std_logic;
SIGNAL \acc[2]~output_o\ : std_logic;
SIGNAL \acc[3]~output_o\ : std_logic;
SIGNAL \acc[4]~output_o\ : std_logic;
SIGNAL \acc[5]~output_o\ : std_logic;
SIGNAL \acc[6]~output_o\ : std_logic;
SIGNAL \acc[7]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A_shift_amount[1]~input_o\ : std_logic;
SIGNAL \A_in[0]~input_o\ : std_logic;
SIGNAL \rstN~input_o\ : std_logic;
SIGNAL \rstN~inputclkctrl_outclk\ : std_logic;
SIGNAL \A_shift_amount[0]~input_o\ : std_logic;
SIGNAL \A_shift_amount[2]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \acc[0]~8_combout\ : std_logic;
SIGNAL \acc[0]~reg0_q\ : std_logic;
SIGNAL \op~input_o\ : std_logic;
SIGNAL \A_in[1]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|$00030|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|$00030|left_bit[0]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \acc[0]~9\ : std_logic;
SIGNAL \acc[1]~10_combout\ : std_logic;
SIGNAL \acc[1]~reg0_q\ : std_logic;
SIGNAL \A_in[2]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \acc[1]~11\ : std_logic;
SIGNAL \acc[2]~12_combout\ : std_logic;
SIGNAL \acc[2]~reg0_q\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \A_in[3]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \acc[2]~13\ : std_logic;
SIGNAL \acc[3]~14_combout\ : std_logic;
SIGNAL \acc[3]~reg0_q\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \acc[3]~15\ : std_logic;
SIGNAL \acc[4]~16_combout\ : std_logic;
SIGNAL \acc[4]~reg0_q\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \acc[4]~17\ : std_logic;
SIGNAL \acc[5]~18_combout\ : std_logic;
SIGNAL \acc[5]~reg0_q\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \acc[5]~19\ : std_logic;
SIGNAL \acc[6]~20_combout\ : std_logic;
SIGNAL \acc[6]~reg0_q\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~15_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \acc[6]~21\ : std_logic;
SIGNAL \acc[7]~22_combout\ : std_logic;
SIGNAL \acc[7]~reg0_q\ : std_logic;
SIGNAL \B_in[0]~input_o\ : std_logic;
SIGNAL \B[0]~1_combout\ : std_logic;
SIGNAL \B_shift_amount[2]~input_o\ : std_logic;
SIGNAL \B_in[3]~input_o\ : std_logic;
SIGNAL \B[3]~13_combout\ : std_logic;
SIGNAL \B_shift_amount[0]~input_o\ : std_logic;
SIGNAL \B_shift_amount[1]~input_o\ : std_logic;
SIGNAL \B[0]~19_combout\ : std_logic;
SIGNAL \B[3]~reg0_emulated_q\ : std_logic;
SIGNAL \B[3]~14_combout\ : std_logic;
SIGNAL \B_in[2]~input_o\ : std_logic;
SIGNAL \B[2]~9_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \B[2]~11_combout\ : std_logic;
SIGNAL \B[2]~reg0_emulated_q\ : std_logic;
SIGNAL \B[2]~10_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \B_in[1]~input_o\ : std_logic;
SIGNAL \B[1]~5_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \B[1]~7_combout\ : std_logic;
SIGNAL \B[1]~reg0_emulated_q\ : std_logic;
SIGNAL \B[1]~6_combout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \B[0]~3_combout\ : std_logic;
SIGNAL \B[0]~reg0_emulated_q\ : std_logic;
SIGNAL \B[0]~2_combout\ : std_logic;
SIGNAL A : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A_in <= A_in;
ww_B_in <= B_in;
ww_rstN <= rstN;
ww_clk <= clk;
ww_A_shift_amount <= A_shift_amount;
ww_B_shift_amount <= B_shift_amount;
ww_op <= op;
ww_done <= done;
acc <= ww_acc;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rstN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rstN~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X22_Y31_N9
\acc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[0]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[0]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\acc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[1]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\acc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[2]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\acc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[3]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\acc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[4]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[4]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\acc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[5]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[5]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\acc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[6]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[6]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\acc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc[7]~reg0_q\,
	devoe => ww_devoe,
	o => \acc[7]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\B[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~2_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\B[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~6_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\B[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~10_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\B[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~14_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

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

-- Location: IOIBUF_X31_Y31_N1
\A_shift_amount[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_shift_amount(1),
	o => \A_shift_amount[1]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\A_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(0),
	o => \A_in[0]~input_o\);

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

-- Location: LCCOMB_X24_Y30_N30
\A[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- A(0) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((A(0)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in[0]~input_o\,
	datac => A(0),
	datad => \rstN~inputclkctrl_outclk\,
	combout => A(0));

-- Location: IOIBUF_X24_Y31_N8
\A_shift_amount[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_shift_amount(0),
	o => \A_shift_amount[0]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\A_shift_amount[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_shift_amount(2),
	o => \A_shift_amount[2]~input_o\);

-- Location: LCCOMB_X24_Y30_N8
\ShiftLeft0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (!\A_shift_amount[1]~input_o\ & (A(0) & (!\A_shift_amount[0]~input_o\ & !\A_shift_amount[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => A(0),
	datac => \A_shift_amount[0]~input_o\,
	datad => \A_shift_amount[2]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X22_Y30_N16
\acc[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[0]~8_combout\ = (\ShiftLeft0~0_combout\ & (\acc[0]~reg0_q\ $ (VCC))) # (!\ShiftLeft0~0_combout\ & (\acc[0]~reg0_q\ & VCC))
-- \acc[0]~9\ = CARRY((\ShiftLeft0~0_combout\ & \acc[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \acc[0]~reg0_q\,
	datad => VCC,
	combout => \acc[0]~8_combout\,
	cout => \acc[0]~9\);

-- Location: FF_X22_Y30_N17
\acc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[0]~8_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[0]~reg0_q\);

-- Location: IOIBUF_X24_Y31_N1
\op~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op,
	o => \op~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\A_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(1),
	o => \A_in[1]~input_o\);

-- Location: LCCOMB_X23_Y30_N16
\A[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- A(1) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((A(1)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_in[1]~input_o\,
	datac => A(1),
	datad => \rstN~inputclkctrl_outclk\,
	combout => A(1));

-- Location: LCCOMB_X23_Y30_N12
\ShiftLeft0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (!\A_shift_amount[1]~input_o\ & ((\A_shift_amount[0]~input_o\ & (A(0))) # (!\A_shift_amount[0]~input_o\ & ((A(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(0),
	datad => A(1),
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X23_Y30_N20
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5_combout\ = (!\A_shift_amount[2]~input_o\ & (\op~input_o\ & \ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[2]~input_o\,
	datac => \op~input_o\,
	datad => \ShiftLeft0~1_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5_combout\);

-- Location: LCCOMB_X23_Y30_N10
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4_combout\ = (\op~input_o\) # ((!\A_shift_amount[2]~input_o\ & \ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[2]~input_o\,
	datac => \op~input_o\,
	datad => \ShiftLeft0~1_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4_combout\);

-- Location: LCCOMB_X24_Y30_N22
\Mult0|mult_core|$00030|left_bit[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|$00030|left_bit[0]~0_combout\ = (\A_shift_amount[1]~input_o\) # ((\A_shift_amount[2]~input_o\) # (\A_shift_amount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[2]~input_o\,
	datac => \A_shift_amount[0]~input_o\,
	combout => \Mult0|mult_core|$00030|left_bit[0]~0_combout\);

-- Location: LCCOMB_X24_Y30_N16
\Mult0|mult_core|$00030|left_bit[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|$00030|left_bit[0]~1_combout\ = \op~input_o\ $ (((!\Mult0|mult_core|$00030|left_bit[0]~0_combout\ & A(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|$00030|left_bit[0]~0_combout\,
	datac => A(0),
	datad => \op~input_o\,
	combout => \Mult0|mult_core|$00030|left_bit[0]~1_combout\);

-- Location: LCCOMB_X22_Y30_N0
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((!\op~input_o\ & !\Mult0|mult_core|$00030|left_bit[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~input_o\,
	datab => \Mult0|mult_core|$00030|left_bit[0]~1_combout\,
	datad => VCC,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X22_Y30_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5_combout\ & (((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)))) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5_combout\ & ((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (GND))) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY(((!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5_combout\ & \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4_combout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~5_combout\,
	datab => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~4_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y30_N18
\acc[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[1]~10_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\acc[1]~reg0_q\ & (\acc[0]~9\ & VCC)) # (!\acc[1]~reg0_q\ & (!\acc[0]~9\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\acc[1]~reg0_q\ 
-- & (!\acc[0]~9\)) # (!\acc[1]~reg0_q\ & ((\acc[0]~9\) # (GND)))))
-- \acc[1]~11\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\acc[1]~reg0_q\ & !\acc[0]~9\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\acc[0]~9\) # (!\acc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \acc[1]~reg0_q\,
	datad => VCC,
	cin => \acc[0]~9\,
	combout => \acc[1]~10_combout\,
	cout => \acc[1]~11\);

-- Location: FF_X22_Y30_N19
\acc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[1]~10_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[1]~reg0_q\);

-- Location: IOIBUF_X33_Y28_N1
\A_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(2),
	o => \A_in[2]~input_o\);

-- Location: LCCOMB_X24_Y30_N12
\A[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- A(2) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((A(2)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_in[2]~input_o\,
	datac => A(2),
	datad => \rstN~inputclkctrl_outclk\,
	combout => A(2));

-- Location: LCCOMB_X24_Y30_N4
\ShiftLeft0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (!\A_shift_amount[0]~input_o\ & ((\A_shift_amount[1]~input_o\ & (A(0))) # (!\A_shift_amount[1]~input_o\ & ((A(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(0),
	datad => A(2),
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X24_Y30_N10
\ShiftLeft0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (!\A_shift_amount[1]~input_o\ & (\A_shift_amount[0]~input_o\ & A(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(1),
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X24_Y30_N18
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6_combout\ = (\op~input_o\) # ((!\A_shift_amount[2]~input_o\ & ((\ShiftLeft0~3_combout\) # (\ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~input_o\,
	datab => \A_shift_amount[2]~input_o\,
	datac => \ShiftLeft0~3_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6_combout\);

-- Location: LCCOMB_X24_Y30_N24
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7_combout\ = (\op~input_o\ & (!\A_shift_amount[2]~input_o\ & ((\ShiftLeft0~3_combout\) # (\ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~input_o\,
	datab => \A_shift_amount[2]~input_o\,
	datac => \ShiftLeft0~3_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7_combout\);

-- Location: LCCOMB_X22_Y30_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & (((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7_combout\) # (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6_combout\)))) 
-- # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & ((((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7_combout\) # (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6_combout\)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & ((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7_combout\) # (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~6_combout\,
	datab => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[1]~7_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y30_N20
\acc[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[2]~12_combout\ = ((\acc[2]~reg0_q\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (!\acc[1]~11\)))) # (GND)
-- \acc[2]~13\ = CARRY((\acc[2]~reg0_q\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\acc[1]~11\))) # (!\acc[2]~reg0_q\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\acc[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[2]~reg0_q\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \acc[1]~11\,
	combout => \acc[2]~12_combout\,
	cout => \acc[2]~13\);

-- Location: FF_X22_Y30_N21
\acc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[2]~12_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[2]~reg0_q\);

-- Location: LCCOMB_X23_Y30_N14
\ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\A_shift_amount[1]~input_o\ & ((\A_shift_amount[0]~input_o\ & (A(0))) # (!\A_shift_amount[0]~input_o\ & ((A(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(0),
	datad => A(1),
	combout => \ShiftLeft0~4_combout\);

-- Location: IOIBUF_X26_Y31_N1
\A_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_in(3),
	o => \A_in[3]~input_o\);

-- Location: LCCOMB_X23_Y30_N22
\A[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- A(3) = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((A(3)))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\A_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_in[3]~input_o\,
	datac => A(3),
	datad => \rstN~inputclkctrl_outclk\,
	combout => A(3));

-- Location: LCCOMB_X23_Y30_N28
\ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (!\A_shift_amount[1]~input_o\ & ((\A_shift_amount[0]~input_o\ & (A(2))) # (!\A_shift_amount[0]~input_o\ & ((A(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(2),
	datad => A(3),
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X23_Y30_N2
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8_combout\ = (\op~input_o\) # ((!\A_shift_amount[2]~input_o\ & ((\ShiftLeft0~4_combout\) # (\ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[2]~input_o\,
	datab => \op~input_o\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8_combout\);

-- Location: LCCOMB_X23_Y30_N0
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9_combout\ = (!\A_shift_amount[2]~input_o\ & (\op~input_o\ & ((\ShiftLeft0~4_combout\) # (\ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[2]~input_o\,
	datab => \op~input_o\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9_combout\);

-- Location: LCCOMB_X22_Y30_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8_combout\ & ((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND))))) # (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8_combout\ & 
-- (((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY(((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8_combout\ & !\Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9_combout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~8_combout\,
	datab => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[2]~9_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y30_N22
\acc[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[3]~14_combout\ = (\acc[3]~reg0_q\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\acc[2]~13\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\acc[2]~13\)))) # (!\acc[3]~reg0_q\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\acc[2]~13\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\acc[2]~13\) # (GND)))))
-- \acc[3]~15\ = CARRY((\acc[3]~reg0_q\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\acc[2]~13\)) # (!\acc[3]~reg0_q\ & ((!\acc[2]~13\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[3]~reg0_q\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \acc[2]~13\,
	combout => \acc[3]~14_combout\,
	cout => \acc[3]~15\);

-- Location: FF_X22_Y30_N23
\acc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[3]~14_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[3]~reg0_q\);

-- Location: LCCOMB_X24_Y30_N6
\ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\A_shift_amount[1]~input_o\ & ((A(2)))) # (!\A_shift_amount[1]~input_o\ & (A(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datac => A(0),
	datad => A(2),
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X24_Y30_N0
\ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\A_shift_amount[0]~input_o\ & (\A_shift_amount[1]~input_o\ & (A(1)))) # (!\A_shift_amount[0]~input_o\ & (((\ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(1),
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X24_Y30_N2
\ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\A_shift_amount[1]~input_o\ & (((!\A_shift_amount[2]~input_o\ & \ShiftLeft0~7_combout\)))) # (!\A_shift_amount[1]~input_o\ & ((\A_shift_amount[2]~input_o\ & ((\ShiftLeft0~7_combout\))) # (!\A_shift_amount[2]~input_o\ & (A(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => A(3),
	datac => \A_shift_amount[2]~input_o\,
	datad => \ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X23_Y30_N30
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10_combout\ = (\op~input_o\) # (\ShiftLeft0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~input_o\,
	datad => \ShiftLeft0~8_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10_combout\);

-- Location: LCCOMB_X23_Y30_N8
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11_combout\ = (\op~input_o\ & \ShiftLeft0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~input_o\,
	datad => \ShiftLeft0~8_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11_combout\);

-- Location: LCCOMB_X22_Y30_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & (((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11_combout\) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10_combout\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & ((((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11_combout\) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10_combout\)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & ((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11_combout\) # (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~10_combout\,
	datab => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[3]~11_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y30_N24
\acc[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[4]~16_combout\ = ((\acc[4]~reg0_q\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\acc[3]~15\)))) # (GND)
-- \acc[4]~17\ = CARRY((\acc[4]~reg0_q\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\) # (!\acc[3]~15\))) # (!\acc[4]~reg0_q\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\acc[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[4]~reg0_q\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \acc[3]~15\,
	combout => \acc[4]~16_combout\,
	cout => \acc[4]~17\);

-- Location: FF_X22_Y30_N25
\acc[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[4]~16_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[4]~reg0_q\);

-- Location: LCCOMB_X23_Y30_N26
\ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\A_shift_amount[1]~input_o\ & ((\A_shift_amount[0]~input_o\ & (A(2))) # (!\A_shift_amount[0]~input_o\ & ((A(3)))))) # (!\A_shift_amount[1]~input_o\ & (((A(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(2),
	datad => A(3),
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X23_Y30_N4
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16_combout\ = (\op~input_o\) # ((\A_shift_amount[2]~input_o\ & ((\ShiftLeft0~1_combout\))) # (!\A_shift_amount[2]~input_o\ & (\ShiftLeft0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[2]~input_o\,
	datab => \op~input_o\,
	datac => \ShiftLeft0~9_combout\,
	datad => \ShiftLeft0~1_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16_combout\);

-- Location: LCCOMB_X23_Y30_N18
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17_combout\ = (\op~input_o\ & ((\A_shift_amount[2]~input_o\ & ((\ShiftLeft0~1_combout\))) # (!\A_shift_amount[2]~input_o\ & (\ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[2]~input_o\,
	datab => \op~input_o\,
	datac => \ShiftLeft0~9_combout\,
	datad => \ShiftLeft0~1_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17_combout\);

-- Location: LCCOMB_X22_Y30_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16_combout\ & ((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND))))) # (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16_combout\ & 
-- (((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY(((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16_combout\ & !\Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17_combout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~16_combout\,
	datab => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[4]~17_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y30_N26
\acc[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[5]~18_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\acc[5]~reg0_q\ & (\acc[4]~17\ & VCC)) # (!\acc[5]~reg0_q\ & (!\acc[4]~17\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\acc[5]~reg0_q\ & (!\acc[4]~17\)) # (!\acc[5]~reg0_q\ & ((\acc[4]~17\) # (GND)))))
-- \acc[5]~19\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\acc[5]~reg0_q\ & !\acc[4]~17\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\acc[4]~17\) # (!\acc[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \acc[5]~reg0_q\,
	datad => VCC,
	cin => \acc[4]~17\,
	combout => \acc[5]~18_combout\,
	cout => \acc[5]~19\);

-- Location: FF_X22_Y30_N27
\acc[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[5]~18_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[5]~reg0_q\);

-- Location: LCCOMB_X24_Y30_N28
\ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (!\A_shift_amount[1]~input_o\ & (\A_shift_amount[0]~input_o\ & A(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[1]~input_o\,
	datab => \A_shift_amount[0]~input_o\,
	datac => A(1),
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X24_Y30_N26
\ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\A_shift_amount[2]~input_o\ & (((\ShiftLeft0~3_combout\) # (\ShiftLeft0~10_combout\)))) # (!\A_shift_amount[2]~input_o\ & (A(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_shift_amount[2]~input_o\,
	datab => A(3),
	datac => \ShiftLeft0~3_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X23_Y30_N6
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13_combout\ = (\op~input_o\ & \ShiftLeft0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~input_o\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13_combout\);

-- Location: LCCOMB_X23_Y30_N24
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12_combout\ = (\op~input_o\) # (\ShiftLeft0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~input_o\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12_combout\);

-- Location: LCCOMB_X22_Y30_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & (((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13_combout\) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12_combout\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & ((((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13_combout\) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12_combout\)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & ((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13_combout\) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~13_combout\,
	datab => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[5]~12_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X22_Y30_N28
\acc[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[6]~20_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\acc[6]~reg0_q\ $ (!\acc[5]~19\)))) # (GND)
-- \acc[6]~21\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\acc[6]~reg0_q\) # (!\acc[5]~19\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\acc[6]~reg0_q\ & !\acc[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \acc[6]~reg0_q\,
	datad => VCC,
	cin => \acc[5]~19\,
	combout => \acc[6]~20_combout\,
	cout => \acc[6]~21\);

-- Location: FF_X22_Y30_N29
\acc[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[6]~20_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[6]~reg0_q\);

-- Location: LCCOMB_X24_Y30_N20
\ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\A_shift_amount[2]~input_o\ & ((\ShiftLeft0~4_combout\) # ((\ShiftLeft0~5_combout\)))) # (!\A_shift_amount[2]~input_o\ & (((A(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => A(3),
	datac => \A_shift_amount[2]~input_o\,
	datad => \ShiftLeft0~5_combout\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X21_Y30_N14
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~15_combout\ = (\op~input_o\ & \ShiftLeft0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~input_o\,
	datad => \ShiftLeft0~12_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~15_combout\);

-- Location: LCCOMB_X21_Y30_N24
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~14_combout\ = (\op~input_o\) # (\ShiftLeft0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~input_o\,
	datad => \ShiftLeft0~12_combout\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~14_combout\);

-- Location: LCCOMB_X22_Y30_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ $ (((\Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~15_combout\) # 
-- (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~15_combout\,
	datad => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[6]~14_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X22_Y30_N30
\acc[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \acc[7]~22_combout\ = \acc[7]~reg0_q\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ $ (\acc[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[7]~reg0_q\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cin => \acc[6]~21\,
	combout => \acc[7]~22_combout\);

-- Location: FF_X22_Y30_N31
\acc[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc[7]~22_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc[7]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N8
\B_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(0),
	o => \B_in[0]~input_o\);

-- Location: LCCOMB_X17_Y1_N20
\B[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[0]~1_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\B[0]~1_combout\))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\B_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in[0]~input_o\,
	datab => \B[0]~1_combout\,
	datad => \rstN~inputclkctrl_outclk\,
	combout => \B[0]~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
\B_shift_amount[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_shift_amount(2),
	o => \B_shift_amount[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\B_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(3),
	o => \B_in[3]~input_o\);

-- Location: LCCOMB_X16_Y1_N2
\B[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[3]~13_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & ((\B[3]~13_combout\))) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & (\B_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in[3]~input_o\,
	datac => \B[3]~13_combout\,
	datad => \rstN~inputclkctrl_outclk\,
	combout => \B[3]~13_combout\);

-- Location: IOIBUF_X12_Y0_N8
\B_shift_amount[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_shift_amount(0),
	o => \B_shift_amount[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B_shift_amount[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_shift_amount(1),
	o => \B_shift_amount[1]~input_o\);

-- Location: LCCOMB_X16_Y1_N0
\B[0]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[0]~19_combout\ = (\B_shift_amount[2]~input_o\) # ((\B_shift_amount[0]~input_o\) # (\B_shift_amount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_shift_amount[2]~input_o\,
	datac => \B_shift_amount[0]~input_o\,
	datad => \B_shift_amount[1]~input_o\,
	combout => \B[0]~19_combout\);

-- Location: FF_X16_Y1_N27
\B[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[3]~13_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_emulated_q\);

-- Location: LCCOMB_X16_Y1_N26
\B[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[3]~14_combout\ = (\rstN~input_o\ & ((\B[3]~13_combout\ $ (\B[3]~reg0_emulated_q\)))) # (!\rstN~input_o\ & (\B_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in[3]~input_o\,
	datab => \B[3]~13_combout\,
	datac => \B[3]~reg0_emulated_q\,
	datad => \rstN~input_o\,
	combout => \B[3]~14_combout\);

-- Location: IOIBUF_X33_Y16_N15
\B_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(2),
	o => \B_in[2]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\B[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[2]~9_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & (\B[2]~9_combout\)) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & ((\B_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~9_combout\,
	datac => \B_in[2]~input_o\,
	datad => \rstN~inputclkctrl_outclk\,
	combout => \B[2]~9_combout\);

-- Location: LCCOMB_X16_Y1_N8
\ShiftRight0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\B_shift_amount[0]~input_o\ & ((\B[3]~14_combout\))) # (!\B_shift_amount[0]~input_o\ & (\B[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_shift_amount[0]~input_o\,
	datac => \B[2]~10_combout\,
	datad => \B[3]~14_combout\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X16_Y1_N14
\B[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[2]~11_combout\ = \B[2]~9_combout\ $ (((!\B_shift_amount[2]~input_o\ & (\ShiftRight0~4_combout\ & !\B_shift_amount[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_shift_amount[2]~input_o\,
	datab => \B[2]~9_combout\,
	datac => \ShiftRight0~4_combout\,
	datad => \B_shift_amount[1]~input_o\,
	combout => \B[2]~11_combout\);

-- Location: FF_X16_Y1_N15
\B[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[2]~11_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_emulated_q\);

-- Location: LCCOMB_X16_Y1_N4
\B[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[2]~10_combout\ = (\rstN~input_o\ & ((\B[2]~reg0_emulated_q\ $ (\B[2]~9_combout\)))) # (!\rstN~input_o\ & (\B_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in[2]~input_o\,
	datab => \B[2]~reg0_emulated_q\,
	datac => \rstN~input_o\,
	datad => \B[2]~9_combout\,
	combout => \B[2]~10_combout\);

-- Location: LCCOMB_X16_Y1_N30
\ShiftRight0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\B_shift_amount[1]~input_o\ & ((\B_shift_amount[0]~input_o\ & (\B[3]~14_combout\)) # (!\B_shift_amount[0]~input_o\ & ((\B[2]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~14_combout\,
	datab => \B_shift_amount[1]~input_o\,
	datac => \B_shift_amount[0]~input_o\,
	datad => \B[2]~10_combout\,
	combout => \ShiftRight0~1_combout\);

-- Location: IOIBUF_X33_Y16_N22
\B_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in(1),
	o => \B_in[1]~input_o\);

-- Location: LCCOMB_X16_Y1_N6
\B[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[1]~5_combout\ = (GLOBAL(\rstN~inputclkctrl_outclk\) & (\B[1]~5_combout\)) # (!GLOBAL(\rstN~inputclkctrl_outclk\) & ((\B_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~5_combout\,
	datab => \B_in[1]~input_o\,
	datad => \rstN~inputclkctrl_outclk\,
	combout => \B[1]~5_combout\);

-- Location: LCCOMB_X16_Y1_N24
\ShiftRight0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (!\B_shift_amount[1]~input_o\ & \B[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_shift_amount[1]~input_o\,
	datad => \B[2]~10_combout\,
	combout => \ShiftRight0~2_combout\);

-- Location: LCCOMB_X16_Y1_N22
\ShiftRight0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (\B_shift_amount[1]~input_o\ & (!\B_shift_amount[0]~input_o\ & \B[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_shift_amount[1]~input_o\,
	datac => \B_shift_amount[0]~input_o\,
	datad => \B[3]~14_combout\,
	combout => \ShiftRight0~3_combout\);

-- Location: LCCOMB_X16_Y1_N10
\B[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[1]~7_combout\ = \B[1]~5_combout\ $ (((!\B_shift_amount[2]~input_o\ & ((\ShiftRight0~2_combout\) # (\ShiftRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~5_combout\,
	datab => \ShiftRight0~2_combout\,
	datac => \ShiftRight0~3_combout\,
	datad => \B_shift_amount[2]~input_o\,
	combout => \B[1]~7_combout\);

-- Location: FF_X16_Y1_N11
\B[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[1]~7_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	ena => \B[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_emulated_q\);

-- Location: LCCOMB_X16_Y1_N12
\B[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[1]~6_combout\ = (\rstN~input_o\ & (\B[1]~5_combout\ $ (((\B[1]~reg0_emulated_q\))))) # (!\rstN~input_o\ & (((\B_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~5_combout\,
	datab => \B_in[1]~input_o\,
	datac => \rstN~input_o\,
	datad => \B[1]~reg0_emulated_q\,
	combout => \B[1]~6_combout\);

-- Location: LCCOMB_X16_Y1_N28
\ShiftRight0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\B[1]~6_combout\ & !\B_shift_amount[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~6_combout\,
	datab => \B_shift_amount[1]~input_o\,
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X16_Y1_N20
\B[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[0]~3_combout\ = \B[0]~1_combout\ $ (((!\B_shift_amount[2]~input_o\ & ((\ShiftRight0~1_combout\) # (\ShiftRight0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~1_combout\,
	datab => \B_shift_amount[2]~input_o\,
	datac => \ShiftRight0~1_combout\,
	datad => \ShiftRight0~0_combout\,
	combout => \B[0]~3_combout\);

-- Location: FF_X16_Y1_N21
\B[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[0]~3_combout\,
	clrn => \rstN~inputclkctrl_outclk\,
	ena => \B[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_emulated_q\);

-- Location: LCCOMB_X16_Y1_N18
\B[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B[0]~2_combout\ = (\rstN~input_o\ & (\B[0]~1_combout\ $ ((\B[0]~reg0_emulated_q\)))) # (!\rstN~input_o\ & (((\B_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~1_combout\,
	datab => \B[0]~reg0_emulated_q\,
	datac => \rstN~input_o\,
	datad => \B_in[0]~input_o\,
	combout => \B[0]~2_combout\);

-- Location: IOIBUF_X29_Y0_N8
\done~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done,
	o => \done~input_o\);

ww_acc(0) <= \acc[0]~output_o\;

ww_acc(1) <= \acc[1]~output_o\;

ww_acc(2) <= \acc[2]~output_o\;

ww_acc(3) <= \acc[3]~output_o\;

ww_acc(4) <= \acc[4]~output_o\;

ww_acc(5) <= \acc[5]~output_o\;

ww_acc(6) <= \acc[6]~output_o\;

ww_acc(7) <= \acc[7]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


