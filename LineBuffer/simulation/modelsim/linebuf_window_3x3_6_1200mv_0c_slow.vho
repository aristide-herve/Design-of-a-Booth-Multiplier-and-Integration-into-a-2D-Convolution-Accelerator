-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "12/24/2025 02:44:14"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	linebuf_window_3x3 IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	pixel_in : IN std_logic_vector(7 DOWNTO 0);
	pixel_valid : IN std_logic;
	w00 : BUFFER std_logic_vector(7 DOWNTO 0);
	w01 : BUFFER std_logic_vector(7 DOWNTO 0);
	w02 : BUFFER std_logic_vector(7 DOWNTO 0);
	w10 : BUFFER std_logic_vector(7 DOWNTO 0);
	w11 : BUFFER std_logic_vector(7 DOWNTO 0);
	w12 : BUFFER std_logic_vector(7 DOWNTO 0);
	w20 : BUFFER std_logic_vector(7 DOWNTO 0);
	w21 : BUFFER std_logic_vector(7 DOWNTO 0);
	w22 : BUFFER std_logic_vector(7 DOWNTO 0);
	window_valid : BUFFER std_logic
	);
END linebuf_window_3x3;

-- Design Ports Information
-- w00[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w00[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w00[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w00[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w00[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w00[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w00[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w00[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[5]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w01[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w02[7]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w10[7]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w11[7]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[4]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w12[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w20[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[5]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w21[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w22[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- window_valid	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_valid	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF linebuf_window_3x3 IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pixel_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pixel_valid : std_logic;
SIGNAL ww_w00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w20 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w21 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w22 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_window_valid : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line0_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \w00[0]~output_o\ : std_logic;
SIGNAL \w00[1]~output_o\ : std_logic;
SIGNAL \w00[2]~output_o\ : std_logic;
SIGNAL \w00[3]~output_o\ : std_logic;
SIGNAL \w00[4]~output_o\ : std_logic;
SIGNAL \w00[5]~output_o\ : std_logic;
SIGNAL \w00[6]~output_o\ : std_logic;
SIGNAL \w00[7]~output_o\ : std_logic;
SIGNAL \w01[0]~output_o\ : std_logic;
SIGNAL \w01[1]~output_o\ : std_logic;
SIGNAL \w01[2]~output_o\ : std_logic;
SIGNAL \w01[3]~output_o\ : std_logic;
SIGNAL \w01[4]~output_o\ : std_logic;
SIGNAL \w01[5]~output_o\ : std_logic;
SIGNAL \w01[6]~output_o\ : std_logic;
SIGNAL \w01[7]~output_o\ : std_logic;
SIGNAL \w02[0]~output_o\ : std_logic;
SIGNAL \w02[1]~output_o\ : std_logic;
SIGNAL \w02[2]~output_o\ : std_logic;
SIGNAL \w02[3]~output_o\ : std_logic;
SIGNAL \w02[4]~output_o\ : std_logic;
SIGNAL \w02[5]~output_o\ : std_logic;
SIGNAL \w02[6]~output_o\ : std_logic;
SIGNAL \w02[7]~output_o\ : std_logic;
SIGNAL \w10[0]~output_o\ : std_logic;
SIGNAL \w10[1]~output_o\ : std_logic;
SIGNAL \w10[2]~output_o\ : std_logic;
SIGNAL \w10[3]~output_o\ : std_logic;
SIGNAL \w10[4]~output_o\ : std_logic;
SIGNAL \w10[5]~output_o\ : std_logic;
SIGNAL \w10[6]~output_o\ : std_logic;
SIGNAL \w10[7]~output_o\ : std_logic;
SIGNAL \w11[0]~output_o\ : std_logic;
SIGNAL \w11[1]~output_o\ : std_logic;
SIGNAL \w11[2]~output_o\ : std_logic;
SIGNAL \w11[3]~output_o\ : std_logic;
SIGNAL \w11[4]~output_o\ : std_logic;
SIGNAL \w11[5]~output_o\ : std_logic;
SIGNAL \w11[6]~output_o\ : std_logic;
SIGNAL \w11[7]~output_o\ : std_logic;
SIGNAL \w12[0]~output_o\ : std_logic;
SIGNAL \w12[1]~output_o\ : std_logic;
SIGNAL \w12[2]~output_o\ : std_logic;
SIGNAL \w12[3]~output_o\ : std_logic;
SIGNAL \w12[4]~output_o\ : std_logic;
SIGNAL \w12[5]~output_o\ : std_logic;
SIGNAL \w12[6]~output_o\ : std_logic;
SIGNAL \w12[7]~output_o\ : std_logic;
SIGNAL \w20[0]~output_o\ : std_logic;
SIGNAL \w20[1]~output_o\ : std_logic;
SIGNAL \w20[2]~output_o\ : std_logic;
SIGNAL \w20[3]~output_o\ : std_logic;
SIGNAL \w20[4]~output_o\ : std_logic;
SIGNAL \w20[5]~output_o\ : std_logic;
SIGNAL \w20[6]~output_o\ : std_logic;
SIGNAL \w20[7]~output_o\ : std_logic;
SIGNAL \w21[0]~output_o\ : std_logic;
SIGNAL \w21[1]~output_o\ : std_logic;
SIGNAL \w21[2]~output_o\ : std_logic;
SIGNAL \w21[3]~output_o\ : std_logic;
SIGNAL \w21[4]~output_o\ : std_logic;
SIGNAL \w21[5]~output_o\ : std_logic;
SIGNAL \w21[6]~output_o\ : std_logic;
SIGNAL \w21[7]~output_o\ : std_logic;
SIGNAL \w22[0]~output_o\ : std_logic;
SIGNAL \w22[1]~output_o\ : std_logic;
SIGNAL \w22[2]~output_o\ : std_logic;
SIGNAL \w22[3]~output_o\ : std_logic;
SIGNAL \w22[4]~output_o\ : std_logic;
SIGNAL \w22[5]~output_o\ : std_logic;
SIGNAL \w22[6]~output_o\ : std_logic;
SIGNAL \w22[7]~output_o\ : std_logic;
SIGNAL \window_valid~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pixel_in[0]~input_o\ : std_logic;
SIGNAL \line0_rtl_1_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \pixel_valid~input_o\ : std_logic;
SIGNAL \line0~28_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \x_cnt~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \x_cnt~2_combout\ : std_logic;
SIGNAL \x_cnt~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \x_cnt~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \x_cnt~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \x_cnt~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \x_cnt~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \x_cnt~7_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \x_cnt~10_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \x_cnt~11_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \x_cnt~12_combout\ : std_logic;
SIGNAL \x_cnt[10]~feeder_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \x_cnt~8_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \x_cnt~9_combout\ : std_logic;
SIGNAL \x_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \pixel_in[1]~input_o\ : std_logic;
SIGNAL \pixel_in[2]~input_o\ : std_logic;
SIGNAL \pixel_in[3]~input_o\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \line0~35_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \line0~34_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \line0~32_combout\ : std_logic;
SIGNAL \line0~30_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \line0~31_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \line0~29_combout\ : std_logic;
SIGNAL \line0~33_combout\ : std_logic;
SIGNAL \line0~36_combout\ : std_logic;
SIGNAL \line0~37_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \line1~25_combout\ : std_logic;
SIGNAL \line1~26_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \line1~20_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \line1~21_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \line1~23_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \line1~22_combout\ : std_logic;
SIGNAL \line1~24_combout\ : std_logic;
SIGNAL \line1~27_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \line0~38_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \line0~39_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \line0~40_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \r02~0_combout\ : std_logic;
SIGNAL \r01~0_combout\ : std_logic;
SIGNAL \r00~0_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \r02~1_combout\ : std_logic;
SIGNAL \r01~1_combout\ : std_logic;
SIGNAL \r00~1_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \r02~2_combout\ : std_logic;
SIGNAL \r01~2_combout\ : std_logic;
SIGNAL \r00~2_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \r02~3_combout\ : std_logic;
SIGNAL \r01~3_combout\ : std_logic;
SIGNAL \r00~3_combout\ : std_logic;
SIGNAL \pixel_in[4]~input_o\ : std_logic;
SIGNAL \line0_rtl_1_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \pixel_in[5]~input_o\ : std_logic;
SIGNAL \pixel_in[6]~input_o\ : std_logic;
SIGNAL \pixel_in[7]~input_o\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \line0~41_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \line0~42_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \line0~43_combout\ : std_logic;
SIGNAL \line0_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \line0~44_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \r02~4_combout\ : std_logic;
SIGNAL \r01~4_combout\ : std_logic;
SIGNAL \r00~4_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \r02~5_combout\ : std_logic;
SIGNAL \r01~5_combout\ : std_logic;
SIGNAL \r00~5_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \r02~6_combout\ : std_logic;
SIGNAL \r01~6_combout\ : std_logic;
SIGNAL \r00~6_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \r02~7_combout\ : std_logic;
SIGNAL \r01~7_combout\ : std_logic;
SIGNAL \r00~7_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \line0~20_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \line0~21_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \line0~23_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \line0~22_combout\ : std_logic;
SIGNAL \line0~24_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \line0~25_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \line0~26_combout\ : std_logic;
SIGNAL \line0~27_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \r12~0_combout\ : std_logic;
SIGNAL \r11~0_combout\ : std_logic;
SIGNAL \r10~0_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \r12~1_combout\ : std_logic;
SIGNAL \r11~1_combout\ : std_logic;
SIGNAL \r10~1_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \r12~2_combout\ : std_logic;
SIGNAL \r11~2_combout\ : std_logic;
SIGNAL \r10~2_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \r12~3_combout\ : std_logic;
SIGNAL \r11~3_combout\ : std_logic;
SIGNAL \r10~3_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \r12~4_combout\ : std_logic;
SIGNAL \r11~4_combout\ : std_logic;
SIGNAL \r10~4_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \r12~5_combout\ : std_logic;
SIGNAL \r11~5_combout\ : std_logic;
SIGNAL \r10~5_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \r12~6_combout\ : std_logic;
SIGNAL \r11~6_combout\ : std_logic;
SIGNAL \r10~6_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \r12~7_combout\ : std_logic;
SIGNAL \r11~7_combout\ : std_logic;
SIGNAL \r10~7_combout\ : std_logic;
SIGNAL \r22~0_combout\ : std_logic;
SIGNAL \r21~0_combout\ : std_logic;
SIGNAL \r20~0_combout\ : std_logic;
SIGNAL \r22~1_combout\ : std_logic;
SIGNAL \r21~1_combout\ : std_logic;
SIGNAL \r20~1_combout\ : std_logic;
SIGNAL \r22~2_combout\ : std_logic;
SIGNAL \r21~2_combout\ : std_logic;
SIGNAL \r20~2_combout\ : std_logic;
SIGNAL \r22~3_combout\ : std_logic;
SIGNAL \r21~3_combout\ : std_logic;
SIGNAL \r20~3_combout\ : std_logic;
SIGNAL \r22~4_combout\ : std_logic;
SIGNAL \r21~4_combout\ : std_logic;
SIGNAL \r20~4_combout\ : std_logic;
SIGNAL \r22~5_combout\ : std_logic;
SIGNAL \r21~5_combout\ : std_logic;
SIGNAL \r20~5_combout\ : std_logic;
SIGNAL \r22~6_combout\ : std_logic;
SIGNAL \r21~6_combout\ : std_logic;
SIGNAL \r20~6_combout\ : std_logic;
SIGNAL \r22~7_combout\ : std_logic;
SIGNAL \r21~7_combout\ : std_logic;
SIGNAL \r20~7_combout\ : std_logic;
SIGNAL \y_cnt[0]~32_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \y_cnt[5]~36_combout\ : std_logic;
SIGNAL \y_cnt[0]~33\ : std_logic;
SIGNAL \y_cnt[1]~34_combout\ : std_logic;
SIGNAL \y_cnt[1]~35\ : std_logic;
SIGNAL \y_cnt[2]~37_combout\ : std_logic;
SIGNAL \y_cnt[2]~38\ : std_logic;
SIGNAL \y_cnt[3]~39_combout\ : std_logic;
SIGNAL \y_cnt[3]~40\ : std_logic;
SIGNAL \y_cnt[4]~41_combout\ : std_logic;
SIGNAL \y_cnt[4]~42\ : std_logic;
SIGNAL \y_cnt[5]~43_combout\ : std_logic;
SIGNAL \y_cnt[5]~44\ : std_logic;
SIGNAL \y_cnt[6]~45_combout\ : std_logic;
SIGNAL \y_cnt[6]~46\ : std_logic;
SIGNAL \y_cnt[7]~47_combout\ : std_logic;
SIGNAL \y_cnt[7]~48\ : std_logic;
SIGNAL \y_cnt[8]~49_combout\ : std_logic;
SIGNAL \y_cnt[8]~50\ : std_logic;
SIGNAL \y_cnt[9]~51_combout\ : std_logic;
SIGNAL \y_cnt[9]~52\ : std_logic;
SIGNAL \y_cnt[10]~53_combout\ : std_logic;
SIGNAL \y_cnt[10]~54\ : std_logic;
SIGNAL \y_cnt[11]~55_combout\ : std_logic;
SIGNAL \y_cnt[11]~56\ : std_logic;
SIGNAL \y_cnt[12]~57_combout\ : std_logic;
SIGNAL \y_cnt[12]~58\ : std_logic;
SIGNAL \y_cnt[13]~59_combout\ : std_logic;
SIGNAL \y_cnt[13]~60\ : std_logic;
SIGNAL \y_cnt[14]~61_combout\ : std_logic;
SIGNAL \y_cnt[14]~62\ : std_logic;
SIGNAL \y_cnt[15]~63_combout\ : std_logic;
SIGNAL \y_cnt[15]~64\ : std_logic;
SIGNAL \y_cnt[16]~65_combout\ : std_logic;
SIGNAL \y_cnt[16]~66\ : std_logic;
SIGNAL \y_cnt[17]~67_combout\ : std_logic;
SIGNAL \y_cnt[17]~68\ : std_logic;
SIGNAL \y_cnt[18]~69_combout\ : std_logic;
SIGNAL \y_cnt[18]~70\ : std_logic;
SIGNAL \y_cnt[19]~71_combout\ : std_logic;
SIGNAL \y_cnt[19]~72\ : std_logic;
SIGNAL \y_cnt[20]~73_combout\ : std_logic;
SIGNAL \y_cnt[20]~74\ : std_logic;
SIGNAL \y_cnt[21]~75_combout\ : std_logic;
SIGNAL \y_cnt[21]~76\ : std_logic;
SIGNAL \y_cnt[22]~77_combout\ : std_logic;
SIGNAL \y_cnt[22]~78\ : std_logic;
SIGNAL \y_cnt[23]~79_combout\ : std_logic;
SIGNAL \y_cnt[23]~80\ : std_logic;
SIGNAL \y_cnt[24]~81_combout\ : std_logic;
SIGNAL \y_cnt[24]~82\ : std_logic;
SIGNAL \y_cnt[25]~83_combout\ : std_logic;
SIGNAL \y_cnt[25]~84\ : std_logic;
SIGNAL \y_cnt[26]~85_combout\ : std_logic;
SIGNAL \y_cnt[26]~86\ : std_logic;
SIGNAL \y_cnt[27]~87_combout\ : std_logic;
SIGNAL \y_cnt[27]~88\ : std_logic;
SIGNAL \y_cnt[28]~89_combout\ : std_logic;
SIGNAL \y_cnt[28]~90\ : std_logic;
SIGNAL \y_cnt[29]~91_combout\ : std_logic;
SIGNAL \y_cnt[29]~92\ : std_logic;
SIGNAL \y_cnt[30]~93_combout\ : std_logic;
SIGNAL \y_cnt[30]~94\ : std_logic;
SIGNAL \y_cnt[31]~95_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \window_valid~0_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \window_valid~1_combout\ : std_logic;
SIGNAL \window_valid~reg0_q\ : std_logic;
SIGNAL y_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL r02 : std_logic_vector(7 DOWNTO 0);
SIGNAL line0_rtl_1_bypass : std_logic_vector(0 TO 30);
SIGNAL line1_rtl_0_bypass : std_logic_vector(0 TO 30);
SIGNAL r12 : std_logic_vector(7 DOWNTO 0);
SIGNAL r00 : std_logic_vector(7 DOWNTO 0);
SIGNAL r01 : std_logic_vector(7 DOWNTO 0);
SIGNAL r10 : std_logic_vector(7 DOWNTO 0);
SIGNAL r11 : std_logic_vector(7 DOWNTO 0);
SIGNAL r20 : std_logic_vector(7 DOWNTO 0);
SIGNAL r21 : std_logic_vector(7 DOWNTO 0);
SIGNAL r22 : std_logic_vector(7 DOWNTO 0);
SIGNAL line0_rtl_0_bypass : std_logic_vector(0 TO 30);
SIGNAL x_cnt : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_rst_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_pixel_in <= pixel_in;
ww_pixel_valid <= pixel_valid;
w00 <= ww_w00;
w01 <= ww_w01;
w02 <= ww_w02;
w10 <= ww_w10;
w11 <= ww_w11;
w12 <= ww_w12;
w20 <= ww_w20;
w21 <= ww_w21;
w22 <= ww_w22;
window_valid <= ww_window_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\line1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\line0~40_combout\ & \line0~39_combout\ & \line0~38_combout\ & \line0~37_combout\);

\line1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (x_cnt(10) & x_cnt(9) & x_cnt(8) & x_cnt(7) & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & x_cnt(2) & x_cnt(1) & x_cnt(0));

\line1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\x_cnt~12_combout\ & \x_cnt~11_combout\ & \x_cnt~10_combout\ & \x_cnt~9_combout\ & \x_cnt~7_combout\ & \x_cnt~6_combout\ & \x_cnt~5_combout\ & \x_cnt~4_combout\ & \x_cnt~3_combout\ & 
\x_cnt~2_combout\ & \x_cnt~1_combout\);

\line1_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\line1_rtl_0|auto_generated|ram_block1a1\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\line1_rtl_0|auto_generated|ram_block1a2\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\line1_rtl_0|auto_generated|ram_block1a3\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\line1_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\line0~44_combout\ & \line0~43_combout\ & \line0~42_combout\ & \line0~41_combout\);

\line1_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (x_cnt(10) & x_cnt(9) & x_cnt(8) & x_cnt(7) & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & x_cnt(2) & x_cnt(1) & x_cnt(0));

\line1_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\x_cnt~12_combout\ & \x_cnt~11_combout\ & \x_cnt~10_combout\ & \x_cnt~9_combout\ & \x_cnt~7_combout\ & \x_cnt~6_combout\ & \x_cnt~5_combout\ & \x_cnt~4_combout\ & \x_cnt~3_combout\ & 
\x_cnt~2_combout\ & \x_cnt~1_combout\);

\line1_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \line1_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\line1_rtl_0|auto_generated|ram_block1a5\ <= \line1_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\line1_rtl_0|auto_generated|ram_block1a6\ <= \line1_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\line1_rtl_0|auto_generated|ram_block1a7\ <= \line1_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\line0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\pixel_in[3]~input_o\ & \pixel_in[2]~input_o\ & \pixel_in[1]~input_o\ & \pixel_in[0]~input_o\);

\line0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (x_cnt(10) & x_cnt(9) & x_cnt(8) & x_cnt(7) & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & x_cnt(2) & x_cnt(1) & x_cnt(0));

\line0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\x_cnt~12_combout\ & \x_cnt~11_combout\ & \x_cnt~10_combout\ & \x_cnt~9_combout\ & \x_cnt~7_combout\ & \x_cnt~6_combout\ & \x_cnt~5_combout\ & \x_cnt~4_combout\ & \x_cnt~3_combout\ & 
\x_cnt~2_combout\ & \x_cnt~1_combout\);

\line0_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\line0_rtl_0|auto_generated|ram_block1a1\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\line0_rtl_0|auto_generated|ram_block1a2\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\line0_rtl_0|auto_generated|ram_block1a3\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\line0_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\pixel_in[7]~input_o\ & \pixel_in[6]~input_o\ & \pixel_in[5]~input_o\ & \pixel_in[4]~input_o\);

\line0_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (x_cnt(10) & x_cnt(9) & x_cnt(8) & x_cnt(7) & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & x_cnt(2) & x_cnt(1) & x_cnt(0));

\line0_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\x_cnt~12_combout\ & \x_cnt~11_combout\ & \x_cnt~10_combout\ & \x_cnt~9_combout\ & \x_cnt~7_combout\ & \x_cnt~6_combout\ & \x_cnt~5_combout\ & \x_cnt~4_combout\ & \x_cnt~3_combout\ & 
\x_cnt~2_combout\ & \x_cnt~1_combout\);

\line0_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \line0_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\line0_rtl_0|auto_generated|ram_block1a5\ <= \line0_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\line0_rtl_0|auto_generated|ram_block1a6\ <= \line0_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\line0_rtl_0|auto_generated|ram_block1a7\ <= \line0_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\line0_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\pixel_in[3]~input_o\ & \pixel_in[2]~input_o\ & \pixel_in[1]~input_o\ & \pixel_in[0]~input_o\);

\line0_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (x_cnt(10) & x_cnt(9) & x_cnt(8) & x_cnt(7) & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & x_cnt(2) & x_cnt(1) & x_cnt(0));

\line0_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\x_cnt~12_combout\ & \x_cnt~11_combout\ & \x_cnt~10_combout\ & \x_cnt~9_combout\ & \x_cnt~7_combout\ & \x_cnt~6_combout\ & \x_cnt~5_combout\ & \x_cnt~4_combout\ & \x_cnt~3_combout\ & 
\x_cnt~2_combout\ & \x_cnt~1_combout\);

\line0_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \line0_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\line0_rtl_1|auto_generated|ram_block1a1\ <= \line0_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\line0_rtl_1|auto_generated|ram_block1a2\ <= \line0_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\line0_rtl_1|auto_generated|ram_block1a3\ <= \line0_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\line0_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\pixel_in[7]~input_o\ & \pixel_in[6]~input_o\ & \pixel_in[5]~input_o\ & \pixel_in[4]~input_o\);

\line0_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (x_cnt(10) & x_cnt(9) & x_cnt(8) & x_cnt(7) & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & x_cnt(2) & x_cnt(1) & x_cnt(0));

\line0_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\x_cnt~12_combout\ & \x_cnt~11_combout\ & \x_cnt~10_combout\ & \x_cnt~9_combout\ & \x_cnt~7_combout\ & \x_cnt~6_combout\ & \x_cnt~5_combout\ & \x_cnt~4_combout\ & \x_cnt~3_combout\ & 
\x_cnt~2_combout\ & \x_cnt~1_combout\);

\line0_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \line0_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\line0_rtl_1|auto_generated|ram_block1a5\ <= \line0_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\line0_rtl_1|auto_generated|ram_block1a6\ <= \line0_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\line0_rtl_1|auto_generated|ram_block1a7\ <= \line0_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst_n~input_o\ <= NOT \rst_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N9
\w00[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(0),
	devoe => ww_devoe,
	o => \w00[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\w00[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(1),
	devoe => ww_devoe,
	o => \w00[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\w00[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(2),
	devoe => ww_devoe,
	o => \w00[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\w00[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(3),
	devoe => ww_devoe,
	o => \w00[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\w00[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(4),
	devoe => ww_devoe,
	o => \w00[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\w00[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(5),
	devoe => ww_devoe,
	o => \w00[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\w00[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(6),
	devoe => ww_devoe,
	o => \w00[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\w00[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r00(7),
	devoe => ww_devoe,
	o => \w00[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\w01[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(0),
	devoe => ww_devoe,
	o => \w01[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\w01[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(1),
	devoe => ww_devoe,
	o => \w01[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\w01[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(2),
	devoe => ww_devoe,
	o => \w01[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\w01[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(3),
	devoe => ww_devoe,
	o => \w01[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\w01[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(4),
	devoe => ww_devoe,
	o => \w01[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\w01[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(5),
	devoe => ww_devoe,
	o => \w01[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\w01[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(6),
	devoe => ww_devoe,
	o => \w01[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\w01[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r01(7),
	devoe => ww_devoe,
	o => \w01[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\w02[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(0),
	devoe => ww_devoe,
	o => \w02[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\w02[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(1),
	devoe => ww_devoe,
	o => \w02[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\w02[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(2),
	devoe => ww_devoe,
	o => \w02[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\w02[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(3),
	devoe => ww_devoe,
	o => \w02[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\w02[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(4),
	devoe => ww_devoe,
	o => \w02[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\w02[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(5),
	devoe => ww_devoe,
	o => \w02[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\w02[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(6),
	devoe => ww_devoe,
	o => \w02[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\w02[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r02(7),
	devoe => ww_devoe,
	o => \w02[7]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\w10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(0),
	devoe => ww_devoe,
	o => \w10[0]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\w10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(1),
	devoe => ww_devoe,
	o => \w10[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\w10[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(2),
	devoe => ww_devoe,
	o => \w10[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\w10[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(3),
	devoe => ww_devoe,
	o => \w10[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\w10[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(4),
	devoe => ww_devoe,
	o => \w10[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\w10[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(5),
	devoe => ww_devoe,
	o => \w10[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\w10[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(6),
	devoe => ww_devoe,
	o => \w10[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\w10[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r10(7),
	devoe => ww_devoe,
	o => \w10[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\w11[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(0),
	devoe => ww_devoe,
	o => \w11[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\w11[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(1),
	devoe => ww_devoe,
	o => \w11[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\w11[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(2),
	devoe => ww_devoe,
	o => \w11[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\w11[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(3),
	devoe => ww_devoe,
	o => \w11[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\w11[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(4),
	devoe => ww_devoe,
	o => \w11[4]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\w11[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(5),
	devoe => ww_devoe,
	o => \w11[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\w11[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(6),
	devoe => ww_devoe,
	o => \w11[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\w11[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r11(7),
	devoe => ww_devoe,
	o => \w11[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\w12[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(0),
	devoe => ww_devoe,
	o => \w12[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\w12[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(1),
	devoe => ww_devoe,
	o => \w12[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\w12[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(2),
	devoe => ww_devoe,
	o => \w12[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\w12[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(3),
	devoe => ww_devoe,
	o => \w12[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\w12[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(4),
	devoe => ww_devoe,
	o => \w12[4]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\w12[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(5),
	devoe => ww_devoe,
	o => \w12[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\w12[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(6),
	devoe => ww_devoe,
	o => \w12[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\w12[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r12(7),
	devoe => ww_devoe,
	o => \w12[7]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\w20[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(0),
	devoe => ww_devoe,
	o => \w20[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\w20[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(1),
	devoe => ww_devoe,
	o => \w20[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\w20[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(2),
	devoe => ww_devoe,
	o => \w20[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\w20[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(3),
	devoe => ww_devoe,
	o => \w20[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\w20[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(4),
	devoe => ww_devoe,
	o => \w20[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\w20[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(5),
	devoe => ww_devoe,
	o => \w20[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\w20[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(6),
	devoe => ww_devoe,
	o => \w20[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\w20[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r20(7),
	devoe => ww_devoe,
	o => \w20[7]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\w21[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(0),
	devoe => ww_devoe,
	o => \w21[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\w21[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(1),
	devoe => ww_devoe,
	o => \w21[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\w21[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(2),
	devoe => ww_devoe,
	o => \w21[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\w21[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(3),
	devoe => ww_devoe,
	o => \w21[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\w21[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(4),
	devoe => ww_devoe,
	o => \w21[4]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\w21[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(5),
	devoe => ww_devoe,
	o => \w21[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\w21[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(6),
	devoe => ww_devoe,
	o => \w21[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\w21[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r21(7),
	devoe => ww_devoe,
	o => \w21[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\w22[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(0),
	devoe => ww_devoe,
	o => \w22[0]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\w22[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(1),
	devoe => ww_devoe,
	o => \w22[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\w22[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(2),
	devoe => ww_devoe,
	o => \w22[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\w22[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(3),
	devoe => ww_devoe,
	o => \w22[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\w22[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(4),
	devoe => ww_devoe,
	o => \w22[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\w22[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(5),
	devoe => ww_devoe,
	o => \w22[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\w22[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(6),
	devoe => ww_devoe,
	o => \w22[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\w22[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r22(7),
	devoe => ww_devoe,
	o => \w22[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\window_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \window_valid~reg0_q\,
	devoe => ww_devoe,
	o => \window_valid~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X21_Y0_N15
\pixel_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(0),
	o => \pixel_in[0]~input_o\);

-- Location: LCCOMB_X16_Y4_N26
\line0_rtl_1_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[23]~feeder_combout\ = \pixel_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[0]~input_o\,
	combout => \line0_rtl_1_bypass[23]~feeder_combout\);

-- Location: FF_X16_Y4_N27
\line0_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(23));

-- Location: IOIBUF_X18_Y0_N1
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\pixel_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_valid,
	o => \pixel_valid~input_o\);

-- Location: LCCOMB_X24_Y4_N6
\line0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~28_combout\ = (\rst_n~input_o\ & \pixel_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => \pixel_valid~input_o\,
	combout => \line0~28_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = x_cnt(0) $ (VCC)
-- \Add1~1\ = CARRY(x_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X21_Y4_N28
\x_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~1_combout\ = (\rst_n~input_o\ & ((\pixel_valid~input_o\ & (\Add1~0_combout\)) # (!\pixel_valid~input_o\ & ((x_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => x_cnt(0),
	datac => \rst_n~input_o\,
	datad => \pixel_valid~input_o\,
	combout => \x_cnt~1_combout\);

-- Location: FF_X22_Y4_N19
\x_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(0));

-- Location: LCCOMB_X22_Y4_N8
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (x_cnt(1) & (!\Add1~1\)) # (!x_cnt(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!x_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X21_Y4_N10
\x_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~2_combout\ = (\rst_n~input_o\ & ((\pixel_valid~input_o\ & (\Add1~2_combout\)) # (!\pixel_valid~input_o\ & ((x_cnt(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \pixel_valid~input_o\,
	datac => \Add1~2_combout\,
	datad => x_cnt(1),
	combout => \x_cnt~2_combout\);

-- Location: FF_X22_Y4_N9
\x_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(1));

-- Location: LCCOMB_X24_Y4_N26
\x_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~0_combout\ = (\pixel_valid~input_o\) # (!\rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => \pixel_valid~input_o\,
	combout => \x_cnt~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (x_cnt(2) & (\Add1~3\ $ (GND))) # (!x_cnt(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((x_cnt(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X23_Y4_N30
\x_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~3_combout\ = (\x_cnt~0_combout\ & (\line0~28_combout\ & ((\Add1~4_combout\)))) # (!\x_cnt~0_combout\ & ((x_cnt(2)) # ((\line0~28_combout\ & \Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_cnt~0_combout\,
	datab => \line0~28_combout\,
	datac => x_cnt(2),
	datad => \Add1~4_combout\,
	combout => \x_cnt~3_combout\);

-- Location: FF_X22_Y4_N11
\x_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(2));

-- Location: LCCOMB_X22_Y4_N12
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (x_cnt(3) & (!\Add1~5\)) # (!x_cnt(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!x_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y4_N20
\x_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~4_combout\ = (x_cnt(3) & (((\line0~28_combout\ & \Add1~6_combout\)) # (!\x_cnt~0_combout\))) # (!x_cnt(3) & (\line0~28_combout\ & ((\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(3),
	datab => \line0~28_combout\,
	datac => \x_cnt~0_combout\,
	datad => \Add1~6_combout\,
	combout => \x_cnt~4_combout\);

-- Location: FF_X22_Y4_N1
\x_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(3));

-- Location: LCCOMB_X22_Y4_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (x_cnt(4) & (\Add1~7\ $ (GND))) # (!x_cnt(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((x_cnt(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y4_N12
\x_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~5_combout\ = (\x_cnt~0_combout\ & (((\line0~28_combout\ & \Add1~8_combout\)))) # (!\x_cnt~0_combout\ & ((x_cnt(4)) # ((\line0~28_combout\ & \Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_cnt~0_combout\,
	datab => x_cnt(4),
	datac => \line0~28_combout\,
	datad => \Add1~8_combout\,
	combout => \x_cnt~5_combout\);

-- Location: FF_X22_Y4_N15
\x_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(4));

-- Location: LCCOMB_X22_Y4_N16
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (x_cnt(5) & (!\Add1~9\)) # (!x_cnt(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!x_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X23_Y4_N10
\x_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~6_combout\ = (\x_cnt~0_combout\ & (\line0~28_combout\ & (\Add1~10_combout\))) # (!\x_cnt~0_combout\ & ((x_cnt(5)) # ((\line0~28_combout\ & \Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_cnt~0_combout\,
	datab => \line0~28_combout\,
	datac => \Add1~10_combout\,
	datad => x_cnt(5),
	combout => \x_cnt~6_combout\);

-- Location: FF_X22_Y4_N17
\x_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(5));

-- Location: LCCOMB_X22_Y4_N18
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (x_cnt(6) & (\Add1~11\ $ (GND))) # (!x_cnt(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((x_cnt(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X23_Y4_N16
\x_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~7_combout\ = (\x_cnt~0_combout\ & (\line0~28_combout\ & ((\Add1~12_combout\)))) # (!\x_cnt~0_combout\ & ((x_cnt(6)) # ((\line0~28_combout\ & \Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_cnt~0_combout\,
	datab => \line0~28_combout\,
	datac => x_cnt(6),
	datad => \Add1~12_combout\,
	combout => \x_cnt~7_combout\);

-- Location: FF_X21_Y4_N31
\x_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(6));

-- Location: LCCOMB_X22_Y4_N20
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (x_cnt(7) & (!\Add1~13\)) # (!x_cnt(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!x_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X22_Y4_N22
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (x_cnt(8) & (\Add1~15\ $ (GND))) # (!x_cnt(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((x_cnt(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X22_Y4_N4
\x_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~10_combout\ = (\Add1~16_combout\ & ((\x_cnt~8_combout\) # ((x_cnt(8) & !\x_cnt~0_combout\)))) # (!\Add1~16_combout\ & (x_cnt(8) & ((!\x_cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => x_cnt(8),
	datac => \x_cnt~8_combout\,
	datad => \x_cnt~0_combout\,
	combout => \x_cnt~10_combout\);

-- Location: FF_X22_Y4_N23
\x_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(8));

-- Location: LCCOMB_X22_Y4_N24
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (x_cnt(9) & (!\Add1~17\)) # (!x_cnt(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!x_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X22_Y4_N28
\x_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~11_combout\ = (x_cnt(9) & (((\x_cnt~8_combout\ & \Add1~18_combout\)) # (!\x_cnt~0_combout\))) # (!x_cnt(9) & (((\x_cnt~8_combout\ & \Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(9),
	datab => \x_cnt~0_combout\,
	datac => \x_cnt~8_combout\,
	datad => \Add1~18_combout\,
	combout => \x_cnt~11_combout\);

-- Location: FF_X22_Y4_N25
\x_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(9));

-- Location: LCCOMB_X22_Y4_N26
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \Add1~19\ $ (!x_cnt(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(10),
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X22_Y4_N2
\x_cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~12_combout\ = (\Add1~20_combout\ & ((\x_cnt~8_combout\) # ((!\x_cnt~0_combout\ & x_cnt(10))))) # (!\Add1~20_combout\ & (!\x_cnt~0_combout\ & ((x_cnt(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \x_cnt~0_combout\,
	datac => \x_cnt~8_combout\,
	datad => x_cnt(10),
	combout => \x_cnt~12_combout\);

-- Location: LCCOMB_X21_Y4_N22
\x_cnt[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt[10]~feeder_combout\ = \x_cnt~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~12_combout\,
	combout => \x_cnt[10]~feeder_combout\);

-- Location: FF_X21_Y4_N23
\x_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(10));

-- Location: LCCOMB_X21_Y4_N18
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (x_cnt(10) & (x_cnt(9) & x_cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(10),
	datac => x_cnt(9),
	datad => x_cnt(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X21_Y4_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!x_cnt(7) & (x_cnt(4) & (x_cnt(6) & x_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(7),
	datab => x_cnt(4),
	datac => x_cnt(6),
	datad => x_cnt(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X21_Y4_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (x_cnt(1) & (x_cnt(2) & (x_cnt(3) & x_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(2),
	datac => x_cnt(3),
	datad => x_cnt(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y4_N4
\x_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~8_combout\ = (\line0~28_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \line0~28_combout\,
	datad => \Equal0~0_combout\,
	combout => \x_cnt~8_combout\);

-- Location: LCCOMB_X22_Y4_N30
\x_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt~9_combout\ = (x_cnt(7) & (((\x_cnt~8_combout\ & \Add1~14_combout\)) # (!\x_cnt~0_combout\))) # (!x_cnt(7) & (((\x_cnt~8_combout\ & \Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(7),
	datab => \x_cnt~0_combout\,
	datac => \x_cnt~8_combout\,
	datad => \Add1~14_combout\,
	combout => \x_cnt~9_combout\);

-- Location: LCCOMB_X21_Y4_N6
\x_cnt[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_cnt[7]~feeder_combout\ = \x_cnt~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_cnt~9_combout\,
	combout => \x_cnt[7]~feeder_combout\);

-- Location: FF_X21_Y4_N7
\x_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(7));

-- Location: IOIBUF_X21_Y0_N8
\pixel_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(1),
	o => \pixel_in[1]~input_o\);

-- Location: IOIBUF_X34_Y6_N15
\pixel_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(2),
	o => \pixel_in[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\pixel_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(3),
	o => \pixel_in[3]~input_o\);

-- Location: M9K_X15_Y5_N0
\line0_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line0_rtl_1|altsyncram_s2h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 1920,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 1920,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~28_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line0_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \line0_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \line0_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line0_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X22_Y4_N3
\line0_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(22));

-- Location: FF_X23_Y4_N7
\line0_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(21));

-- Location: FF_X23_Y4_N13
\line0_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line0~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(0));

-- Location: LCCOMB_X23_Y4_N6
\line0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~35_combout\ = (line0_rtl_1_bypass(0) & (line0_rtl_1_bypass(22) $ (!line0_rtl_1_bypass(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(22),
	datac => line0_rtl_1_bypass(21),
	datad => line0_rtl_1_bypass(0),
	combout => \line0~35_combout\);

-- Location: LCCOMB_X19_Y4_N6
\line0_rtl_1_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[19]~feeder_combout\ = x_cnt(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(9),
	combout => \line0_rtl_1_bypass[19]~feeder_combout\);

-- Location: FF_X19_Y4_N7
\line0_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(19));

-- Location: FF_X22_Y4_N5
\line0_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(18));

-- Location: FF_X19_Y4_N25
\line0_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(17));

-- Location: FF_X22_Y4_N29
\line0_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(20));

-- Location: LCCOMB_X19_Y4_N24
\line0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~34_combout\ = (line0_rtl_1_bypass(19) & (line0_rtl_1_bypass(20) & (line0_rtl_1_bypass(18) $ (!line0_rtl_1_bypass(17))))) # (!line0_rtl_1_bypass(19) & (!line0_rtl_1_bypass(20) & (line0_rtl_1_bypass(18) $ (!line0_rtl_1_bypass(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(19),
	datab => line0_rtl_1_bypass(18),
	datac => line0_rtl_1_bypass(17),
	datad => line0_rtl_1_bypass(20),
	combout => \line0~34_combout\);

-- Location: LCCOMB_X23_Y4_N26
\line0_rtl_1_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[15]~feeder_combout\ = x_cnt(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(7),
	combout => \line0_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X23_Y4_N27
\line0_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(15));

-- Location: FF_X22_Y4_N31
\line0_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(16));

-- Location: FF_X23_Y4_N9
\line0_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(13));

-- Location: FF_X23_Y4_N17
\line0_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(14));

-- Location: LCCOMB_X23_Y4_N8
\line0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~32_combout\ = (line0_rtl_1_bypass(15) & (line0_rtl_1_bypass(16) & (line0_rtl_1_bypass(13) $ (!line0_rtl_1_bypass(14))))) # (!line0_rtl_1_bypass(15) & (!line0_rtl_1_bypass(16) & (line0_rtl_1_bypass(13) $ (!line0_rtl_1_bypass(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(15),
	datab => line0_rtl_1_bypass(16),
	datac => line0_rtl_1_bypass(13),
	datad => line0_rtl_1_bypass(14),
	combout => \line0~32_combout\);

-- Location: FF_X23_Y4_N31
\line0_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(6));

-- Location: FF_X23_Y4_N15
\line0_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(7));

-- Location: FF_X23_Y4_N25
\line0_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(5));

-- Location: FF_X23_Y4_N1
\line0_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(8));

-- Location: LCCOMB_X23_Y4_N24
\line0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~30_combout\ = (line0_rtl_1_bypass(6) & (line0_rtl_1_bypass(5) & (line0_rtl_1_bypass(7) $ (!line0_rtl_1_bypass(8))))) # (!line0_rtl_1_bypass(6) & (!line0_rtl_1_bypass(5) & (line0_rtl_1_bypass(7) $ (!line0_rtl_1_bypass(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(6),
	datab => line0_rtl_1_bypass(7),
	datac => line0_rtl_1_bypass(5),
	datad => line0_rtl_1_bypass(8),
	combout => \line0~30_combout\);

-- Location: LCCOMB_X23_Y4_N22
\line0_rtl_1_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[11]~feeder_combout\ = x_cnt(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(5),
	combout => \line0_rtl_1_bypass[11]~feeder_combout\);

-- Location: FF_X23_Y4_N23
\line0_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(11));

-- Location: LCCOMB_X23_Y4_N2
\line0_rtl_1_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[10]~feeder_combout\ = \x_cnt~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~5_combout\,
	combout => \line0_rtl_1_bypass[10]~feeder_combout\);

-- Location: FF_X23_Y4_N3
\line0_rtl_1_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(10));

-- Location: FF_X23_Y4_N5
\line0_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(9));

-- Location: LCCOMB_X23_Y4_N28
\line0_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[12]~feeder_combout\ = \x_cnt~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~6_combout\,
	combout => \line0_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X23_Y4_N29
\line0_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(12));

-- Location: LCCOMB_X23_Y4_N4
\line0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~31_combout\ = (line0_rtl_1_bypass(11) & (line0_rtl_1_bypass(12) & (line0_rtl_1_bypass(10) $ (!line0_rtl_1_bypass(9))))) # (!line0_rtl_1_bypass(11) & (!line0_rtl_1_bypass(12) & (line0_rtl_1_bypass(10) $ (!line0_rtl_1_bypass(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(11),
	datab => line0_rtl_1_bypass(10),
	datac => line0_rtl_1_bypass(9),
	datad => line0_rtl_1_bypass(12),
	combout => \line0~31_combout\);

-- Location: LCCOMB_X21_Y4_N12
\line0_rtl_1_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[2]~feeder_combout\ = \x_cnt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~1_combout\,
	combout => \line0_rtl_1_bypass[2]~feeder_combout\);

-- Location: FF_X21_Y4_N13
\line0_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(2));

-- Location: LCCOMB_X21_Y4_N16
\line0_rtl_1_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[3]~feeder_combout\ = x_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(1),
	combout => \line0_rtl_1_bypass[3]~feeder_combout\);

-- Location: FF_X21_Y4_N17
\line0_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(3));

-- Location: FF_X21_Y4_N27
\line0_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(1));

-- Location: FF_X21_Y4_N11
\line0_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(4));

-- Location: LCCOMB_X21_Y4_N26
\line0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~29_combout\ = (line0_rtl_1_bypass(2) & (line0_rtl_1_bypass(1) & (line0_rtl_1_bypass(3) $ (!line0_rtl_1_bypass(4))))) # (!line0_rtl_1_bypass(2) & (!line0_rtl_1_bypass(1) & (line0_rtl_1_bypass(3) $ (!line0_rtl_1_bypass(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(2),
	datab => line0_rtl_1_bypass(3),
	datac => line0_rtl_1_bypass(1),
	datad => line0_rtl_1_bypass(4),
	combout => \line0~29_combout\);

-- Location: LCCOMB_X23_Y4_N18
\line0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~33_combout\ = (\line0~32_combout\ & (\line0~30_combout\ & (\line0~31_combout\ & \line0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~32_combout\,
	datab => \line0~30_combout\,
	datac => \line0~31_combout\,
	datad => \line0~29_combout\,
	combout => \line0~33_combout\);

-- Location: LCCOMB_X23_Y4_N0
\line0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~36_combout\ = (\line0~35_combout\ & (\line0~34_combout\ & \line0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~35_combout\,
	datab => \line0~34_combout\,
	datad => \line0~33_combout\,
	combout => \line0~36_combout\);

-- Location: LCCOMB_X16_Y4_N16
\line0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~37_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(23))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(23),
	datac => \line0_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \line0~36_combout\,
	combout => \line0~37_combout\);

-- Location: FF_X16_Y4_N17
\line1_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(23));

-- Location: LCCOMB_X19_Y4_N22
\line1_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[18]~feeder_combout\ = \x_cnt~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~10_combout\,
	combout => \line1_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X19_Y4_N23
\line1_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(18));

-- Location: LCCOMB_X19_Y4_N14
\line1_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[19]~feeder_combout\ = x_cnt(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(9),
	combout => \line1_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X19_Y4_N15
\line1_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(19));

-- Location: FF_X19_Y4_N1
\line1_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(20));

-- Location: LCCOMB_X19_Y4_N28
\line1_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[17]~feeder_combout\ = x_cnt(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_cnt(8),
	combout => \line1_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X19_Y4_N29
\line1_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(17));

-- Location: LCCOMB_X19_Y4_N0
\line1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~25_combout\ = (line1_rtl_0_bypass(18) & (line1_rtl_0_bypass(17) & (line1_rtl_0_bypass(19) $ (!line1_rtl_0_bypass(20))))) # (!line1_rtl_0_bypass(18) & (!line1_rtl_0_bypass(17) & (line1_rtl_0_bypass(19) $ (!line1_rtl_0_bypass(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(18),
	datab => line1_rtl_0_bypass(19),
	datac => line1_rtl_0_bypass(20),
	datad => line1_rtl_0_bypass(17),
	combout => \line1~25_combout\);

-- Location: FF_X21_Y4_N5
\line1_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line0~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(0));

-- Location: FF_X21_Y4_N9
\line1_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(22));

-- Location: FF_X21_Y4_N15
\line1_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(21));

-- Location: LCCOMB_X21_Y4_N8
\line1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~26_combout\ = (line1_rtl_0_bypass(0) & (line1_rtl_0_bypass(22) $ (!line1_rtl_0_bypass(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1_rtl_0_bypass(0),
	datac => line1_rtl_0_bypass(22),
	datad => line1_rtl_0_bypass(21),
	combout => \line1~26_combout\);

-- Location: LCCOMB_X21_Y5_N10
\line1_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[2]~feeder_combout\ = \x_cnt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~1_combout\,
	combout => \line1_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X21_Y5_N11
\line1_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(2));

-- Location: LCCOMB_X21_Y5_N18
\line1_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[3]~feeder_combout\ = x_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(1),
	combout => \line1_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X21_Y5_N19
\line1_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(3));

-- Location: FF_X21_Y5_N17
\line1_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(4));

-- Location: LCCOMB_X21_Y5_N28
\line1_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[1]~feeder_combout\ = x_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(0),
	combout => \line1_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X21_Y5_N29
\line1_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(1));

-- Location: LCCOMB_X21_Y5_N16
\line1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~20_combout\ = (line1_rtl_0_bypass(2) & (line1_rtl_0_bypass(1) & (line1_rtl_0_bypass(3) $ (!line1_rtl_0_bypass(4))))) # (!line1_rtl_0_bypass(2) & (!line1_rtl_0_bypass(1) & (line1_rtl_0_bypass(3) $ (!line1_rtl_0_bypass(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(2),
	datab => line1_rtl_0_bypass(3),
	datac => line1_rtl_0_bypass(4),
	datad => line1_rtl_0_bypass(1),
	combout => \line1~20_combout\);

-- Location: LCCOMB_X22_Y5_N22
\line1_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[6]~feeder_combout\ = \x_cnt~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~3_combout\,
	combout => \line1_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X22_Y5_N23
\line1_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(6));

-- Location: LCCOMB_X22_Y5_N18
\line1_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[7]~feeder_combout\ = x_cnt(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(3),
	combout => \line1_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X22_Y5_N19
\line1_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(7));

-- Location: FF_X22_Y5_N29
\line1_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(8));

-- Location: LCCOMB_X22_Y5_N16
\line1_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[5]~feeder_combout\ = x_cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(2),
	combout => \line1_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X22_Y5_N17
\line1_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(5));

-- Location: LCCOMB_X22_Y5_N28
\line1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~21_combout\ = (line1_rtl_0_bypass(6) & (line1_rtl_0_bypass(5) & (line1_rtl_0_bypass(7) $ (!line1_rtl_0_bypass(8))))) # (!line1_rtl_0_bypass(6) & (!line1_rtl_0_bypass(5) & (line1_rtl_0_bypass(7) $ (!line1_rtl_0_bypass(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(6),
	datab => line1_rtl_0_bypass(7),
	datac => line1_rtl_0_bypass(8),
	datad => line1_rtl_0_bypass(5),
	combout => \line1~21_combout\);

-- Location: LCCOMB_X23_Y5_N22
\line1_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[15]~feeder_combout\ = x_cnt(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(7),
	combout => \line1_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X23_Y5_N23
\line1_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(15));

-- Location: LCCOMB_X23_Y5_N24
\line1_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[16]~feeder_combout\ = \x_cnt~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_cnt~9_combout\,
	combout => \line1_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X23_Y5_N25
\line1_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(16));

-- Location: FF_X23_Y5_N11
\line1_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(14));

-- Location: LCCOMB_X23_Y5_N28
\line1_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[13]~feeder_combout\ = x_cnt(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(6),
	combout => \line1_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X23_Y5_N29
\line1_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(13));

-- Location: LCCOMB_X23_Y5_N10
\line1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~23_combout\ = (line1_rtl_0_bypass(15) & (line1_rtl_0_bypass(16) & (line1_rtl_0_bypass(14) $ (!line1_rtl_0_bypass(13))))) # (!line1_rtl_0_bypass(15) & (!line1_rtl_0_bypass(16) & (line1_rtl_0_bypass(14) $ (!line1_rtl_0_bypass(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(15),
	datab => line1_rtl_0_bypass(16),
	datac => line1_rtl_0_bypass(14),
	datad => line1_rtl_0_bypass(13),
	combout => \line1~23_combout\);

-- Location: LCCOMB_X24_Y5_N6
\line1_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[11]~feeder_combout\ = x_cnt(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(5),
	combout => \line1_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X24_Y5_N7
\line1_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(11));

-- Location: LCCOMB_X24_Y5_N28
\line1_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[9]~feeder_combout\ = x_cnt(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_cnt(4),
	combout => \line1_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X24_Y5_N29
\line1_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(9));

-- Location: FF_X24_Y5_N5
\line1_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(12));

-- Location: LCCOMB_X24_Y5_N2
\line1_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[10]~feeder_combout\ = \x_cnt~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~5_combout\,
	combout => \line1_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X24_Y5_N3
\line1_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(10));

-- Location: LCCOMB_X24_Y5_N4
\line1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~22_combout\ = (line1_rtl_0_bypass(11) & (line1_rtl_0_bypass(12) & (line1_rtl_0_bypass(9) $ (!line1_rtl_0_bypass(10))))) # (!line1_rtl_0_bypass(11) & (!line1_rtl_0_bypass(12) & (line1_rtl_0_bypass(9) $ (!line1_rtl_0_bypass(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(11),
	datab => line1_rtl_0_bypass(9),
	datac => line1_rtl_0_bypass(12),
	datad => line1_rtl_0_bypass(10),
	combout => \line1~22_combout\);

-- Location: LCCOMB_X22_Y5_N12
\line1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~24_combout\ = (\line1~20_combout\ & (\line1~21_combout\ & (\line1~23_combout\ & \line1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~20_combout\,
	datab => \line1~21_combout\,
	datac => \line1~23_combout\,
	datad => \line1~22_combout\,
	combout => \line1~24_combout\);

-- Location: LCCOMB_X22_Y5_N26
\line1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~27_combout\ = (\line1~25_combout\ & (\line1~26_combout\ & \line1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1~25_combout\,
	datac => \line1~26_combout\,
	datad => \line1~24_combout\,
	combout => \line1~27_combout\);

-- Location: LCCOMB_X16_Y4_N4
\line0_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[24]~feeder_combout\ = \pixel_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel_in[1]~input_o\,
	combout => \line0_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X16_Y4_N5
\line0_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(24));

-- Location: LCCOMB_X16_Y4_N14
\line0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~38_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(24))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_1_bypass(24),
	datac => \line0_rtl_1|auto_generated|ram_block1a1\,
	datad => \line0~36_combout\,
	combout => \line0~38_combout\);

-- Location: LCCOMB_X16_Y4_N22
\line0_rtl_1_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[25]~feeder_combout\ = \pixel_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[2]~input_o\,
	combout => \line0_rtl_1_bypass[25]~feeder_combout\);

-- Location: FF_X16_Y4_N23
\line0_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(25));

-- Location: LCCOMB_X16_Y4_N24
\line0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~39_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(25))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(25),
	datac => \line0_rtl_1|auto_generated|ram_block1a2\,
	datad => \line0~36_combout\,
	combout => \line0~39_combout\);

-- Location: LCCOMB_X14_Y4_N22
\line0_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[26]~feeder_combout\ = \pixel_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[3]~input_o\,
	combout => \line0_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X14_Y4_N23
\line0_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(26));

-- Location: LCCOMB_X14_Y4_N30
\line0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~40_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(26))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_1_bypass(26),
	datac => \line0~36_combout\,
	datad => \line0_rtl_1|auto_generated|ram_block1a3\,
	combout => \line0~40_combout\);

-- Location: M9K_X15_Y4_N0
\line1_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line1_rtl_0|altsyncram_s2h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 1920,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 1920,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~28_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \line1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \line1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y4_N28
\r02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~0_combout\ = (\line1~27_combout\ & (line1_rtl_0_bypass(23))) # (!\line1~27_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1_rtl_0_bypass(23),
	datac => \line1~27_combout\,
	datad => \line1_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \r02~0_combout\);

-- Location: FF_X16_Y4_N29
\r02[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~0_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(0));

-- Location: LCCOMB_X16_Y4_N8
\r01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~0_combout\ = (r02(0) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r02(0),
	datad => \rst_n~input_o\,
	combout => \r01~0_combout\);

-- Location: FF_X16_Y4_N9
\r01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~0_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(0));

-- Location: LCCOMB_X16_Y4_N30
\r00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~0_combout\ = (r01(0) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r01(0),
	datad => \rst_n~input_o\,
	combout => \r00~0_combout\);

-- Location: FF_X16_Y4_N31
\r00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~0_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(0));

-- Location: FF_X16_Y4_N15
\line1_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(24));

-- Location: LCCOMB_X16_Y4_N18
\r02~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~1_combout\ = (\line1~27_combout\ & (line1_rtl_0_bypass(24))) # (!\line1~27_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~27_combout\,
	datab => line1_rtl_0_bypass(24),
	datac => \line1_rtl_0|auto_generated|ram_block1a1\,
	combout => \r02~1_combout\);

-- Location: FF_X16_Y4_N19
\r02[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~1_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(1));

-- Location: LCCOMB_X16_Y4_N10
\r01~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~1_combout\ = (r02(1) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r02(1),
	datad => \rst_n~input_o\,
	combout => \r01~1_combout\);

-- Location: FF_X16_Y4_N11
\r01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~1_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(1));

-- Location: LCCOMB_X16_Y4_N12
\r00~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~1_combout\ = (r01(1) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r01(1),
	datad => \rst_n~input_o\,
	combout => \r00~1_combout\);

-- Location: FF_X16_Y4_N13
\r00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~1_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(1));

-- Location: FF_X16_Y4_N25
\line1_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(25));

-- Location: LCCOMB_X16_Y4_N0
\r02~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~2_combout\ = (\line1~27_combout\ & ((line1_rtl_0_bypass(25)))) # (!\line1~27_combout\ & (\line1_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~27_combout\,
	datac => \line1_rtl_0|auto_generated|ram_block1a2\,
	datad => line1_rtl_0_bypass(25),
	combout => \r02~2_combout\);

-- Location: FF_X16_Y4_N1
\r02[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~2_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(2));

-- Location: LCCOMB_X26_Y5_N2
\r01~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~2_combout\ = (r02(2) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r02(2),
	datad => \rst_n~input_o\,
	combout => \r01~2_combout\);

-- Location: FF_X26_Y5_N3
\r01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~2_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(2));

-- Location: LCCOMB_X28_Y5_N2
\r00~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~2_combout\ = (\rst_n~input_o\ & r01(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => r01(2),
	combout => \r00~2_combout\);

-- Location: FF_X28_Y5_N3
\r00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~2_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(2));

-- Location: FF_X14_Y4_N31
\line1_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(26));

-- Location: LCCOMB_X14_Y4_N8
\r02~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~3_combout\ = (\line1~27_combout\ & (line1_rtl_0_bypass(26))) # (!\line1~27_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(26),
	datac => \line1~27_combout\,
	datad => \line1_rtl_0|auto_generated|ram_block1a3\,
	combout => \r02~3_combout\);

-- Location: FF_X14_Y4_N9
\r02[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~3_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(3));

-- Location: LCCOMB_X14_Y4_N6
\r01~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~3_combout\ = (\rst_n~input_o\ & r02(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r02(3),
	combout => \r01~3_combout\);

-- Location: FF_X14_Y4_N7
\r01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~3_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(3));

-- Location: LCCOMB_X14_Y4_N14
\r00~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~3_combout\ = (r01(3) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r01(3),
	datac => \rst_n~input_o\,
	combout => \r00~3_combout\);

-- Location: FF_X14_Y4_N15
\r00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~3_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(3));

-- Location: IOIBUF_X18_Y0_N8
\pixel_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(4),
	o => \pixel_in[4]~input_o\);

-- Location: LCCOMB_X14_Y2_N28
\line0_rtl_1_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[27]~feeder_combout\ = \pixel_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[4]~input_o\,
	combout => \line0_rtl_1_bypass[27]~feeder_combout\);

-- Location: FF_X14_Y2_N29
\line0_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(27));

-- Location: IOIBUF_X34_Y3_N22
\pixel_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(5),
	o => \pixel_in[5]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\pixel_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(6),
	o => \pixel_in[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\pixel_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(7),
	o => \pixel_in[7]~input_o\);

-- Location: M9K_X15_Y3_N0
\line0_rtl_1|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line0_rtl_1|altsyncram_s2h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 1920,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 1920,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~28_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line0_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \line0_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \line0_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line0_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y2_N12
\line0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~41_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(27))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_1_bypass(27),
	datac => \line0_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	datad => \line0~36_combout\,
	combout => \line0~41_combout\);

-- Location: FF_X14_Y2_N13
\line1_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(27));

-- Location: LCCOMB_X16_Y3_N18
\line0_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[28]~feeder_combout\ = \pixel_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[5]~input_o\,
	combout => \line0_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X16_Y3_N19
\line0_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(28));

-- Location: LCCOMB_X16_Y3_N28
\line0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~42_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(28))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_1_bypass(28),
	datac => \line0_rtl_1|auto_generated|ram_block1a5\,
	datad => \line0~36_combout\,
	combout => \line0~42_combout\);

-- Location: LCCOMB_X14_Y2_N14
\line0_rtl_1_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[29]~feeder_combout\ = \pixel_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[6]~input_o\,
	combout => \line0_rtl_1_bypass[29]~feeder_combout\);

-- Location: FF_X14_Y2_N15
\line0_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(29));

-- Location: LCCOMB_X14_Y2_N22
\line0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~43_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(29))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_1_bypass(29),
	datac => \line0_rtl_1|auto_generated|ram_block1a6\,
	datad => \line0~36_combout\,
	combout => \line0~43_combout\);

-- Location: LCCOMB_X14_Y4_N20
\line0_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_1_bypass[30]~feeder_combout\ = \pixel_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[7]~input_o\,
	combout => \line0_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X14_Y4_N21
\line0_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_1_bypass(30));

-- Location: LCCOMB_X14_Y4_N28
\line0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~44_combout\ = (\line0~36_combout\ & (line0_rtl_1_bypass(30))) # (!\line0~36_combout\ & ((\line0_rtl_1|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_1_bypass(30),
	datac => \line0~36_combout\,
	datad => \line0_rtl_1|auto_generated|ram_block1a7\,
	combout => \line0~44_combout\);

-- Location: M9K_X15_Y2_N0
\line1_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line1_rtl_0|altsyncram_s2h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 1920,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 1920,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~28_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line1_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \line1_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \line1_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line1_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y2_N16
\r02~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~4_combout\ = (\line1~27_combout\ & (line1_rtl_0_bypass(27))) # (!\line1~27_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(27),
	datac => \line1_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \line1~27_combout\,
	combout => \r02~4_combout\);

-- Location: FF_X14_Y2_N17
\r02[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~4_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(4));

-- Location: LCCOMB_X14_Y2_N24
\r01~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~4_combout\ = (r02(4) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r02(4),
	datad => \rst_n~input_o\,
	combout => \r01~4_combout\);

-- Location: FF_X14_Y2_N25
\r01[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~4_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(4));

-- Location: LCCOMB_X16_Y2_N30
\r00~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~4_combout\ = (\rst_n~input_o\ & r01(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => r01(4),
	combout => \r00~4_combout\);

-- Location: FF_X16_Y2_N31
\r00[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~4_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(4));

-- Location: FF_X16_Y3_N29
\line1_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(28));

-- Location: LCCOMB_X16_Y2_N4
\r02~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~5_combout\ = (\line1~27_combout\ & (line1_rtl_0_bypass(28))) # (!\line1~27_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(28),
	datac => \line1_rtl_0|auto_generated|ram_block1a5\,
	datad => \line1~27_combout\,
	combout => \r02~5_combout\);

-- Location: FF_X16_Y2_N5
\r02[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~5_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(5));

-- Location: LCCOMB_X16_Y2_N24
\r01~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~5_combout\ = (\rst_n~input_o\ & r02(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => r02(5),
	combout => \r01~5_combout\);

-- Location: FF_X16_Y2_N25
\r01[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~5_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(5));

-- Location: LCCOMB_X16_Y4_N6
\r00~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~5_combout\ = (r01(5) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r01(5),
	datad => \rst_n~input_o\,
	combout => \r00~5_combout\);

-- Location: FF_X16_Y4_N7
\r00[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~5_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(5));

-- Location: FF_X14_Y2_N23
\line1_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(29));

-- Location: LCCOMB_X14_Y2_N30
\r02~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~6_combout\ = (\line1~27_combout\ & (line1_rtl_0_bypass(29))) # (!\line1~27_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(29),
	datab => \line1~27_combout\,
	datad => \line1_rtl_0|auto_generated|ram_block1a6\,
	combout => \r02~6_combout\);

-- Location: FF_X14_Y2_N31
\r02[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~6_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(6));

-- Location: LCCOMB_X14_Y2_N2
\r01~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~6_combout\ = (r02(6) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r02(6),
	datad => \rst_n~input_o\,
	combout => \r01~6_combout\);

-- Location: FF_X14_Y2_N3
\r01[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~6_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(6));

-- Location: LCCOMB_X14_Y2_N18
\r00~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~6_combout\ = (r01(6) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r01(6),
	datad => \rst_n~input_o\,
	combout => \r00~6_combout\);

-- Location: FF_X14_Y2_N19
\r00[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~6_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(6));

-- Location: FF_X14_Y4_N29
\line1_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(30));

-- Location: LCCOMB_X14_Y2_N4
\r02~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r02~7_combout\ = (\line1~27_combout\ & (line1_rtl_0_bypass(30))) # (!\line1~27_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1~27_combout\,
	datac => line1_rtl_0_bypass(30),
	datad => \line1_rtl_0|auto_generated|ram_block1a7\,
	combout => \r02~7_combout\);

-- Location: FF_X14_Y2_N5
\r02[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r02~7_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r02(7));

-- Location: LCCOMB_X14_Y4_N12
\r01~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r01~7_combout\ = (\rst_n~input_o\ & r02(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => r02(7),
	combout => \r01~7_combout\);

-- Location: FF_X14_Y4_N13
\r01[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r01~7_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r01(7));

-- Location: LCCOMB_X14_Y4_N4
\r00~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r00~7_combout\ = (r01(7) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r01(7),
	datac => \rst_n~input_o\,
	combout => \r00~7_combout\);

-- Location: FF_X14_Y4_N5
\r00[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r00~7_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r00(7));

-- Location: LCCOMB_X21_Y5_N6
\line0_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[2]~feeder_combout\ = \x_cnt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~1_combout\,
	combout => \line0_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X21_Y5_N7
\line0_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(2));

-- Location: LCCOMB_X21_Y5_N2
\line0_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[3]~feeder_combout\ = x_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(1),
	combout => \line0_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X21_Y5_N3
\line0_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(3));

-- Location: FF_X21_Y5_N9
\line0_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(4));

-- Location: LCCOMB_X21_Y5_N12
\line0_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[1]~feeder_combout\ = x_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(0),
	combout => \line0_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X21_Y5_N13
\line0_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(1));

-- Location: LCCOMB_X21_Y5_N8
\line0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~20_combout\ = (line0_rtl_0_bypass(2) & (line0_rtl_0_bypass(1) & (line0_rtl_0_bypass(3) $ (!line0_rtl_0_bypass(4))))) # (!line0_rtl_0_bypass(2) & (!line0_rtl_0_bypass(1) & (line0_rtl_0_bypass(3) $ (!line0_rtl_0_bypass(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(2),
	datab => line0_rtl_0_bypass(3),
	datac => line0_rtl_0_bypass(4),
	datad => line0_rtl_0_bypass(1),
	combout => \line0~20_combout\);

-- Location: LCCOMB_X22_Y5_N6
\line0_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[7]~feeder_combout\ = x_cnt(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(3),
	combout => \line0_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X22_Y5_N7
\line0_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(7));

-- Location: LCCOMB_X22_Y5_N2
\line0_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[6]~feeder_combout\ = \x_cnt~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~3_combout\,
	combout => \line0_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X22_Y5_N3
\line0_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(6));

-- Location: FF_X22_Y5_N5
\line0_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(8));

-- Location: LCCOMB_X22_Y5_N20
\line0_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[5]~feeder_combout\ = x_cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(2),
	combout => \line0_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X22_Y5_N21
\line0_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(5));

-- Location: LCCOMB_X22_Y5_N4
\line0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~21_combout\ = (line0_rtl_0_bypass(7) & (line0_rtl_0_bypass(8) & (line0_rtl_0_bypass(6) $ (!line0_rtl_0_bypass(5))))) # (!line0_rtl_0_bypass(7) & (!line0_rtl_0_bypass(8) & (line0_rtl_0_bypass(6) $ (!line0_rtl_0_bypass(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(7),
	datab => line0_rtl_0_bypass(6),
	datac => line0_rtl_0_bypass(8),
	datad => line0_rtl_0_bypass(5),
	combout => \line0~21_combout\);

-- Location: LCCOMB_X23_Y5_N26
\line0_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[15]~feeder_combout\ = x_cnt(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(7),
	combout => \line0_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X23_Y5_N27
\line0_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(15));

-- Location: LCCOMB_X23_Y5_N4
\line0_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[13]~feeder_combout\ = x_cnt(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(6),
	combout => \line0_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X23_Y5_N5
\line0_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(13));

-- Location: FF_X23_Y5_N31
\line0_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(14));

-- Location: LCCOMB_X23_Y5_N20
\line0_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[16]~feeder_combout\ = \x_cnt~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_cnt~9_combout\,
	combout => \line0_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X23_Y5_N21
\line0_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(16));

-- Location: LCCOMB_X23_Y5_N30
\line0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~23_combout\ = (line0_rtl_0_bypass(15) & (line0_rtl_0_bypass(16) & (line0_rtl_0_bypass(13) $ (!line0_rtl_0_bypass(14))))) # (!line0_rtl_0_bypass(15) & (!line0_rtl_0_bypass(16) & (line0_rtl_0_bypass(13) $ (!line0_rtl_0_bypass(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(15),
	datab => line0_rtl_0_bypass(13),
	datac => line0_rtl_0_bypass(14),
	datad => line0_rtl_0_bypass(16),
	combout => \line0~23_combout\);

-- Location: LCCOMB_X24_Y5_N30
\line0_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[10]~feeder_combout\ = \x_cnt~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~5_combout\,
	combout => \line0_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X24_Y5_N31
\line0_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(10));

-- Location: LCCOMB_X24_Y5_N14
\line0_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[11]~feeder_combout\ = x_cnt(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(5),
	combout => \line0_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X24_Y5_N15
\line0_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(11));

-- Location: FF_X24_Y5_N25
\line0_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(12));

-- Location: LCCOMB_X24_Y5_N12
\line0_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[9]~feeder_combout\ = x_cnt(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_cnt(4),
	combout => \line0_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X24_Y5_N13
\line0_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(9));

-- Location: LCCOMB_X24_Y5_N24
\line0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~22_combout\ = (line0_rtl_0_bypass(10) & (line0_rtl_0_bypass(9) & (line0_rtl_0_bypass(11) $ (!line0_rtl_0_bypass(12))))) # (!line0_rtl_0_bypass(10) & (!line0_rtl_0_bypass(9) & (line0_rtl_0_bypass(11) $ (!line0_rtl_0_bypass(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(10),
	datab => line0_rtl_0_bypass(11),
	datac => line0_rtl_0_bypass(12),
	datad => line0_rtl_0_bypass(9),
	combout => \line0~22_combout\);

-- Location: LCCOMB_X23_Y5_N12
\line0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~24_combout\ = (\line0~20_combout\ & (\line0~21_combout\ & (\line0~23_combout\ & \line0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~20_combout\,
	datab => \line0~21_combout\,
	datac => \line0~23_combout\,
	datad => \line0~22_combout\,
	combout => \line0~24_combout\);

-- Location: LCCOMB_X19_Y4_N12
\line0_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[17]~feeder_combout\ = x_cnt(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_cnt(8),
	combout => \line0_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X19_Y4_N13
\line0_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(17));

-- Location: LCCOMB_X19_Y4_N2
\line0_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[19]~feeder_combout\ = x_cnt(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_cnt(9),
	combout => \line0_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X19_Y4_N3
\line0_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(19));

-- Location: FF_X19_Y4_N21
\line0_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(20));

-- Location: LCCOMB_X19_Y4_N18
\line0_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[18]~feeder_combout\ = \x_cnt~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_cnt~10_combout\,
	combout => \line0_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X19_Y4_N19
\line0_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(18));

-- Location: LCCOMB_X19_Y4_N20
\line0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~25_combout\ = (line0_rtl_0_bypass(17) & (line0_rtl_0_bypass(18) & (line0_rtl_0_bypass(19) $ (!line0_rtl_0_bypass(20))))) # (!line0_rtl_0_bypass(17) & (!line0_rtl_0_bypass(18) & (line0_rtl_0_bypass(19) $ (!line0_rtl_0_bypass(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(17),
	datab => line0_rtl_0_bypass(19),
	datac => line0_rtl_0_bypass(20),
	datad => line0_rtl_0_bypass(18),
	combout => \line0~25_combout\);

-- Location: FF_X24_Y4_N11
\line0_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_cnt(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(21));

-- Location: FF_X24_Y4_N1
\line0_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_cnt~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(22));

-- Location: LCCOMB_X24_Y4_N20
\line0_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[0]~feeder_combout\ = \line0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \line0~28_combout\,
	combout => \line0_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X24_Y4_N21
\line0_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(0));

-- Location: LCCOMB_X24_Y4_N0
\line0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~26_combout\ = (line0_rtl_0_bypass(0) & (line0_rtl_0_bypass(21) $ (!line0_rtl_0_bypass(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(21),
	datac => line0_rtl_0_bypass(22),
	datad => line0_rtl_0_bypass(0),
	combout => \line0~26_combout\);

-- Location: LCCOMB_X23_Y5_N14
\line0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~27_combout\ = (\line0~24_combout\ & (\line0~25_combout\ & \line0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~24_combout\,
	datac => \line0~25_combout\,
	datad => \line0~26_combout\,
	combout => \line0~27_combout\);

-- Location: LCCOMB_X28_Y5_N8
\line0_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[23]~feeder_combout\ = \pixel_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[0]~input_o\,
	combout => \line0_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X28_Y5_N9
\line0_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(23));

-- Location: M9K_X27_Y5_N0
\line0_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line0_rtl_0|altsyncram_s2h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 1920,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 1920,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~28_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \line0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \line0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y5_N4
\r12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~0_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(23))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~27_combout\,
	datac => line0_rtl_0_bypass(23),
	datad => \line0_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \r12~0_combout\);

-- Location: FF_X28_Y5_N5
\r12[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~0_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(0));

-- Location: LCCOMB_X28_Y5_N28
\r11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~0_combout\ = (\rst_n~input_o\ & r12(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datac => r12(0),
	combout => \r11~0_combout\);

-- Location: FF_X28_Y5_N29
\r11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~0_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(0));

-- Location: LCCOMB_X28_Y5_N0
\r10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~0_combout\ = (\rst_n~input_o\ & r11(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => r11(0),
	combout => \r10~0_combout\);

-- Location: FF_X28_Y5_N1
\r10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~0_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(0));

-- Location: LCCOMB_X28_Y5_N26
\line0_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[24]~feeder_combout\ = \pixel_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[1]~input_o\,
	combout => \line0_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X28_Y5_N27
\line0_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(24));

-- Location: LCCOMB_X28_Y5_N18
\r12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~1_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(24))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(24),
	datac => \line0_rtl_0|auto_generated|ram_block1a1\,
	datad => \line0~27_combout\,
	combout => \r12~1_combout\);

-- Location: FF_X28_Y5_N19
\r12[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~1_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(1));

-- Location: LCCOMB_X28_Y5_N30
\r11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~1_combout\ = (\rst_n~input_o\ & r12(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => r12(1),
	combout => \r11~1_combout\);

-- Location: FF_X28_Y5_N31
\r11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~1_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(1));

-- Location: LCCOMB_X28_Y5_N14
\r10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~1_combout\ = (\rst_n~input_o\ & r11(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datac => r11(1),
	combout => \r10~1_combout\);

-- Location: FF_X28_Y5_N15
\r10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~1_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(1));

-- Location: LCCOMB_X28_Y4_N0
\line0_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[25]~feeder_combout\ = \pixel_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel_in[2]~input_o\,
	combout => \line0_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X28_Y4_N1
\line0_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(25));

-- Location: LCCOMB_X28_Y5_N12
\r12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~2_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(25))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_0_bypass(25),
	datac => \line0_rtl_0|auto_generated|ram_block1a2\,
	datad => \line0~27_combout\,
	combout => \r12~2_combout\);

-- Location: FF_X28_Y5_N13
\r12[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~2_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(2));

-- Location: LCCOMB_X28_Y4_N28
\r11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~2_combout\ = (r12(2) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r12(2),
	datac => \rst_n~input_o\,
	combout => \r11~2_combout\);

-- Location: FF_X28_Y4_N29
\r11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~2_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(2));

-- Location: LCCOMB_X28_Y4_N30
\r10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~2_combout\ = (\rst_n~input_o\ & r11(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r11(2),
	combout => \r10~2_combout\);

-- Location: FF_X28_Y4_N31
\r10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~2_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(2));

-- Location: LCCOMB_X26_Y5_N28
\line0_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[26]~feeder_combout\ = \pixel_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel_in[3]~input_o\,
	combout => \line0_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X26_Y5_N29
\line0_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(26));

-- Location: LCCOMB_X26_Y5_N4
\r12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~3_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(26))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_0_bypass(26),
	datac => \line0_rtl_0|auto_generated|ram_block1a3\,
	datad => \line0~27_combout\,
	combout => \r12~3_combout\);

-- Location: FF_X26_Y5_N5
\r12[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~3_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(3));

-- Location: LCCOMB_X28_Y4_N10
\r11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~3_combout\ = (\rst_n~input_o\ & r12(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r12(3),
	combout => \r11~3_combout\);

-- Location: FF_X28_Y4_N11
\r11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~3_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(3));

-- Location: LCCOMB_X28_Y4_N4
\r10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~3_combout\ = (\rst_n~input_o\ & r11(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r11(3),
	combout => \r10~3_combout\);

-- Location: FF_X28_Y4_N5
\r10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~3_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(3));

-- Location: LCCOMB_X26_Y4_N4
\line0_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[27]~feeder_combout\ = \pixel_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[4]~input_o\,
	combout => \line0_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X26_Y4_N5
\line0_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(27));

-- Location: M9K_X27_Y4_N0
\line0_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line0_rtl_0|altsyncram_s2h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 1920,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 1920,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~28_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line0_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \line0_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \line0_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line0_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y4_N28
\r12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~4_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(27))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line0_rtl_0_bypass(27),
	datac => \line0~27_combout\,
	datad => \line0_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	combout => \r12~4_combout\);

-- Location: FF_X26_Y4_N29
\r12[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~4_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(4));

-- Location: LCCOMB_X26_Y4_N8
\r11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~4_combout\ = (\rst_n~input_o\ & r12(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r12(4),
	combout => \r11~4_combout\);

-- Location: FF_X26_Y4_N9
\r11[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~4_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(4));

-- Location: LCCOMB_X26_Y4_N6
\r10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~4_combout\ = (r11(4) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11(4),
	datac => \rst_n~input_o\,
	combout => \r10~4_combout\);

-- Location: FF_X26_Y4_N7
\r10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~4_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(4));

-- Location: LCCOMB_X26_Y4_N26
\line0_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[28]~feeder_combout\ = \pixel_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel_in[5]~input_o\,
	combout => \line0_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X26_Y4_N27
\line0_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(28));

-- Location: LCCOMB_X26_Y4_N30
\r12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~5_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(28))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(28),
	datac => \line0~27_combout\,
	datad => \line0_rtl_0|auto_generated|ram_block1a5\,
	combout => \r12~5_combout\);

-- Location: FF_X26_Y4_N31
\r12[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~5_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(5));

-- Location: LCCOMB_X26_Y4_N2
\r11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~5_combout\ = (r12(5) & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r12(5),
	datac => \rst_n~input_o\,
	combout => \r11~5_combout\);

-- Location: FF_X26_Y4_N3
\r11[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~5_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(5));

-- Location: LCCOMB_X26_Y4_N16
\r10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~5_combout\ = (\rst_n~input_o\ & r11(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r11(5),
	combout => \r10~5_combout\);

-- Location: FF_X26_Y4_N17
\r10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~5_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(5));

-- Location: LCCOMB_X26_Y4_N12
\line0_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[29]~feeder_combout\ = \pixel_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel_in[6]~input_o\,
	combout => \line0_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X26_Y4_N13
\line0_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(29));

-- Location: LCCOMB_X26_Y4_N24
\r12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~6_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(29))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(29),
	datac => \line0~27_combout\,
	datad => \line0_rtl_0|auto_generated|ram_block1a6\,
	combout => \r12~6_combout\);

-- Location: FF_X26_Y4_N25
\r12[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~6_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(6));

-- Location: LCCOMB_X26_Y4_N0
\r11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~6_combout\ = (\rst_n~input_o\ & r12(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r12(6),
	combout => \r11~6_combout\);

-- Location: FF_X26_Y4_N1
\r11[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~6_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(6));

-- Location: LCCOMB_X26_Y4_N22
\r10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~6_combout\ = (\rst_n~input_o\ & r11(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r11(6),
	combout => \r10~6_combout\);

-- Location: FF_X26_Y4_N23
\r10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~6_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(6));

-- Location: LCCOMB_X28_Y4_N18
\line0_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[30]~feeder_combout\ = \pixel_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel_in[7]~input_o\,
	combout => \line0_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X28_Y4_N19
\line0_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(30));

-- Location: LCCOMB_X28_Y4_N12
\r12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r12~7_combout\ = (\line0~27_combout\ & (line0_rtl_0_bypass(30))) # (!\line0~27_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~27_combout\,
	datab => line0_rtl_0_bypass(30),
	datad => \line0_rtl_0|auto_generated|ram_block1a7\,
	combout => \r12~7_combout\);

-- Location: FF_X28_Y4_N13
\r12[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r12~7_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r12(7));

-- Location: LCCOMB_X28_Y4_N24
\r11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r11~7_combout\ = (\rst_n~input_o\ & r12(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r12(7),
	combout => \r11~7_combout\);

-- Location: FF_X28_Y4_N25
\r11[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r11~7_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r11(7));

-- Location: LCCOMB_X28_Y4_N22
\r10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r10~7_combout\ = (\rst_n~input_o\ & r11(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r11(7),
	combout => \r10~7_combout\);

-- Location: FF_X28_Y4_N23
\r10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r10~7_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r10(7));

-- Location: LCCOMB_X28_Y5_N20
\r22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~0_combout\ = (\rst_n~input_o\ & \pixel_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => \pixel_in[0]~input_o\,
	combout => \r22~0_combout\);

-- Location: FF_X28_Y5_N21
\r22[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~0_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(0));

-- Location: LCCOMB_X28_Y5_N16
\r21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~0_combout\ = (\rst_n~input_o\ & r22(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => r22(0),
	combout => \r21~0_combout\);

-- Location: FF_X28_Y5_N17
\r21[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~0_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(0));

-- Location: LCCOMB_X28_Y5_N24
\r20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~0_combout\ = (\rst_n~input_o\ & r21(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => r21(0),
	combout => \r20~0_combout\);

-- Location: FF_X28_Y5_N25
\r20[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~0_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(0));

-- Location: LCCOMB_X28_Y5_N6
\r22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~1_combout\ = (\rst_n~input_o\ & \pixel_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => \pixel_in[1]~input_o\,
	combout => \r22~1_combout\);

-- Location: FF_X28_Y5_N7
\r22[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~1_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(1));

-- Location: LCCOMB_X28_Y5_N10
\r21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~1_combout\ = (\rst_n~input_o\ & r22(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => r22(1),
	combout => \r21~1_combout\);

-- Location: FF_X28_Y5_N11
\r21[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~1_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(1));

-- Location: LCCOMB_X28_Y5_N22
\r20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~1_combout\ = (\rst_n~input_o\ & r21(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => r21(1),
	combout => \r20~1_combout\);

-- Location: FF_X28_Y5_N23
\r20[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~1_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(1));

-- Location: LCCOMB_X28_Y4_N2
\r22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~2_combout\ = (\pixel_in[2]~input_o\ & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_in[2]~input_o\,
	datac => \rst_n~input_o\,
	combout => \r22~2_combout\);

-- Location: FF_X28_Y4_N3
\r22[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~2_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(2));

-- Location: LCCOMB_X28_Y4_N20
\r21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~2_combout\ = (\rst_n~input_o\ & r22(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r22(2),
	combout => \r21~2_combout\);

-- Location: FF_X28_Y4_N21
\r21[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~2_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(2));

-- Location: LCCOMB_X28_Y4_N26
\r20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~2_combout\ = (\rst_n~input_o\ & r21(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r21(2),
	combout => \r20~2_combout\);

-- Location: FF_X28_Y4_N27
\r20[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~2_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(2));

-- Location: LCCOMB_X14_Y4_N2
\r22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~3_combout\ = (\rst_n~input_o\ & \pixel_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => \pixel_in[3]~input_o\,
	combout => \r22~3_combout\);

-- Location: FF_X14_Y4_N3
\r22[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~3_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(3));

-- Location: LCCOMB_X14_Y4_N10
\r21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~3_combout\ = (\rst_n~input_o\ & r22(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r22(3),
	combout => \r21~3_combout\);

-- Location: FF_X14_Y4_N11
\r21[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~3_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(3));

-- Location: LCCOMB_X14_Y4_N18
\r20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~3_combout\ = (\rst_n~input_o\ & r21(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r21(3),
	combout => \r20~3_combout\);

-- Location: FF_X14_Y4_N19
\r20[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~3_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(3));

-- Location: LCCOMB_X14_Y2_N0
\r22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~4_combout\ = (\rst_n~input_o\ & \pixel_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datad => \pixel_in[4]~input_o\,
	combout => \r22~4_combout\);

-- Location: FF_X14_Y2_N1
\r22[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~4_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(4));

-- Location: LCCOMB_X14_Y2_N20
\r21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~4_combout\ = (\rst_n~input_o\ & r22(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datad => r22(4),
	combout => \r21~4_combout\);

-- Location: FF_X14_Y2_N21
\r21[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~4_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(4));

-- Location: LCCOMB_X14_Y2_N8
\r20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~4_combout\ = (\rst_n~input_o\ & r21(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datad => r21(4),
	combout => \r20~4_combout\);

-- Location: FF_X14_Y2_N9
\r20[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~4_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(4));

-- Location: LCCOMB_X26_Y4_N10
\r22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~5_combout\ = (\rst_n~input_o\ & \pixel_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datac => \pixel_in[5]~input_o\,
	combout => \r22~5_combout\);

-- Location: FF_X26_Y4_N11
\r22[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~5_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(5));

-- Location: LCCOMB_X26_Y4_N20
\r21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~5_combout\ = (\rst_n~input_o\ & r22(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r22(5),
	combout => \r21~5_combout\);

-- Location: FF_X26_Y4_N21
\r21[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~5_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(5));

-- Location: LCCOMB_X26_Y4_N18
\r20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~5_combout\ = (\rst_n~input_o\ & r21(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r21(5),
	combout => \r20~5_combout\);

-- Location: FF_X26_Y4_N19
\r20[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~5_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(5));

-- Location: LCCOMB_X14_Y2_N10
\r22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~6_combout\ = (\pixel_in[6]~input_o\ & \rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_in[6]~input_o\,
	datad => \rst_n~input_o\,
	combout => \r22~6_combout\);

-- Location: FF_X14_Y2_N11
\r22[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~6_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(6));

-- Location: LCCOMB_X14_Y2_N6
\r21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~6_combout\ = (\rst_n~input_o\ & r22(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datad => r22(6),
	combout => \r21~6_combout\);

-- Location: FF_X14_Y2_N7
\r21[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~6_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(6));

-- Location: LCCOMB_X14_Y2_N26
\r20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~6_combout\ = (\rst_n~input_o\ & r21(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datad => r21(6),
	combout => \r20~6_combout\);

-- Location: FF_X14_Y2_N27
\r20[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~6_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(6));

-- Location: LCCOMB_X14_Y4_N0
\r22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r22~7_combout\ = (\rst_n~input_o\ & \pixel_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => \pixel_in[7]~input_o\,
	combout => \r22~7_combout\);

-- Location: FF_X14_Y4_N1
\r22[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r22~7_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r22(7));

-- Location: LCCOMB_X14_Y4_N16
\r21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r21~7_combout\ = (\rst_n~input_o\ & r22(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r22(7),
	combout => \r21~7_combout\);

-- Location: FF_X14_Y4_N17
\r21[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r21~7_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r21(7));

-- Location: LCCOMB_X14_Y4_N24
\r20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r20~7_combout\ = (\rst_n~input_o\ & r21(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_n~input_o\,
	datad => r21(7),
	combout => \r20~7_combout\);

-- Location: FF_X14_Y4_N25
\r20[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r20~7_combout\,
	ena => \x_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r20(7));

-- Location: LCCOMB_X25_Y5_N0
\y_cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[0]~32_combout\ = y_cnt(0) $ (VCC)
-- \y_cnt[0]~33\ = CARRY(y_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(0),
	datad => VCC,
	combout => \y_cnt[0]~32_combout\,
	cout => \y_cnt[0]~33\);

-- Location: LCCOMB_X21_Y4_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X21_Y4_N0
\y_cnt[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[5]~36_combout\ = ((\pixel_valid~input_o\ & \Equal0~3_combout\)) # (!\rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_valid~input_o\,
	datac => \rst_n~input_o\,
	datad => \Equal0~3_combout\,
	combout => \y_cnt[5]~36_combout\);

-- Location: FF_X25_Y5_N1
\y_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[0]~32_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(0));

-- Location: LCCOMB_X25_Y5_N2
\y_cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[1]~34_combout\ = (y_cnt(1) & (!\y_cnt[0]~33\)) # (!y_cnt(1) & ((\y_cnt[0]~33\) # (GND)))
-- \y_cnt[1]~35\ = CARRY((!\y_cnt[0]~33\) # (!y_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(1),
	datad => VCC,
	cin => \y_cnt[0]~33\,
	combout => \y_cnt[1]~34_combout\,
	cout => \y_cnt[1]~35\);

-- Location: FF_X25_Y5_N3
\y_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[1]~34_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(1));

-- Location: LCCOMB_X25_Y5_N4
\y_cnt[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[2]~37_combout\ = (y_cnt(2) & (\y_cnt[1]~35\ $ (GND))) # (!y_cnt(2) & (!\y_cnt[1]~35\ & VCC))
-- \y_cnt[2]~38\ = CARRY((y_cnt(2) & !\y_cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(2),
	datad => VCC,
	cin => \y_cnt[1]~35\,
	combout => \y_cnt[2]~37_combout\,
	cout => \y_cnt[2]~38\);

-- Location: FF_X25_Y5_N5
\y_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[2]~37_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(2));

-- Location: LCCOMB_X25_Y5_N6
\y_cnt[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[3]~39_combout\ = (y_cnt(3) & (!\y_cnt[2]~38\)) # (!y_cnt(3) & ((\y_cnt[2]~38\) # (GND)))
-- \y_cnt[3]~40\ = CARRY((!\y_cnt[2]~38\) # (!y_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datad => VCC,
	cin => \y_cnt[2]~38\,
	combout => \y_cnt[3]~39_combout\,
	cout => \y_cnt[3]~40\);

-- Location: FF_X25_Y5_N7
\y_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[3]~39_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(3));

-- Location: LCCOMB_X25_Y5_N8
\y_cnt[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[4]~41_combout\ = (y_cnt(4) & (\y_cnt[3]~40\ $ (GND))) # (!y_cnt(4) & (!\y_cnt[3]~40\ & VCC))
-- \y_cnt[4]~42\ = CARRY((y_cnt(4) & !\y_cnt[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(4),
	datad => VCC,
	cin => \y_cnt[3]~40\,
	combout => \y_cnt[4]~41_combout\,
	cout => \y_cnt[4]~42\);

-- Location: FF_X25_Y5_N9
\y_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[4]~41_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(4));

-- Location: LCCOMB_X25_Y5_N10
\y_cnt[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[5]~43_combout\ = (y_cnt(5) & (!\y_cnt[4]~42\)) # (!y_cnt(5) & ((\y_cnt[4]~42\) # (GND)))
-- \y_cnt[5]~44\ = CARRY((!\y_cnt[4]~42\) # (!y_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datad => VCC,
	cin => \y_cnt[4]~42\,
	combout => \y_cnt[5]~43_combout\,
	cout => \y_cnt[5]~44\);

-- Location: FF_X25_Y5_N11
\y_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[5]~43_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(5));

-- Location: LCCOMB_X25_Y5_N12
\y_cnt[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[6]~45_combout\ = (y_cnt(6) & (\y_cnt[5]~44\ $ (GND))) # (!y_cnt(6) & (!\y_cnt[5]~44\ & VCC))
-- \y_cnt[6]~46\ = CARRY((y_cnt(6) & !\y_cnt[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datad => VCC,
	cin => \y_cnt[5]~44\,
	combout => \y_cnt[6]~45_combout\,
	cout => \y_cnt[6]~46\);

-- Location: FF_X25_Y5_N13
\y_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[6]~45_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(6));

-- Location: LCCOMB_X25_Y5_N14
\y_cnt[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[7]~47_combout\ = (y_cnt(7) & (!\y_cnt[6]~46\)) # (!y_cnt(7) & ((\y_cnt[6]~46\) # (GND)))
-- \y_cnt[7]~48\ = CARRY((!\y_cnt[6]~46\) # (!y_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(7),
	datad => VCC,
	cin => \y_cnt[6]~46\,
	combout => \y_cnt[7]~47_combout\,
	cout => \y_cnt[7]~48\);

-- Location: FF_X25_Y5_N15
\y_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[7]~47_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(7));

-- Location: LCCOMB_X25_Y5_N16
\y_cnt[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[8]~49_combout\ = (y_cnt(8) & (\y_cnt[7]~48\ $ (GND))) # (!y_cnt(8) & (!\y_cnt[7]~48\ & VCC))
-- \y_cnt[8]~50\ = CARRY((y_cnt(8) & !\y_cnt[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(8),
	datad => VCC,
	cin => \y_cnt[7]~48\,
	combout => \y_cnt[8]~49_combout\,
	cout => \y_cnt[8]~50\);

-- Location: FF_X25_Y5_N17
\y_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[8]~49_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(8));

-- Location: LCCOMB_X25_Y5_N18
\y_cnt[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[9]~51_combout\ = (y_cnt(9) & (!\y_cnt[8]~50\)) # (!y_cnt(9) & ((\y_cnt[8]~50\) # (GND)))
-- \y_cnt[9]~52\ = CARRY((!\y_cnt[8]~50\) # (!y_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(9),
	datad => VCC,
	cin => \y_cnt[8]~50\,
	combout => \y_cnt[9]~51_combout\,
	cout => \y_cnt[9]~52\);

-- Location: FF_X25_Y5_N19
\y_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[9]~51_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(9));

-- Location: LCCOMB_X25_Y5_N20
\y_cnt[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[10]~53_combout\ = (y_cnt(10) & (\y_cnt[9]~52\ $ (GND))) # (!y_cnt(10) & (!\y_cnt[9]~52\ & VCC))
-- \y_cnt[10]~54\ = CARRY((y_cnt(10) & !\y_cnt[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(10),
	datad => VCC,
	cin => \y_cnt[9]~52\,
	combout => \y_cnt[10]~53_combout\,
	cout => \y_cnt[10]~54\);

-- Location: FF_X25_Y5_N21
\y_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[10]~53_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(10));

-- Location: LCCOMB_X25_Y5_N22
\y_cnt[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[11]~55_combout\ = (y_cnt(11) & (!\y_cnt[10]~54\)) # (!y_cnt(11) & ((\y_cnt[10]~54\) # (GND)))
-- \y_cnt[11]~56\ = CARRY((!\y_cnt[10]~54\) # (!y_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(11),
	datad => VCC,
	cin => \y_cnt[10]~54\,
	combout => \y_cnt[11]~55_combout\,
	cout => \y_cnt[11]~56\);

-- Location: FF_X25_Y5_N23
\y_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[11]~55_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(11));

-- Location: LCCOMB_X25_Y5_N24
\y_cnt[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[12]~57_combout\ = (y_cnt(12) & (\y_cnt[11]~56\ $ (GND))) # (!y_cnt(12) & (!\y_cnt[11]~56\ & VCC))
-- \y_cnt[12]~58\ = CARRY((y_cnt(12) & !\y_cnt[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(12),
	datad => VCC,
	cin => \y_cnt[11]~56\,
	combout => \y_cnt[12]~57_combout\,
	cout => \y_cnt[12]~58\);

-- Location: FF_X25_Y5_N25
\y_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[12]~57_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(12));

-- Location: LCCOMB_X25_Y5_N26
\y_cnt[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[13]~59_combout\ = (y_cnt(13) & (!\y_cnt[12]~58\)) # (!y_cnt(13) & ((\y_cnt[12]~58\) # (GND)))
-- \y_cnt[13]~60\ = CARRY((!\y_cnt[12]~58\) # (!y_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(13),
	datad => VCC,
	cin => \y_cnt[12]~58\,
	combout => \y_cnt[13]~59_combout\,
	cout => \y_cnt[13]~60\);

-- Location: FF_X25_Y5_N27
\y_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[13]~59_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(13));

-- Location: LCCOMB_X25_Y5_N28
\y_cnt[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[14]~61_combout\ = (y_cnt(14) & (\y_cnt[13]~60\ $ (GND))) # (!y_cnt(14) & (!\y_cnt[13]~60\ & VCC))
-- \y_cnt[14]~62\ = CARRY((y_cnt(14) & !\y_cnt[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(14),
	datad => VCC,
	cin => \y_cnt[13]~60\,
	combout => \y_cnt[14]~61_combout\,
	cout => \y_cnt[14]~62\);

-- Location: FF_X25_Y5_N29
\y_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[14]~61_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(14));

-- Location: LCCOMB_X25_Y5_N30
\y_cnt[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[15]~63_combout\ = (y_cnt(15) & (!\y_cnt[14]~62\)) # (!y_cnt(15) & ((\y_cnt[14]~62\) # (GND)))
-- \y_cnt[15]~64\ = CARRY((!\y_cnt[14]~62\) # (!y_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(15),
	datad => VCC,
	cin => \y_cnt[14]~62\,
	combout => \y_cnt[15]~63_combout\,
	cout => \y_cnt[15]~64\);

-- Location: FF_X25_Y5_N31
\y_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[15]~63_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(15));

-- Location: LCCOMB_X25_Y4_N0
\y_cnt[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[16]~65_combout\ = (y_cnt(16) & (\y_cnt[15]~64\ $ (GND))) # (!y_cnt(16) & (!\y_cnt[15]~64\ & VCC))
-- \y_cnt[16]~66\ = CARRY((y_cnt(16) & !\y_cnt[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(16),
	datad => VCC,
	cin => \y_cnt[15]~64\,
	combout => \y_cnt[16]~65_combout\,
	cout => \y_cnt[16]~66\);

-- Location: FF_X25_Y4_N1
\y_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[16]~65_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(16));

-- Location: LCCOMB_X25_Y4_N2
\y_cnt[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[17]~67_combout\ = (y_cnt(17) & (!\y_cnt[16]~66\)) # (!y_cnt(17) & ((\y_cnt[16]~66\) # (GND)))
-- \y_cnt[17]~68\ = CARRY((!\y_cnt[16]~66\) # (!y_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(17),
	datad => VCC,
	cin => \y_cnt[16]~66\,
	combout => \y_cnt[17]~67_combout\,
	cout => \y_cnt[17]~68\);

-- Location: FF_X25_Y4_N3
\y_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[17]~67_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(17));

-- Location: LCCOMB_X25_Y4_N4
\y_cnt[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[18]~69_combout\ = (y_cnt(18) & (\y_cnt[17]~68\ $ (GND))) # (!y_cnt(18) & (!\y_cnt[17]~68\ & VCC))
-- \y_cnt[18]~70\ = CARRY((y_cnt(18) & !\y_cnt[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(18),
	datad => VCC,
	cin => \y_cnt[17]~68\,
	combout => \y_cnt[18]~69_combout\,
	cout => \y_cnt[18]~70\);

-- Location: FF_X25_Y4_N5
\y_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[18]~69_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(18));

-- Location: LCCOMB_X25_Y4_N6
\y_cnt[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[19]~71_combout\ = (y_cnt(19) & (!\y_cnt[18]~70\)) # (!y_cnt(19) & ((\y_cnt[18]~70\) # (GND)))
-- \y_cnt[19]~72\ = CARRY((!\y_cnt[18]~70\) # (!y_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(19),
	datad => VCC,
	cin => \y_cnt[18]~70\,
	combout => \y_cnt[19]~71_combout\,
	cout => \y_cnt[19]~72\);

-- Location: FF_X25_Y4_N7
\y_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[19]~71_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(19));

-- Location: LCCOMB_X25_Y4_N8
\y_cnt[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[20]~73_combout\ = (y_cnt(20) & (\y_cnt[19]~72\ $ (GND))) # (!y_cnt(20) & (!\y_cnt[19]~72\ & VCC))
-- \y_cnt[20]~74\ = CARRY((y_cnt(20) & !\y_cnt[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(20),
	datad => VCC,
	cin => \y_cnt[19]~72\,
	combout => \y_cnt[20]~73_combout\,
	cout => \y_cnt[20]~74\);

-- Location: FF_X25_Y4_N9
\y_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[20]~73_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(20));

-- Location: LCCOMB_X25_Y4_N10
\y_cnt[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[21]~75_combout\ = (y_cnt(21) & (!\y_cnt[20]~74\)) # (!y_cnt(21) & ((\y_cnt[20]~74\) # (GND)))
-- \y_cnt[21]~76\ = CARRY((!\y_cnt[20]~74\) # (!y_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(21),
	datad => VCC,
	cin => \y_cnt[20]~74\,
	combout => \y_cnt[21]~75_combout\,
	cout => \y_cnt[21]~76\);

-- Location: FF_X25_Y4_N11
\y_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[21]~75_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(21));

-- Location: LCCOMB_X25_Y4_N12
\y_cnt[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[22]~77_combout\ = (y_cnt(22) & (\y_cnt[21]~76\ $ (GND))) # (!y_cnt(22) & (!\y_cnt[21]~76\ & VCC))
-- \y_cnt[22]~78\ = CARRY((y_cnt(22) & !\y_cnt[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(22),
	datad => VCC,
	cin => \y_cnt[21]~76\,
	combout => \y_cnt[22]~77_combout\,
	cout => \y_cnt[22]~78\);

-- Location: FF_X25_Y4_N13
\y_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[22]~77_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(22));

-- Location: LCCOMB_X25_Y4_N14
\y_cnt[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[23]~79_combout\ = (y_cnt(23) & (!\y_cnt[22]~78\)) # (!y_cnt(23) & ((\y_cnt[22]~78\) # (GND)))
-- \y_cnt[23]~80\ = CARRY((!\y_cnt[22]~78\) # (!y_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(23),
	datad => VCC,
	cin => \y_cnt[22]~78\,
	combout => \y_cnt[23]~79_combout\,
	cout => \y_cnt[23]~80\);

-- Location: FF_X25_Y4_N15
\y_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[23]~79_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(23));

-- Location: LCCOMB_X25_Y4_N16
\y_cnt[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[24]~81_combout\ = (y_cnt(24) & (\y_cnt[23]~80\ $ (GND))) # (!y_cnt(24) & (!\y_cnt[23]~80\ & VCC))
-- \y_cnt[24]~82\ = CARRY((y_cnt(24) & !\y_cnt[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(24),
	datad => VCC,
	cin => \y_cnt[23]~80\,
	combout => \y_cnt[24]~81_combout\,
	cout => \y_cnt[24]~82\);

-- Location: FF_X25_Y4_N17
\y_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[24]~81_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(24));

-- Location: LCCOMB_X25_Y4_N18
\y_cnt[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[25]~83_combout\ = (y_cnt(25) & (!\y_cnt[24]~82\)) # (!y_cnt(25) & ((\y_cnt[24]~82\) # (GND)))
-- \y_cnt[25]~84\ = CARRY((!\y_cnt[24]~82\) # (!y_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(25),
	datad => VCC,
	cin => \y_cnt[24]~82\,
	combout => \y_cnt[25]~83_combout\,
	cout => \y_cnt[25]~84\);

-- Location: FF_X25_Y4_N19
\y_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[25]~83_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(25));

-- Location: LCCOMB_X25_Y4_N20
\y_cnt[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[26]~85_combout\ = (y_cnt(26) & (\y_cnt[25]~84\ $ (GND))) # (!y_cnt(26) & (!\y_cnt[25]~84\ & VCC))
-- \y_cnt[26]~86\ = CARRY((y_cnt(26) & !\y_cnt[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(26),
	datad => VCC,
	cin => \y_cnt[25]~84\,
	combout => \y_cnt[26]~85_combout\,
	cout => \y_cnt[26]~86\);

-- Location: FF_X25_Y4_N21
\y_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[26]~85_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(26));

-- Location: LCCOMB_X25_Y4_N22
\y_cnt[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[27]~87_combout\ = (y_cnt(27) & (!\y_cnt[26]~86\)) # (!y_cnt(27) & ((\y_cnt[26]~86\) # (GND)))
-- \y_cnt[27]~88\ = CARRY((!\y_cnt[26]~86\) # (!y_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(27),
	datad => VCC,
	cin => \y_cnt[26]~86\,
	combout => \y_cnt[27]~87_combout\,
	cout => \y_cnt[27]~88\);

-- Location: FF_X25_Y4_N23
\y_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[27]~87_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(27));

-- Location: LCCOMB_X25_Y4_N24
\y_cnt[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[28]~89_combout\ = (y_cnt(28) & (\y_cnt[27]~88\ $ (GND))) # (!y_cnt(28) & (!\y_cnt[27]~88\ & VCC))
-- \y_cnt[28]~90\ = CARRY((y_cnt(28) & !\y_cnt[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(28),
	datad => VCC,
	cin => \y_cnt[27]~88\,
	combout => \y_cnt[28]~89_combout\,
	cout => \y_cnt[28]~90\);

-- Location: FF_X25_Y4_N25
\y_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[28]~89_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(28));

-- Location: LCCOMB_X25_Y4_N26
\y_cnt[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[29]~91_combout\ = (y_cnt(29) & (!\y_cnt[28]~90\)) # (!y_cnt(29) & ((\y_cnt[28]~90\) # (GND)))
-- \y_cnt[29]~92\ = CARRY((!\y_cnt[28]~90\) # (!y_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(29),
	datad => VCC,
	cin => \y_cnt[28]~90\,
	combout => \y_cnt[29]~91_combout\,
	cout => \y_cnt[29]~92\);

-- Location: FF_X25_Y4_N27
\y_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[29]~91_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(29));

-- Location: LCCOMB_X25_Y4_N28
\y_cnt[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[30]~93_combout\ = (y_cnt(30) & (\y_cnt[29]~92\ $ (GND))) # (!y_cnt(30) & (!\y_cnt[29]~92\ & VCC))
-- \y_cnt[30]~94\ = CARRY((y_cnt(30) & !\y_cnt[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(30),
	datad => VCC,
	cin => \y_cnt[29]~92\,
	combout => \y_cnt[30]~93_combout\,
	cout => \y_cnt[30]~94\);

-- Location: FF_X25_Y4_N29
\y_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[30]~93_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(30));

-- Location: LCCOMB_X25_Y4_N30
\y_cnt[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_cnt[31]~95_combout\ = y_cnt(31) $ (\y_cnt[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(31),
	cin => \y_cnt[30]~94\,
	combout => \y_cnt[31]~95_combout\);

-- Location: FF_X25_Y4_N31
\y_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[31]~95_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	ena => \y_cnt[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(31));

-- Location: LCCOMB_X21_Y4_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (x_cnt(7)) # ((x_cnt(8)) # ((x_cnt(6)) # (x_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(7),
	datab => x_cnt(8),
	datac => x_cnt(6),
	datad => x_cnt(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y4_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (x_cnt(4)) # ((x_cnt(1)) # ((x_cnt(3)) # (x_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(4),
	datab => x_cnt(1),
	datac => x_cnt(3),
	datad => x_cnt(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y4_N14
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\) # ((x_cnt(9)) # ((x_cnt(10)) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => x_cnt(9),
	datac => x_cnt(10),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y4_N16
\window_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \window_valid~0_combout\ = (\rst_n~input_o\ & (\pixel_valid~input_o\ & (!y_cnt(31) & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \pixel_valid~input_o\,
	datac => y_cnt(31),
	datad => \LessThan0~2_combout\,
	combout => \window_valid~0_combout\);

-- Location: LCCOMB_X24_Y4_N30
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (y_cnt(28)) # ((y_cnt(27)) # ((y_cnt(26)) # (y_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(28),
	datab => y_cnt(27),
	datac => y_cnt(26),
	datad => y_cnt(25),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X24_Y4_N12
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (y_cnt(30)) # ((\LessThan1~7_combout\) # (y_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(30),
	datac => \LessThan1~7_combout\,
	datad => y_cnt(29),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X24_Y4_N24
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (y_cnt(23)) # ((y_cnt(22)) # ((y_cnt(21)) # (y_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(23),
	datab => y_cnt(22),
	datac => y_cnt(21),
	datad => y_cnt(24),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X24_Y4_N22
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (y_cnt(18)) # ((y_cnt(19)) # ((y_cnt(20)) # (y_cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(18),
	datab => y_cnt(19),
	datac => y_cnt(20),
	datad => y_cnt(17),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X24_Y5_N22
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (y_cnt(7)) # ((y_cnt(6)) # ((y_cnt(5)) # (y_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(7),
	datab => y_cnt(6),
	datac => y_cnt(5),
	datad => y_cnt(8),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y5_N16
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (y_cnt(3)) # ((y_cnt(4)) # ((y_cnt(2)) # (y_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(4),
	datac => y_cnt(2),
	datad => y_cnt(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y5_N8
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (y_cnt(12)) # ((y_cnt(11)) # ((y_cnt(10)) # (y_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(12),
	datab => y_cnt(11),
	datac => y_cnt(10),
	datad => y_cnt(9),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y5_N18
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (y_cnt(16)) # ((y_cnt(14)) # ((y_cnt(15)) # (y_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(16),
	datab => y_cnt(14),
	datac => y_cnt(15),
	datad => y_cnt(13),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y5_N20
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\) # ((\LessThan1~0_combout\) # ((\LessThan1~2_combout\) # (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y4_N18
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~8_combout\) # ((\LessThan1~6_combout\) # ((\LessThan1~5_combout\) # (\LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \LessThan1~6_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X24_Y4_N28
\window_valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \window_valid~1_combout\ = (\line0~28_combout\ & (\window_valid~0_combout\ & ((\LessThan1~9_combout\)))) # (!\line0~28_combout\ & ((\window_valid~reg0_q\) # ((\window_valid~0_combout\ & \LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~28_combout\,
	datab => \window_valid~0_combout\,
	datac => \window_valid~reg0_q\,
	datad => \LessThan1~9_combout\,
	combout => \window_valid~1_combout\);

-- Location: FF_X24_Y4_N29
\window_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \window_valid~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \window_valid~reg0_q\);

ww_w00(0) <= \w00[0]~output_o\;

ww_w00(1) <= \w00[1]~output_o\;

ww_w00(2) <= \w00[2]~output_o\;

ww_w00(3) <= \w00[3]~output_o\;

ww_w00(4) <= \w00[4]~output_o\;

ww_w00(5) <= \w00[5]~output_o\;

ww_w00(6) <= \w00[6]~output_o\;

ww_w00(7) <= \w00[7]~output_o\;

ww_w01(0) <= \w01[0]~output_o\;

ww_w01(1) <= \w01[1]~output_o\;

ww_w01(2) <= \w01[2]~output_o\;

ww_w01(3) <= \w01[3]~output_o\;

ww_w01(4) <= \w01[4]~output_o\;

ww_w01(5) <= \w01[5]~output_o\;

ww_w01(6) <= \w01[6]~output_o\;

ww_w01(7) <= \w01[7]~output_o\;

ww_w02(0) <= \w02[0]~output_o\;

ww_w02(1) <= \w02[1]~output_o\;

ww_w02(2) <= \w02[2]~output_o\;

ww_w02(3) <= \w02[3]~output_o\;

ww_w02(4) <= \w02[4]~output_o\;

ww_w02(5) <= \w02[5]~output_o\;

ww_w02(6) <= \w02[6]~output_o\;

ww_w02(7) <= \w02[7]~output_o\;

ww_w10(0) <= \w10[0]~output_o\;

ww_w10(1) <= \w10[1]~output_o\;

ww_w10(2) <= \w10[2]~output_o\;

ww_w10(3) <= \w10[3]~output_o\;

ww_w10(4) <= \w10[4]~output_o\;

ww_w10(5) <= \w10[5]~output_o\;

ww_w10(6) <= \w10[6]~output_o\;

ww_w10(7) <= \w10[7]~output_o\;

ww_w11(0) <= \w11[0]~output_o\;

ww_w11(1) <= \w11[1]~output_o\;

ww_w11(2) <= \w11[2]~output_o\;

ww_w11(3) <= \w11[3]~output_o\;

ww_w11(4) <= \w11[4]~output_o\;

ww_w11(5) <= \w11[5]~output_o\;

ww_w11(6) <= \w11[6]~output_o\;

ww_w11(7) <= \w11[7]~output_o\;

ww_w12(0) <= \w12[0]~output_o\;

ww_w12(1) <= \w12[1]~output_o\;

ww_w12(2) <= \w12[2]~output_o\;

ww_w12(3) <= \w12[3]~output_o\;

ww_w12(4) <= \w12[4]~output_o\;

ww_w12(5) <= \w12[5]~output_o\;

ww_w12(6) <= \w12[6]~output_o\;

ww_w12(7) <= \w12[7]~output_o\;

ww_w20(0) <= \w20[0]~output_o\;

ww_w20(1) <= \w20[1]~output_o\;

ww_w20(2) <= \w20[2]~output_o\;

ww_w20(3) <= \w20[3]~output_o\;

ww_w20(4) <= \w20[4]~output_o\;

ww_w20(5) <= \w20[5]~output_o\;

ww_w20(6) <= \w20[6]~output_o\;

ww_w20(7) <= \w20[7]~output_o\;

ww_w21(0) <= \w21[0]~output_o\;

ww_w21(1) <= \w21[1]~output_o\;

ww_w21(2) <= \w21[2]~output_o\;

ww_w21(3) <= \w21[3]~output_o\;

ww_w21(4) <= \w21[4]~output_o\;

ww_w21(5) <= \w21[5]~output_o\;

ww_w21(6) <= \w21[6]~output_o\;

ww_w21(7) <= \w21[7]~output_o\;

ww_w22(0) <= \w22[0]~output_o\;

ww_w22(1) <= \w22[1]~output_o\;

ww_w22(2) <= \w22[2]~output_o\;

ww_w22(3) <= \w22[3]~output_o\;

ww_w22(4) <= \w22[4]~output_o\;

ww_w22(5) <= \w22[5]~output_o\;

ww_w22(6) <= \w22[6]~output_o\;

ww_w22(7) <= \w22[7]~output_o\;

ww_window_valid <= \window_valid~output_o\;
END structure;


