-- Copyright (C) 1991-2014 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Full Version"

-- DATE "09/04/2018 18:09:35"

-- 
-- Device: Altera EP3SE50F780C2 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY IEEE;
LIBRARY STRATIXIII;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXIII.STRATIXIII_COMPONENTS.ALL;

ENTITY 	mp0 IS
    PORT (
	clk : IN std_logic;
	mem_resp : IN std_logic;
	mem_rdata : IN std_logic_vector(31 DOWNTO 0);
	mem_read : OUT std_logic;
	mem_write : OUT std_logic;
	mem_byte_enable : OUT std_logic_vector(3 DOWNTO 0);
	mem_address : OUT std_logic_vector(31 DOWNTO 0);
	mem_wdata : OUT std_logic_vector(31 DOWNTO 0)
	);
END mp0;

-- Design Ports Information
-- mem_rdata[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[1]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[4]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[6]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[8]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[9]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[10]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[13]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[16]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[17]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[18]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[19]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[20]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[21]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[22]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[23]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[24]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[25]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[26]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[27]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[28]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[29]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[30]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rdata[31]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_byte_enable[0]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_byte_enable[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_byte_enable[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_byte_enable[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[0]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[1]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[2]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[4]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[7]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[8]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[9]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[11]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[13]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[14]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[15]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[16]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[17]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[18]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[19]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[20]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[21]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[22]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[23]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[24]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[25]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[26]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[27]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[28]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[29]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[30]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[31]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[0]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[1]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[3]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[4]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[7]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[8]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[9]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[11]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[13]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[15]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[16]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[17]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[18]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[19]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[20]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[21]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[22]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[23]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[24]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[25]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[26]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[27]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[28]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[29]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[30]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_wdata[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_resp	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mp0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mem_resp : std_logic;
SIGNAL ww_mem_rdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mem_read : std_logic;
SIGNAL ww_mem_write : std_logic;
SIGNAL ww_mem_byte_enable : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mem_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mem_wdata : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem_rdata[0]~input_o\ : std_logic;
SIGNAL \mem_rdata[1]~input_o\ : std_logic;
SIGNAL \mem_rdata[2]~input_o\ : std_logic;
SIGNAL \mem_rdata[3]~input_o\ : std_logic;
SIGNAL \mem_rdata[4]~input_o\ : std_logic;
SIGNAL \mem_rdata[5]~input_o\ : std_logic;
SIGNAL \mem_rdata[6]~input_o\ : std_logic;
SIGNAL \mem_rdata[7]~input_o\ : std_logic;
SIGNAL \mem_rdata[8]~input_o\ : std_logic;
SIGNAL \mem_rdata[9]~input_o\ : std_logic;
SIGNAL \mem_rdata[10]~input_o\ : std_logic;
SIGNAL \mem_rdata[11]~input_o\ : std_logic;
SIGNAL \mem_rdata[12]~input_o\ : std_logic;
SIGNAL \mem_rdata[13]~input_o\ : std_logic;
SIGNAL \mem_rdata[14]~input_o\ : std_logic;
SIGNAL \mem_rdata[15]~input_o\ : std_logic;
SIGNAL \mem_rdata[16]~input_o\ : std_logic;
SIGNAL \mem_rdata[17]~input_o\ : std_logic;
SIGNAL \mem_rdata[18]~input_o\ : std_logic;
SIGNAL \mem_rdata[19]~input_o\ : std_logic;
SIGNAL \mem_rdata[20]~input_o\ : std_logic;
SIGNAL \mem_rdata[21]~input_o\ : std_logic;
SIGNAL \mem_rdata[22]~input_o\ : std_logic;
SIGNAL \mem_rdata[23]~input_o\ : std_logic;
SIGNAL \mem_rdata[24]~input_o\ : std_logic;
SIGNAL \mem_rdata[25]~input_o\ : std_logic;
SIGNAL \mem_rdata[26]~input_o\ : std_logic;
SIGNAL \mem_rdata[27]~input_o\ : std_logic;
SIGNAL \mem_rdata[28]~input_o\ : std_logic;
SIGNAL \mem_rdata[29]~input_o\ : std_logic;
SIGNAL \mem_rdata[30]~input_o\ : std_logic;
SIGNAL \mem_rdata[31]~input_o\ : std_logic;
SIGNAL \mem_read~output_o\ : std_logic;
SIGNAL \mem_write~output_o\ : std_logic;
SIGNAL \mem_byte_enable[0]~output_o\ : std_logic;
SIGNAL \mem_byte_enable[1]~output_o\ : std_logic;
SIGNAL \mem_byte_enable[2]~output_o\ : std_logic;
SIGNAL \mem_byte_enable[3]~output_o\ : std_logic;
SIGNAL \mem_address[0]~output_o\ : std_logic;
SIGNAL \mem_address[1]~output_o\ : std_logic;
SIGNAL \mem_address[2]~output_o\ : std_logic;
SIGNAL \mem_address[3]~output_o\ : std_logic;
SIGNAL \mem_address[4]~output_o\ : std_logic;
SIGNAL \mem_address[5]~output_o\ : std_logic;
SIGNAL \mem_address[6]~output_o\ : std_logic;
SIGNAL \mem_address[7]~output_o\ : std_logic;
SIGNAL \mem_address[8]~output_o\ : std_logic;
SIGNAL \mem_address[9]~output_o\ : std_logic;
SIGNAL \mem_address[10]~output_o\ : std_logic;
SIGNAL \mem_address[11]~output_o\ : std_logic;
SIGNAL \mem_address[12]~output_o\ : std_logic;
SIGNAL \mem_address[13]~output_o\ : std_logic;
SIGNAL \mem_address[14]~output_o\ : std_logic;
SIGNAL \mem_address[15]~output_o\ : std_logic;
SIGNAL \mem_address[16]~output_o\ : std_logic;
SIGNAL \mem_address[17]~output_o\ : std_logic;
SIGNAL \mem_address[18]~output_o\ : std_logic;
SIGNAL \mem_address[19]~output_o\ : std_logic;
SIGNAL \mem_address[20]~output_o\ : std_logic;
SIGNAL \mem_address[21]~output_o\ : std_logic;
SIGNAL \mem_address[22]~output_o\ : std_logic;
SIGNAL \mem_address[23]~output_o\ : std_logic;
SIGNAL \mem_address[24]~output_o\ : std_logic;
SIGNAL \mem_address[25]~output_o\ : std_logic;
SIGNAL \mem_address[26]~output_o\ : std_logic;
SIGNAL \mem_address[27]~output_o\ : std_logic;
SIGNAL \mem_address[28]~output_o\ : std_logic;
SIGNAL \mem_address[29]~output_o\ : std_logic;
SIGNAL \mem_address[30]~output_o\ : std_logic;
SIGNAL \mem_address[31]~output_o\ : std_logic;
SIGNAL \mem_wdata[0]~output_o\ : std_logic;
SIGNAL \mem_wdata[1]~output_o\ : std_logic;
SIGNAL \mem_wdata[2]~output_o\ : std_logic;
SIGNAL \mem_wdata[3]~output_o\ : std_logic;
SIGNAL \mem_wdata[4]~output_o\ : std_logic;
SIGNAL \mem_wdata[5]~output_o\ : std_logic;
SIGNAL \mem_wdata[6]~output_o\ : std_logic;
SIGNAL \mem_wdata[7]~output_o\ : std_logic;
SIGNAL \mem_wdata[8]~output_o\ : std_logic;
SIGNAL \mem_wdata[9]~output_o\ : std_logic;
SIGNAL \mem_wdata[10]~output_o\ : std_logic;
SIGNAL \mem_wdata[11]~output_o\ : std_logic;
SIGNAL \mem_wdata[12]~output_o\ : std_logic;
SIGNAL \mem_wdata[13]~output_o\ : std_logic;
SIGNAL \mem_wdata[14]~output_o\ : std_logic;
SIGNAL \mem_wdata[15]~output_o\ : std_logic;
SIGNAL \mem_wdata[16]~output_o\ : std_logic;
SIGNAL \mem_wdata[17]~output_o\ : std_logic;
SIGNAL \mem_wdata[18]~output_o\ : std_logic;
SIGNAL \mem_wdata[19]~output_o\ : std_logic;
SIGNAL \mem_wdata[20]~output_o\ : std_logic;
SIGNAL \mem_wdata[21]~output_o\ : std_logic;
SIGNAL \mem_wdata[22]~output_o\ : std_logic;
SIGNAL \mem_wdata[23]~output_o\ : std_logic;
SIGNAL \mem_wdata[24]~output_o\ : std_logic;
SIGNAL \mem_wdata[25]~output_o\ : std_logic;
SIGNAL \mem_wdata[26]~output_o\ : std_logic;
SIGNAL \mem_wdata[27]~output_o\ : std_logic;
SIGNAL \mem_wdata[28]~output_o\ : std_logic;
SIGNAL \mem_wdata[29]~output_o\ : std_logic;
SIGNAL \mem_wdata[30]~output_o\ : std_logic;
SIGNAL \mem_wdata[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \mem_resp~input_o\ : std_logic;
SIGNAL \control|state.fetch1~feeder_combout\ : std_logic;
SIGNAL \control|state.fetch1~q\ : std_logic;
SIGNAL \control|Selector12~0_combout\ : std_logic;
SIGNAL \control|state.fetch2~q\ : std_logic;
SIGNAL \ALT_INV_mem_resp~input_o\ : std_logic;
SIGNAL \control|ALT_INV_state.fetch1~q\ : std_logic;
SIGNAL \control|ALT_INV_state.fetch2~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mem_resp <= mem_resp;
ww_mem_rdata <= mem_rdata;
mem_read <= ww_mem_read;
mem_write <= ww_mem_write;
mem_byte_enable <= ww_mem_byte_enable;
mem_address <= ww_mem_address;
mem_wdata <= ww_mem_wdata;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_mem_resp~input_o\ <= NOT \mem_resp~input_o\;
\control|ALT_INV_state.fetch1~q\ <= NOT \control|state.fetch1~q\;
\control|ALT_INV_state.fetch2~q\ <= NOT \control|state.fetch2~q\;

-- Location: IOOBUF_X0_Y43_N82
\mem_read~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \control|state.fetch2~q\,
	devoe => ww_devoe,
	o => \mem_read~output_o\);

-- Location: IOOBUF_X9_Y51_N51
\mem_write~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_write~output_o\);

-- Location: IOOBUF_X11_Y0_N82
\mem_byte_enable[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mem_byte_enable[0]~output_o\);

-- Location: IOOBUF_X53_Y44_N82
\mem_byte_enable[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mem_byte_enable[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N82
\mem_byte_enable[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mem_byte_enable[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N82
\mem_byte_enable[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mem_byte_enable[3]~output_o\);

-- Location: IOOBUF_X41_Y0_N82
\mem_address[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N113
\mem_address[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N113
\mem_address[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[2]~output_o\);

-- Location: IOOBUF_X19_Y51_N82
\mem_address[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N113
\mem_address[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[4]~output_o\);

-- Location: IOOBUF_X44_Y51_N20
\mem_address[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[5]~output_o\);

-- Location: IOOBUF_X15_Y51_N64
\mem_address[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[6]~output_o\);

-- Location: IOOBUF_X53_Y8_N113
\mem_address[7]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N33
\mem_address[8]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[8]~output_o\);

-- Location: IOOBUF_X36_Y0_N95
\mem_address[9]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[9]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\mem_address[10]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N64
\mem_address[11]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[11]~output_o\);

-- Location: IOOBUF_X31_Y51_N113
\mem_address[12]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N82
\mem_address[13]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N20
\mem_address[14]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N51
\mem_address[15]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[15]~output_o\);

-- Location: IOOBUF_X15_Y51_N95
\mem_address[16]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[16]~output_o\);

-- Location: IOOBUF_X10_Y51_N82
\mem_address[17]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[17]~output_o\);

-- Location: IOOBUF_X21_Y51_N33
\mem_address[18]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[18]~output_o\);

-- Location: IOOBUF_X44_Y51_N113
\mem_address[19]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[19]~output_o\);

-- Location: IOOBUF_X40_Y51_N113
\mem_address[20]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[20]~output_o\);

-- Location: IOOBUF_X0_Y30_N82
\mem_address[21]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[21]~output_o\);

-- Location: IOOBUF_X0_Y43_N113
\mem_address[22]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[22]~output_o\);

-- Location: IOOBUF_X49_Y51_N82
\mem_address[23]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[23]~output_o\);

