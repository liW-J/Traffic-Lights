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

-- DATE "11/25/2021 11:31:21"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	display IS
    PORT (
	S : IN std_logic_vector(1 DOWNTO 0);
	LIGHTA : OUT std_logic_vector(5 DOWNTO 0);
	LIGHT : OUT std_logic_vector(5 DOWNTO 0)
	);
END display;

-- Design Ports Information
-- LIGHTA[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHTA[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHTA[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHTA[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHTA[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHTA[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHT[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHT[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHT[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHT[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHT[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIGHT[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LIGHTA : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_LIGHT : std_logic_vector(5 DOWNTO 0);
SIGNAL \LIGHTA[0]~output_o\ : std_logic;
SIGNAL \LIGHTA[1]~output_o\ : std_logic;
SIGNAL \LIGHTA[2]~output_o\ : std_logic;
SIGNAL \LIGHTA[3]~output_o\ : std_logic;
SIGNAL \LIGHTA[4]~output_o\ : std_logic;
SIGNAL \LIGHTA[5]~output_o\ : std_logic;
SIGNAL \LIGHT[0]~output_o\ : std_logic;
SIGNAL \LIGHT[1]~output_o\ : std_logic;
SIGNAL \LIGHT[2]~output_o\ : std_logic;
SIGNAL \LIGHT[3]~output_o\ : std_logic;
SIGNAL \LIGHT[4]~output_o\ : std_logic;
SIGNAL \LIGHT[5]~output_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

ww_S <= S;
LIGHTA <= ww_LIGHTA;
LIGHT <= ww_LIGHT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;

-- Location: IOOBUF_X7_Y0_N9
\LIGHTA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LIGHTA[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\LIGHTA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LIGHTA[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\LIGHTA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[1]~input_o\,
	devoe => ww_devoe,
	o => \LIGHTA[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\LIGHTA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LIGHTA[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\LIGHTA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \LIGHTA[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\LIGHTA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_S[1]~input_o\,
	devoe => ww_devoe,
	o => \LIGHTA[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\LIGHT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LIGHT[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\LIGHT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LIGHT[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\LIGHT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[1]~input_o\,
	devoe => ww_devoe,
	o => \LIGHT[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\LIGHT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LIGHT[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\LIGHT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \LIGHT[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\LIGHT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_S[1]~input_o\,
	devoe => ww_devoe,
	o => \LIGHT[5]~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\S[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\S[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\S[1]~input_o\) # (\S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X8_Y1_N18
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\S[1]~input_o\ & \S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X8_Y1_N28
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\S[1]~input_o\ & !\S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X8_Y1_N22
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\S[1]~input_o\ & \S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \Mux1~2_combout\);

ww_LIGHTA(0) <= \LIGHTA[0]~output_o\;

ww_LIGHTA(1) <= \LIGHTA[1]~output_o\;

ww_LIGHTA(2) <= \LIGHTA[2]~output_o\;

ww_LIGHTA(3) <= \LIGHTA[3]~output_o\;

ww_LIGHTA(4) <= \LIGHTA[4]~output_o\;

ww_LIGHTA(5) <= \LIGHTA[5]~output_o\;

ww_LIGHT(0) <= \LIGHT[0]~output_o\;

ww_LIGHT(1) <= \LIGHT[1]~output_o\;

ww_LIGHT(2) <= \LIGHT[2]~output_o\;

ww_LIGHT(3) <= \LIGHT[3]~output_o\;

ww_LIGHT(4) <= \LIGHT[4]~output_o\;

ww_LIGHT(5) <= \LIGHT[5]~output_o\;
END structure;


