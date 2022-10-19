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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/30/2020 16:39:29"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control IS
    PORT (
	CLK : IN std_logic;
	EN : IN std_logic;
	RST : IN std_logic;
	DX : IN std_logic_vector(7 DOWNTO 0);
	NB : IN std_logic_vector(7 DOWNTO 0);
	Q : OUT std_logic_vector(1 DOWNTO 0)
	);
END control;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[4]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_DX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S[0]~0_combout\ : std_logic;
SIGNAL \S[0]~1_combout\ : std_logic;
SIGNAL \S[0]~2_combout\ : std_logic;
SIGNAL \S[0]~3_combout\ : std_logic;
SIGNAL \S[0]~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \DX[0]~input_o\ : std_logic;
SIGNAL \DX[1]~input_o\ : std_logic;
SIGNAL \DX[2]~input_o\ : std_logic;
SIGNAL \DX[3]~input_o\ : std_logic;
SIGNAL \NB[0]~input_o\ : std_logic;
SIGNAL \NB[1]~input_o\ : std_logic;
SIGNAL \NB[2]~input_o\ : std_logic;
SIGNAL \NB[3]~input_o\ : std_logic;
SIGNAL \NB[4]~input_o\ : std_logic;
SIGNAL \NB[5]~input_o\ : std_logic;
SIGNAL \NB[6]~input_o\ : std_logic;
SIGNAL \NB[7]~input_o\ : std_logic;
SIGNAL \DX[4]~input_o\ : std_logic;
SIGNAL \DX[5]~input_o\ : std_logic;
SIGNAL \DX[6]~input_o\ : std_logic;
SIGNAL \DX[7]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \COUNT[0]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \S[0]~5_combout\ : std_logic;
SIGNAL \S[0]~6_combout\ : std_logic;
SIGNAL \S[1]~7_combout\ : std_logic;
SIGNAL S : std_logic_vector(1 DOWNTO 0);
SIGNAL COUNT : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL ALT_INV_S : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_EN <= EN;
ww_RST <= RST;
ww_DX <= DX;
ww_NB <= NB;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
ALT_INV_S(1) <= NOT S(1);
ALT_INV_S(0) <= NOT S(0);

-- Location: LCCOMB_X1_Y10_N16
\S[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~0_combout\ = (!\DX[2]~input_o\ & (\DX[0]~input_o\ & (!\DX[1]~input_o\ & !\DX[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DX[2]~input_o\,
	datab => \DX[0]~input_o\,
	datac => \DX[1]~input_o\,
	datad => \DX[3]~input_o\,
	combout => \S[0]~0_combout\);

-- Location: LCCOMB_X1_Y6_N24
\S[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~1_combout\ = (!\NB[2]~input_o\ & (!\NB[1]~input_o\ & (!\NB[3]~input_o\ & \NB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NB[2]~input_o\,
	datab => \NB[1]~input_o\,
	datac => \NB[3]~input_o\,
	datad => \NB[0]~input_o\,
	combout => \S[0]~1_combout\);

-- Location: LCCOMB_X1_Y8_N28
\S[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~2_combout\ = (!\NB[5]~input_o\ & (!\NB[4]~input_o\ & (!\NB[6]~input_o\ & !\NB[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NB[5]~input_o\,
	datab => \NB[4]~input_o\,
	datac => \NB[6]~input_o\,
	datad => \NB[7]~input_o\,
	combout => \S[0]~2_combout\);

-- Location: LCCOMB_X1_Y4_N4
\S[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~3_combout\ = (!\DX[4]~input_o\ & (!\DX[7]~input_o\ & (!\DX[6]~input_o\ & !\DX[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DX[4]~input_o\,
	datab => \DX[7]~input_o\,
	datac => \DX[6]~input_o\,
	datad => \DX[5]~input_o\,
	combout => \S[0]~3_combout\);

-- Location: LCCOMB_X1_Y8_N26
\S[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~4_combout\ = (\S[0]~3_combout\ & ((\S[0]~0_combout\) # ((\S[0]~1_combout\ & \S[0]~2_combout\)))) # (!\S[0]~3_combout\ & (\S[0]~1_combout\ & (\S[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~3_combout\,
	datab => \S[0]~1_combout\,
	datac => \S[0]~2_combout\,
	datad => \S[0]~0_combout\,
	combout => \S[0]~4_combout\);

-- Location: FF_X1_Y8_N23
\COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT(2));

-- Location: LCCOMB_X1_Y8_N22
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = COUNT(2) $ (((COUNT(0) & COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNT(0),
	datac => COUNT(2),
	datad => COUNT(1),
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\DX[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(0),
	o => \DX[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\DX[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(1),
	o => \DX[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\DX[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(2),
	o => \DX[2]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\DX[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(3),
	o => \DX[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\NB[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(0),
	o => \NB[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\NB[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(1),
	o => \NB[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\NB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(2),
	o => \NB[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\NB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(3),
	o => \NB[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\NB[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(4),
	o => \NB[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\NB[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(5),
	o => \NB[5]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\NB[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(6),
	o => \NB[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\NB[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB(7),
	o => \NB[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\DX[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(4),
	o => \DX[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\DX[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(5),
	o => \DX[5]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\DX[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(6),
	o => \DX[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\DX[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX(7),
	o => \DX[7]~input_o\);

-- Location: IOOBUF_X0_Y7_N16
\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y8_N18
\COUNT[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT[0]~0_combout\ = !COUNT(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(0),
	combout => \COUNT[0]~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G2
\RST~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y10_N1
\EN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X1_Y10_N18
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\EN~input_o\) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \EN~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X1_Y8_N19
\COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT[0]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT(0));

-- Location: LCCOMB_X1_Y8_N24
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = COUNT(1) $ (COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(1),
	datad => COUNT(0),
	combout => \Add0~2_combout\);

-- Location: FF_X1_Y8_N25
\COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT(1));

-- Location: LCCOMB_X1_Y8_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = COUNT(3) $ (((COUNT(2) & (COUNT(1) & COUNT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(2),
	datab => COUNT(1),
	datac => COUNT(3),
	datad => COUNT(0),
	combout => \Add0~0_combout\);

-- Location: FF_X1_Y8_N9
\COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT(3));

-- Location: LCCOMB_X1_Y8_N12
\S[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~5_combout\ = (!COUNT(2) & (!COUNT(1) & (!COUNT(3) & !COUNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(2),
	datab => COUNT(1),
	datac => COUNT(3),
	datad => COUNT(0),
	combout => \S[0]~5_combout\);

-- Location: LCCOMB_X1_Y8_N20
\S[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~6_combout\ = S(0) $ (((\S[0]~4_combout\ & \S[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~4_combout\,
	datac => S(0),
	datad => \S[0]~5_combout\,
	combout => \S[0]~6_combout\);

-- Location: FF_X1_Y8_N21
\S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \S[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(0));

-- Location: LCCOMB_X1_Y8_N30
\S[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[1]~7_combout\ = S(1) $ (((\S[0]~4_combout\ & (!S(0) & \S[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~4_combout\,
	datab => S(0),
	datac => S(1),
	datad => \S[0]~5_combout\,
	combout => \S[1]~7_combout\);

-- Location: FF_X1_Y8_N31
\S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \S[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(1));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;
END structure;