-- Location: IOOBUF_X0_Y38_N20
\mem_address[24]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[24]~output_o\);

-- Location: IOOBUF_X36_Y51_N33
\mem_address[25]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[25]~output_o\);

-- Location: IOOBUF_X38_Y51_N82
\mem_address[26]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[26]~output_o\);

-- Location: IOOBUF_X29_Y51_N95
\mem_address[27]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[27]~output_o\);

-- Location: IOOBUF_X0_Y29_N33
\mem_address[28]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[28]~output_o\);

-- Location: IOOBUF_X0_Y36_N33
\mem_address[29]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[29]~output_o\);

-- Location: IOOBUF_X0_Y9_N20
\mem_address[30]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[30]~output_o\);

-- Location: IOOBUF_X48_Y51_N20
\mem_address[31]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[31]~output_o\);

-- Location: IOOBUF_X0_Y45_N2
\mem_wdata[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N51
\mem_wdata[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[1]~output_o\);

-- Location: IOOBUF_X21_Y51_N95
\mem_wdata[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N82
\mem_wdata[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[3]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\mem_wdata[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N51
\mem_wdata[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N51
\mem_wdata[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N95
\mem_wdata[7]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N51
\mem_wdata[8]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[8]~output_o\);

-- Location: IOOBUF_X0_Y42_N20
\mem_wdata[9]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[9]~output_o\);

-- Location: IOOBUF_X48_Y0_N51
\mem_wdata[10]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\mem_wdata[11]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[11]~output_o\);

-- Location: IOOBUF_X41_Y51_N20
\mem_wdata[12]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[12]~output_o\);

-- Location: IOOBUF_X31_Y51_N20
\mem_wdata[13]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[13]~output_o\);

-- Location: IOOBUF_X20_Y51_N95
\mem_wdata[14]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[14]~output_o\);

