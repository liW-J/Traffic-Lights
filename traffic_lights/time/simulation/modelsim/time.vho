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

-- DATE "11/30/2020 17:32:26"

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

ENTITY 	\time\ IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	EN : IN std_logic;
	S : IN std_logic_vector(1 DOWNTO 0);
	NB1 : OUT std_logic_vector(3 DOWNTO 0);
	NB2 : OUT std_logic_vector(3 DOWNTO 0);
	DX1 : OUT std_logic_vector(3 DOWNTO 0);
	DX2 : OUT std_logic_vector(3 DOWNTO 0);
	DX : OUT std_logic_vector(7 DOWNTO 0);
	NB : OUT std_logic_vector(7 DOWNTO 0)
	);
END \time\;

-- Design Ports Information
-- NB1[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB1[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB2[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB2[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB2[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB2[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX1[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX1[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX1[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX1[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX2[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX2[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX2[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \time\ IS
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_NB1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_NB2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DX1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DX2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NB : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \DXT[3]~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \DXT[6]~12_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \NB1[0]~output_o\ : std_logic;
SIGNAL \NB1[1]~output_o\ : std_logic;
SIGNAL \NB1[2]~output_o\ : std_logic;
SIGNAL \NB1[3]~output_o\ : std_logic;
SIGNAL \NB2[0]~output_o\ : std_logic;
SIGNAL \NB2[1]~output_o\ : std_logic;
SIGNAL \NB2[2]~output_o\ : std_logic;
SIGNAL \NB2[3]~output_o\ : std_logic;
SIGNAL \DX1[0]~output_o\ : std_logic;
SIGNAL \DX1[1]~output_o\ : std_logic;
SIGNAL \DX1[2]~output_o\ : std_logic;
SIGNAL \DX1[3]~output_o\ : std_logic;
SIGNAL \DX2[0]~output_o\ : std_logic;
SIGNAL \DX2[1]~output_o\ : std_logic;
SIGNAL \DX2[2]~output_o\ : std_logic;
SIGNAL \DX2[3]~output_o\ : std_logic;
SIGNAL \DX[0]~output_o\ : std_logic;
SIGNAL \DX[1]~output_o\ : std_logic;
SIGNAL \DX[2]~output_o\ : std_logic;
SIGNAL \DX[3]~output_o\ : std_logic;
SIGNAL \DX[4]~output_o\ : std_logic;
SIGNAL \DX[5]~output_o\ : std_logic;
SIGNAL \DX[6]~output_o\ : std_logic;
SIGNAL \DX[7]~output_o\ : std_logic;
SIGNAL \NB[0]~output_o\ : std_logic;
SIGNAL \NB[1]~output_o\ : std_logic;
SIGNAL \NB[2]~output_o\ : std_logic;
SIGNAL \NB[3]~output_o\ : std_logic;
SIGNAL \NB[4]~output_o\ : std_logic;
SIGNAL \NB[5]~output_o\ : std_logic;
SIGNAL \NB[6]~output_o\ : std_logic;
SIGNAL \NB[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \NBT[5]~8_combout\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \COUNT[0]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \NBT[1]~3_combout\ : std_logic;
SIGNAL \NBT[5]~9_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \NBT[6]~10_combout\ : std_logic;
SIGNAL \NBT[6]~11_combout\ : std_logic;
SIGNAL \NBT~1_combout\ : std_logic;
SIGNAL \NBT[1]~2_combout\ : std_logic;
SIGNAL \NBT[1]~4_combout\ : std_logic;
SIGNAL \NBT[3]~6_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \NBT~0_combout\ : std_logic;
SIGNAL \NBT~5_combout\ : std_logic;
SIGNAL \NBT[4]~7_combout\ : std_logic;
SIGNAL \DXT[5]~10_combout\ : std_logic;
SIGNAL \DXT[1]~3_combout\ : std_logic;
SIGNAL \DXT[5]~11_combout\ : std_logic;
SIGNAL \DXT~1_combout\ : std_logic;
SIGNAL \DXT[3]~7_combout\ : std_logic;
SIGNAL \DXT[3]~8_combout\ : std_logic;
SIGNAL \DXT[1]~2_combout\ : std_logic;
SIGNAL \DXT[1]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \DXT[6]~13_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \DXT~0_combout\ : std_logic;
SIGNAL \DXT~5_combout\ : std_logic;
SIGNAL \DXT[4]~9_combout\ : std_logic;
SIGNAL NBT : std_logic_vector(7 DOWNTO 0);
SIGNAL DXT : std_logic_vector(7 DOWNTO 0);
SIGNAL COUNT : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL ALT_INV_DXT : std_logic_vector(0 DOWNTO 0);
SIGNAL ALT_INV_NBT : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_EN <= EN;
ww_S <= S;
NB1 <= ww_NB1;
NB2 <= ww_NB2;
DX1 <= ww_DX1;
DX2 <= ww_DX2;
DX <= ww_DX;
NB <= ww_NB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
ALT_INV_DXT(0) <= NOT DXT(0);
ALT_INV_NBT(0) <= NOT NBT(0);

-- Location: FF_X30_Y19_N7
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

-- Location: LCCOMB_X29_Y19_N8
\Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!NBT(2) & (!NBT(1) & NBT(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NBT(2),
	datab => NBT(1),
	datac => NBT(0),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X31_Y19_N6
\DXT[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[3]~6_combout\ = (DXT(2)) # ((!\S[1]~input_o\ & (\S[0]~input_o\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => DXT(2),
	datad => \Equal2~1_combout\,
	combout => \DXT[3]~6_combout\);

-- Location: LCCOMB_X31_Y19_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = DXT(6) $ (((DXT(5)) # (DXT(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DXT(5),
	datac => DXT(6),
	datad => DXT(4),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X31_Y19_N30
\DXT[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[6]~12_combout\ = (\Equal2~1_combout\ & (((!\S[0]~input_o\)) # (!\S[1]~input_o\))) # (!\Equal2~1_combout\ & (((!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \Add1~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \DXT[6]~12_combout\);

-- Location: LCCOMB_X30_Y19_N6
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

-- Location: IOOBUF_X34_Y17_N23
\NB1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_NBT(0),
	devoe => ww_devoe,
	o => \NB1[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\NB1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(1),
	devoe => ww_devoe,
	o => \NB1[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\NB1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(2),
	devoe => ww_devoe,
	o => \NB1[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\NB1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(3),
	devoe => ww_devoe,
	o => \NB1[3]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\NB2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(4),
	devoe => ww_devoe,
	o => \NB2[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\NB2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(5),
	devoe => ww_devoe,
	o => \NB2[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\NB2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(6),
	devoe => ww_devoe,
	o => \NB2[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\NB2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \NB2[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\DX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_DXT(0),
	devoe => ww_devoe,
	o => \DX1[0]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\DX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(1),
	devoe => ww_devoe,
	o => \DX1[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\DX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(2),
	devoe => ww_devoe,
	o => \DX1[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\DX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(3),
	devoe => ww_devoe,
	o => \DX1[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\DX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(4),
	devoe => ww_devoe,
	o => \DX2[0]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\DX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(5),
	devoe => ww_devoe,
	o => \DX2[1]~output_o\);

-- Location: IOOBUF_X34_Y16_N9
\DX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(6),
	devoe => ww_devoe,
	o => \DX2[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\DX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DX2[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\DX[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_DXT(0),
	devoe => ww_devoe,
	o => \DX[0]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\DX[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(1),
	devoe => ww_devoe,
	o => \DX[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\DX[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(2),
	devoe => ww_devoe,
	o => \DX[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\DX[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(3),
	devoe => ww_devoe,
	o => \DX[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\DX[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(4),
	devoe => ww_devoe,
	o => \DX[4]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\DX[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(5),
	devoe => ww_devoe,
	o => \DX[5]~output_o\);

-- Location: IOOBUF_X34_Y16_N2
\DX[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DXT(6),
	devoe => ww_devoe,
	o => \DX[6]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\DX[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DX[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\NB[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_NBT(0),
	devoe => ww_devoe,
	o => \NB[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\NB[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(1),
	devoe => ww_devoe,
	o => \NB[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\NB[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(2),
	devoe => ww_devoe,
	o => \NB[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\NB[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(3),
	devoe => ww_devoe,
	o => \NB[3]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\NB[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(4),
	devoe => ww_devoe,
	o => \NB[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\NB[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(5),
	devoe => ww_devoe,
	o => \NB[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\NB[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => NBT(6),
	devoe => ww_devoe,
	o => \NB[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\NB[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \NB[7]~output_o\);

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

-- Location: LCCOMB_X29_Y19_N6
\NBT[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[5]~8_combout\ = (\Equal4~1_combout\ & (((\S[1]~input_o\)))) # (!\Equal4~1_combout\ & (NBT(4) $ (((!NBT(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NBT(4),
	datab => \S[1]~input_o\,
	datac => NBT(5),
	datad => \Equal4~1_combout\,
	combout => \NBT[5]~8_combout\);

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

-- Location: LCCOMB_X30_Y19_N24
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

-- Location: IOIBUF_X34_Y17_N1
\EN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X30_Y17_N16
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

-- Location: FF_X30_Y19_N25
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

-- Location: LCCOMB_X30_Y19_N4
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = COUNT(2) $ (((COUNT(1) & COUNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(1),
	datac => COUNT(2),
	datad => COUNT(0),
	combout => \Add0~1_combout\);

-- Location: FF_X30_Y19_N5
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

-- Location: LCCOMB_X30_Y19_N26
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = COUNT(3) $ (((COUNT(1) & (COUNT(2) & COUNT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(1),
	datab => COUNT(2),
	datac => COUNT(3),
	datad => COUNT(0),
	combout => \Add0~0_combout\);

-- Location: FF_X30_Y19_N27
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

-- Location: LCCOMB_X30_Y19_N18
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!COUNT(1) & (!COUNT(2) & (!COUNT(3) & !COUNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(1),
	datab => COUNT(2),
	datac => COUNT(3),
	datad => COUNT(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y19_N16
\NBT[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[1]~3_combout\ = (\Equal1~0_combout\ & (((!\Equal4~1_combout\) # (!\S[0]~input_o\)) # (!\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \Equal4~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \NBT[1]~3_combout\);

-- Location: LCCOMB_X30_Y19_N30
\NBT[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[5]~9_combout\ = (\Equal4~0_combout\ & ((\NBT[1]~3_combout\ & (\NBT[5]~8_combout\)) # (!\NBT[1]~3_combout\ & ((NBT(5)))))) # (!\Equal4~0_combout\ & (((NBT(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \NBT[5]~8_combout\,
	datac => NBT(5),
	datad => \NBT[1]~3_combout\,
	combout => \NBT[5]~9_combout\);

-- Location: FF_X30_Y19_N31
\NBT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \NBT[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NBT(5));

-- Location: LCCOMB_X29_Y19_N24
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = NBT(6) $ (((NBT(4)) # (NBT(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NBT(4),
	datab => NBT(6),
	datac => NBT(5),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X29_Y19_N22
\NBT[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[6]~10_combout\ = (\Equal4~1_combout\ & (((\S[1]~input_o\)) # (!\S[0]~input_o\))) # (!\Equal4~1_combout\ & (((!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \Add3~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \NBT[6]~10_combout\);

-- Location: LCCOMB_X30_Y19_N12
\NBT[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[6]~11_combout\ = (\Equal4~0_combout\ & ((\NBT[1]~3_combout\ & (\NBT[6]~10_combout\)) # (!\NBT[1]~3_combout\ & ((NBT(6)))))) # (!\Equal4~0_combout\ & (((NBT(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \NBT[6]~10_combout\,
	datac => NBT(6),
	datad => \NBT[1]~3_combout\,
	combout => \NBT[6]~11_combout\);

-- Location: FF_X30_Y19_N13
\NBT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \NBT[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NBT(6));

-- Location: LCCOMB_X29_Y19_N28
\NBT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT~1_combout\ = (\Equal4~1_combout\ & ((\S[0]~input_o\) # (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datad => \Equal4~1_combout\,
	combout => \NBT~1_combout\);

-- Location: LCCOMB_X29_Y19_N30
\NBT[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[1]~2_combout\ = (\Equal4~0_combout\ & (((\NBT~1_combout\)))) # (!\Equal4~0_combout\ & (NBT(0) $ ((NBT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NBT(0),
	datab => \Equal4~0_combout\,
	datac => NBT(1),
	datad => \NBT~1_combout\,
	combout => \NBT[1]~2_combout\);

-- Location: LCCOMB_X30_Y19_N0
\NBT[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[1]~4_combout\ = (\NBT[1]~3_combout\ & ((\NBT[1]~2_combout\))) # (!\NBT[1]~3_combout\ & (NBT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NBT[1]~3_combout\,
	datac => NBT(1),
	datad => \NBT[1]~2_combout\,
	combout => \NBT[1]~4_combout\);

-- Location: FF_X30_Y19_N1
\NBT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \NBT[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NBT(1));

-- Location: LCCOMB_X30_Y19_N2
\NBT[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[3]~6_combout\ = (\Equal4~2_combout\ & ((NBT(3) & ((!\NBT[1]~3_combout\))) # (!NBT(3) & (!\NBT~1_combout\ & \NBT[1]~3_combout\)))) # (!\Equal4~2_combout\ & (((NBT(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \NBT~1_combout\,
	datac => NBT(3),
	datad => \NBT[1]~3_combout\,
	combout => \NBT[3]~6_combout\);

-- Location: FF_X30_Y19_N3
\NBT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \NBT[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NBT(3));

-- Location: LCCOMB_X29_Y19_N16
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!NBT(2) & (NBT(0) & (!NBT(1) & !NBT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NBT(2),
	datab => NBT(0),
	datac => NBT(1),
	datad => NBT(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X29_Y19_N10
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!NBT(4) & (!NBT(6) & (!NBT(5) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NBT(4),
	datab => NBT(6),
	datac => NBT(5),
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X29_Y19_N4
\NBT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT~0_combout\ = ((\Equal4~1_combout\ & ((\S[0]~input_o\) # (\S[1]~input_o\)))) # (!NBT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => NBT(0),
	datad => \Equal4~1_combout\,
	combout => \NBT~0_combout\);

-- Location: FF_X29_Y19_N5
\NBT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \NBT~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NBT(0));

-- Location: LCCOMB_X29_Y19_N26
\NBT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT~5_combout\ = (NBT(0) & ((NBT(1) & (NBT(2))) # (!NBT(1) & (!NBT(2) & NBT(3))))) # (!NBT(0) & (((NBT(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NBT(0),
	datab => NBT(1),
	datac => NBT(2),
	datad => NBT(3),
	combout => \NBT~5_combout\);

-- Location: FF_X29_Y19_N27
\NBT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \NBT~5_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NBT(2));

-- Location: LCCOMB_X30_Y19_N20
\NBT[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NBT[4]~7_combout\ = (\Equal4~0_combout\ & ((NBT(4) & ((!\NBT[1]~3_combout\))) # (!NBT(4) & (!\NBT~1_combout\ & \NBT[1]~3_combout\)))) # (!\Equal4~0_combout\ & (((NBT(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \NBT~1_combout\,
	datac => NBT(4),
	datad => \NBT[1]~3_combout\,
	combout => \NBT[4]~7_combout\);

-- Location: FF_X30_Y19_N21
\NBT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \NBT[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NBT(4));

-- Location: LCCOMB_X31_Y19_N26
\DXT[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[5]~10_combout\ = (\Equal2~1_combout\ & (((!\S[1]~input_o\)))) # (!\Equal2~1_combout\ & (DXT(4) $ ((!DXT(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DXT(4),
	datab => DXT(5),
	datac => \S[1]~input_o\,
	datad => \Equal2~1_combout\,
	combout => \DXT[5]~10_combout\);

-- Location: LCCOMB_X30_Y19_N10
\DXT[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[1]~3_combout\ = (\Equal1~0_combout\ & ((\S[1]~input_o\) # ((!\Equal2~1_combout\) # (!\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \Equal2~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \DXT[1]~3_combout\);

-- Location: LCCOMB_X30_Y19_N22
\DXT[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[5]~11_combout\ = (\Equal2~0_combout\ & ((\DXT[1]~3_combout\ & (\DXT[5]~10_combout\)) # (!\DXT[1]~3_combout\ & ((DXT(5)))))) # (!\Equal2~0_combout\ & (((DXT(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \DXT[5]~10_combout\,
	datac => DXT(5),
	datad => \DXT[1]~3_combout\,
	combout => \DXT[5]~11_combout\);

-- Location: FF_X30_Y19_N23
\DXT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \DXT[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DXT(5));

-- Location: LCCOMB_X31_Y19_N10
\DXT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT~1_combout\ = (\Equal2~1_combout\ & ((\S[0]~input_o\) # (!\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \Equal2~1_combout\,
	combout => \DXT~1_combout\);

-- Location: LCCOMB_X31_Y19_N24
\DXT[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[3]~7_combout\ = (DXT(1) & (DXT(3))) # (!DXT(1) & ((DXT(3) & (!DXT(0))) # (!DXT(3) & (DXT(0) & !\DXT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DXT(1),
	datab => DXT(3),
	datac => DXT(0),
	datad => \DXT~1_combout\,
	combout => \DXT[3]~7_combout\);

-- Location: LCCOMB_X31_Y19_N16
\DXT[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[3]~8_combout\ = (\DXT[3]~6_combout\ & (((DXT(3))))) # (!\DXT[3]~6_combout\ & ((\Equal1~0_combout\ & ((\DXT[3]~7_combout\))) # (!\Equal1~0_combout\ & (DXT(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DXT[3]~6_combout\,
	datab => \Equal1~0_combout\,
	datac => DXT(3),
	datad => \DXT[3]~7_combout\,
	combout => \DXT[3]~8_combout\);

-- Location: FF_X31_Y19_N17
\DXT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \DXT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DXT(3));

-- Location: LCCOMB_X31_Y19_N28
\DXT[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[1]~2_combout\ = (\Equal2~0_combout\ & (((\DXT~1_combout\)))) # (!\Equal2~0_combout\ & (DXT(1) $ ((DXT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DXT(1),
	datab => \Equal2~0_combout\,
	datac => DXT(0),
	datad => \DXT~1_combout\,
	combout => \DXT[1]~2_combout\);

-- Location: LCCOMB_X30_Y19_N14
\DXT[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[1]~4_combout\ = (\DXT[1]~3_combout\ & ((\DXT[1]~2_combout\))) # (!\DXT[1]~3_combout\ & (DXT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DXT[1]~3_combout\,
	datac => DXT(1),
	datad => \DXT[1]~2_combout\,
	combout => \DXT[1]~4_combout\);

-- Location: FF_X30_Y19_N15
\DXT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \DXT[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DXT(1));

-- Location: LCCOMB_X31_Y19_N18
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!DXT(2) & (!DXT(3) & (DXT(0) & !DXT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DXT(2),
	datab => DXT(3),
	datac => DXT(0),
	datad => DXT(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X30_Y19_N28
\DXT[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[6]~13_combout\ = (\Equal2~0_combout\ & ((\DXT[1]~3_combout\ & (\DXT[6]~12_combout\)) # (!\DXT[1]~3_combout\ & ((DXT(6)))))) # (!\Equal2~0_combout\ & (((DXT(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DXT[6]~12_combout\,
	datab => \Equal2~0_combout\,
	datac => DXT(6),
	datad => \DXT[1]~3_combout\,
	combout => \DXT[6]~13_combout\);

-- Location: FF_X30_Y19_N29
\DXT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \DXT[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DXT(6));

-- Location: LCCOMB_X31_Y19_N20
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!DXT(4) & (!DXT(5) & (!DXT(6) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DXT(4),
	datab => DXT(5),
	datac => DXT(6),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X31_Y19_N8
\DXT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT~0_combout\ = (\Equal2~1_combout\ & (((\S[0]~input_o\)) # (!\S[1]~input_o\))) # (!\Equal2~1_combout\ & (((!DXT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => DXT(0),
	datad => \Equal2~1_combout\,
	combout => \DXT~0_combout\);

-- Location: FF_X31_Y19_N9
\DXT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \DXT~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DXT(0));

-- Location: LCCOMB_X31_Y19_N22
\DXT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT~5_combout\ = (DXT(1) & (((DXT(2))))) # (!DXT(1) & ((DXT(0) & (!DXT(2) & DXT(3))) # (!DXT(0) & (DXT(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DXT(1),
	datab => DXT(0),
	datac => DXT(2),
	datad => DXT(3),
	combout => \DXT~5_combout\);

-- Location: FF_X31_Y19_N23
\DXT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \DXT~5_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DXT(2));

-- Location: LCCOMB_X30_Y19_N8
\DXT[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DXT[4]~9_combout\ = (\Equal2~0_combout\ & ((DXT(4) & ((!\DXT[1]~3_combout\))) # (!DXT(4) & (!\DXT~1_combout\ & \DXT[1]~3_combout\)))) # (!\Equal2~0_combout\ & (((DXT(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \DXT~1_combout\,
	datac => DXT(4),
	datad => \DXT[1]~3_combout\,
	combout => \DXT[4]~9_combout\);

-- Location: FF_X30_Y19_N9
\DXT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \DXT[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DXT(4));

ww_NB1(0) <= \NB1[0]~output_o\;

ww_NB1(1) <= \NB1[1]~output_o\;

ww_NB1(2) <= \NB1[2]~output_o\;

ww_NB1(3) <= \NB1[3]~output_o\;

ww_NB2(0) <= \NB2[0]~output_o\;

ww_NB2(1) <= \NB2[1]~output_o\;

ww_NB2(2) <= \NB2[2]~output_o\;

ww_NB2(3) <= \NB2[3]~output_o\;

ww_DX1(0) <= \DX1[0]~output_o\;

ww_DX1(1) <= \DX1[1]~output_o\;

ww_DX1(2) <= \DX1[2]~output_o\;

ww_DX1(3) <= \DX1[3]~output_o\;

ww_DX2(0) <= \DX2[0]~output_o\;

ww_DX2(1) <= \DX2[1]~output_o\;

ww_DX2(2) <= \DX2[2]~output_o\;

ww_DX2(3) <= \DX2[3]~output_o\;

ww_DX(0) <= \DX[0]~output_o\;

ww_DX(1) <= \DX[1]~output_o\;

ww_DX(2) <= \DX[2]~output_o\;

ww_DX(3) <= \DX[3]~output_o\;

ww_DX(4) <= \DX[4]~output_o\;

ww_DX(5) <= \DX[5]~output_o\;

ww_DX(6) <= \DX[6]~output_o\;

ww_DX(7) <= \DX[7]~output_o\;

ww_NB(0) <= \NB[0]~output_o\;

ww_NB(1) <= \NB[1]~output_o\;

ww_NB(2) <= \NB[2]~output_o\;

ww_NB(3) <= \NB[3]~output_o\;

ww_NB(4) <= \NB[4]~output_o\;

ww_NB(5) <= \NB[5]~output_o\;

ww_NB(6) <= \NB[6]~output_o\;

ww_NB(7) <= \NB[7]~output_o\;
END structure;


