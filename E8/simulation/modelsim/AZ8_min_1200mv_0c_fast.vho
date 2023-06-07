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

-- DATE "05/31/2023 00:57:29"

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

ENTITY 	pipline IS
    PORT (
	\in\ : IN std_logic_vector(3 DOWNTO 0);
	start : IN std_logic;
	Address : IN std_logic_vector(4 DOWNTO 0);
	Load : IN std_logic;
	clk : IN std_logic;
	\OUT\ : OUT std_logic_vector(3 DOWNTO 0)
	);
END pipline;

-- Design Ports Information
-- OUT[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_Address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Load : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \ww_OUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT[0]~output_o\ : std_logic;
SIGNAL \OUT[1]~output_o\ : std_logic;
SIGNAL \OUT[2]~output_o\ : std_logic;
SIGNAL \OUT[3]~output_o\ : std_logic;
SIGNAL \Address[4]~input_o\ : std_logic;
SIGNAL \Address[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \Address[0]~input_o\ : std_logic;
SIGNAL \Address[1]~input_o\ : std_logic;
SIGNAL \Address[2]~input_o\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Load~input_o\ : std_logic;
SIGNAL \RegFile[10][1]~55_combout\ : std_logic;
SIGNAL \RegFile[10][0]~q\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \RegFile[11][1]~58_combout\ : std_logic;
SIGNAL \RegFile[11][0]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \RegFile[9][2]~56_combout\ : std_logic;
SIGNAL \RegFile[9][0]~q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \RegFile[8][1]~57_combout\ : std_logic;
SIGNAL \RegFile[8][0]~q\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \RegFile[13][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \RegFile[13][3]~65_combout\ : std_logic;
SIGNAL \RegFile[13][0]~q\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \RegFile[15][2]~68_combout\ : std_logic;
SIGNAL \RegFile[15][0]~q\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \RegFile[12][1]~67_combout\ : std_logic;
SIGNAL \RegFile[12][0]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \RegFile[14][2]~66_combout\ : std_logic;
SIGNAL \RegFile[14][0]~q\ : std_logic;
SIGNAL \Mux3~17_combout\ : std_logic;
SIGNAL \Mux3~18_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \RegFile[4][2]~61_combout\ : std_logic;
SIGNAL \RegFile[4][0]~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \RegFile[6][1]~60_combout\ : std_logic;
SIGNAL \RegFile[6][0]~q\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \RegFile[5][0]~59_combout\ : std_logic;
SIGNAL \RegFile[5][0]~q\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \RegFile[7][1]~62_combout\ : std_logic;
SIGNAL \RegFile[7][0]~q\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Flag~feeder_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Flag~0_combout\ : std_logic;
SIGNAL \Flag~q\ : std_logic;
SIGNAL \E1~q\ : std_logic;
SIGNAL \E2~0_combout\ : std_logic;
SIGNAL \E2~q\ : std_logic;
SIGNAL \E3~0_combout\ : std_logic;
SIGNAL \E3~q\ : std_logic;
SIGNAL \RegFile[2][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \RegFile[2][0]~63_combout\ : std_logic;
SIGNAL \RegFile[2][0]~q\ : std_logic;
SIGNAL \PIPEREGO1[0]~feeder_combout\ : std_logic;
SIGNAL \PIPEREGO2[0]~0_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \RegFile[3][0]~64_combout\ : std_logic;
SIGNAL \RegFile[3][0]~q\ : std_logic;
SIGNAL \ALUREGI[0]~4_combout\ : std_logic;
SIGNAL \ALUREGI[0]~6_combout\ : std_logic;
SIGNAL \RegFile~45_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \RegFile[2][0]~44_combout\ : std_logic;
SIGNAL \RegFile[1][0]~46_combout\ : std_logic;
SIGNAL \RegFile[1][0]~q\ : std_logic;
SIGNAL \RegFile~47_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \RegFile[0][1]~48_combout\ : std_logic;
SIGNAL \RegFile[0][0]~q\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \Mux3~19_combout\ : std_logic;
SIGNAL \RegFile[26][2]~29_combout\ : std_logic;
SIGNAL \RegFile[26][0]~q\ : std_logic;
SIGNAL \RegFile[18][0]~30_combout\ : std_logic;
SIGNAL \RegFile[18][0]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \RegFile[30][0]~31_combout\ : std_logic;
SIGNAL \RegFile[30][0]~q\ : std_logic;
SIGNAL \RegFile[22][3]~28_combout\ : std_logic;
SIGNAL \RegFile[22][0]~q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \RegFile[21][3]~33_combout\ : std_logic;
SIGNAL \RegFile[21][0]~q\ : std_logic;
SIGNAL \RegFile[17][2]~34_combout\ : std_logic;
SIGNAL \RegFile[17][0]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \RegFile[25][0]~32_combout\ : std_logic;
SIGNAL \RegFile[25][0]~q\ : std_logic;
SIGNAL \RegFile[29][0]~35_combout\ : std_logic;
SIGNAL \RegFile[29][0]~q\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \RegFile[24][3]~37_combout\ : std_logic;
SIGNAL \RegFile[24][0]~q\ : std_logic;
SIGNAL \RegFile[16][1]~38_combout\ : std_logic;
SIGNAL \RegFile[16][0]~q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \RegFile[28][0]~39_combout\ : std_logic;
SIGNAL \RegFile[28][0]~q\ : std_logic;
SIGNAL \RegFile[20][3]~36_combout\ : std_logic;
SIGNAL \RegFile[20][0]~q\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \RegFile[27][0]~feeder_combout\ : std_logic;
SIGNAL \RegFile[27][1]~40_combout\ : std_logic;
SIGNAL \RegFile[27][0]~q\ : std_logic;
SIGNAL \RegFile[31][1]~43_combout\ : std_logic;
SIGNAL \RegFile[31][0]~q\ : std_logic;
SIGNAL \RegFile[23][0]~feeder_combout\ : std_logic;
SIGNAL \RegFile[23][3]~41_combout\ : std_logic;
SIGNAL \RegFile[23][0]~q\ : std_logic;
SIGNAL \RegFile[19][0]~42_combout\ : std_logic;
SIGNAL \RegFile[19][0]~q\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~20_combout\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \RegFile[26][1]~q\ : std_logic;
SIGNAL \RegFile[22][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile[22][1]~q\ : std_logic;
SIGNAL \RegFile[18][1]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \RegFile[30][1]~q\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \RegFile[24][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile[24][1]~q\ : std_logic;
SIGNAL \RegFile[28][1]~q\ : std_logic;
SIGNAL \RegFile[20][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile[20][1]~q\ : std_logic;
SIGNAL \RegFile[16][1]~q\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \RegFile[21][1]~q\ : std_logic;
SIGNAL \RegFile[29][1]~q\ : std_logic;
SIGNAL \RegFile[25][1]~q\ : std_logic;
SIGNAL \RegFile[17][1]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \RegFile[27][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile[27][1]~q\ : std_logic;
SIGNAL \RegFile[19][1]~q\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \RegFile[31][1]~q\ : std_logic;
SIGNAL \RegFile[23][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile[23][1]~q\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \RegFile[12][1]~q\ : std_logic;
SIGNAL \RegFile[13][1]~q\ : std_logic;
SIGNAL \Mux2~17_combout\ : std_logic;
SIGNAL \RegFile[15][1]~q\ : std_logic;
SIGNAL \RegFile[14][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile[14][1]~q\ : std_logic;
SIGNAL \Mux2~18_combout\ : std_logic;
SIGNAL \ALUREGI[0]~5\ : std_logic;
SIGNAL \ALUREGI[1]~7_combout\ : std_logic;
SIGNAL \RegFile~49_combout\ : std_logic;
SIGNAL \RegFile[1][1]~q\ : std_logic;
SIGNAL \RegFile[3][1]~q\ : std_logic;
SIGNAL \RegFile[2][1]~q\ : std_logic;
SIGNAL \RegFile~50_combout\ : std_logic;
SIGNAL \RegFile[0][1]~q\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \RegFile[9][1]~q\ : std_logic;
SIGNAL \RegFile[11][1]~q\ : std_logic;
SIGNAL \RegFile[10][1]~q\ : std_logic;
SIGNAL \RegFile[8][1]~q\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \RegFile[6][1]~q\ : std_logic;
SIGNAL \RegFile[7][1]~q\ : std_logic;
SIGNAL \RegFile[5][1]~q\ : std_logic;
SIGNAL \RegFile[4][1]~q\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~19_combout\ : std_logic;
SIGNAL \Mux2~20_combout\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \RegFile[25][2]~feeder_combout\ : std_logic;
SIGNAL \RegFile[25][2]~q\ : std_logic;
SIGNAL \RegFile[21][2]~q\ : std_logic;
SIGNAL \RegFile[17][2]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \RegFile[29][2]~q\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \RegFile[24][2]~q\ : std_logic;
SIGNAL \RegFile[16][2]~q\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \RegFile[28][2]~q\ : std_logic;
SIGNAL \RegFile[20][2]~q\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \RegFile[27][2]~q\ : std_logic;
SIGNAL \RegFile[31][2]~q\ : std_logic;
SIGNAL \RegFile[23][2]~q\ : std_logic;
SIGNAL \RegFile[19][2]~q\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \RegFile[26][2]~q\ : std_logic;
SIGNAL \RegFile[18][2]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \RegFile[30][2]~q\ : std_logic;
SIGNAL \RegFile[22][2]~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \RegFile[2][2]~q\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \RegFile[2][3]~q\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|_~1_combout\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_2~1_cout\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_2~3_cout\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \RegFile[3][3]~q\ : std_logic;
SIGNAL \RegFile[3][2]~q\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|_~1_combout\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_2~1_cout\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_2~3_cout\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \ALUREGI[1]~8\ : std_logic;
SIGNAL \ALUREGI[2]~9_combout\ : std_logic;
SIGNAL \RegFile~51_combout\ : std_logic;
SIGNAL \RegFile[1][2]~q\ : std_logic;
SIGNAL \RegFile~52_combout\ : std_logic;
SIGNAL \RegFile[0][2]~q\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \RegFile[5][2]~q\ : std_logic;
SIGNAL \RegFile[7][2]~q\ : std_logic;
SIGNAL \RegFile[4][2]~q\ : std_logic;
SIGNAL \RegFile[6][2]~q\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \RegFile[10][2]~q\ : std_logic;
SIGNAL \RegFile[11][2]~q\ : std_logic;
SIGNAL \RegFile[9][2]~q\ : std_logic;
SIGNAL \RegFile[8][2]~q\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \RegFile[13][2]~q\ : std_logic;
SIGNAL \RegFile[15][2]~q\ : std_logic;
SIGNAL \RegFile[12][2]~q\ : std_logic;
SIGNAL \RegFile[14][2]~q\ : std_logic;
SIGNAL \Mux1~17_combout\ : std_logic;
SIGNAL \Mux1~18_combout\ : std_logic;
SIGNAL \Mux1~19_combout\ : std_logic;
SIGNAL \Mux1~20_combout\ : std_logic;
SIGNAL \RegFile[26][3]~q\ : std_logic;
SIGNAL \RegFile[22][3]~q\ : std_logic;
SIGNAL \RegFile[18][3]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \RegFile[30][3]~q\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \RegFile[20][3]~q\ : std_logic;
SIGNAL \RegFile[16][3]~q\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \RegFile[28][3]~q\ : std_logic;
SIGNAL \RegFile[24][3]~q\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \RegFile[21][3]~q\ : std_logic;
SIGNAL \RegFile[29][3]~q\ : std_logic;
SIGNAL \RegFile[25][3]~feeder_combout\ : std_logic;
SIGNAL \RegFile[25][3]~q\ : std_logic;
SIGNAL \RegFile[17][3]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \RegFile[27][3]~q\ : std_logic;
SIGNAL \RegFile[19][3]~q\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \RegFile[31][3]~q\ : std_logic;
SIGNAL \RegFile[23][3]~q\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \RegFile[14][3]~q\ : std_logic;
SIGNAL \RegFile[12][3]~q\ : std_logic;
SIGNAL \RegFile[13][3]~feeder_combout\ : std_logic;
SIGNAL \RegFile[13][3]~q\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \RegFile[15][3]~q\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \RegFile[5][3]~q\ : std_logic;
SIGNAL \RegFile[4][3]~q\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \RegFile[7][3]~q\ : std_logic;
SIGNAL \RegFile[6][3]~q\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \RegFile[8][3]~q\ : std_logic;
SIGNAL \RegFile[10][3]~q\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \RegFile[11][3]~q\ : std_logic;
SIGNAL \RegFile[9][3]~q\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \RegFile~54_combout\ : std_logic;
SIGNAL \RegFile[0][3]~q\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_1~1\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_2~5\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_1~1\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_2~5\ : std_logic;
SIGNAL \MULT_1|Mult2|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \ALUREGI[2]~10\ : std_logic;
SIGNAL \ALUREGI[3]~11_combout\ : std_logic;
SIGNAL \RegFile~53_combout\ : std_logic;
SIGNAL \RegFile[1][3]~q\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \MULT_1|Mult3|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MULT_1|Mult3|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MULT_1|Mult3|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MULT_1|Mult2|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MULT_1|Mult2|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MULT_1|Mult2|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL PIPEREGO2 : std_logic_vector(3 DOWNTO 0);
SIGNAL PIPEREGO1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALUREGI : std_logic_vector(3 DOWNTO 0);

BEGIN

\ww_in\ <= \in\;
ww_start <= start;
ww_Address <= Address;
ww_Load <= Load;
ww_clk <= clk;
\OUT\ <= \ww_OUT\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X33_Y24_N9
\OUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~20_combout\,
	devoe => ww_devoe,
	o => \OUT[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\OUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~20_combout\,
	devoe => ww_devoe,
	o => \OUT[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\OUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~20_combout\,
	devoe => ww_devoe,
	o => \OUT[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\OUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~20_combout\,
	devoe => ww_devoe,
	o => \OUT[3]~output_o\);

-- Location: IOIBUF_X26_Y31_N8
\Address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(4),
	o => \Address[4]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\Address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(3),
	o => \Address[3]~input_o\);

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

-- Location: IOIBUF_X33_Y27_N8
\in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\Address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(0),
	o => \Address[0]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\Address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(1),
	o => \Address[1]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\Address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(2),
	o => \Address[2]~input_o\);

-- Location: LCCOMB_X24_Y23_N6
\Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\Address[0]~input_o\ & (\Address[1]~input_o\ & (!\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: IOIBUF_X33_Y28_N8
\Load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load,
	o => \Load~input_o\);

-- Location: LCCOMB_X25_Y23_N0
\RegFile[10][1]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[10][1]~55_combout\ = (\Decoder0~1_combout\ & (!\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~1_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[10][1]~55_combout\);

-- Location: FF_X25_Y24_N5
\RegFile[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[10][1]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[10][0]~q\);

-- Location: LCCOMB_X25_Y28_N20
\Decoder0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\ & (!\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X25_Y28_N14
\RegFile[11][1]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[11][1]~58_combout\ = (\Decoder0~12_combout\ & (!\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~12_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[11][1]~58_combout\);

-- Location: FF_X24_Y24_N27
\RegFile[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[11][1]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[11][0]~q\);

-- Location: LCCOMB_X23_Y24_N22
\Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Address[0]~input_o\ & (!\Address[1]~input_o\ & (!\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y24_N6
\RegFile[9][2]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[9][2]~56_combout\ = (!\Address[4]~input_o\ & (\Decoder0~4_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~4_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[9][2]~56_combout\);

-- Location: FF_X24_Y24_N25
\RegFile[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[9][2]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[9][0]~q\);

-- Location: LCCOMB_X25_Y28_N0
\Decoder0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!\Address[0]~input_o\ & (!\Address[1]~input_o\ & (!\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X25_Y28_N24
\RegFile[8][1]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[8][1]~57_combout\ = (\Decoder0~9_combout\ & (!\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~9_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[8][1]~57_combout\);

-- Location: FF_X25_Y24_N7
\RegFile[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[8][1]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[8][0]~q\);

-- Location: LCCOMB_X25_Y24_N6
\Mux3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Address[0]~input_o\ & ((\RegFile[9][0]~q\) # ((\Address[1]~input_o\)))) # (!\Address[0]~input_o\ & (((\RegFile[8][0]~q\ & !\Address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \RegFile[9][0]~q\,
	datac => \RegFile[8][0]~q\,
	datad => \Address[1]~input_o\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X24_Y24_N26
\Mux3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\Address[1]~input_o\ & ((\Mux3~10_combout\ & ((\RegFile[11][0]~q\))) # (!\Mux3~10_combout\ & (\RegFile[10][0]~q\)))) # (!\Address[1]~input_o\ & (((\Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[10][0]~q\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[11][0]~q\,
	datad => \Mux3~10_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X24_Y25_N24
\RegFile[13][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[13][0]~feeder_combout\ = \in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[0]~input_o\,
	combout => \RegFile[13][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y24_N14
\Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\Address[0]~input_o\ & (!\Address[1]~input_o\ & (\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y24_N24
\RegFile[13][3]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[13][3]~65_combout\ = (!\Address[4]~input_o\ & (\Decoder0~7_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~7_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[13][3]~65_combout\);

-- Location: FF_X24_Y25_N25
\RegFile[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[13][0]~feeder_combout\,
	ena => \RegFile[13][3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[13][0]~q\);

-- Location: LCCOMB_X25_Y28_N4
\Decoder0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\ & (\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X25_Y28_N26
\RegFile[15][2]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[15][2]~68_combout\ = (!\Address[4]~input_o\ & (\Decoder0~15_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~15_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[15][2]~68_combout\);

-- Location: FF_X24_Y25_N31
\RegFile[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[15][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[15][0]~q\);

-- Location: LCCOMB_X25_Y28_N12
\Decoder0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (!\Address[0]~input_o\ & (!\Address[1]~input_o\ & (\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X25_Y28_N16
\RegFile[12][1]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[12][1]~67_combout\ = (\Decoder0~11_combout\ & (!\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[12][1]~67_combout\);

-- Location: FF_X25_Y25_N7
\RegFile[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[12][1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[12][0]~q\);

-- Location: LCCOMB_X23_Y24_N8
\Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\Address[0]~input_o\ & (\Address[1]~input_o\ & (\Address[2]~input_o\ & \Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X25_Y26_N30
\RegFile[14][2]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[14][2]~66_combout\ = (!\Address[4]~input_o\ & (\Decoder0~3_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~3_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[14][2]~66_combout\);

-- Location: FF_X25_Y25_N1
\RegFile[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[14][2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[14][0]~q\);

-- Location: LCCOMB_X25_Y25_N6
\Mux3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~17_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\)) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & ((\RegFile[14][0]~q\))) # (!\Address[1]~input_o\ & (\RegFile[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[12][0]~q\,
	datad => \RegFile[14][0]~q\,
	combout => \Mux3~17_combout\);

-- Location: LCCOMB_X24_Y25_N30
\Mux3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~18_combout\ = (\Address[0]~input_o\ & ((\Mux3~17_combout\ & ((\RegFile[15][0]~q\))) # (!\Mux3~17_combout\ & (\RegFile[13][0]~q\)))) # (!\Address[0]~input_o\ & (((\Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \RegFile[13][0]~q\,
	datac => \RegFile[15][0]~q\,
	datad => \Mux3~17_combout\,
	combout => \Mux3~18_combout\);

-- Location: LCCOMB_X23_Y25_N18
\Decoder0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Address[2]~input_o\ & (!\Address[0]~input_o\ & (!\Address[1]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[0]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X23_Y26_N2
\RegFile[4][2]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[4][2]~61_combout\ = (!\Address[4]~input_o\ & (\Decoder0~8_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~8_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[4][2]~61_combout\);

-- Location: FF_X23_Y26_N15
\RegFile[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[4][2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[4][0]~q\);

-- Location: LCCOMB_X23_Y24_N30
\Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\Address[0]~input_o\ & (\Address[1]~input_o\ & (\Address[2]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y26_N16
\RegFile[6][1]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[6][1]~60_combout\ = (!\Address[4]~input_o\ & (\Decoder0~0_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[6][1]~60_combout\);

-- Location: FF_X23_Y26_N25
\RegFile[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[6][1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[6][0]~q\);

-- Location: LCCOMB_X23_Y26_N14
\Mux3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\)) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & ((\RegFile[6][0]~q\))) # (!\Address[1]~input_o\ & (\RegFile[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[4][0]~q\,
	datad => \RegFile[6][0]~q\,
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X23_Y25_N2
\Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\Address[2]~input_o\ & (\Address[0]~input_o\ & (!\Address[1]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Address[0]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y26_N6
\RegFile[5][0]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[5][0]~59_combout\ = (\Decoder0~5_combout\ & (!\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~5_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[5][0]~59_combout\);

-- Location: FF_X24_Y26_N1
\RegFile[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[5][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[5][0]~q\);

-- Location: LCCOMB_X25_Y28_N8
\Decoder0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\ & (\Address[2]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X23_Y26_N8
\RegFile[7][1]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[7][1]~62_combout\ = (!\Address[4]~input_o\ & (\Decoder0~13_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datab => \Decoder0~13_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[7][1]~62_combout\);

-- Location: FF_X24_Y26_N19
\RegFile[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[7][1]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[7][0]~q\);

-- Location: LCCOMB_X24_Y26_N18
\Mux3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\Mux3~12_combout\ & (((\RegFile[7][0]~q\) # (!\Address[0]~input_o\)))) # (!\Mux3~12_combout\ & (\RegFile[5][0]~q\ & ((\Address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~12_combout\,
	datab => \RegFile[5][0]~q\,
	datac => \RegFile[7][0]~q\,
	datad => \Address[0]~input_o\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X22_Y23_N24
\Flag~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Flag~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Flag~feeder_combout\);

-- Location: IOIBUF_X33_Y16_N15
\start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X22_Y23_N30
\Flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Flag~0_combout\ = (\start~input_o\) # (\Flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datad => \Flag~q\,
	combout => \Flag~0_combout\);

-- Location: FF_X22_Y23_N25
Flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Flag~feeder_combout\,
	ena => \Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flag~q\);

-- Location: FF_X22_Y23_N31
E1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Flag~q\,
	sload => VCC,
	ena => \Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E1~q\);

-- Location: LCCOMB_X22_Y23_N26
\E2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \E2~0_combout\ = (\E2~q\ & (((\Flag~q\) # (!\start~input_o\)))) # (!\E2~q\ & (\E1~q\ & ((\Flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~q\,
	datab => \start~input_o\,
	datac => \E2~q\,
	datad => \Flag~q\,
	combout => \E2~0_combout\);

-- Location: FF_X22_Y23_N27
E2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \E2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E2~q\);

-- Location: LCCOMB_X22_Y23_N14
\E3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \E3~0_combout\ = (\E3~q\ & (((\Flag~q\) # (!\start~input_o\)))) # (!\E3~q\ & (\E2~q\ & ((\Flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E2~q\,
	datab => \start~input_o\,
	datac => \E3~q\,
	datad => \Flag~q\,
	combout => \E3~0_combout\);

-- Location: FF_X22_Y23_N15
E3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \E3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E3~q\);

-- Location: LCCOMB_X24_Y23_N16
\RegFile[2][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[2][0]~feeder_combout\ = \in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[0]~input_o\,
	combout => \RegFile[2][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y23_N12
\Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\Address[0]~input_o\ & (\Address[1]~input_o\ & (!\Address[2]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y23_N18
\RegFile[2][0]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[2][0]~63_combout\ = (\Load~input_o\ & (!\Address[4]~input_o\ & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load~input_o\,
	datab => \Address[4]~input_o\,
	datac => \Decoder0~2_combout\,
	combout => \RegFile[2][0]~63_combout\);

-- Location: FF_X24_Y23_N17
\RegFile[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[2][0]~feeder_combout\,
	ena => \RegFile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[2][0]~q\);

-- Location: LCCOMB_X21_Y23_N4
\PIPEREGO1[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPEREGO1[0]~feeder_combout\ = \RegFile[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile[2][0]~q\,
	combout => \PIPEREGO1[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y23_N20
\PIPEREGO2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPEREGO2[0]~0_combout\ = (\E1~q\ & \Flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E1~q\,
	datad => \Flag~q\,
	combout => \PIPEREGO2[0]~0_combout\);

-- Location: FF_X21_Y23_N5
\PIPEREGO1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PIPEREGO1[0]~feeder_combout\,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO1(0));

-- Location: LCCOMB_X24_Y23_N2
\Decoder0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\ & (!\Address[2]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X24_Y23_N30
\RegFile[3][0]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[3][0]~64_combout\ = (\Load~input_o\ & (!\Address[4]~input_o\ & \Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load~input_o\,
	datab => \Address[4]~input_o\,
	datad => \Decoder0~14_combout\,
	combout => \RegFile[3][0]~64_combout\);

-- Location: FF_X24_Y23_N31
\RegFile[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[3][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[3][0]~q\);

-- Location: FF_X20_Y23_N1
\PIPEREGO2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile[3][0]~q\,
	sload => VCC,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO2(0));

-- Location: LCCOMB_X20_Y23_N6
\ALUREGI[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUREGI[0]~4_combout\ = (PIPEREGO1(0) & ((GND) # (!PIPEREGO2(0)))) # (!PIPEREGO1(0) & (PIPEREGO2(0) $ (GND)))
-- \ALUREGI[0]~5\ = CARRY((PIPEREGO1(0)) # (!PIPEREGO2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO1(0),
	datab => PIPEREGO2(0),
	datad => VCC,
	combout => \ALUREGI[0]~4_combout\,
	cout => \ALUREGI[0]~5\);

-- Location: LCCOMB_X22_Y23_N4
\ALUREGI[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUREGI[0]~6_combout\ = (\E2~q\ & \Flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E2~q\,
	datad => \Flag~q\,
	combout => \ALUREGI[0]~6_combout\);

-- Location: FF_X20_Y23_N7
\ALUREGI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALUREGI[0]~4_combout\,
	ena => \ALUREGI[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUREGI(0));

-- Location: LCCOMB_X23_Y23_N12
\RegFile~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~45_combout\ = (\E3~q\ & ((\Flag~q\ & (ALUREGI(0))) # (!\Flag~q\ & ((\in[0]~input_o\))))) # (!\E3~q\ & (((\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Flag~q\,
	datac => ALUREGI(0),
	datad => \in[0]~input_o\,
	combout => \RegFile~45_combout\);

-- Location: LCCOMB_X23_Y23_N16
\Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Address[0]~input_o\ & (!\Address[2]~input_o\ & (!\Address[1]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[2]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y23_N22
\RegFile[2][0]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[2][0]~44_combout\ = (!\Address[4]~input_o\ & \Load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[2][0]~44_combout\);

-- Location: LCCOMB_X23_Y23_N28
\RegFile[1][0]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[1][0]~46_combout\ = (\E3~q\ & ((\Flag~q\) # ((\Decoder0~6_combout\ & \RegFile[2][0]~44_combout\)))) # (!\E3~q\ & (\Decoder0~6_combout\ & (\RegFile[2][0]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Decoder0~6_combout\,
	datac => \RegFile[2][0]~44_combout\,
	datad => \Flag~q\,
	combout => \RegFile[1][0]~46_combout\);

-- Location: FF_X23_Y23_N13
\RegFile[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~45_combout\,
	ena => \RegFile[1][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[1][0]~q\);

-- Location: LCCOMB_X23_Y23_N2
\RegFile~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~47_combout\ = (\in[0]~input_o\ & ((!\Flag~q\) # (!\E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Flag~q\,
	datad => \in[0]~input_o\,
	combout => \RegFile~47_combout\);

-- Location: LCCOMB_X23_Y23_N20
\Decoder0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\Address[0]~input_o\ & (!\Address[2]~input_o\ & (!\Address[1]~input_o\ & !\Address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[2]~input_o\,
	datac => \Address[1]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X23_Y23_N18
\RegFile[0][1]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[0][1]~48_combout\ = (\E3~q\ & ((\Flag~q\) # ((\Decoder0~10_combout\ & \RegFile[2][0]~44_combout\)))) # (!\E3~q\ & (\Decoder0~10_combout\ & (\RegFile[2][0]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Decoder0~10_combout\,
	datac => \RegFile[2][0]~44_combout\,
	datad => \Flag~q\,
	combout => \RegFile[0][1]~48_combout\);

-- Location: FF_X23_Y23_N3
\RegFile[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~47_combout\,
	ena => \RegFile[0][1]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[0][0]~q\);

-- Location: LCCOMB_X23_Y23_N4
\Mux3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\Address[1]~input_o\ & (((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & ((\Address[0]~input_o\ & (\RegFile[1][0]~q\)) # (!\Address[0]~input_o\ & ((\RegFile[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[1][0]~q\,
	datab => \RegFile[0][0]~q\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Mux3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (\Mux3~14_combout\ & ((\RegFile[3][0]~q\) # ((!\Address[1]~input_o\)))) # (!\Mux3~14_combout\ & (((\Address[1]~input_o\ & \RegFile[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~14_combout\,
	datab => \RegFile[3][0]~q\,
	datac => \Address[1]~input_o\,
	datad => \RegFile[2][0]~q\,
	combout => \Mux3~15_combout\);

-- Location: LCCOMB_X23_Y24_N20
\Mux3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~16_combout\ = (\Address[2]~input_o\ & ((\Mux3~13_combout\) # ((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (((\Mux3~15_combout\ & !\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Mux3~13_combout\,
	datac => \Mux3~15_combout\,
	datad => \Address[3]~input_o\,
	combout => \Mux3~16_combout\);

-- Location: LCCOMB_X23_Y24_N18
\Mux3~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~19_combout\ = (\Address[3]~input_o\ & ((\Mux3~16_combout\ & ((\Mux3~18_combout\))) # (!\Mux3~16_combout\ & (\Mux3~11_combout\)))) # (!\Address[3]~input_o\ & (((\Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \Mux3~11_combout\,
	datac => \Mux3~18_combout\,
	datad => \Mux3~16_combout\,
	combout => \Mux3~19_combout\);

-- Location: LCCOMB_X25_Y23_N8
\RegFile[26][2]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[26][2]~29_combout\ = (\Decoder0~1_combout\ & (\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~1_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[26][2]~29_combout\);

-- Location: FF_X25_Y23_N17
\RegFile[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[26][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[26][0]~q\);

-- Location: LCCOMB_X25_Y23_N18
\RegFile[18][0]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[18][0]~30_combout\ = (\Decoder0~2_combout\ & (\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[18][0]~30_combout\);

-- Location: FF_X25_Y23_N27
\RegFile[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[18][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[18][0]~q\);

-- Location: LCCOMB_X25_Y23_N26
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\RegFile[26][0]~q\)) # (!\Address[3]~input_o\ & ((\RegFile[18][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[26][0]~q\,
	datac => \RegFile[18][0]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X25_Y26_N4
\RegFile[30][0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[30][0]~31_combout\ = (\Address[4]~input_o\ & (\Decoder0~3_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~3_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[30][0]~31_combout\);

-- Location: FF_X25_Y26_N7
\RegFile[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[30][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[30][0]~q\);

-- Location: LCCOMB_X23_Y26_N20
\RegFile[22][3]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[22][3]~28_combout\ = (\Address[4]~input_o\ & (\Decoder0~0_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[22][3]~28_combout\);

-- Location: FF_X25_Y26_N13
\RegFile[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[22][3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[22][0]~q\);

-- Location: LCCOMB_X25_Y26_N6
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Address[2]~input_o\ & ((\Mux3~0_combout\ & (\RegFile[30][0]~q\)) # (!\Mux3~0_combout\ & ((\RegFile[22][0]~q\))))) # (!\Address[2]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \RegFile[30][0]~q\,
	datad => \RegFile[22][0]~q\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X23_Y25_N20
\RegFile[21][3]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[21][3]~33_combout\ = (\Load~input_o\ & (\Decoder0~5_combout\ & \Address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load~input_o\,
	datab => \Decoder0~5_combout\,
	datad => \Address[4]~input_o\,
	combout => \RegFile[21][3]~33_combout\);

-- Location: FF_X23_Y25_N17
\RegFile[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[21][3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[21][0]~q\);

-- Location: LCCOMB_X23_Y23_N30
\RegFile[17][2]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[17][2]~34_combout\ = (\Address[4]~input_o\ & (\Decoder0~6_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datab => \Decoder0~6_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[17][2]~34_combout\);

-- Location: FF_X23_Y27_N5
\RegFile[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[17][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[17][0]~q\);

-- Location: LCCOMB_X23_Y27_N4
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Address[2]~input_o\ & ((\RegFile[21][0]~q\) # ((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (((\RegFile[17][0]~q\ & !\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[21][0]~q\,
	datac => \RegFile[17][0]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X23_Y24_N16
\RegFile[25][0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[25][0]~32_combout\ = (\Address[4]~input_o\ & (\Decoder0~4_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~4_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[25][0]~32_combout\);

-- Location: FF_X23_Y24_N29
\RegFile[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[25][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[25][0]~q\);

-- Location: LCCOMB_X23_Y24_N0
\RegFile[29][0]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[29][0]~35_combout\ = (\Address[4]~input_o\ & (\Decoder0~7_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~7_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[29][0]~35_combout\);

-- Location: FF_X23_Y24_N27
\RegFile[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[29][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[29][0]~q\);

-- Location: LCCOMB_X23_Y24_N26
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\RegFile[29][0]~q\) # (!\Address[3]~input_o\)))) # (!\Mux3~2_combout\ & (\RegFile[25][0]~q\ & ((\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \RegFile[25][0]~q\,
	datac => \RegFile[29][0]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X25_Y28_N22
\RegFile[24][3]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[24][3]~37_combout\ = (\Decoder0~9_combout\ & (\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~9_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[24][3]~37_combout\);

-- Location: FF_X21_Y26_N21
\RegFile[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[24][3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[24][0]~q\);

-- Location: LCCOMB_X23_Y26_N4
\RegFile[16][1]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[16][1]~38_combout\ = (\Address[4]~input_o\ & (\Decoder0~10_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~10_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[16][1]~38_combout\);

-- Location: FF_X21_Y26_N15
\RegFile[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[16][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[16][0]~q\);

-- Location: LCCOMB_X21_Y26_N14
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Address[3]~input_o\ & ((\RegFile[24][0]~q\) # ((\Address[2]~input_o\)))) # (!\Address[3]~input_o\ & (((\RegFile[16][0]~q\ & !\Address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \RegFile[24][0]~q\,
	datac => \RegFile[16][0]~q\,
	datad => \Address[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X25_Y28_N10
\RegFile[28][0]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[28][0]~39_combout\ = (\Decoder0~11_combout\ & (\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[28][0]~39_combout\);

-- Location: FF_X22_Y26_N19
\RegFile[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[28][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[28][0]~q\);

-- Location: LCCOMB_X23_Y26_N26
\RegFile[20][3]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[20][3]~36_combout\ = (\Address[4]~input_o\ & (\Decoder0~8_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~8_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[20][3]~36_combout\);

-- Location: FF_X22_Y26_N17
\RegFile[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[20][3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[20][0]~q\);

-- Location: LCCOMB_X22_Y26_N18
\Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (((\RegFile[28][0]~q\)) # (!\Address[2]~input_o\))) # (!\Mux3~4_combout\ & (\Address[2]~input_o\ & ((\RegFile[20][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[28][0]~q\,
	datad => \RegFile[20][0]~q\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X23_Y24_N4
\Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Address[1]~input_o\ & (((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & ((\Address[0]~input_o\ & (\Mux3~3_combout\)) # (!\Address[0]~input_o\ & ((\Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Address[1]~input_o\,
	datac => \Address[0]~input_o\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X21_Y27_N0
\RegFile[27][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[27][0]~feeder_combout\ = \in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[0]~input_o\,
	combout => \RegFile[27][0]~feeder_combout\);

-- Location: LCCOMB_X25_Y28_N18
\RegFile[27][1]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[27][1]~40_combout\ = (\Decoder0~12_combout\ & (\Address[4]~input_o\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~12_combout\,
	datac => \Address[4]~input_o\,
	datad => \Load~input_o\,
	combout => \RegFile[27][1]~40_combout\);

-- Location: FF_X21_Y27_N1
\RegFile[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[27][0]~feeder_combout\,
	ena => \RegFile[27][1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[27][0]~q\);

-- Location: LCCOMB_X25_Y28_N30
\RegFile[31][1]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[31][1]~43_combout\ = (\Address[4]~input_o\ & (\Decoder0~15_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~15_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[31][1]~43_combout\);

-- Location: FF_X22_Y27_N15
\RegFile[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[31][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[31][0]~q\);

-- Location: LCCOMB_X22_Y27_N4
\RegFile[23][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[23][0]~feeder_combout\ = \in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[0]~input_o\,
	combout => \RegFile[23][0]~feeder_combout\);

-- Location: LCCOMB_X25_Y28_N2
\RegFile[23][3]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[23][3]~41_combout\ = (\Address[4]~input_o\ & (\Decoder0~13_combout\ & \Load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datac => \Decoder0~13_combout\,
	datad => \Load~input_o\,
	combout => \RegFile[23][3]~41_combout\);

-- Location: FF_X22_Y27_N5
\RegFile[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[23][0]~feeder_combout\,
	ena => \RegFile[23][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[23][0]~q\);

-- Location: LCCOMB_X24_Y23_N0
\RegFile[19][0]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[19][0]~42_combout\ = (\Address[4]~input_o\ & (\Load~input_o\ & \Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Address[4]~input_o\,
	datac => \Load~input_o\,
	datad => \Decoder0~14_combout\,
	combout => \RegFile[19][0]~42_combout\);

-- Location: FF_X21_Y27_N23
\RegFile[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	ena => \RegFile[19][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[19][0]~q\);

-- Location: LCCOMB_X21_Y27_N22
\Mux3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Address[2]~input_o\ & ((\RegFile[23][0]~q\) # ((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (((\RegFile[19][0]~q\ & !\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[23][0]~q\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[19][0]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X22_Y27_N14
\Mux3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Address[3]~input_o\ & ((\Mux3~7_combout\ & ((\RegFile[31][0]~q\))) # (!\Mux3~7_combout\ & (\RegFile[27][0]~q\)))) # (!\Address[3]~input_o\ & (((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[27][0]~q\,
	datab => \Address[3]~input_o\,
	datac => \RegFile[31][0]~q\,
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Mux3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Address[1]~input_o\ & ((\Mux3~6_combout\ & ((\Mux3~8_combout\))) # (!\Mux3~6_combout\ & (\Mux3~1_combout\)))) # (!\Address[1]~input_o\ & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Address[1]~input_o\,
	datac => \Mux3~6_combout\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X23_Y24_N28
\Mux3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~20_combout\ = (\Address[4]~input_o\ & ((\Mux3~9_combout\))) # (!\Address[4]~input_o\ & (\Mux3~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datab => \Mux3~19_combout\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~20_combout\);

-- Location: IOIBUF_X24_Y31_N1
\in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: FF_X25_Y23_N5
\RegFile[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[26][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[26][1]~q\);

-- Location: LCCOMB_X25_Y26_N28
\RegFile[22][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[22][1]~feeder_combout\ = \in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[1]~input_o\,
	combout => \RegFile[22][1]~feeder_combout\);

-- Location: FF_X25_Y26_N29
\RegFile[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[22][1]~feeder_combout\,
	ena => \RegFile[22][3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[22][1]~q\);

-- Location: FF_X25_Y23_N15
\RegFile[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[18][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[18][1]~q\);

-- Location: LCCOMB_X25_Y23_N14
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Address[2]~input_o\ & ((\RegFile[22][1]~q\) # ((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (((\RegFile[18][1]~q\ & !\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[22][1]~q\,
	datac => \RegFile[18][1]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: FF_X25_Y26_N27
\RegFile[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[30][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[30][1]~q\);

-- Location: LCCOMB_X25_Y26_N26
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\RegFile[30][1]~q\) # (!\Address[3]~input_o\)))) # (!\Mux2~2_combout\ & (\RegFile[26][1]~q\ & ((\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[26][1]~q\,
	datab => \Mux2~2_combout\,
	datac => \RegFile[30][1]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X21_Y26_N4
\RegFile[24][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[24][1]~feeder_combout\ = \in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[1]~input_o\,
	combout => \RegFile[24][1]~feeder_combout\);

-- Location: FF_X21_Y26_N5
\RegFile[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[24][1]~feeder_combout\,
	ena => \RegFile[24][3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[24][1]~q\);

-- Location: FF_X22_Y26_N27
\RegFile[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[28][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[28][1]~q\);

-- Location: LCCOMB_X22_Y26_N0
\RegFile[20][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[20][1]~feeder_combout\ = \in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[1]~input_o\,
	combout => \RegFile[20][1]~feeder_combout\);

-- Location: FF_X22_Y26_N1
\RegFile[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[20][1]~feeder_combout\,
	ena => \RegFile[20][3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[20][1]~q\);

-- Location: FF_X21_Y26_N3
\RegFile[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[16][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[16][1]~q\);

-- Location: LCCOMB_X21_Y26_N2
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Address[3]~input_o\ & (((\Address[2]~input_o\)))) # (!\Address[3]~input_o\ & ((\Address[2]~input_o\ & (\RegFile[20][1]~q\)) # (!\Address[2]~input_o\ & ((\RegFile[16][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \RegFile[20][1]~q\,
	datac => \RegFile[16][1]~q\,
	datad => \Address[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X22_Y26_N26
\Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Address[3]~input_o\ & ((\Mux2~4_combout\ & ((\RegFile[28][1]~q\))) # (!\Mux2~4_combout\ & (\RegFile[24][1]~q\)))) # (!\Address[3]~input_o\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \RegFile[24][1]~q\,
	datac => \RegFile[28][1]~q\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X24_Y26_N4
\Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Address[1]~input_o\ & ((\Mux2~3_combout\) # ((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & (((\Mux2~5_combout\ & !\Address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[1]~input_o\,
	datab => \Mux2~3_combout\,
	datac => \Mux2~5_combout\,
	datad => \Address[0]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: FF_X23_Y25_N27
\RegFile[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[21][3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[21][1]~q\);

-- Location: FF_X23_Y25_N1
\RegFile[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[29][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[29][1]~q\);

-- Location: FF_X23_Y27_N3
\RegFile[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[25][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[25][1]~q\);

-- Location: FF_X23_Y27_N13
\RegFile[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[17][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[17][1]~q\);

-- Location: LCCOMB_X23_Y27_N12
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\RegFile[25][1]~q\)) # (!\Address[3]~input_o\ & ((\RegFile[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[25][1]~q\,
	datac => \RegFile[17][1]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X23_Y25_N0
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Address[2]~input_o\ & ((\Mux2~0_combout\ & ((\RegFile[29][1]~q\))) # (!\Mux2~0_combout\ & (\RegFile[21][1]~q\)))) # (!\Address[2]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[21][1]~q\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[29][1]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X21_Y27_N20
\RegFile[27][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[27][1]~feeder_combout\ = \in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[1]~input_o\,
	combout => \RegFile[27][1]~feeder_combout\);

-- Location: FF_X21_Y27_N21
\RegFile[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[27][1]~feeder_combout\,
	ena => \RegFile[27][1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[27][1]~q\);

-- Location: FF_X21_Y27_N11
\RegFile[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[19][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[19][1]~q\);

-- Location: LCCOMB_X21_Y27_N10
\Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\RegFile[27][1]~q\)) # (!\Address[3]~input_o\ & ((\RegFile[19][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[27][1]~q\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[19][1]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: FF_X22_Y27_N31
\RegFile[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[31][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[31][1]~q\);

-- Location: LCCOMB_X22_Y27_N12
\RegFile[23][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[23][1]~feeder_combout\ = \in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[1]~input_o\,
	combout => \RegFile[23][1]~feeder_combout\);

-- Location: FF_X22_Y27_N13
\RegFile[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[23][1]~feeder_combout\,
	ena => \RegFile[23][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[23][1]~q\);

-- Location: LCCOMB_X22_Y27_N30
\Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & (((\RegFile[31][1]~q\)) # (!\Address[2]~input_o\))) # (!\Mux2~7_combout\ & (\Address[2]~input_o\ & ((\RegFile[23][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[31][1]~q\,
	datad => \RegFile[23][1]~q\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X23_Y26_N0
\Mux2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux2~6_combout\ & (((\Mux2~8_combout\) # (!\Address[0]~input_o\)))) # (!\Mux2~6_combout\ & (\Mux2~1_combout\ & ((\Address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~8_combout\,
	datad => \Address[0]~input_o\,
	combout => \Mux2~9_combout\);

-- Location: FF_X25_Y25_N31
\RegFile[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[12][1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[12][1]~q\);

-- Location: FF_X24_Y25_N9
\RegFile[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[13][3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[13][1]~q\);

-- Location: LCCOMB_X25_Y25_N30
\Mux2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~17_combout\ = (\Address[0]~input_o\ & ((\Address[1]~input_o\) # ((\RegFile[13][1]~q\)))) # (!\Address[0]~input_o\ & (!\Address[1]~input_o\ & (\RegFile[12][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[12][1]~q\,
	datad => \RegFile[13][1]~q\,
	combout => \Mux2~17_combout\);

-- Location: FF_X24_Y25_N23
\RegFile[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[15][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[15][1]~q\);

-- Location: LCCOMB_X25_Y25_N4
\RegFile[14][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[14][1]~feeder_combout\ = \in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[1]~input_o\,
	combout => \RegFile[14][1]~feeder_combout\);

-- Location: FF_X25_Y25_N5
\RegFile[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[14][1]~feeder_combout\,
	ena => \RegFile[14][2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[14][1]~q\);

-- Location: LCCOMB_X24_Y25_N22
\Mux2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~18_combout\ = (\Mux2~17_combout\ & (((\RegFile[15][1]~q\)) # (!\Address[1]~input_o\))) # (!\Mux2~17_combout\ & (\Address[1]~input_o\ & ((\RegFile[14][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~17_combout\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[15][1]~q\,
	datad => \RegFile[14][1]~q\,
	combout => \Mux2~18_combout\);

-- Location: LCCOMB_X20_Y23_N8
\ALUREGI[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUREGI[1]~7_combout\ = !\ALUREGI[0]~5\
-- \ALUREGI[1]~8\ = CARRY(!\ALUREGI[0]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \ALUREGI[0]~5\,
	combout => \ALUREGI[1]~7_combout\,
	cout => \ALUREGI[1]~8\);

-- Location: FF_X20_Y23_N9
\ALUREGI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALUREGI[1]~7_combout\,
	ena => \ALUREGI[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUREGI(1));

-- Location: LCCOMB_X23_Y23_N6
\RegFile~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~49_combout\ = (\E3~q\ & ((\Flag~q\ & (ALUREGI(1))) # (!\Flag~q\ & ((\in[1]~input_o\))))) # (!\E3~q\ & (((\in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Flag~q\,
	datac => ALUREGI(1),
	datad => \in[1]~input_o\,
	combout => \RegFile~49_combout\);

-- Location: FF_X23_Y23_N7
\RegFile[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~49_combout\,
	ena => \RegFile[1][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[1][1]~q\);

-- Location: FF_X24_Y23_N27
\RegFile[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[3][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[3][1]~q\);

-- Location: FF_X24_Y23_N21
\RegFile[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[2][1]~q\);

-- Location: LCCOMB_X23_Y23_N24
\RegFile~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~50_combout\ = (\in[1]~input_o\ & ((!\Flag~q\) # (!\E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Flag~q\,
	datad => \in[1]~input_o\,
	combout => \RegFile~50_combout\);

-- Location: FF_X23_Y23_N25
\RegFile[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~50_combout\,
	ena => \RegFile[0][1]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[0][1]~q\);

-- Location: LCCOMB_X24_Y23_N20
\Mux2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\)) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & (\RegFile[2][1]~q\)) # (!\Address[1]~input_o\ & ((\RegFile[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[2][1]~q\,
	datad => \RegFile[0][1]~q\,
	combout => \Mux2~14_combout\);

-- Location: LCCOMB_X24_Y23_N26
\Mux2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (\Address[0]~input_o\ & ((\Mux2~14_combout\ & ((\RegFile[3][1]~q\))) # (!\Mux2~14_combout\ & (\RegFile[1][1]~q\)))) # (!\Address[0]~input_o\ & (((\Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \RegFile[1][1]~q\,
	datac => \RegFile[3][1]~q\,
	datad => \Mux2~14_combout\,
	combout => \Mux2~15_combout\);

-- Location: FF_X24_Y24_N1
\RegFile[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[9][2]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[9][1]~q\);

-- Location: FF_X24_Y24_N31
\RegFile[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[11][1]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[11][1]~q\);

-- Location: FF_X25_Y24_N13
\RegFile[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[10][1]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[10][1]~q\);

-- Location: FF_X25_Y24_N3
\RegFile[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[8][1]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[8][1]~q\);

-- Location: LCCOMB_X25_Y24_N2
\Mux2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\Address[0]~input_o\ & (((\Address[1]~input_o\)))) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & (\RegFile[10][1]~q\)) # (!\Address[1]~input_o\ & ((\RegFile[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[10][1]~q\,
	datab => \Address[0]~input_o\,
	datac => \RegFile[8][1]~q\,
	datad => \Address[1]~input_o\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X24_Y24_N30
\Mux2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\Address[0]~input_o\ & ((\Mux2~12_combout\ & ((\RegFile[11][1]~q\))) # (!\Mux2~12_combout\ & (\RegFile[9][1]~q\)))) # (!\Address[0]~input_o\ & (((\Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \RegFile[9][1]~q\,
	datac => \RegFile[11][1]~q\,
	datad => \Mux2~12_combout\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X24_Y23_N8
\Mux2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~16_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & ((\Mux2~13_combout\))) # (!\Address[3]~input_o\ & (\Mux2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~15_combout\,
	datab => \Address[2]~input_o\,
	datac => \Mux2~13_combout\,
	datad => \Address[3]~input_o\,
	combout => \Mux2~16_combout\);

-- Location: FF_X23_Y26_N31
\RegFile[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[6][1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[6][1]~q\);

-- Location: FF_X24_Y26_N17
\RegFile[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[7][1]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[7][1]~q\);

-- Location: FF_X24_Y26_N7
\RegFile[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[5][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[5][1]~q\);

-- Location: FF_X23_Y26_N13
\RegFile[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[1]~input_o\,
	sload => VCC,
	ena => \RegFile[4][2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[4][1]~q\);

-- Location: LCCOMB_X23_Y26_N12
\Mux2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Address[1]~input_o\ & (((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & ((\Address[0]~input_o\ & (\RegFile[5][1]~q\)) # (!\Address[0]~input_o\ & ((\RegFile[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[5][1]~q\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[4][1]~q\,
	datad => \Address[0]~input_o\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X24_Y26_N16
\Mux2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\Address[1]~input_o\ & ((\Mux2~10_combout\ & ((\RegFile[7][1]~q\))) # (!\Mux2~10_combout\ & (\RegFile[6][1]~q\)))) # (!\Address[1]~input_o\ & (((\Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[1]~input_o\,
	datab => \RegFile[6][1]~q\,
	datac => \RegFile[7][1]~q\,
	datad => \Mux2~10_combout\,
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X24_Y23_N22
\Mux2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~19_combout\ = (\Address[2]~input_o\ & ((\Mux2~16_combout\ & (\Mux2~18_combout\)) # (!\Mux2~16_combout\ & ((\Mux2~11_combout\))))) # (!\Address[2]~input_o\ & (((\Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Mux2~18_combout\,
	datac => \Mux2~16_combout\,
	datad => \Mux2~11_combout\,
	combout => \Mux2~19_combout\);

-- Location: LCCOMB_X23_Y26_N22
\Mux2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~20_combout\ = (\Address[4]~input_o\ & (\Mux2~9_combout\)) # (!\Address[4]~input_o\ & ((\Mux2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~input_o\,
	datab => \Mux2~9_combout\,
	datad => \Mux2~19_combout\,
	combout => \Mux2~20_combout\);

-- Location: IOIBUF_X22_Y31_N8
\in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: LCCOMB_X23_Y27_N18
\RegFile[25][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[25][2]~feeder_combout\ = \in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[2]~input_o\,
	combout => \RegFile[25][2]~feeder_combout\);

-- Location: FF_X23_Y27_N19
\RegFile[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[25][2]~feeder_combout\,
	ena => \RegFile[25][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[25][2]~q\);

-- Location: FF_X23_Y25_N7
\RegFile[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[21][3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[21][2]~q\);

-- Location: FF_X23_Y27_N17
\RegFile[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[17][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[17][2]~q\);

-- Location: LCCOMB_X23_Y27_N16
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Address[2]~input_o\ & ((\RegFile[21][2]~q\) # ((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (((\RegFile[17][2]~q\ & !\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[21][2]~q\,
	datac => \RegFile[17][2]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: FF_X23_Y25_N5
\RegFile[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[29][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[29][2]~q\);

-- Location: LCCOMB_X23_Y25_N4
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (((\RegFile[29][2]~q\) # (!\Address[3]~input_o\)))) # (!\Mux1~2_combout\ & (\RegFile[25][2]~q\ & ((\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[25][2]~q\,
	datab => \Mux1~2_combout\,
	datac => \RegFile[29][2]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: FF_X21_Y26_N1
\RegFile[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[24][3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[24][2]~q\);

-- Location: FF_X21_Y26_N11
\RegFile[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[16][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[16][2]~q\);

-- Location: LCCOMB_X21_Y26_N10
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Address[3]~input_o\ & ((\RegFile[24][2]~q\) # ((\Address[2]~input_o\)))) # (!\Address[3]~input_o\ & (((\RegFile[16][2]~q\ & !\Address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \RegFile[24][2]~q\,
	datac => \RegFile[16][2]~q\,
	datad => \Address[2]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: FF_X22_Y26_N7
\RegFile[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[28][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[28][2]~q\);

-- Location: FF_X22_Y26_N13
\RegFile[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[20][3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[20][2]~q\);

-- Location: LCCOMB_X22_Y26_N6
\Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\ & (((\RegFile[28][2]~q\)) # (!\Address[2]~input_o\))) # (!\Mux1~4_combout\ & (\Address[2]~input_o\ & ((\RegFile[20][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[28][2]~q\,
	datad => \RegFile[20][2]~q\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X25_Y23_N12
\Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Address[1]~input_o\ & (((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & ((\Address[0]~input_o\ & (\Mux1~3_combout\)) # (!\Address[0]~input_o\ & ((\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Address[1]~input_o\,
	datac => \Mux1~5_combout\,
	datad => \Address[0]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: FF_X21_Y27_N9
\RegFile[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[27][1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[27][2]~q\);

-- Location: FF_X22_Y27_N11
\RegFile[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[31][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[31][2]~q\);

-- Location: FF_X22_Y27_N25
\RegFile[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[23][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[23][2]~q\);

-- Location: FF_X21_Y27_N7
\RegFile[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[19][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[19][2]~q\);

-- Location: LCCOMB_X21_Y27_N6
\Mux1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Address[2]~input_o\ & ((\RegFile[23][2]~q\) # ((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (((\RegFile[19][2]~q\ & !\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[23][2]~q\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[19][2]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X22_Y27_N10
\Mux1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Address[3]~input_o\ & ((\Mux1~7_combout\ & ((\RegFile[31][2]~q\))) # (!\Mux1~7_combout\ & (\RegFile[27][2]~q\)))) # (!\Address[3]~input_o\ & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[27][2]~q\,
	datab => \Address[3]~input_o\,
	datac => \RegFile[31][2]~q\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: FF_X25_Y23_N29
\RegFile[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[26][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[26][2]~q\);

-- Location: FF_X25_Y23_N3
\RegFile[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[18][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[18][2]~q\);

-- Location: LCCOMB_X25_Y23_N2
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\RegFile[26][2]~q\)) # (!\Address[3]~input_o\ & ((\RegFile[18][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[26][2]~q\,
	datac => \RegFile[18][2]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X25_Y26_N23
\RegFile[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[30][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[30][2]~q\);

-- Location: FF_X25_Y26_N1
\RegFile[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[22][3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[22][2]~q\);

-- Location: LCCOMB_X25_Y26_N22
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Address[2]~input_o\ & ((\Mux1~0_combout\ & (\RegFile[30][2]~q\)) # (!\Mux1~0_combout\ & ((\RegFile[22][2]~q\))))) # (!\Address[2]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \RegFile[30][2]~q\,
	datad => \RegFile[22][2]~q\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X25_Y23_N10
\Mux1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\Mux1~6_combout\ & (((\Mux1~8_combout\)) # (!\Address[1]~input_o\))) # (!\Mux1~6_combout\ & (\Address[1]~input_o\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \Address[1]~input_o\,
	datac => \Mux1~8_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~9_combout\);

-- Location: FF_X24_Y23_N5
\RegFile[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[2][2]~q\);

-- Location: FF_X21_Y23_N27
\PIPEREGO1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile[2][2]~q\,
	sload => VCC,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO1(2));

-- Location: IOIBUF_X33_Y16_N22
\in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: FF_X24_Y23_N15
\RegFile[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[2][3]~q\);

-- Location: FF_X21_Y23_N31
\PIPEREGO1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile[2][3]~q\,
	sload => VCC,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO1(3));

-- Location: FF_X21_Y23_N1
\PIPEREGO1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile[2][1]~q\,
	sload => VCC,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO1(1));

-- Location: LCCOMB_X21_Y23_N2
\MULT_1|Mult2|auto_generated|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|_~1_combout\ = (PIPEREGO1(2) & (!PIPEREGO1(1) & (PIPEREGO1(0) $ (PIPEREGO1(3))))) # (!PIPEREGO1(2) & (PIPEREGO1(1) & (PIPEREGO1(0) $ (PIPEREGO1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO1(2),
	datab => PIPEREGO1(0),
	datac => PIPEREGO1(3),
	datad => PIPEREGO1(1),
	combout => \MULT_1|Mult2|auto_generated|_~1_combout\);

-- Location: LCCOMB_X21_Y23_N18
\MULT_1|Mult2|auto_generated|le2a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le2a\(0) = (PIPEREGO1(3) & (PIPEREGO1(2) $ (!PIPEREGO1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO1(3),
	datac => PIPEREGO1(2),
	datad => PIPEREGO1(1),
	combout => \MULT_1|Mult2|auto_generated|le2a\(0));

-- Location: LCCOMB_X21_Y23_N24
\MULT_1|Mult2|auto_generated|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le4a\(0) = (\MULT_1|Mult2|auto_generated|_~1_combout\) # (\MULT_1|Mult2|auto_generated|le2a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MULT_1|Mult2|auto_generated|_~1_combout\,
	datad => \MULT_1|Mult2|auto_generated|le2a\(0),
	combout => \MULT_1|Mult2|auto_generated|le4a\(0));

-- Location: LCCOMB_X21_Y23_N16
\MULT_1|Mult2|auto_generated|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le5a\(2) = (PIPEREGO1(0) & (PIPEREGO1(2) $ (PIPEREGO1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PIPEREGO1(0),
	datac => PIPEREGO1(2),
	datad => PIPEREGO1(1),
	combout => \MULT_1|Mult2|auto_generated|le5a\(2));

-- Location: LCCOMB_X21_Y23_N20
\MULT_1|Mult2|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|op_1~0_combout\ = (PIPEREGO1(3) & (\MULT_1|Mult2|auto_generated|le5a\(2) $ (VCC))) # (!PIPEREGO1(3) & (\MULT_1|Mult2|auto_generated|le5a\(2) & VCC))
-- \MULT_1|Mult2|auto_generated|op_1~1\ = CARRY((PIPEREGO1(3) & \MULT_1|Mult2|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO1(3),
	datab => \MULT_1|Mult2|auto_generated|le5a\(2),
	datad => VCC,
	combout => \MULT_1|Mult2|auto_generated|op_1~0_combout\,
	cout => \MULT_1|Mult2|auto_generated|op_1~1\);

-- Location: LCCOMB_X21_Y23_N6
\MULT_1|Mult2|auto_generated|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le5a\(1) = (!PIPEREGO1(0) & PIPEREGO1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PIPEREGO1(0),
	datad => PIPEREGO1(1),
	combout => \MULT_1|Mult2|auto_generated|le5a\(1));

-- Location: LCCOMB_X21_Y23_N28
\MULT_1|Mult2|auto_generated|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le5a\(0) = PIPEREGO1(0) $ (PIPEREGO1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PIPEREGO1(0),
	datad => PIPEREGO1(1),
	combout => \MULT_1|Mult2|auto_generated|le5a\(0));

-- Location: LCCOMB_X21_Y23_N8
\MULT_1|Mult2|auto_generated|op_2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|op_2~1_cout\ = CARRY((\MULT_1|Mult2|auto_generated|le5a\(0) & PIPEREGO1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult2|auto_generated|le5a\(0),
	datab => PIPEREGO1(1),
	datad => VCC,
	cout => \MULT_1|Mult2|auto_generated|op_2~1_cout\);

-- Location: LCCOMB_X21_Y23_N10
\MULT_1|Mult2|auto_generated|op_2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|op_2~3_cout\ = CARRY((!\MULT_1|Mult2|auto_generated|op_2~1_cout\) # (!\MULT_1|Mult2|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult2|auto_generated|le5a\(1),
	datad => VCC,
	cin => \MULT_1|Mult2|auto_generated|op_2~1_cout\,
	cout => \MULT_1|Mult2|auto_generated|op_2~3_cout\);

-- Location: LCCOMB_X21_Y23_N12
\MULT_1|Mult2|auto_generated|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|op_2~4_combout\ = ((\MULT_1|Mult2|auto_generated|le4a\(0) $ (\MULT_1|Mult2|auto_generated|op_1~0_combout\ $ (!\MULT_1|Mult2|auto_generated|op_2~3_cout\)))) # (GND)
-- \MULT_1|Mult2|auto_generated|op_2~5\ = CARRY((\MULT_1|Mult2|auto_generated|le4a\(0) & ((\MULT_1|Mult2|auto_generated|op_1~0_combout\) # (!\MULT_1|Mult2|auto_generated|op_2~3_cout\))) # (!\MULT_1|Mult2|auto_generated|le4a\(0) & 
-- (\MULT_1|Mult2|auto_generated|op_1~0_combout\ & !\MULT_1|Mult2|auto_generated|op_2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult2|auto_generated|le4a\(0),
	datab => \MULT_1|Mult2|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \MULT_1|Mult2|auto_generated|op_2~3_cout\,
	combout => \MULT_1|Mult2|auto_generated|op_2~4_combout\,
	cout => \MULT_1|Mult2|auto_generated|op_2~5\);

-- Location: FF_X24_Y23_N29
\RegFile[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[3][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[3][3]~q\);

-- Location: FF_X20_Y23_N31
\PIPEREGO2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile[3][3]~q\,
	sload => VCC,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO2(3));

-- Location: FF_X20_Y23_N17
\PIPEREGO2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile[3][1]~q\,
	sload => VCC,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO2(1));

-- Location: FF_X24_Y23_N11
\RegFile[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[3][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[3][2]~q\);

-- Location: FF_X20_Y23_N19
\PIPEREGO2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile[3][2]~q\,
	sload => VCC,
	ena => \PIPEREGO2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PIPEREGO2(2));

-- Location: LCCOMB_X20_Y23_N16
\MULT_1|Mult3|auto_generated|le2a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le2a\(0) = (PIPEREGO2(3) & (PIPEREGO2(1) $ (!PIPEREGO2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO2(3),
	datac => PIPEREGO2(1),
	datad => PIPEREGO2(2),
	combout => \MULT_1|Mult3|auto_generated|le2a\(0));

-- Location: LCCOMB_X20_Y23_N18
\MULT_1|Mult3|auto_generated|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|_~1_combout\ = (PIPEREGO2(3) & (!PIPEREGO2(0) & (PIPEREGO2(1) $ (PIPEREGO2(2))))) # (!PIPEREGO2(3) & (PIPEREGO2(0) & (PIPEREGO2(1) $ (PIPEREGO2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO2(3),
	datab => PIPEREGO2(1),
	datac => PIPEREGO2(2),
	datad => PIPEREGO2(0),
	combout => \MULT_1|Mult3|auto_generated|_~1_combout\);

-- Location: LCCOMB_X20_Y23_N28
\MULT_1|Mult3|auto_generated|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le4a\(0) = (\MULT_1|Mult3|auto_generated|le2a\(0)) # (\MULT_1|Mult3|auto_generated|_~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MULT_1|Mult3|auto_generated|le2a\(0),
	datad => \MULT_1|Mult3|auto_generated|_~1_combout\,
	combout => \MULT_1|Mult3|auto_generated|le4a\(0));

-- Location: LCCOMB_X20_Y23_N0
\MULT_1|Mult3|auto_generated|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le5a\(2) = (PIPEREGO2(0) & (PIPEREGO2(2) $ (PIPEREGO2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO2(2),
	datab => PIPEREGO2(1),
	datac => PIPEREGO2(0),
	combout => \MULT_1|Mult3|auto_generated|le5a\(2));

-- Location: LCCOMB_X20_Y23_N2
\MULT_1|Mult3|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|op_1~0_combout\ = (\MULT_1|Mult3|auto_generated|le5a\(2) & (PIPEREGO2(3) $ (VCC))) # (!\MULT_1|Mult3|auto_generated|le5a\(2) & (PIPEREGO2(3) & VCC))
-- \MULT_1|Mult3|auto_generated|op_1~1\ = CARRY((\MULT_1|Mult3|auto_generated|le5a\(2) & PIPEREGO2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult3|auto_generated|le5a\(2),
	datab => PIPEREGO2(3),
	datad => VCC,
	combout => \MULT_1|Mult3|auto_generated|op_1~0_combout\,
	cout => \MULT_1|Mult3|auto_generated|op_1~1\);

-- Location: LCCOMB_X20_Y23_N14
\MULT_1|Mult3|auto_generated|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le5a\(1) = (!PIPEREGO2(0) & PIPEREGO2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PIPEREGO2(0),
	datad => PIPEREGO2(1),
	combout => \MULT_1|Mult3|auto_generated|le5a\(1));

-- Location: LCCOMB_X20_Y23_N30
\MULT_1|Mult3|auto_generated|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le5a\(0) = PIPEREGO2(0) $ (PIPEREGO2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PIPEREGO2(0),
	datad => PIPEREGO2(1),
	combout => \MULT_1|Mult3|auto_generated|le5a\(0));

-- Location: LCCOMB_X20_Y23_N20
\MULT_1|Mult3|auto_generated|op_2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|op_2~1_cout\ = CARRY((PIPEREGO2(1) & \MULT_1|Mult3|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO2(1),
	datab => \MULT_1|Mult3|auto_generated|le5a\(0),
	datad => VCC,
	cout => \MULT_1|Mult3|auto_generated|op_2~1_cout\);

-- Location: LCCOMB_X20_Y23_N22
\MULT_1|Mult3|auto_generated|op_2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|op_2~3_cout\ = CARRY((!\MULT_1|Mult3|auto_generated|op_2~1_cout\) # (!\MULT_1|Mult3|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MULT_1|Mult3|auto_generated|le5a\(1),
	datad => VCC,
	cin => \MULT_1|Mult3|auto_generated|op_2~1_cout\,
	cout => \MULT_1|Mult3|auto_generated|op_2~3_cout\);

-- Location: LCCOMB_X20_Y23_N24
\MULT_1|Mult3|auto_generated|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|op_2~4_combout\ = ((\MULT_1|Mult3|auto_generated|le4a\(0) $ (\MULT_1|Mult3|auto_generated|op_1~0_combout\ $ (!\MULT_1|Mult3|auto_generated|op_2~3_cout\)))) # (GND)
-- \MULT_1|Mult3|auto_generated|op_2~5\ = CARRY((\MULT_1|Mult3|auto_generated|le4a\(0) & ((\MULT_1|Mult3|auto_generated|op_1~0_combout\) # (!\MULT_1|Mult3|auto_generated|op_2~3_cout\))) # (!\MULT_1|Mult3|auto_generated|le4a\(0) & 
-- (\MULT_1|Mult3|auto_generated|op_1~0_combout\ & !\MULT_1|Mult3|auto_generated|op_2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult3|auto_generated|le4a\(0),
	datab => \MULT_1|Mult3|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \MULT_1|Mult3|auto_generated|op_2~3_cout\,
	combout => \MULT_1|Mult3|auto_generated|op_2~4_combout\,
	cout => \MULT_1|Mult3|auto_generated|op_2~5\);

-- Location: LCCOMB_X20_Y23_N10
\ALUREGI[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUREGI[2]~9_combout\ = ((\MULT_1|Mult2|auto_generated|op_2~4_combout\ $ (\MULT_1|Mult3|auto_generated|op_2~4_combout\ $ (\ALUREGI[1]~8\)))) # (GND)
-- \ALUREGI[2]~10\ = CARRY((\MULT_1|Mult2|auto_generated|op_2~4_combout\ & ((!\ALUREGI[1]~8\) # (!\MULT_1|Mult3|auto_generated|op_2~4_combout\))) # (!\MULT_1|Mult2|auto_generated|op_2~4_combout\ & (!\MULT_1|Mult3|auto_generated|op_2~4_combout\ & 
-- !\ALUREGI[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult2|auto_generated|op_2~4_combout\,
	datab => \MULT_1|Mult3|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \ALUREGI[1]~8\,
	combout => \ALUREGI[2]~9_combout\,
	cout => \ALUREGI[2]~10\);

-- Location: FF_X20_Y23_N11
\ALUREGI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALUREGI[2]~9_combout\,
	ena => \ALUREGI[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUREGI(2));

-- Location: LCCOMB_X23_Y23_N26
\RegFile~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~51_combout\ = (\E3~q\ & ((\Flag~q\ & ((ALUREGI(2)))) # (!\Flag~q\ & (\in[2]~input_o\)))) # (!\E3~q\ & (((\in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Flag~q\,
	datac => \in[2]~input_o\,
	datad => ALUREGI(2),
	combout => \RegFile~51_combout\);

-- Location: FF_X23_Y23_N27
\RegFile[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~51_combout\,
	ena => \RegFile[1][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[1][2]~q\);

-- Location: LCCOMB_X23_Y23_N0
\RegFile~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~52_combout\ = (\in[2]~input_o\ & ((!\E3~q\) # (!\Flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \Flag~q\,
	datad => \E3~q\,
	combout => \RegFile~52_combout\);

-- Location: FF_X23_Y23_N1
\RegFile[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~52_combout\,
	ena => \RegFile[0][1]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[0][2]~q\);

-- Location: LCCOMB_X23_Y23_N10
\Mux1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = (\Address[1]~input_o\ & (((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & ((\Address[0]~input_o\ & (\RegFile[1][2]~q\)) # (!\Address[0]~input_o\ & ((\RegFile[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[1][2]~q\,
	datab => \RegFile[0][2]~q\,
	datac => \Address[1]~input_o\,
	datad => \Address[0]~input_o\,
	combout => \Mux1~14_combout\);

-- Location: LCCOMB_X24_Y23_N10
\Mux1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = (\Mux1~14_combout\ & (((\RegFile[3][2]~q\)) # (!\Address[1]~input_o\))) # (!\Mux1~14_combout\ & (\Address[1]~input_o\ & ((\RegFile[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~14_combout\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[3][2]~q\,
	datad => \RegFile[2][2]~q\,
	combout => \Mux1~15_combout\);

-- Location: FF_X24_Y26_N3
\RegFile[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[5][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[5][2]~q\);

-- Location: FF_X24_Y26_N25
\RegFile[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[7][1]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[7][2]~q\);

-- Location: FF_X23_Y26_N19
\RegFile[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[4][2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[4][2]~q\);

-- Location: FF_X23_Y26_N29
\RegFile[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[6][1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[6][2]~q\);

-- Location: LCCOMB_X23_Y26_N18
\Mux1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\)) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & ((\RegFile[6][2]~q\))) # (!\Address[1]~input_o\ & (\RegFile[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[4][2]~q\,
	datad => \RegFile[6][2]~q\,
	combout => \Mux1~12_combout\);

-- Location: LCCOMB_X24_Y26_N24
\Mux1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = (\Address[0]~input_o\ & ((\Mux1~12_combout\ & ((\RegFile[7][2]~q\))) # (!\Mux1~12_combout\ & (\RegFile[5][2]~q\)))) # (!\Address[0]~input_o\ & (((\Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \RegFile[5][2]~q\,
	datac => \RegFile[7][2]~q\,
	datad => \Mux1~12_combout\,
	combout => \Mux1~13_combout\);

-- Location: LCCOMB_X24_Y23_N24
\Mux1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = (\Address[2]~input_o\ & (((\Mux1~13_combout\) # (\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (\Mux1~15_combout\ & ((!\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~15_combout\,
	datab => \Mux1~13_combout\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Mux1~16_combout\);

-- Location: FF_X25_Y24_N21
\RegFile[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[10][1]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[10][2]~q\);

-- Location: FF_X24_Y24_N23
\RegFile[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[11][1]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[11][2]~q\);

-- Location: FF_X24_Y24_N5
\RegFile[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[9][2]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[9][2]~q\);

-- Location: FF_X25_Y24_N23
\RegFile[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[8][1]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[8][2]~q\);

-- Location: LCCOMB_X25_Y24_N22
\Mux1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\Address[0]~input_o\ & ((\RegFile[9][2]~q\) # ((\Address[1]~input_o\)))) # (!\Address[0]~input_o\ & (((\RegFile[8][2]~q\ & !\Address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \RegFile[9][2]~q\,
	datac => \RegFile[8][2]~q\,
	datad => \Address[1]~input_o\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X24_Y24_N22
\Mux1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (\Address[1]~input_o\ & ((\Mux1~10_combout\ & ((\RegFile[11][2]~q\))) # (!\Mux1~10_combout\ & (\RegFile[10][2]~q\)))) # (!\Address[1]~input_o\ & (((\Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[10][2]~q\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[11][2]~q\,
	datad => \Mux1~10_combout\,
	combout => \Mux1~11_combout\);

-- Location: FF_X24_Y25_N1
\RegFile[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[13][3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[13][2]~q\);

-- Location: FF_X24_Y25_N19
\RegFile[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[15][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[15][2]~q\);

-- Location: FF_X25_Y25_N3
\RegFile[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[12][1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[12][2]~q\);

-- Location: FF_X25_Y25_N13
\RegFile[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	ena => \RegFile[14][2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[14][2]~q\);

-- Location: LCCOMB_X25_Y25_N2
\Mux1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~17_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\)) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & ((\RegFile[14][2]~q\))) # (!\Address[1]~input_o\ & (\RegFile[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[12][2]~q\,
	datad => \RegFile[14][2]~q\,
	combout => \Mux1~17_combout\);

-- Location: LCCOMB_X24_Y25_N18
\Mux1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~18_combout\ = (\Address[0]~input_o\ & ((\Mux1~17_combout\ & ((\RegFile[15][2]~q\))) # (!\Mux1~17_combout\ & (\RegFile[13][2]~q\)))) # (!\Address[0]~input_o\ & (((\Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \RegFile[13][2]~q\,
	datac => \RegFile[15][2]~q\,
	datad => \Mux1~17_combout\,
	combout => \Mux1~18_combout\);

-- Location: LCCOMB_X25_Y23_N24
\Mux1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~19_combout\ = (\Address[3]~input_o\ & ((\Mux1~16_combout\ & ((\Mux1~18_combout\))) # (!\Mux1~16_combout\ & (\Mux1~11_combout\)))) # (!\Address[3]~input_o\ & (\Mux1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \Mux1~16_combout\,
	datac => \Mux1~11_combout\,
	datad => \Mux1~18_combout\,
	combout => \Mux1~19_combout\);

-- Location: LCCOMB_X25_Y23_N6
\Mux1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~20_combout\ = (\Address[4]~input_o\ & (\Mux1~9_combout\)) # (!\Address[4]~input_o\ & ((\Mux1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datac => \Address[4]~input_o\,
	datad => \Mux1~19_combout\,
	combout => \Mux1~20_combout\);

-- Location: FF_X25_Y23_N21
\RegFile[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[26][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[26][3]~q\);

-- Location: FF_X25_Y26_N25
\RegFile[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[22][3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[22][3]~q\);

-- Location: FF_X25_Y23_N23
\RegFile[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[18][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[18][3]~q\);

-- Location: LCCOMB_X25_Y23_N22
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Address[2]~input_o\ & ((\RegFile[22][3]~q\) # ((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & (((\RegFile[18][3]~q\ & !\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[22][3]~q\,
	datac => \RegFile[18][3]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: FF_X25_Y26_N11
\RegFile[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[30][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[30][3]~q\);

-- Location: LCCOMB_X25_Y26_N10
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\RegFile[30][3]~q\) # (!\Address[3]~input_o\)))) # (!\Mux0~2_combout\ & (\RegFile[26][3]~q\ & ((\Address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[26][3]~q\,
	datab => \Mux0~2_combout\,
	datac => \RegFile[30][3]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: FF_X22_Y26_N29
\RegFile[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[20][3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[20][3]~q\);

-- Location: FF_X21_Y26_N23
\RegFile[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[16][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[16][3]~q\);

-- Location: LCCOMB_X21_Y26_N22
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Address[3]~input_o\ & (((\Address[2]~input_o\)))) # (!\Address[3]~input_o\ & ((\Address[2]~input_o\ & (\RegFile[20][3]~q\)) # (!\Address[2]~input_o\ & ((\RegFile[16][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \RegFile[20][3]~q\,
	datac => \RegFile[16][3]~q\,
	datad => \Address[2]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: FF_X22_Y26_N31
\RegFile[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[28][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[28][3]~q\);

-- Location: FF_X21_Y26_N13
\RegFile[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[24][3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[24][3]~q\);

-- Location: LCCOMB_X22_Y26_N30
\Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Address[3]~input_o\ & ((\Mux0~4_combout\ & (\RegFile[28][3]~q\)) # (!\Mux0~4_combout\ & ((\RegFile[24][3]~q\))))) # (!\Address[3]~input_o\ & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~input_o\,
	datab => \Mux0~4_combout\,
	datac => \RegFile[28][3]~q\,
	datad => \RegFile[24][3]~q\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X23_Y25_N30
\Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Address[1]~input_o\ & ((\Mux0~3_combout\) # ((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & (((\Mux0~5_combout\ & !\Address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Address[1]~input_o\,
	datac => \Mux0~5_combout\,
	datad => \Address[0]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: FF_X23_Y25_N11
\RegFile[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[21][3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[21][3]~q\);

-- Location: FF_X23_Y25_N25
\RegFile[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[29][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[29][3]~q\);

-- Location: LCCOMB_X23_Y27_N14
\RegFile[25][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[25][3]~feeder_combout\ = \in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[3]~input_o\,
	combout => \RegFile[25][3]~feeder_combout\);

-- Location: FF_X23_Y27_N15
\RegFile[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[25][3]~feeder_combout\,
	ena => \RegFile[25][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[25][3]~q\);

-- Location: FF_X23_Y27_N29
\RegFile[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[17][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[17][3]~q\);

-- Location: LCCOMB_X23_Y27_N28
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\RegFile[25][3]~q\)) # (!\Address[3]~input_o\ & ((\RegFile[17][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~input_o\,
	datab => \RegFile[25][3]~q\,
	datac => \RegFile[17][3]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y25_N24
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Address[2]~input_o\ & ((\Mux0~0_combout\ & ((\RegFile[29][3]~q\))) # (!\Mux0~0_combout\ & (\RegFile[21][3]~q\)))) # (!\Address[2]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[21][3]~q\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[29][3]~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X21_Y27_N13
\RegFile[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[27][1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[27][3]~q\);

-- Location: FF_X21_Y27_N15
\RegFile[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[19][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[19][3]~q\);

-- Location: LCCOMB_X21_Y27_N14
\Mux0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\RegFile[27][3]~q\)) # (!\Address[3]~input_o\ & ((\RegFile[19][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[27][3]~q\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[19][3]~q\,
	datad => \Address[3]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: FF_X22_Y27_N23
\RegFile[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[31][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[31][3]~q\);

-- Location: FF_X22_Y27_N1
\RegFile[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[23][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[23][3]~q\);

-- Location: LCCOMB_X22_Y27_N22
\Mux0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux0~7_combout\ & (((\RegFile[31][3]~q\)) # (!\Address[2]~input_o\))) # (!\Mux0~7_combout\ & (\Address[2]~input_o\ & ((\RegFile[23][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datab => \Address[2]~input_o\,
	datac => \RegFile[31][3]~q\,
	datad => \RegFile[23][3]~q\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X23_Y25_N12
\Mux0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\Mux0~6_combout\ & (((\Mux0~8_combout\) # (!\Address[0]~input_o\)))) # (!\Mux0~6_combout\ & (\Mux0~1_combout\ & ((\Address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~8_combout\,
	datad => \Address[0]~input_o\,
	combout => \Mux0~9_combout\);

-- Location: FF_X25_Y25_N21
\RegFile[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[14][2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[14][3]~q\);

-- Location: FF_X25_Y25_N11
\RegFile[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[12][1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[12][3]~q\);

-- Location: LCCOMB_X24_Y25_N12
\RegFile[13][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile[13][3]~feeder_combout\ = \in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[3]~input_o\,
	combout => \RegFile[13][3]~feeder_combout\);

-- Location: FF_X24_Y25_N13
\RegFile[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile[13][3]~feeder_combout\,
	ena => \RegFile[13][3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[13][3]~q\);

-- Location: LCCOMB_X25_Y25_N10
\Mux0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (\Address[0]~input_o\ & ((\Address[1]~input_o\) # ((\RegFile[13][3]~q\)))) # (!\Address[0]~input_o\ & (!\Address[1]~input_o\ & (\RegFile[12][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[12][3]~q\,
	datad => \RegFile[13][3]~q\,
	combout => \Mux0~17_combout\);

-- Location: FF_X24_Y25_N7
\RegFile[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[15][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[15][3]~q\);

-- Location: LCCOMB_X24_Y25_N6
\Mux0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (\Mux0~17_combout\ & (((\RegFile[15][3]~q\) # (!\Address[1]~input_o\)))) # (!\Mux0~17_combout\ & (\RegFile[14][3]~q\ & ((\Address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[14][3]~q\,
	datab => \Mux0~17_combout\,
	datac => \RegFile[15][3]~q\,
	datad => \Address[1]~input_o\,
	combout => \Mux0~18_combout\);

-- Location: FF_X24_Y26_N31
\RegFile[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[5][0]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[5][3]~q\);

-- Location: FF_X23_Y26_N11
\RegFile[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[4][2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[4][3]~q\);

-- Location: LCCOMB_X23_Y26_N10
\Mux0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\Address[1]~input_o\ & (((\Address[0]~input_o\)))) # (!\Address[1]~input_o\ & ((\Address[0]~input_o\ & (\RegFile[5][3]~q\)) # (!\Address[0]~input_o\ & ((\RegFile[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile[5][3]~q\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[4][3]~q\,
	datad => \Address[0]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: FF_X24_Y26_N13
\RegFile[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[7][1]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[7][3]~q\);

-- Location: FF_X23_Y26_N9
\RegFile[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[6][1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[6][3]~q\);

-- Location: LCCOMB_X24_Y26_N12
\Mux0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~10_combout\ & (((\RegFile[7][3]~q\)) # (!\Address[1]~input_o\))) # (!\Mux0~10_combout\ & (\Address[1]~input_o\ & ((\RegFile[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[7][3]~q\,
	datad => \RegFile[6][3]~q\,
	combout => \Mux0~11_combout\);

-- Location: FF_X25_Y24_N11
\RegFile[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[8][1]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[8][3]~q\);

-- Location: FF_X25_Y24_N1
\RegFile[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[10][1]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[10][3]~q\);

-- Location: LCCOMB_X25_Y24_N10
\Mux0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\)) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & ((\RegFile[10][3]~q\))) # (!\Address[1]~input_o\ & (\RegFile[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[8][3]~q\,
	datad => \RegFile[10][3]~q\,
	combout => \Mux0~12_combout\);

-- Location: FF_X24_Y24_N7
\RegFile[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[11][1]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[11][3]~q\);

-- Location: FF_X24_Y24_N13
\RegFile[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	ena => \RegFile[9][2]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[9][3]~q\);

-- Location: LCCOMB_X24_Y24_N6
\Mux0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\Address[0]~input_o\ & ((\Mux0~12_combout\ & (\RegFile[11][3]~q\)) # (!\Mux0~12_combout\ & ((\RegFile[9][3]~q\))))) # (!\Address[0]~input_o\ & (\Mux0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Mux0~12_combout\,
	datac => \RegFile[11][3]~q\,
	datad => \RegFile[9][3]~q\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X23_Y23_N14
\RegFile~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~54_combout\ = (\in[3]~input_o\ & ((!\E3~q\) # (!\Flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[3]~input_o\,
	datab => \Flag~q\,
	datad => \E3~q\,
	combout => \RegFile~54_combout\);

-- Location: FF_X23_Y23_N15
\RegFile[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~54_combout\,
	ena => \RegFile[0][1]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[0][3]~q\);

-- Location: LCCOMB_X24_Y23_N14
\Mux0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (\Address[0]~input_o\ & (\Address[1]~input_o\)) # (!\Address[0]~input_o\ & ((\Address[1]~input_o\ & (\RegFile[2][3]~q\)) # (!\Address[1]~input_o\ & ((\RegFile[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Address[1]~input_o\,
	datac => \RegFile[2][3]~q\,
	datad => \RegFile[0][3]~q\,
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X19_Y23_N0
\MULT_1|Mult3|auto_generated|le2a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le2a\(1) = (PIPEREGO2(0) & (PIPEREGO2(2) & (PIPEREGO2(1)))) # (!PIPEREGO2(0) & (PIPEREGO2(3) & (PIPEREGO2(2) $ (!PIPEREGO2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO2(2),
	datab => PIPEREGO2(0),
	datac => PIPEREGO2(1),
	datad => PIPEREGO2(3),
	combout => \MULT_1|Mult3|auto_generated|le2a\(1));

-- Location: LCCOMB_X19_Y23_N14
\MULT_1|Mult3|auto_generated|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le4a\(1) = (\MULT_1|Mult3|auto_generated|le2a\(1)) # ((PIPEREGO2(3) & (!PIPEREGO2(1) & PIPEREGO2(2))) # (!PIPEREGO2(3) & (PIPEREGO2(1) & !PIPEREGO2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO2(3),
	datab => PIPEREGO2(1),
	datac => PIPEREGO2(2),
	datad => \MULT_1|Mult3|auto_generated|le2a\(1),
	combout => \MULT_1|Mult3|auto_generated|le4a\(1));

-- Location: LCCOMB_X19_Y23_N24
\MULT_1|Mult3|auto_generated|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|le5a\(3) = (PIPEREGO2(0) & (PIPEREGO2(1) $ (((PIPEREGO2(3)))))) # (!PIPEREGO2(0) & (PIPEREGO2(1) & (!PIPEREGO2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO2(1),
	datab => PIPEREGO2(2),
	datac => PIPEREGO2(0),
	datad => PIPEREGO2(3),
	combout => \MULT_1|Mult3|auto_generated|le5a\(3));

-- Location: LCCOMB_X20_Y23_N4
\MULT_1|Mult3|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|op_1~2_combout\ = \MULT_1|Mult3|auto_generated|op_1~1\ $ (\MULT_1|Mult3|auto_generated|le5a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MULT_1|Mult3|auto_generated|le5a\(3),
	cin => \MULT_1|Mult3|auto_generated|op_1~1\,
	combout => \MULT_1|Mult3|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X20_Y23_N26
\MULT_1|Mult3|auto_generated|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult3|auto_generated|op_2~6_combout\ = \MULT_1|Mult3|auto_generated|le4a\(1) $ (\MULT_1|Mult3|auto_generated|op_2~5\ $ (\MULT_1|Mult3|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult3|auto_generated|le4a\(1),
	datad => \MULT_1|Mult3|auto_generated|op_1~2_combout\,
	cin => \MULT_1|Mult3|auto_generated|op_2~5\,
	combout => \MULT_1|Mult3|auto_generated|op_2~6_combout\);

-- Location: LCCOMB_X21_Y23_N0
\MULT_1|Mult2|auto_generated|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le5a\(3) = (PIPEREGO1(0) & ((PIPEREGO1(1) $ (PIPEREGO1(3))))) # (!PIPEREGO1(0) & (!PIPEREGO1(2) & (PIPEREGO1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO1(2),
	datab => PIPEREGO1(0),
	datac => PIPEREGO1(1),
	datad => PIPEREGO1(3),
	combout => \MULT_1|Mult2|auto_generated|le5a\(3));

-- Location: LCCOMB_X21_Y23_N22
\MULT_1|Mult2|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|op_1~2_combout\ = \MULT_1|Mult2|auto_generated|le5a\(3) $ (\MULT_1|Mult2|auto_generated|op_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult2|auto_generated|le5a\(3),
	cin => \MULT_1|Mult2|auto_generated|op_1~1\,
	combout => \MULT_1|Mult2|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X21_Y23_N30
\MULT_1|Mult2|auto_generated|le2a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le2a\(1) = (PIPEREGO1(0) & (PIPEREGO1(2) & ((PIPEREGO1(1))))) # (!PIPEREGO1(0) & (PIPEREGO1(3) & (PIPEREGO1(2) $ (!PIPEREGO1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO1(2),
	datab => PIPEREGO1(0),
	datac => PIPEREGO1(3),
	datad => PIPEREGO1(1),
	combout => \MULT_1|Mult2|auto_generated|le2a\(1));

-- Location: LCCOMB_X21_Y23_N26
\MULT_1|Mult2|auto_generated|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|le4a\(1) = (\MULT_1|Mult2|auto_generated|le2a\(1)) # ((PIPEREGO1(3) & (!PIPEREGO1(1) & PIPEREGO1(2))) # (!PIPEREGO1(3) & (PIPEREGO1(1) & !PIPEREGO1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PIPEREGO1(3),
	datab => PIPEREGO1(1),
	datac => PIPEREGO1(2),
	datad => \MULT_1|Mult2|auto_generated|le2a\(1),
	combout => \MULT_1|Mult2|auto_generated|le4a\(1));

-- Location: LCCOMB_X21_Y23_N14
\MULT_1|Mult2|auto_generated|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MULT_1|Mult2|auto_generated|op_2~6_combout\ = \MULT_1|Mult2|auto_generated|op_1~2_combout\ $ (\MULT_1|Mult2|auto_generated|le4a\(1) $ (\MULT_1|Mult2|auto_generated|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult2|auto_generated|op_1~2_combout\,
	datab => \MULT_1|Mult2|auto_generated|le4a\(1),
	cin => \MULT_1|Mult2|auto_generated|op_2~5\,
	combout => \MULT_1|Mult2|auto_generated|op_2~6_combout\);

-- Location: LCCOMB_X20_Y23_N12
\ALUREGI[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUREGI[3]~11_combout\ = \MULT_1|Mult3|auto_generated|op_2~6_combout\ $ (\ALUREGI[2]~10\ $ (!\MULT_1|Mult2|auto_generated|op_2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MULT_1|Mult3|auto_generated|op_2~6_combout\,
	datad => \MULT_1|Mult2|auto_generated|op_2~6_combout\,
	cin => \ALUREGI[2]~10\,
	combout => \ALUREGI[3]~11_combout\);

-- Location: FF_X20_Y23_N13
\ALUREGI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALUREGI[3]~11_combout\,
	ena => \ALUREGI[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUREGI(3));

-- Location: LCCOMB_X23_Y23_N8
\RegFile~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegFile~53_combout\ = (\E3~q\ & ((\Flag~q\ & ((ALUREGI(3)))) # (!\Flag~q\ & (\in[3]~input_o\)))) # (!\E3~q\ & (((\in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E3~q\,
	datab => \Flag~q\,
	datac => \in[3]~input_o\,
	datad => ALUREGI(3),
	combout => \RegFile~53_combout\);

-- Location: FF_X23_Y23_N9
\RegFile[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile~53_combout\,
	ena => \RegFile[1][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile[1][3]~q\);

-- Location: LCCOMB_X24_Y23_N28
\Mux0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (\Address[0]~input_o\ & ((\Mux0~14_combout\ & (\RegFile[3][3]~q\)) # (!\Mux0~14_combout\ & ((\RegFile[1][3]~q\))))) # (!\Address[0]~input_o\ & (\Mux0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~input_o\,
	datab => \Mux0~14_combout\,
	datac => \RegFile[3][3]~q\,
	datad => \RegFile[1][3]~q\,
	combout => \Mux0~15_combout\);

-- Location: LCCOMB_X23_Y24_N12
\Mux0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (\Address[2]~input_o\ & (((\Address[3]~input_o\)))) # (!\Address[2]~input_o\ & ((\Address[3]~input_o\ & (\Mux0~13_combout\)) # (!\Address[3]~input_o\ & ((\Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~13_combout\,
	datab => \Mux0~15_combout\,
	datac => \Address[2]~input_o\,
	datad => \Address[3]~input_o\,
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X23_Y25_N22
\Mux0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = (\Address[2]~input_o\ & ((\Mux0~16_combout\ & (\Mux0~18_combout\)) # (!\Mux0~16_combout\ & ((\Mux0~11_combout\))))) # (!\Address[2]~input_o\ & (((\Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~18_combout\,
	datab => \Address[2]~input_o\,
	datac => \Mux0~11_combout\,
	datad => \Mux0~16_combout\,
	combout => \Mux0~19_combout\);

-- Location: LCCOMB_X23_Y25_N28
\Mux0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = (\Address[4]~input_o\ & (\Mux0~9_combout\)) # (!\Address[4]~input_o\ & ((\Mux0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~9_combout\,
	datac => \Mux0~19_combout\,
	datad => \Address[4]~input_o\,
	combout => \Mux0~20_combout\);

\ww_OUT\(0) <= \OUT[0]~output_o\;

\ww_OUT\(1) <= \OUT[1]~output_o\;

\ww_OUT\(2) <= \OUT[2]~output_o\;

\ww_OUT\(3) <= \OUT[3]~output_o\;
END structure;