-- Location: IOOBUF_X0_Y19_N20
\mem_wdata[15]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[15]~output_o\);

-- Location: IOOBUF_X10_Y51_N113
\mem_wdata[16]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[16]~output_o\);

-- Location: IOOBUF_X28_Y0_N95
\mem_wdata[17]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[17]~output_o\);

-- Location: IOOBUF_X0_Y31_N51
\mem_wdata[18]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[18]~output_o\);

-- Location: IOOBUF_X9_Y0_N82
\mem_wdata[19]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[19]~output_o\);

-- Location: IOOBUF_X9_Y0_N51
\mem_wdata[20]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[20]~output_o\);

-- Location: IOOBUF_X22_Y0_N64
\mem_wdata[21]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[21]~output_o\);

-- Location: IOOBUF_X10_Y0_N51
\mem_wdata[22]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[22]~output_o\);

-- Location: IOOBUF_X19_Y51_N20
\mem_wdata[23]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[23]~output_o\);

-- Location: IOOBUF_X42_Y0_N51
\mem_wdata[24]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[24]~output_o\);

-- Location: IOOBUF_X53_Y19_N82
\mem_wdata[25]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[25]~output_o\);

-- Location: IOOBUF_X11_Y0_N51
\mem_wdata[26]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[26]~output_o\);

-- Location: IOOBUF_X0_Y22_N95
\mem_wdata[27]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[27]~output_o\);

-- Location: IOOBUF_X0_Y35_N20
\mem_wdata[28]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[28]~output_o\);

-- Location: IOOBUF_X19_Y51_N51
\mem_wdata[29]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[29]~output_o\);

-- Location: IOOBUF_X53_Y14_N95
\mem_wdata[30]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[30]~output_o\);

-- Location: IOOBUF_X21_Y51_N64
\mem_wdata[31]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_wdata[31]~output_o\);

-- Location: IOIBUF_X0_Y28_N1
\clk~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : stratixiii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y43_N1
\mem_resp~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_resp,
	o => \mem_resp~input_o\);

-- Location: MLABCELL_X1_Y43_N6
\control|state.fetch1~feeder\ : stratixiii_lcell_comb
-- Equation(s):
-- \control|state.fetch1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \control|state.fetch1~feeder_combout\);

-- Location: FF_X1_Y43_N7
\control|state.fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|state.fetch1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.fetch1~q\);

-- Location: MLABCELL_X1_Y43_N0
\control|Selector12~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \control|Selector12~0_combout\ = ( \control|state.fetch2~q\ & ( \control|state.fetch1~q\ & ( !\mem_resp~input_o\ ) ) ) # ( \control|state.fetch2~q\ & ( !\control|state.fetch1~q\ ) ) # ( !\control|state.fetch2~q\ & ( !\control|state.fetch1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mem_resp~input_o\,
	datae => \control|ALT_INV_state.fetch2~q\,
	dataf => \control|ALT_INV_state.fetch1~q\,
	combout => \control|Selector12~0_combout\);

-- Location: FF_X1_Y43_N1
\control|state.fetch2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.fetch2~q\);

-- Location: IOIBUF_X38_Y51_N1
\mem_rdata[0]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(0),
	o => \mem_rdata[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N32
\mem_rdata[1]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(1),
	o => \mem_rdata[1]~input_o\);

-- Location: IOIBUF_X17_Y0_N1
\mem_rdata[2]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(2),
	o => \mem_rdata[2]~input_o\);

-- Location: IOIBUF_X0_Y16_N94
\mem_rdata[3]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(3),
	o => \mem_rdata[3]~input_o\);

-- Location: IOIBUF_X0_Y39_N32
\mem_rdata[4]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(4),
	o => \mem_rdata[4]~input_o\);

-- Location: IOIBUF_X31_Y51_N63
\mem_rdata[5]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(5),
	o => \mem_rdata[5]~input_o\);

-- Location: IOIBUF_X0_Y23_N32
\mem_rdata[6]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(6),
	o => \mem_rdata[6]~input_o\);

-- Location: IOIBUF_X15_Y0_N63
\mem_rdata[7]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(7),
	o => \mem_rdata[7]~input_o\);

-- Location: IOIBUF_X0_Y38_N94
\mem_rdata[8]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(8),
	o => \mem_rdata[8]~input_o\);

-- Location: IOIBUF_X38_Y0_N63
\mem_rdata[9]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(9),
	o => \mem_rdata[9]~input_o\);

-- Location: IOIBUF_X42_Y0_N63
\mem_rdata[10]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(10),
	o => \mem_rdata[10]~input_o\);

-- Location: IOIBUF_X20_Y51_N63
\mem_rdata[11]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(11),
	o => \mem_rdata[11]~input_o\);

-- Location: IOIBUF_X53_Y34_N63
\mem_rdata[12]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(12),
	o => \mem_rdata[12]~input_o\);

-- Location: IOIBUF_X49_Y51_N94
\mem_rdata[13]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(13),
	o => \mem_rdata[13]~input_o\);

-- Location: IOIBUF_X44_Y51_N32
\mem_rdata[14]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(14),
	o => \mem_rdata[14]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\mem_rdata[15]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(15),
	o => \mem_rdata[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N94
\mem_rdata[16]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(16),
	o => \mem_rdata[16]~input_o\);

-- Location: IOIBUF_X15_Y0_N94
\mem_rdata[17]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(17),
	o => \mem_rdata[17]~input_o\);

-- Location: IOIBUF_X10_Y0_N63
\mem_rdata[18]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(18),
	o => \mem_rdata[18]~input_o\);

-- Location: IOIBUF_X6_Y51_N63
\mem_rdata[19]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(19),
	o => \mem_rdata[19]~input_o\);

-- Location: IOIBUF_X0_Y34_N63
\mem_rdata[20]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(20),
	o => \mem_rdata[20]~input_o\);

-- Location: IOIBUF_X53_Y14_N63
\mem_rdata[21]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(21),
	o => \mem_rdata[21]~input_o\);

-- Location: IOIBUF_X34_Y0_N94
\mem_rdata[22]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(22),
	o => \mem_rdata[22]~input_o\);

-- Location: IOIBUF_X7_Y0_N32
\mem_rdata[23]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(23),
	o => \mem_rdata[23]~input_o\);

-- Location: IOIBUF_X0_Y11_N94
\mem_rdata[24]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(24),
	o => \mem_rdata[24]~input_o\);

-- Location: IOIBUF_X10_Y51_N32
\mem_rdata[25]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(25),
	o => \mem_rdata[25]~input_o\);

-- Location: IOIBUF_X0_Y40_N63
\mem_rdata[26]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(26),
	o => \mem_rdata[26]~input_o\);

-- Location: IOIBUF_X53_Y34_N32
\mem_rdata[27]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(27),
	o => \mem_rdata[27]~input_o\);

-- Location: IOIBUF_X0_Y19_N32
\mem_rdata[28]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(28),
	o => \mem_rdata[28]~input_o\);

-- Location: IOIBUF_X48_Y51_N32
\mem_rdata[29]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(29),
	o => \mem_rdata[29]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\mem_rdata[30]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(30),
	o => \mem_rdata[30]~input_o\);

-- Location: IOIBUF_X17_Y51_N63
\mem_rdata[31]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_rdata(31),
	o => \mem_rdata[31]~input_o\);

ww_mem_read <= \mem_read~output_o\;

ww_mem_write <= \mem_write~output_o\;

ww_mem_byte_enable(0) <= \mem_byte_enable[0]~output_o\;

ww_mem_byte_enable(1) <= \mem_byte_enable[1]~output_o\;

ww_mem_byte_enable(2) <= \mem_byte_enable[2]~output_o\;

ww_mem_byte_enable(3) <= \mem_byte_enable[3]~output_o\;

ww_mem_address(0) <= \mem_address[0]~output_o\;

ww_mem_address(1) <= \mem_address[1]~output_o\;

ww_mem_address(2) <= \mem_address[2]~output_o\;

ww_mem_address(3) <= \mem_address[3]~output_o\;

ww_mem_address(4) <= \mem_address[4]~output_o\;

ww_mem_address(5) <= \mem_address[5]~output_o\;

ww_mem_address(6) <= \mem_address[6]~output_o\;

ww_mem_address(7) <= \mem_address[7]~output_o\;

ww_mem_address(8) <= \mem_address[8]~output_o\;

ww_mem_address(9) <= \mem_address[9]~output_o\;

ww_mem_address(10) <= \mem_address[10]~output_o\;

ww_mem_address(11) <= \mem_address[11]~output_o\;

ww_mem_address(12) <= \mem_address[12]~output_o\;

ww_mem_address(13) <= \mem_address[13]~output_o\;

ww_mem_address(14) <= \mem_address[14]~output_o\;

ww_mem_address(15) <= \mem_address[15]~output_o\;

ww_mem_address(16) <= \mem_address[16]~output_o\;

ww_mem_address(17) <= \mem_address[17]~output_o\;

ww_mem_address(18) <= \mem_address[18]~output_o\;

ww_mem_address(19) <= \mem_address[19]~output_o\;

ww_mem_address(20) <= \mem_address[20]~output_o\;

ww_mem_address(21) <= \mem_address[21]~output_o\;

ww_mem_address(22) <= \mem_address[22]~output_o\;

ww_mem_address(23) <= \mem_address[23]~output_o\;

ww_mem_address(24) <= \mem_address[24]~output_o\;

ww_mem_address(25) <= \mem_address[25]~output_o\;

ww_mem_address(26) <= \mem_address[26]~output_o\;

ww_mem_address(27) <= \mem_address[27]~output_o\;

ww_mem_address(28) <= \mem_address[28]~output_o\;

ww_mem_address(29) <= \mem_address[29]~output_o\;

ww_mem_address(30) <= \mem_address[30]~output_o\;

ww_mem_address(31) <= \mem_address[31]~output_o\;

ww_mem_wdata(0) <= \mem_wdata[0]~output_o\;

ww_mem_wdata(1) <= \mem_wdata[1]~output_o\;

ww_mem_wdata(2) <= \mem_wdata[2]~output_o\;

ww_mem_wdata(3) <= \mem_wdata[3]~output_o\;

ww_mem_wdata(4) <= \mem_wdata[4]~output_o\;

ww_mem_wdata(5) <= \mem_wdata[5]~output_o\;

ww_mem_wdata(6) <= \mem_wdata[6]~output_o\;

ww_mem_wdata(7) <= \mem_wdata[7]~output_o\;

ww_mem_wdata(8) <= \mem_wdata[8]~output_o\;

ww_mem_wdata(9) <= \mem_wdata[9]~output_o\;

ww_mem_wdata(10) <= \mem_wdata[10]~output_o\;

ww_mem_wdata(11) <= \mem_wdata[11]~output_o\;

ww_mem_wdata(12) <= \mem_wdata[12]~output_o\;

ww_mem_wdata(13) <= \mem_wdata[13]~output_o\;

ww_mem_wdata(14) <= \mem_wdata[14]~output_o\;

ww_mem_wdata(15) <= \mem_wdata[15]~output_o\;

ww_mem_wdata(16) <= \mem_wdata[16]~output_o\;

ww_mem_wdata(17) <= \mem_wdata[17]~output_o\;

ww_mem_wdata(18) <= \mem_wdata[18]~output_o\;

ww_mem_wdata(19) <= \mem_wdata[19]~output_o\;

ww_mem_wdata(20) <= \mem_wdata[20]~output_o\;

ww_mem_wdata(21) <= \mem_wdata[21]~output_o\;

ww_mem_wdata(22) <= \mem_wdata[22]~output_o\;

ww_mem_wdata(23) <= \mem_wdata[23]~output_o\;

ww_mem_wdata(24) <= \mem_wdata[24]~output_o\;

ww_mem_wdata(25) <= \mem_wdata[25]~output_o\;

ww_mem_wdata(26) <= \mem_wdata[26]~output_o\;

ww_mem_wdata(27) <= \mem_wdata[27]~output_o\;

ww_mem_wdata(28) <= \mem_wdata[28]~output_o\;

ww_mem_wdata(29) <= \mem_wdata[29]~output_o\;

ww_mem_wdata(30) <= \mem_wdata[30]~output_o\;

ww_mem_wdata(31) <= \mem_wdata[31]~output_o\;
END structure;


