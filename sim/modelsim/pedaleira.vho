-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "03/20/2023 18:25:01"

-- 
-- Device: Altera EP4CE115F29I8L Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	pedaleira IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sda : INOUT std_logic;
	scl : OUT std_logic;
	bclk : IN std_logic;
	wclk : IN std_logic;
	sdata : IN std_logic;
	audio_data : OUT std_logic_vector(15 DOWNTO 0);
	data_valid : OUT std_logic
	);
END pedaleira;

-- Design Ports Information
-- scl	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bclk	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[9]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[10]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[11]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[13]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[14]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_data[15]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_valid	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdata	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wclk	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pedaleira IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_bclk : std_logic;
SIGNAL ww_wclk : std_logic;
SIGNAL ww_sdata : std_logic;
SIGNAL ww_audio_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_valid : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bclk~input_o\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \audio_data[0]~output_o\ : std_logic;
SIGNAL \audio_data[1]~output_o\ : std_logic;
SIGNAL \audio_data[2]~output_o\ : std_logic;
SIGNAL \audio_data[3]~output_o\ : std_logic;
SIGNAL \audio_data[4]~output_o\ : std_logic;
SIGNAL \audio_data[5]~output_o\ : std_logic;
SIGNAL \audio_data[6]~output_o\ : std_logic;
SIGNAL \audio_data[7]~output_o\ : std_logic;
SIGNAL \audio_data[8]~output_o\ : std_logic;
SIGNAL \audio_data[9]~output_o\ : std_logic;
SIGNAL \audio_data[10]~output_o\ : std_logic;
SIGNAL \audio_data[11]~output_o\ : std_logic;
SIGNAL \audio_data[12]~output_o\ : std_logic;
SIGNAL \audio_data[13]~output_o\ : std_logic;
SIGNAL \audio_data[14]~output_o\ : std_logic;
SIGNAL \audio_data[15]~output_o\ : std_logic;
SIGNAL \data_valid~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \i2c_inst|received_ack~0_combout\ : std_logic;
SIGNAL \i2c_inst|received_ack~q\ : std_logic;
SIGNAL \wm8731_inst|config_index[0]~2_combout\ : std_logic;
SIGNAL \wm8731_inst|config_index[31]~0_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~0_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~1\ : std_logic;
SIGNAL \wm8731_inst|Add0~2_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~3\ : std_logic;
SIGNAL \wm8731_inst|Add0~4_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~5\ : std_logic;
SIGNAL \wm8731_inst|Add0~6_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~7\ : std_logic;
SIGNAL \wm8731_inst|Add0~8_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~9\ : std_logic;
SIGNAL \wm8731_inst|Add0~10_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~11\ : std_logic;
SIGNAL \wm8731_inst|Add0~12_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~13\ : std_logic;
SIGNAL \wm8731_inst|Add0~14_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~15\ : std_logic;
SIGNAL \wm8731_inst|Add0~16_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~17\ : std_logic;
SIGNAL \wm8731_inst|Add0~18_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~19\ : std_logic;
SIGNAL \wm8731_inst|Add0~20_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~21\ : std_logic;
SIGNAL \wm8731_inst|Add0~22_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~23\ : std_logic;
SIGNAL \wm8731_inst|Add0~24_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~25\ : std_logic;
SIGNAL \wm8731_inst|Add0~26_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~27\ : std_logic;
SIGNAL \wm8731_inst|Add0~28_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~29\ : std_logic;
SIGNAL \wm8731_inst|Add0~30_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~31\ : std_logic;
SIGNAL \wm8731_inst|Add0~32_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~33\ : std_logic;
SIGNAL \wm8731_inst|Add0~34_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~35\ : std_logic;
SIGNAL \wm8731_inst|Add0~36_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~37\ : std_logic;
SIGNAL \wm8731_inst|Add0~38_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~39\ : std_logic;
SIGNAL \wm8731_inst|Add0~40_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~41\ : std_logic;
SIGNAL \wm8731_inst|Add0~42_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~43\ : std_logic;
SIGNAL \wm8731_inst|Add0~44_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~45\ : std_logic;
SIGNAL \wm8731_inst|Add0~46_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~47\ : std_logic;
SIGNAL \wm8731_inst|Add0~48_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~49\ : std_logic;
SIGNAL \wm8731_inst|Add0~50_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~51\ : std_logic;
SIGNAL \wm8731_inst|Add0~52_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~53\ : std_logic;
SIGNAL \wm8731_inst|Add0~54_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~55\ : std_logic;
SIGNAL \wm8731_inst|Add0~56_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~57\ : std_logic;
SIGNAL \wm8731_inst|Add0~58_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~59\ : std_logic;
SIGNAL \wm8731_inst|Add0~60_combout\ : std_logic;
SIGNAL \wm8731_inst|config_index[31]~1_combout\ : std_logic;
SIGNAL \wm8731_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \wm8731_inst|Selector0~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \wm8731_inst|state.idle~q\ : std_logic;
SIGNAL \wm8731_inst|Selector1~0_combout\ : std_logic;
SIGNAL \wm8731_inst|state.send_config~q\ : std_logic;
SIGNAL \wm8731_inst|Selector2~0_combout\ : std_logic;
SIGNAL \wm8731_inst|state.wait_ack~q\ : std_logic;
SIGNAL \wm8731_inst|Selector3~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_start~q\ : std_logic;
SIGNAL \wm8731_inst|i2c_write~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_write~q\ : std_logic;
SIGNAL \i2c_inst|Selector0~0_combout\ : std_logic;
SIGNAL \i2c_inst|state.idle~q\ : std_logic;
SIGNAL \i2c_inst|Selector1~0_combout\ : std_logic;
SIGNAL \i2c_inst|state.start~q\ : std_logic;
SIGNAL \i2c_inst|Selector7~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector3~0_combout\ : std_logic;
SIGNAL \i2c_inst|state.write_addr~q\ : std_logic;
SIGNAL \i2c_inst|sda~7_combout\ : std_logic;
SIGNAL \i2c_inst|bit_counter[2]~4_combout\ : std_logic;
SIGNAL \i2c_inst|Selector5~0_combout\ : std_logic;
SIGNAL \i2c_inst|state.read_data~q\ : std_logic;
SIGNAL \i2c_inst|bit_counter[3]~5_combout\ : std_logic;
SIGNAL \i2c_inst|bit_counter[3]~6_combout\ : std_logic;
SIGNAL \i2c_inst|bit_counter[0]~10_combout\ : std_logic;
SIGNAL \i2c_inst|bit_counter[1]~9_combout\ : std_logic;
SIGNAL \i2c_inst|Add1~0_combout\ : std_logic;
SIGNAL \i2c_inst|bit_counter[2]~7_combout\ : std_logic;
SIGNAL \i2c_inst|Add1~1_combout\ : std_logic;
SIGNAL \i2c_inst|bit_counter[3]~8_combout\ : std_logic;
SIGNAL \i2c_inst|Equal0~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector6~0_combout\ : std_logic;
SIGNAL \i2c_inst|state.send_ack~q\ : std_logic;
SIGNAL \i2c_inst|Selector7~1_combout\ : std_logic;
SIGNAL \i2c_inst|Selector7~2_combout\ : std_logic;
SIGNAL \i2c_inst|state.receive_ack~q\ : std_logic;
SIGNAL \i2c_inst|Selector4~0_combout\ : std_logic;
SIGNAL \i2c_inst|state.write_data~q\ : std_logic;
SIGNAL \i2c_inst|Add0~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector8~5_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \i2c_inst|Selector13~2_combout\ : std_logic;
SIGNAL \i2c_inst|Selector13~3_combout\ : std_logic;
SIGNAL \i2c_inst|Selector8~0_combout\ : std_logic;
SIGNAL \i2c_inst|Add0~2_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \i2c_inst|Selector20~6_combout\ : std_logic;
SIGNAL \i2c_inst|Selector16~7_combout\ : std_logic;
SIGNAL \i2c_inst|Selector16~4_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux1~1_combout\ : std_logic;
SIGNAL \wm8731_inst|config_data[3]~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector20~4_combout\ : std_logic;
SIGNAL \i2c_inst|Selector20~5_combout\ : std_logic;
SIGNAL \i2c_inst|WideOr5~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector21~0_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux3~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector21~1_combout\ : std_logic;
SIGNAL \i2c_inst|Mux0~2_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \i2c_inst|Selector18~4_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux0~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector15~2_combout\ : std_logic;
SIGNAL \i2c_inst|Selector18~2_combout\ : std_logic;
SIGNAL \i2c_inst|Selector18~3_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \i2c_inst|Selector19~3_combout\ : std_logic;
SIGNAL \i2c_inst|Selector19~2_combout\ : std_logic;
SIGNAL \i2c_inst|Add0~1_combout\ : std_logic;
SIGNAL \i2c_inst|Mux0~3_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \i2c_inst|Selector14~3_combout\ : std_logic;
SIGNAL \i2c_inst|Selector14~2_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector15~5_combout\ : std_logic;
SIGNAL \i2c_inst|Selector15~3_combout\ : std_logic;
SIGNAL \i2c_inst|Selector15~4_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \i2c_inst|Selector16~8_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux1~0_combout\ : std_logic;
SIGNAL \i2c_inst|Selector16~5_combout\ : std_logic;
SIGNAL \i2c_inst|Selector16~6_combout\ : std_logic;
SIGNAL \i2c_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \i2c_inst|Selector17~4_combout\ : std_logic;
SIGNAL \i2c_inst|Selector17~2_combout\ : std_logic;
SIGNAL \i2c_inst|Selector17~3_combout\ : std_logic;
SIGNAL \i2c_inst|Mux0~0_combout\ : std_logic;
SIGNAL \i2c_inst|Mux0~1_combout\ : std_logic;
SIGNAL \i2c_inst|Selector8~1_combout\ : std_logic;
SIGNAL \i2c_inst|Selector8~3_combout\ : std_logic;
SIGNAL \i2c_inst|Mux1~2_combout\ : std_logic;
SIGNAL \i2c_inst|Mux1~3_combout\ : std_logic;
SIGNAL \i2c_inst|Mux1~0_combout\ : std_logic;
SIGNAL \i2c_inst|Mux1~1_combout\ : std_logic;
SIGNAL \i2c_inst|Selector8~2_combout\ : std_logic;
SIGNAL \i2c_inst|Selector8~4_combout\ : std_logic;
SIGNAL \i2c_inst|Selector8~6_combout\ : std_logic;
SIGNAL \i2c_inst|sda_internal~q\ : std_logic;
SIGNAL \i2c_inst|sda~6_combout\ : std_logic;
SIGNAL \sdata~input_o\ : std_logic;
SIGNAL \i2s_inst|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \wclk~input_o\ : std_logic;
SIGNAL \i2s_inst|last_wclk~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|last_wclk~q\ : std_logic;
SIGNAL \i2s_inst|sampling_edge~0_combout\ : std_logic;
SIGNAL \i2s_inst|sampling_edge~q\ : std_logic;
SIGNAL \i2s_inst|audio_data[0]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|bit_counter[0]~4_combout\ : std_logic;
SIGNAL \i2s_inst|bit_counter[1]~2_combout\ : std_logic;
SIGNAL \i2s_inst|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \i2s_inst|bit_counter[3]~0_combout\ : std_logic;
SIGNAL \i2s_inst|bit_counter[3]~1_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[0]~0_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[0]~1_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[1]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[2]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[3]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[5]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[6]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[7]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[8]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[9]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[10]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[11]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[11]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[12]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[12]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[13]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[13]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[14]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|shift_reg[15]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|audio_data[15]~feeder_combout\ : std_logic;
SIGNAL \i2s_inst|Equal0~0_combout\ : std_logic;
SIGNAL \i2s_inst|data_valid~q\ : std_logic;
SIGNAL \i2s_inst|audio_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2s_inst|shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2s_inst|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wm8731_inst|config_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_inst|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wm8731_inst|config_index\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2c_inst|shift_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
scl <= ww_scl;
ww_bclk <= bclk;
ww_wclk <= wclk;
ww_sdata <= sdata;
audio_data <= ww_audio_data;
data_valid <= ww_data_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N23
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_inst|sda_internal~q\,
	oe => \i2c_inst|sda~6_combout\,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\audio_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(0),
	devoe => ww_devoe,
	o => \audio_data[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\audio_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(1),
	devoe => ww_devoe,
	o => \audio_data[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\audio_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(2),
	devoe => ww_devoe,
	o => \audio_data[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\audio_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(3),
	devoe => ww_devoe,
	o => \audio_data[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\audio_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(4),
	devoe => ww_devoe,
	o => \audio_data[4]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\audio_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(5),
	devoe => ww_devoe,
	o => \audio_data[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\audio_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(6),
	devoe => ww_devoe,
	o => \audio_data[6]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\audio_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(7),
	devoe => ww_devoe,
	o => \audio_data[7]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\audio_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(8),
	devoe => ww_devoe,
	o => \audio_data[8]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\audio_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(9),
	devoe => ww_devoe,
	o => \audio_data[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\audio_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(10),
	devoe => ww_devoe,
	o => \audio_data[10]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\audio_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(11),
	devoe => ww_devoe,
	o => \audio_data[11]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\audio_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(12),
	devoe => ww_devoe,
	o => \audio_data[12]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\audio_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(13),
	devoe => ww_devoe,
	o => \audio_data[13]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\audio_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(14),
	devoe => ww_devoe,
	o => \audio_data[14]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\audio_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|audio_data\(15),
	devoe => ww_devoe,
	o => \audio_data[15]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_inst|data_valid~q\,
	devoe => ww_devoe,
	o => \data_valid~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X5_Y33_N26
\i2c_inst|received_ack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|received_ack~0_combout\ = (\i2c_inst|state.receive_ack~q\ & ((\reset~input_o\ & ((\i2c_inst|received_ack~q\))) # (!\reset~input_o\ & (\i2c_inst|sda_internal~q\)))) # (!\i2c_inst|state.receive_ack~q\ & (((\i2c_inst|received_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|sda_internal~q\,
	datab => \i2c_inst|state.receive_ack~q\,
	datac => \i2c_inst|received_ack~q\,
	datad => \reset~input_o\,
	combout => \i2c_inst|received_ack~0_combout\);

-- Location: FF_X5_Y33_N27
\i2c_inst|received_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|received_ack~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|received_ack~q\);

-- Location: LCCOMB_X6_Y33_N16
\wm8731_inst|config_index[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|config_index[0]~2_combout\ = !\wm8731_inst|config_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_inst|config_index\(0),
	combout => \wm8731_inst|config_index[0]~2_combout\);

-- Location: LCCOMB_X8_Y33_N30
\wm8731_inst|config_index[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|config_index[31]~0_combout\ = (!\reset~input_o\ & (!\i2c_inst|received_ack~q\ & (\wm8731_inst|state.wait_ack~q\ & \i2c_inst|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i2c_inst|received_ack~q\,
	datac => \wm8731_inst|state.wait_ack~q\,
	datad => \i2c_inst|state.idle~q\,
	combout => \wm8731_inst|config_index[31]~0_combout\);

-- Location: FF_X6_Y33_N17
\wm8731_inst|config_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|config_index[0]~2_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(0));

-- Location: LCCOMB_X7_Y33_N2
\wm8731_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~0_combout\ = (\wm8731_inst|config_index\(0) & (\wm8731_inst|config_index\(1) $ (VCC))) # (!\wm8731_inst|config_index\(0) & (\wm8731_inst|config_index\(1) & VCC))
-- \wm8731_inst|Add0~1\ = CARRY((\wm8731_inst|config_index\(0) & \wm8731_inst|config_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(0),
	datab => \wm8731_inst|config_index\(1),
	datad => VCC,
	combout => \wm8731_inst|Add0~0_combout\,
	cout => \wm8731_inst|Add0~1\);

-- Location: FF_X7_Y33_N3
\wm8731_inst|config_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~0_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(1));

-- Location: LCCOMB_X7_Y33_N4
\wm8731_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~2_combout\ = (\wm8731_inst|config_index\(2) & (!\wm8731_inst|Add0~1\)) # (!\wm8731_inst|config_index\(2) & ((\wm8731_inst|Add0~1\) # (GND)))
-- \wm8731_inst|Add0~3\ = CARRY((!\wm8731_inst|Add0~1\) # (!\wm8731_inst|config_index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(2),
	datad => VCC,
	cin => \wm8731_inst|Add0~1\,
	combout => \wm8731_inst|Add0~2_combout\,
	cout => \wm8731_inst|Add0~3\);

-- Location: FF_X7_Y33_N5
\wm8731_inst|config_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~2_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(2));

-- Location: LCCOMB_X7_Y33_N6
\wm8731_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~4_combout\ = (\wm8731_inst|config_index\(3) & (\wm8731_inst|Add0~3\ $ (GND))) # (!\wm8731_inst|config_index\(3) & (!\wm8731_inst|Add0~3\ & VCC))
-- \wm8731_inst|Add0~5\ = CARRY((\wm8731_inst|config_index\(3) & !\wm8731_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(3),
	datad => VCC,
	cin => \wm8731_inst|Add0~3\,
	combout => \wm8731_inst|Add0~4_combout\,
	cout => \wm8731_inst|Add0~5\);

-- Location: FF_X7_Y33_N7
\wm8731_inst|config_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~4_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(3));

-- Location: LCCOMB_X7_Y33_N8
\wm8731_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~6_combout\ = (\wm8731_inst|config_index\(4) & (!\wm8731_inst|Add0~5\)) # (!\wm8731_inst|config_index\(4) & ((\wm8731_inst|Add0~5\) # (GND)))
-- \wm8731_inst|Add0~7\ = CARRY((!\wm8731_inst|Add0~5\) # (!\wm8731_inst|config_index\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(4),
	datad => VCC,
	cin => \wm8731_inst|Add0~5\,
	combout => \wm8731_inst|Add0~6_combout\,
	cout => \wm8731_inst|Add0~7\);

-- Location: FF_X7_Y33_N9
\wm8731_inst|config_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~6_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(4));

-- Location: LCCOMB_X7_Y33_N10
\wm8731_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~8_combout\ = (\wm8731_inst|config_index\(5) & (\wm8731_inst|Add0~7\ $ (GND))) # (!\wm8731_inst|config_index\(5) & (!\wm8731_inst|Add0~7\ & VCC))
-- \wm8731_inst|Add0~9\ = CARRY((\wm8731_inst|config_index\(5) & !\wm8731_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(5),
	datad => VCC,
	cin => \wm8731_inst|Add0~7\,
	combout => \wm8731_inst|Add0~8_combout\,
	cout => \wm8731_inst|Add0~9\);

-- Location: FF_X7_Y33_N11
\wm8731_inst|config_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~8_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(5));

-- Location: LCCOMB_X7_Y33_N12
\wm8731_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~10_combout\ = (\wm8731_inst|config_index\(6) & (!\wm8731_inst|Add0~9\)) # (!\wm8731_inst|config_index\(6) & ((\wm8731_inst|Add0~9\) # (GND)))
-- \wm8731_inst|Add0~11\ = CARRY((!\wm8731_inst|Add0~9\) # (!\wm8731_inst|config_index\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(6),
	datad => VCC,
	cin => \wm8731_inst|Add0~9\,
	combout => \wm8731_inst|Add0~10_combout\,
	cout => \wm8731_inst|Add0~11\);

-- Location: FF_X7_Y33_N13
\wm8731_inst|config_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~10_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(6));

-- Location: LCCOMB_X7_Y33_N14
\wm8731_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~12_combout\ = (\wm8731_inst|config_index\(7) & (\wm8731_inst|Add0~11\ $ (GND))) # (!\wm8731_inst|config_index\(7) & (!\wm8731_inst|Add0~11\ & VCC))
-- \wm8731_inst|Add0~13\ = CARRY((\wm8731_inst|config_index\(7) & !\wm8731_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(7),
	datad => VCC,
	cin => \wm8731_inst|Add0~11\,
	combout => \wm8731_inst|Add0~12_combout\,
	cout => \wm8731_inst|Add0~13\);

-- Location: FF_X7_Y33_N15
\wm8731_inst|config_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~12_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(7));

-- Location: LCCOMB_X7_Y33_N16
\wm8731_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~14_combout\ = (\wm8731_inst|config_index\(8) & (!\wm8731_inst|Add0~13\)) # (!\wm8731_inst|config_index\(8) & ((\wm8731_inst|Add0~13\) # (GND)))
-- \wm8731_inst|Add0~15\ = CARRY((!\wm8731_inst|Add0~13\) # (!\wm8731_inst|config_index\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(8),
	datad => VCC,
	cin => \wm8731_inst|Add0~13\,
	combout => \wm8731_inst|Add0~14_combout\,
	cout => \wm8731_inst|Add0~15\);

-- Location: FF_X7_Y33_N17
\wm8731_inst|config_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~14_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(8));

-- Location: LCCOMB_X7_Y33_N18
\wm8731_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~16_combout\ = (\wm8731_inst|config_index\(9) & (\wm8731_inst|Add0~15\ $ (GND))) # (!\wm8731_inst|config_index\(9) & (!\wm8731_inst|Add0~15\ & VCC))
-- \wm8731_inst|Add0~17\ = CARRY((\wm8731_inst|config_index\(9) & !\wm8731_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(9),
	datad => VCC,
	cin => \wm8731_inst|Add0~15\,
	combout => \wm8731_inst|Add0~16_combout\,
	cout => \wm8731_inst|Add0~17\);

-- Location: FF_X7_Y33_N19
\wm8731_inst|config_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~16_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(9));

-- Location: LCCOMB_X7_Y33_N20
\wm8731_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~18_combout\ = (\wm8731_inst|config_index\(10) & (!\wm8731_inst|Add0~17\)) # (!\wm8731_inst|config_index\(10) & ((\wm8731_inst|Add0~17\) # (GND)))
-- \wm8731_inst|Add0~19\ = CARRY((!\wm8731_inst|Add0~17\) # (!\wm8731_inst|config_index\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(10),
	datad => VCC,
	cin => \wm8731_inst|Add0~17\,
	combout => \wm8731_inst|Add0~18_combout\,
	cout => \wm8731_inst|Add0~19\);

-- Location: FF_X7_Y33_N21
\wm8731_inst|config_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~18_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(10));

-- Location: LCCOMB_X7_Y33_N22
\wm8731_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~20_combout\ = (\wm8731_inst|config_index\(11) & (\wm8731_inst|Add0~19\ $ (GND))) # (!\wm8731_inst|config_index\(11) & (!\wm8731_inst|Add0~19\ & VCC))
-- \wm8731_inst|Add0~21\ = CARRY((\wm8731_inst|config_index\(11) & !\wm8731_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(11),
	datad => VCC,
	cin => \wm8731_inst|Add0~19\,
	combout => \wm8731_inst|Add0~20_combout\,
	cout => \wm8731_inst|Add0~21\);

-- Location: FF_X7_Y33_N23
\wm8731_inst|config_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~20_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(11));

-- Location: LCCOMB_X7_Y33_N24
\wm8731_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~22_combout\ = (\wm8731_inst|config_index\(12) & (!\wm8731_inst|Add0~21\)) # (!\wm8731_inst|config_index\(12) & ((\wm8731_inst|Add0~21\) # (GND)))
-- \wm8731_inst|Add0~23\ = CARRY((!\wm8731_inst|Add0~21\) # (!\wm8731_inst|config_index\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(12),
	datad => VCC,
	cin => \wm8731_inst|Add0~21\,
	combout => \wm8731_inst|Add0~22_combout\,
	cout => \wm8731_inst|Add0~23\);

-- Location: FF_X7_Y33_N25
\wm8731_inst|config_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~22_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(12));

-- Location: LCCOMB_X7_Y33_N26
\wm8731_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~24_combout\ = (\wm8731_inst|config_index\(13) & (\wm8731_inst|Add0~23\ $ (GND))) # (!\wm8731_inst|config_index\(13) & (!\wm8731_inst|Add0~23\ & VCC))
-- \wm8731_inst|Add0~25\ = CARRY((\wm8731_inst|config_index\(13) & !\wm8731_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(13),
	datad => VCC,
	cin => \wm8731_inst|Add0~23\,
	combout => \wm8731_inst|Add0~24_combout\,
	cout => \wm8731_inst|Add0~25\);

-- Location: FF_X7_Y33_N27
\wm8731_inst|config_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~24_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(13));

-- Location: LCCOMB_X7_Y33_N28
\wm8731_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~26_combout\ = (\wm8731_inst|config_index\(14) & (!\wm8731_inst|Add0~25\)) # (!\wm8731_inst|config_index\(14) & ((\wm8731_inst|Add0~25\) # (GND)))
-- \wm8731_inst|Add0~27\ = CARRY((!\wm8731_inst|Add0~25\) # (!\wm8731_inst|config_index\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(14),
	datad => VCC,
	cin => \wm8731_inst|Add0~25\,
	combout => \wm8731_inst|Add0~26_combout\,
	cout => \wm8731_inst|Add0~27\);

-- Location: FF_X7_Y33_N29
\wm8731_inst|config_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~26_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(14));

-- Location: LCCOMB_X7_Y33_N30
\wm8731_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~28_combout\ = (\wm8731_inst|config_index\(15) & (\wm8731_inst|Add0~27\ $ (GND))) # (!\wm8731_inst|config_index\(15) & (!\wm8731_inst|Add0~27\ & VCC))
-- \wm8731_inst|Add0~29\ = CARRY((\wm8731_inst|config_index\(15) & !\wm8731_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(15),
	datad => VCC,
	cin => \wm8731_inst|Add0~27\,
	combout => \wm8731_inst|Add0~28_combout\,
	cout => \wm8731_inst|Add0~29\);

-- Location: FF_X7_Y33_N31
\wm8731_inst|config_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~28_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(15));

-- Location: LCCOMB_X7_Y32_N0
\wm8731_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~30_combout\ = (\wm8731_inst|config_index\(16) & (!\wm8731_inst|Add0~29\)) # (!\wm8731_inst|config_index\(16) & ((\wm8731_inst|Add0~29\) # (GND)))
-- \wm8731_inst|Add0~31\ = CARRY((!\wm8731_inst|Add0~29\) # (!\wm8731_inst|config_index\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(16),
	datad => VCC,
	cin => \wm8731_inst|Add0~29\,
	combout => \wm8731_inst|Add0~30_combout\,
	cout => \wm8731_inst|Add0~31\);

-- Location: FF_X7_Y32_N1
\wm8731_inst|config_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~30_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(16));

-- Location: LCCOMB_X7_Y32_N2
\wm8731_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~32_combout\ = (\wm8731_inst|config_index\(17) & (\wm8731_inst|Add0~31\ $ (GND))) # (!\wm8731_inst|config_index\(17) & (!\wm8731_inst|Add0~31\ & VCC))
-- \wm8731_inst|Add0~33\ = CARRY((\wm8731_inst|config_index\(17) & !\wm8731_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(17),
	datad => VCC,
	cin => \wm8731_inst|Add0~31\,
	combout => \wm8731_inst|Add0~32_combout\,
	cout => \wm8731_inst|Add0~33\);

-- Location: FF_X7_Y32_N3
\wm8731_inst|config_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~32_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(17));

-- Location: LCCOMB_X7_Y32_N4
\wm8731_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~34_combout\ = (\wm8731_inst|config_index\(18) & (!\wm8731_inst|Add0~33\)) # (!\wm8731_inst|config_index\(18) & ((\wm8731_inst|Add0~33\) # (GND)))
-- \wm8731_inst|Add0~35\ = CARRY((!\wm8731_inst|Add0~33\) # (!\wm8731_inst|config_index\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(18),
	datad => VCC,
	cin => \wm8731_inst|Add0~33\,
	combout => \wm8731_inst|Add0~34_combout\,
	cout => \wm8731_inst|Add0~35\);

-- Location: FF_X7_Y32_N5
\wm8731_inst|config_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~34_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(18));

-- Location: LCCOMB_X7_Y32_N6
\wm8731_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~36_combout\ = (\wm8731_inst|config_index\(19) & (\wm8731_inst|Add0~35\ $ (GND))) # (!\wm8731_inst|config_index\(19) & (!\wm8731_inst|Add0~35\ & VCC))
-- \wm8731_inst|Add0~37\ = CARRY((\wm8731_inst|config_index\(19) & !\wm8731_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(19),
	datad => VCC,
	cin => \wm8731_inst|Add0~35\,
	combout => \wm8731_inst|Add0~36_combout\,
	cout => \wm8731_inst|Add0~37\);

-- Location: FF_X7_Y32_N7
\wm8731_inst|config_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~36_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(19));

-- Location: LCCOMB_X7_Y32_N8
\wm8731_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~38_combout\ = (\wm8731_inst|config_index\(20) & (!\wm8731_inst|Add0~37\)) # (!\wm8731_inst|config_index\(20) & ((\wm8731_inst|Add0~37\) # (GND)))
-- \wm8731_inst|Add0~39\ = CARRY((!\wm8731_inst|Add0~37\) # (!\wm8731_inst|config_index\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(20),
	datad => VCC,
	cin => \wm8731_inst|Add0~37\,
	combout => \wm8731_inst|Add0~38_combout\,
	cout => \wm8731_inst|Add0~39\);

-- Location: FF_X7_Y32_N9
\wm8731_inst|config_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~38_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(20));

-- Location: LCCOMB_X7_Y32_N10
\wm8731_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~40_combout\ = (\wm8731_inst|config_index\(21) & (\wm8731_inst|Add0~39\ $ (GND))) # (!\wm8731_inst|config_index\(21) & (!\wm8731_inst|Add0~39\ & VCC))
-- \wm8731_inst|Add0~41\ = CARRY((\wm8731_inst|config_index\(21) & !\wm8731_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(21),
	datad => VCC,
	cin => \wm8731_inst|Add0~39\,
	combout => \wm8731_inst|Add0~40_combout\,
	cout => \wm8731_inst|Add0~41\);

-- Location: FF_X7_Y32_N11
\wm8731_inst|config_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~40_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(21));

-- Location: LCCOMB_X7_Y32_N12
\wm8731_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~42_combout\ = (\wm8731_inst|config_index\(22) & (!\wm8731_inst|Add0~41\)) # (!\wm8731_inst|config_index\(22) & ((\wm8731_inst|Add0~41\) # (GND)))
-- \wm8731_inst|Add0~43\ = CARRY((!\wm8731_inst|Add0~41\) # (!\wm8731_inst|config_index\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(22),
	datad => VCC,
	cin => \wm8731_inst|Add0~41\,
	combout => \wm8731_inst|Add0~42_combout\,
	cout => \wm8731_inst|Add0~43\);

-- Location: FF_X7_Y32_N13
\wm8731_inst|config_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~42_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(22));

-- Location: LCCOMB_X7_Y32_N14
\wm8731_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~44_combout\ = (\wm8731_inst|config_index\(23) & (\wm8731_inst|Add0~43\ $ (GND))) # (!\wm8731_inst|config_index\(23) & (!\wm8731_inst|Add0~43\ & VCC))
-- \wm8731_inst|Add0~45\ = CARRY((\wm8731_inst|config_index\(23) & !\wm8731_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(23),
	datad => VCC,
	cin => \wm8731_inst|Add0~43\,
	combout => \wm8731_inst|Add0~44_combout\,
	cout => \wm8731_inst|Add0~45\);

-- Location: FF_X7_Y32_N15
\wm8731_inst|config_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~44_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(23));

-- Location: LCCOMB_X7_Y32_N16
\wm8731_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~46_combout\ = (\wm8731_inst|config_index\(24) & (!\wm8731_inst|Add0~45\)) # (!\wm8731_inst|config_index\(24) & ((\wm8731_inst|Add0~45\) # (GND)))
-- \wm8731_inst|Add0~47\ = CARRY((!\wm8731_inst|Add0~45\) # (!\wm8731_inst|config_index\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(24),
	datad => VCC,
	cin => \wm8731_inst|Add0~45\,
	combout => \wm8731_inst|Add0~46_combout\,
	cout => \wm8731_inst|Add0~47\);

-- Location: FF_X7_Y32_N17
\wm8731_inst|config_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~46_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(24));

-- Location: LCCOMB_X7_Y32_N18
\wm8731_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~48_combout\ = (\wm8731_inst|config_index\(25) & (\wm8731_inst|Add0~47\ $ (GND))) # (!\wm8731_inst|config_index\(25) & (!\wm8731_inst|Add0~47\ & VCC))
-- \wm8731_inst|Add0~49\ = CARRY((\wm8731_inst|config_index\(25) & !\wm8731_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(25),
	datad => VCC,
	cin => \wm8731_inst|Add0~47\,
	combout => \wm8731_inst|Add0~48_combout\,
	cout => \wm8731_inst|Add0~49\);

-- Location: FF_X7_Y32_N19
\wm8731_inst|config_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~48_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(25));

-- Location: LCCOMB_X7_Y32_N20
\wm8731_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~50_combout\ = (\wm8731_inst|config_index\(26) & (!\wm8731_inst|Add0~49\)) # (!\wm8731_inst|config_index\(26) & ((\wm8731_inst|Add0~49\) # (GND)))
-- \wm8731_inst|Add0~51\ = CARRY((!\wm8731_inst|Add0~49\) # (!\wm8731_inst|config_index\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(26),
	datad => VCC,
	cin => \wm8731_inst|Add0~49\,
	combout => \wm8731_inst|Add0~50_combout\,
	cout => \wm8731_inst|Add0~51\);

-- Location: FF_X7_Y32_N21
\wm8731_inst|config_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~50_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(26));

-- Location: LCCOMB_X7_Y32_N22
\wm8731_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~52_combout\ = (\wm8731_inst|config_index\(27) & (\wm8731_inst|Add0~51\ $ (GND))) # (!\wm8731_inst|config_index\(27) & (!\wm8731_inst|Add0~51\ & VCC))
-- \wm8731_inst|Add0~53\ = CARRY((\wm8731_inst|config_index\(27) & !\wm8731_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(27),
	datad => VCC,
	cin => \wm8731_inst|Add0~51\,
	combout => \wm8731_inst|Add0~52_combout\,
	cout => \wm8731_inst|Add0~53\);

-- Location: FF_X7_Y32_N23
\wm8731_inst|config_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~52_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(27));

-- Location: LCCOMB_X7_Y32_N24
\wm8731_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~54_combout\ = (\wm8731_inst|config_index\(28) & (!\wm8731_inst|Add0~53\)) # (!\wm8731_inst|config_index\(28) & ((\wm8731_inst|Add0~53\) # (GND)))
-- \wm8731_inst|Add0~55\ = CARRY((!\wm8731_inst|Add0~53\) # (!\wm8731_inst|config_index\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(28),
	datad => VCC,
	cin => \wm8731_inst|Add0~53\,
	combout => \wm8731_inst|Add0~54_combout\,
	cout => \wm8731_inst|Add0~55\);

-- Location: FF_X7_Y32_N25
\wm8731_inst|config_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~54_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(28));

-- Location: LCCOMB_X7_Y32_N26
\wm8731_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~56_combout\ = (\wm8731_inst|config_index\(29) & (\wm8731_inst|Add0~55\ $ (GND))) # (!\wm8731_inst|config_index\(29) & (!\wm8731_inst|Add0~55\ & VCC))
-- \wm8731_inst|Add0~57\ = CARRY((\wm8731_inst|config_index\(29) & !\wm8731_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(29),
	datad => VCC,
	cin => \wm8731_inst|Add0~55\,
	combout => \wm8731_inst|Add0~56_combout\,
	cout => \wm8731_inst|Add0~57\);

-- Location: FF_X7_Y32_N27
\wm8731_inst|config_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~56_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(29));

-- Location: LCCOMB_X8_Y32_N0
\wm8731_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~1_combout\ = (!\wm8731_inst|config_index\(29) & (!\wm8731_inst|config_index\(27) & (!\wm8731_inst|config_index\(28) & !\wm8731_inst|config_index\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(29),
	datab => \wm8731_inst|config_index\(27),
	datac => \wm8731_inst|config_index\(28),
	datad => \wm8731_inst|config_index\(26),
	combout => \wm8731_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y32_N28
\wm8731_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~58_combout\ = (\wm8731_inst|config_index\(30) & (!\wm8731_inst|Add0~57\)) # (!\wm8731_inst|config_index\(30) & ((\wm8731_inst|Add0~57\) # (GND)))
-- \wm8731_inst|Add0~59\ = CARRY((!\wm8731_inst|Add0~57\) # (!\wm8731_inst|config_index\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(30),
	datad => VCC,
	cin => \wm8731_inst|Add0~57\,
	combout => \wm8731_inst|Add0~58_combout\,
	cout => \wm8731_inst|Add0~59\);

-- Location: FF_X7_Y32_N29
\wm8731_inst|config_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~58_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(30));

-- Location: LCCOMB_X8_Y33_N4
\wm8731_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~0_combout\ = (!\wm8731_inst|config_index\(30) & (((!\wm8731_inst|config_index\(1)) # (!\wm8731_inst|config_index\(2))) # (!\wm8731_inst|config_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(0),
	datab => \wm8731_inst|config_index\(2),
	datac => \wm8731_inst|config_index\(30),
	datad => \wm8731_inst|config_index\(1),
	combout => \wm8731_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y32_N18
\wm8731_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~2_combout\ = (!\wm8731_inst|config_index\(23) & (!\wm8731_inst|config_index\(25) & (!\wm8731_inst|config_index\(24) & !\wm8731_inst|config_index\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(23),
	datab => \wm8731_inst|config_index\(25),
	datac => \wm8731_inst|config_index\(24),
	datad => \wm8731_inst|config_index\(22),
	combout => \wm8731_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y32_N12
\wm8731_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~3_combout\ = (!\wm8731_inst|config_index\(21) & (!\wm8731_inst|config_index\(18) & (!\wm8731_inst|config_index\(19) & !\wm8731_inst|config_index\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(21),
	datab => \wm8731_inst|config_index\(18),
	datac => \wm8731_inst|config_index\(19),
	datad => \wm8731_inst|config_index\(20),
	combout => \wm8731_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y33_N6
\wm8731_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~4_combout\ = (\wm8731_inst|LessThan0~1_combout\ & (\wm8731_inst|LessThan0~0_combout\ & (\wm8731_inst|LessThan0~2_combout\ & \wm8731_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|LessThan0~1_combout\,
	datab => \wm8731_inst|LessThan0~0_combout\,
	datac => \wm8731_inst|LessThan0~2_combout\,
	datad => \wm8731_inst|LessThan0~3_combout\,
	combout => \wm8731_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X8_Y33_N22
\wm8731_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~6_combout\ = (!\wm8731_inst|config_index\(13) & (!\wm8731_inst|config_index\(12) & (!\wm8731_inst|config_index\(10) & !\wm8731_inst|config_index\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(13),
	datab => \wm8731_inst|config_index\(12),
	datac => \wm8731_inst|config_index\(10),
	datad => \wm8731_inst|config_index\(11),
	combout => \wm8731_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X8_Y33_N28
\wm8731_inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~8_combout\ = (!\wm8731_inst|config_index\(4) & (!\wm8731_inst|config_index\(3) & !\wm8731_inst|config_index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(4),
	datac => \wm8731_inst|config_index\(3),
	datad => \wm8731_inst|config_index\(5),
	combout => \wm8731_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X7_Y33_N0
\wm8731_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~7_combout\ = (!\wm8731_inst|config_index\(6) & (!\wm8731_inst|config_index\(8) & (!\wm8731_inst|config_index\(7) & !\wm8731_inst|config_index\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(6),
	datab => \wm8731_inst|config_index\(8),
	datac => \wm8731_inst|config_index\(7),
	datad => \wm8731_inst|config_index\(9),
	combout => \wm8731_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X8_Y33_N24
\wm8731_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~5_combout\ = (!\wm8731_inst|config_index\(16) & (!\wm8731_inst|config_index\(15) & (!\wm8731_inst|config_index\(17) & !\wm8731_inst|config_index\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(16),
	datab => \wm8731_inst|config_index\(15),
	datac => \wm8731_inst|config_index\(17),
	datad => \wm8731_inst|config_index\(14),
	combout => \wm8731_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X8_Y33_N14
\wm8731_inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~9_combout\ = (\wm8731_inst|LessThan0~6_combout\ & (\wm8731_inst|LessThan0~8_combout\ & (\wm8731_inst|LessThan0~7_combout\ & \wm8731_inst|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|LessThan0~6_combout\,
	datab => \wm8731_inst|LessThan0~8_combout\,
	datac => \wm8731_inst|LessThan0~7_combout\,
	datad => \wm8731_inst|LessThan0~5_combout\,
	combout => \wm8731_inst|LessThan0~9_combout\);

-- Location: LCCOMB_X7_Y32_N30
\wm8731_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~60_combout\ = \wm8731_inst|config_index\(31) $ (!\wm8731_inst|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(31),
	cin => \wm8731_inst|Add0~59\,
	combout => \wm8731_inst|Add0~60_combout\);

-- Location: FF_X7_Y32_N31
\wm8731_inst|config_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Add0~60_combout\,
	ena => \wm8731_inst|config_index[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_index\(31));

-- Location: LCCOMB_X8_Y33_N0
\wm8731_inst|config_index[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|config_index[31]~1_combout\ = (\wm8731_inst|state.wait_ack~q\ & (\i2c_inst|state.idle~q\ & !\i2c_inst|received_ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|state.wait_ack~q\,
	datab => \i2c_inst|state.idle~q\,
	datad => \i2c_inst|received_ack~q\,
	combout => \wm8731_inst|config_index[31]~1_combout\);

-- Location: LCCOMB_X8_Y33_N20
\wm8731_inst|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|LessThan0~10_combout\ = (\wm8731_inst|config_index\(31)) # ((\wm8731_inst|LessThan0~9_combout\ & \wm8731_inst|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|config_index\(31),
	datac => \wm8731_inst|LessThan0~9_combout\,
	datad => \wm8731_inst|LessThan0~4_combout\,
	combout => \wm8731_inst|LessThan0~10_combout\);

-- Location: LCCOMB_X9_Y33_N24
\wm8731_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Selector0~0_combout\ = (!\wm8731_inst|config_index[31]~1_combout\ & ((\wm8731_inst|state.idle~q\) # (\wm8731_inst|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index[31]~1_combout\,
	datac => \wm8731_inst|state.idle~q\,
	datad => \wm8731_inst|LessThan0~10_combout\,
	combout => \wm8731_inst|Selector0~0_combout\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X9_Y33_N25
\wm8731_inst|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|state.idle~q\);

-- Location: LCCOMB_X8_Y33_N2
\wm8731_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Selector1~0_combout\ = (!\wm8731_inst|state.idle~q\ & ((\wm8731_inst|config_index\(31)) # ((\wm8731_inst|LessThan0~4_combout\ & \wm8731_inst|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|LessThan0~4_combout\,
	datab => \wm8731_inst|LessThan0~9_combout\,
	datac => \wm8731_inst|config_index\(31),
	datad => \wm8731_inst|state.idle~q\,
	combout => \wm8731_inst|Selector1~0_combout\);

-- Location: FF_X8_Y33_N3
\wm8731_inst|state.send_config\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|state.send_config~q\);

-- Location: LCCOMB_X8_Y33_N26
\wm8731_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Selector2~0_combout\ = (\wm8731_inst|state.send_config~q\) # ((\wm8731_inst|state.wait_ack~q\ & ((\i2c_inst|received_ack~q\) # (!\i2c_inst|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.idle~q\,
	datab => \i2c_inst|received_ack~q\,
	datac => \wm8731_inst|state.wait_ack~q\,
	datad => \wm8731_inst|state.send_config~q\,
	combout => \wm8731_inst|Selector2~0_combout\);

-- Location: FF_X8_Y33_N27
\wm8731_inst|state.wait_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|state.wait_ack~q\);

-- Location: LCCOMB_X9_Y33_N14
\wm8731_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Selector3~0_combout\ = (\wm8731_inst|state.wait_ack~q\ & ((\wm8731_inst|i2c_start~q\) # ((!\wm8731_inst|state.idle~q\ & \wm8731_inst|LessThan0~10_combout\)))) # (!\wm8731_inst|state.wait_ack~q\ & (!\wm8731_inst|state.idle~q\ & 
-- ((\wm8731_inst|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|state.wait_ack~q\,
	datab => \wm8731_inst|state.idle~q\,
	datac => \wm8731_inst|i2c_start~q\,
	datad => \wm8731_inst|LessThan0~10_combout\,
	combout => \wm8731_inst|Selector3~0_combout\);

-- Location: FF_X9_Y33_N15
\wm8731_inst|i2c_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Selector3~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_start~q\);

-- Location: LCCOMB_X9_Y33_N28
\wm8731_inst|i2c_write~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_write~0_combout\ = (\wm8731_inst|state.idle~q\ & (((\wm8731_inst|i2c_write~q\)))) # (!\wm8731_inst|state.idle~q\ & ((\reset~input_o\ & (\wm8731_inst|i2c_write~q\)) # (!\reset~input_o\ & ((\wm8731_inst|LessThan0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|state.idle~q\,
	datab => \reset~input_o\,
	datac => \wm8731_inst|i2c_write~q\,
	datad => \wm8731_inst|LessThan0~10_combout\,
	combout => \wm8731_inst|i2c_write~0_combout\);

-- Location: FF_X9_Y33_N29
\wm8731_inst|i2c_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|i2c_write~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_write~q\);

-- Location: LCCOMB_X5_Y33_N22
\i2c_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector0~0_combout\ = (\wm8731_inst|i2c_start~q\ & (((\wm8731_inst|i2c_write~q\)) # (!\i2c_inst|state.receive_ack~q\))) # (!\wm8731_inst|i2c_start~q\ & (\i2c_inst|state.idle~q\ & ((\wm8731_inst|i2c_write~q\) # 
-- (!\i2c_inst|state.receive_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_start~q\,
	datab => \i2c_inst|state.receive_ack~q\,
	datac => \i2c_inst|state.idle~q\,
	datad => \wm8731_inst|i2c_write~q\,
	combout => \i2c_inst|Selector0~0_combout\);

-- Location: FF_X5_Y33_N23
\i2c_inst|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|state.idle~q\);

-- Location: LCCOMB_X5_Y33_N12
\i2c_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector1~0_combout\ = (!\i2c_inst|state.idle~q\ & \wm8731_inst|i2c_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_inst|state.idle~q\,
	datad => \wm8731_inst|i2c_start~q\,
	combout => \i2c_inst|Selector1~0_combout\);

-- Location: FF_X5_Y33_N13
\i2c_inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|state.start~q\);

-- Location: LCCOMB_X5_Y33_N20
\i2c_inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector7~0_combout\ = (!\i2c_inst|state.receive_ack~q\ & !\i2c_inst|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_inst|state.receive_ack~q\,
	datad => \i2c_inst|state.start~q\,
	combout => \i2c_inst|Selector7~0_combout\);

-- Location: LCCOMB_X2_Y33_N26
\i2c_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector3~0_combout\ = (\i2c_inst|state.start~q\) # ((\i2c_inst|state.write_addr~q\ & !\i2c_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_inst|state.start~q\,
	datac => \i2c_inst|state.write_addr~q\,
	datad => \i2c_inst|Equal0~0_combout\,
	combout => \i2c_inst|Selector3~0_combout\);

-- Location: FF_X2_Y33_N27
\i2c_inst|state.write_addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|state.write_addr~q\);

-- Location: LCCOMB_X2_Y33_N30
\i2c_inst|sda~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|sda~7_combout\ = (!\i2c_inst|state.write_addr~q\ & !\i2c_inst|state.write_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_inst|state.write_addr~q\,
	datad => \i2c_inst|state.write_data~q\,
	combout => \i2c_inst|sda~7_combout\);

-- Location: LCCOMB_X5_Y33_N28
\i2c_inst|bit_counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|bit_counter[2]~4_combout\ = (\i2c_inst|state.receive_ack~q\ & (((!\i2c_inst|state.idle~q\ & \i2c_inst|received_ack~q\)) # (!\wm8731_inst|i2c_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.idle~q\,
	datab => \i2c_inst|received_ack~q\,
	datac => \i2c_inst|state.receive_ack~q\,
	datad => \wm8731_inst|i2c_write~q\,
	combout => \i2c_inst|bit_counter[2]~4_combout\);

-- Location: LCCOMB_X2_Y33_N0
\i2c_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector5~0_combout\ = (\i2c_inst|state.send_ack~q\) # ((\i2c_inst|state.read_data~q\ & !\i2c_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.send_ack~q\,
	datac => \i2c_inst|state.read_data~q\,
	datad => \i2c_inst|Equal0~0_combout\,
	combout => \i2c_inst|Selector5~0_combout\);

-- Location: FF_X2_Y33_N1
\i2c_inst|state.read_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|state.read_data~q\);

-- Location: LCCOMB_X5_Y33_N2
\i2c_inst|bit_counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|bit_counter[3]~5_combout\ = (\i2c_inst|bit_counter[2]~4_combout\) # ((\i2c_inst|Equal0~0_combout\ & ((\i2c_inst|state.read_data~q\) # (!\i2c_inst|sda~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|sda~7_combout\,
	datab => \i2c_inst|bit_counter[2]~4_combout\,
	datac => \i2c_inst|state.read_data~q\,
	datad => \i2c_inst|Equal0~0_combout\,
	combout => \i2c_inst|bit_counter[3]~5_combout\);

-- Location: LCCOMB_X5_Y33_N24
\i2c_inst|bit_counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|bit_counter[3]~6_combout\ = ((\reset~input_o\) # (\i2c_inst|bit_counter[3]~5_combout\)) # (!\i2c_inst|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.idle~q\,
	datac => \reset~input_o\,
	datad => \i2c_inst|bit_counter[3]~5_combout\,
	combout => \i2c_inst|bit_counter[3]~6_combout\);

-- Location: LCCOMB_X5_Y33_N0
\i2c_inst|bit_counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|bit_counter[0]~10_combout\ = (\i2c_inst|bit_counter\(0) & (((\i2c_inst|bit_counter[3]~6_combout\)))) # (!\i2c_inst|bit_counter\(0) & (!\i2c_inst|state.start~q\ & (!\i2c_inst|state.receive_ack~q\ & !\i2c_inst|bit_counter[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.start~q\,
	datab => \i2c_inst|state.receive_ack~q\,
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter[3]~6_combout\,
	combout => \i2c_inst|bit_counter[0]~10_combout\);

-- Location: FF_X5_Y33_N1
\i2c_inst|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|bit_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|bit_counter\(0));

-- Location: LCCOMB_X5_Y33_N10
\i2c_inst|bit_counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|bit_counter[1]~9_combout\ = (\i2c_inst|bit_counter[3]~6_combout\ & (((\i2c_inst|bit_counter\(1))))) # (!\i2c_inst|bit_counter[3]~6_combout\ & (\i2c_inst|Selector7~0_combout\ & (\i2c_inst|bit_counter\(0) $ (\i2c_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(0),
	datab => \i2c_inst|Selector7~0_combout\,
	datac => \i2c_inst|bit_counter\(1),
	datad => \i2c_inst|bit_counter[3]~6_combout\,
	combout => \i2c_inst|bit_counter[1]~9_combout\);

-- Location: FF_X5_Y33_N11
\i2c_inst|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|bit_counter[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|bit_counter\(1));

-- Location: LCCOMB_X1_Y33_N18
\i2c_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Add1~0_combout\ = \i2c_inst|bit_counter\(2) $ (((\i2c_inst|bit_counter\(0) & \i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Add1~0_combout\);

-- Location: LCCOMB_X1_Y33_N12
\i2c_inst|bit_counter[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|bit_counter[2]~7_combout\ = (\i2c_inst|bit_counter[3]~6_combout\ & (((\i2c_inst|bit_counter\(2))))) # (!\i2c_inst|bit_counter[3]~6_combout\ & (\i2c_inst|Selector7~0_combout\ & (\i2c_inst|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector7~0_combout\,
	datab => \i2c_inst|Add1~0_combout\,
	datac => \i2c_inst|bit_counter\(2),
	datad => \i2c_inst|bit_counter[3]~6_combout\,
	combout => \i2c_inst|bit_counter[2]~7_combout\);

-- Location: FF_X1_Y33_N13
\i2c_inst|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|bit_counter[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|bit_counter\(2));

-- Location: LCCOMB_X1_Y33_N20
\i2c_inst|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Add1~1_combout\ = \i2c_inst|bit_counter\(3) $ (((\i2c_inst|bit_counter\(2) & (\i2c_inst|bit_counter\(0) & \i2c_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datab => \i2c_inst|bit_counter\(3),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Add1~1_combout\);

-- Location: LCCOMB_X1_Y33_N26
\i2c_inst|bit_counter[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|bit_counter[3]~8_combout\ = (\i2c_inst|bit_counter[3]~6_combout\ & (((\i2c_inst|bit_counter\(3))))) # (!\i2c_inst|bit_counter[3]~6_combout\ & (\i2c_inst|Selector7~0_combout\ & (\i2c_inst|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector7~0_combout\,
	datab => \i2c_inst|Add1~1_combout\,
	datac => \i2c_inst|bit_counter\(3),
	datad => \i2c_inst|bit_counter[3]~6_combout\,
	combout => \i2c_inst|bit_counter[3]~8_combout\);

-- Location: FF_X1_Y33_N27
\i2c_inst|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|bit_counter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|bit_counter\(3));

-- Location: LCCOMB_X1_Y33_N24
\i2c_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Equal0~0_combout\ = (!\i2c_inst|bit_counter\(2) & (\i2c_inst|bit_counter\(3) & (!\i2c_inst|bit_counter\(0) & !\i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datab => \i2c_inst|bit_counter\(3),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y33_N22
\i2c_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector6~0_combout\ = (\i2c_inst|Equal0~0_combout\ & \i2c_inst|state.read_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_inst|Equal0~0_combout\,
	datad => \i2c_inst|state.read_data~q\,
	combout => \i2c_inst|Selector6~0_combout\);

-- Location: FF_X2_Y33_N23
\i2c_inst|state.send_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|state.send_ack~q\);

-- Location: LCCOMB_X2_Y33_N20
\i2c_inst|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector7~1_combout\ = (!\i2c_inst|sda~7_combout\ & (\i2c_inst|Equal0~0_combout\ & (!\i2c_inst|Selector1~0_combout\ & \i2c_inst|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|sda~7_combout\,
	datab => \i2c_inst|Equal0~0_combout\,
	datac => \i2c_inst|Selector1~0_combout\,
	datad => \i2c_inst|Selector7~0_combout\,
	combout => \i2c_inst|Selector7~1_combout\);

-- Location: LCCOMB_X2_Y33_N6
\i2c_inst|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector7~2_combout\ = (!\i2c_inst|state.send_ack~q\ & (\i2c_inst|Selector7~1_combout\ & ((!\i2c_inst|state.read_data~q\) # (!\i2c_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.send_ack~q\,
	datab => \i2c_inst|Equal0~0_combout\,
	datac => \i2c_inst|state.read_data~q\,
	datad => \i2c_inst|Selector7~1_combout\,
	combout => \i2c_inst|Selector7~2_combout\);

-- Location: FF_X2_Y33_N7
\i2c_inst|state.receive_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector7~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|state.receive_ack~q\);

-- Location: LCCOMB_X2_Y33_N24
\i2c_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector4~0_combout\ = (\i2c_inst|state.receive_ack~q\ & ((\wm8731_inst|i2c_write~q\) # ((!\i2c_inst|Equal0~0_combout\ & \i2c_inst|state.write_data~q\)))) # (!\i2c_inst|state.receive_ack~q\ & (!\i2c_inst|Equal0~0_combout\ & 
-- (\i2c_inst|state.write_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.receive_ack~q\,
	datab => \i2c_inst|Equal0~0_combout\,
	datac => \i2c_inst|state.write_data~q\,
	datad => \wm8731_inst|i2c_write~q\,
	combout => \i2c_inst|Selector4~0_combout\);

-- Location: FF_X2_Y33_N25
\i2c_inst|state.write_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|state.write_data~q\);

-- Location: LCCOMB_X1_Y33_N28
\i2c_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Add0~0_combout\ = \i2c_inst|bit_counter\(3) $ (((\i2c_inst|bit_counter\(2)) # ((\i2c_inst|bit_counter\(0)) # (\i2c_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datab => \i2c_inst|bit_counter\(3),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Add0~0_combout\);

-- Location: LCCOMB_X1_Y33_N2
\i2c_inst|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector8~5_combout\ = (\i2c_inst|state.write_data~q\ & ((\i2c_inst|bit_counter\(3)) # ((!\i2c_inst|Add0~0_combout\ & \i2c_inst|state.write_addr~q\)))) # (!\i2c_inst|state.write_data~q\ & (!\i2c_inst|Add0~0_combout\ & 
-- ((\i2c_inst|state.write_addr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.write_data~q\,
	datab => \i2c_inst|Add0~0_combout\,
	datac => \i2c_inst|bit_counter\(3),
	datad => \i2c_inst|state.write_addr~q\,
	combout => \i2c_inst|Selector8~5_combout\);

-- Location: LCCOMB_X1_Y33_N0
\i2c_inst|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~7_combout\ = (!\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & (!\i2c_inst|bit_counter\(0) & !\i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datab => \i2c_inst|bit_counter\(3),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~7_combout\);

-- Location: LCCOMB_X2_Y33_N10
\i2c_inst|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector13~2_combout\ = (\i2c_inst|shift_reg\(8) & ((\i2c_inst|state.read_data~q\ & (!\i2c_inst|Decoder0~7_combout\)) # (!\i2c_inst|state.read_data~q\ & ((!\i2c_inst|state.start~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Decoder0~7_combout\,
	datab => \i2c_inst|shift_reg\(8),
	datac => \i2c_inst|state.read_data~q\,
	datad => \i2c_inst|state.start~q\,
	combout => \i2c_inst|Selector13~2_combout\);

-- Location: LCCOMB_X2_Y33_N16
\i2c_inst|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector13~3_combout\ = (\i2c_inst|Selector13~2_combout\) # ((\i2c_inst|Decoder0~7_combout\ & (\i2c_inst|state.read_data~q\ & \i2c_inst|sda_internal~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Decoder0~7_combout\,
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|sda_internal~q\,
	datad => \i2c_inst|Selector13~2_combout\,
	combout => \i2c_inst|Selector13~3_combout\);

-- Location: FF_X2_Y33_N17
\i2c_inst|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector13~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(8));

-- Location: LCCOMB_X1_Y33_N14
\i2c_inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector8~0_combout\ = (\i2c_inst|state.write_addr~q\ & \i2c_inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_inst|state.write_addr~q\,
	datad => \i2c_inst|Add0~0_combout\,
	combout => \i2c_inst|Selector8~0_combout\);

-- Location: LCCOMB_X1_Y33_N4
\i2c_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Add0~2_combout\ = \i2c_inst|bit_counter\(2) $ (((\i2c_inst|bit_counter\(0)) # (\i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Add0~2_combout\);

-- Location: LCCOMB_X3_Y33_N14
\i2c_inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~5_combout\ = (\i2c_inst|bit_counter\(0) & (\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & \i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(0),
	datab => \i2c_inst|bit_counter\(2),
	datac => \i2c_inst|bit_counter\(3),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X4_Y33_N12
\i2c_inst|Selector20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector20~6_combout\ = (\i2c_inst|state.read_data~q\ & ((\i2c_inst|Decoder0~5_combout\ & ((\i2c_inst|sda_internal~q\))) # (!\i2c_inst|Decoder0~5_combout\ & (\i2c_inst|shift_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(1),
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|sda_internal~q\,
	datad => \i2c_inst|Decoder0~5_combout\,
	combout => \i2c_inst|Selector20~6_combout\);

-- Location: LCCOMB_X5_Y33_N14
\i2c_inst|Selector16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector16~7_combout\ = (!\i2c_inst|bit_counter[2]~4_combout\ & ((\i2c_inst|state.start~q\) # ((\i2c_inst|state.read_data~q\) # (\i2c_inst|state.receive_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.start~q\,
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|state.receive_ack~q\,
	datad => \i2c_inst|bit_counter[2]~4_combout\,
	combout => \i2c_inst|Selector16~7_combout\);

-- Location: LCCOMB_X5_Y33_N30
\i2c_inst|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector16~4_combout\ = (\i2c_inst|state.receive_ack~q\ & (\wm8731_inst|i2c_write~q\ & ((\i2c_inst|state.idle~q\) # (!\i2c_inst|received_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.idle~q\,
	datab => \i2c_inst|received_ack~q\,
	datac => \i2c_inst|state.receive_ack~q\,
	datad => \wm8731_inst|i2c_write~q\,
	combout => \i2c_inst|Selector16~4_combout\);

-- Location: LCCOMB_X8_Y33_N10
\wm8731_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux1~1_combout\ = (\wm8731_inst|config_index\(1) & \wm8731_inst|config_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(1),
	datac => \wm8731_inst|config_index\(0),
	combout => \wm8731_inst|Mux1~1_combout\);

-- Location: LCCOMB_X8_Y33_N8
\wm8731_inst|config_data[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|config_data[3]~0_combout\ = (!\wm8731_inst|state.idle~q\ & (!\reset~input_o\ & \wm8731_inst|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|state.idle~q\,
	datac => \reset~input_o\,
	datad => \wm8731_inst|LessThan0~10_combout\,
	combout => \wm8731_inst|config_data[3]~0_combout\);

-- Location: FF_X8_Y33_N11
\wm8731_inst|config_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Mux1~1_combout\,
	ena => \wm8731_inst|config_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_data\(1));

-- Location: LCCOMB_X5_Y33_N16
\i2c_inst|Selector20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector20~4_combout\ = (\wm8731_inst|config_data\(1) & ((\i2c_inst|state.start~q\) # (\i2c_inst|Selector16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.start~q\,
	datac => \i2c_inst|Selector16~4_combout\,
	datad => \wm8731_inst|config_data\(1),
	combout => \i2c_inst|Selector20~4_combout\);

-- Location: LCCOMB_X4_Y33_N8
\i2c_inst|Selector20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector20~5_combout\ = (\i2c_inst|Selector20~6_combout\) # ((\i2c_inst|Selector20~4_combout\) # ((!\i2c_inst|Selector16~7_combout\ & \i2c_inst|shift_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector20~6_combout\,
	datab => \i2c_inst|Selector16~7_combout\,
	datac => \i2c_inst|shift_reg\(1),
	datad => \i2c_inst|Selector20~4_combout\,
	combout => \i2c_inst|Selector20~5_combout\);

-- Location: FF_X4_Y33_N9
\i2c_inst|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector20~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(1));

-- Location: LCCOMB_X4_Y33_N28
\i2c_inst|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|WideOr5~0_combout\ = (\i2c_inst|state.read_data~q\) # ((\i2c_inst|state.start~q\) # (\i2c_inst|state.receive_ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|state.start~q\,
	datad => \i2c_inst|state.receive_ack~q\,
	combout => \i2c_inst|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y33_N14
\i2c_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector21~0_combout\ = (\i2c_inst|shift_reg\(0) & (((\i2c_inst|state.read_data~q\) # (\i2c_inst|bit_counter[2]~4_combout\)) # (!\i2c_inst|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|WideOr5~0_combout\,
	datab => \i2c_inst|shift_reg\(0),
	datac => \i2c_inst|state.read_data~q\,
	datad => \i2c_inst|bit_counter[2]~4_combout\,
	combout => \i2c_inst|Selector21~0_combout\);

-- Location: LCCOMB_X8_Y33_N12
\wm8731_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux3~0_combout\ = (\wm8731_inst|config_index\(2) & \wm8731_inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_inst|config_index\(2),
	datad => \wm8731_inst|Add0~0_combout\,
	combout => \wm8731_inst|Mux3~0_combout\);

-- Location: FF_X8_Y33_N13
\wm8731_inst|config_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Mux3~0_combout\,
	ena => \wm8731_inst|config_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_data\(0));

-- Location: LCCOMB_X4_Y33_N18
\i2c_inst|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector21~1_combout\ = (\i2c_inst|Selector21~0_combout\) # ((\wm8731_inst|config_data\(0) & ((\i2c_inst|Selector16~4_combout\) # (\i2c_inst|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector16~4_combout\,
	datab => \i2c_inst|state.start~q\,
	datac => \i2c_inst|Selector21~0_combout\,
	datad => \wm8731_inst|config_data\(0),
	combout => \i2c_inst|Selector21~1_combout\);

-- Location: FF_X4_Y33_N19
\i2c_inst|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector21~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(0));

-- Location: LCCOMB_X3_Y33_N30
\i2c_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux0~2_combout\ = (\i2c_inst|bit_counter\(1) & (\i2c_inst|shift_reg\(1) & (\i2c_inst|bit_counter\(0)))) # (!\i2c_inst|bit_counter\(1) & (((\i2c_inst|bit_counter\(0)) # (\i2c_inst|shift_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(1),
	datab => \i2c_inst|shift_reg\(1),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|shift_reg\(0),
	combout => \i2c_inst|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y33_N30
\i2c_inst|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~6_combout\ = (\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & (\i2c_inst|bit_counter\(0) & !\i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datab => \i2c_inst|bit_counter\(3),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~6_combout\);

-- Location: LCCOMB_X4_Y33_N6
\i2c_inst|Selector18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector18~4_combout\ = (\i2c_inst|state.read_data~q\ & ((\i2c_inst|Decoder0~6_combout\ & ((\i2c_inst|sda_internal~q\))) # (!\i2c_inst|Decoder0~6_combout\ & (\i2c_inst|shift_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(3),
	datab => \i2c_inst|sda_internal~q\,
	datac => \i2c_inst|state.read_data~q\,
	datad => \i2c_inst|Decoder0~6_combout\,
	combout => \i2c_inst|Selector18~4_combout\);

-- Location: LCCOMB_X8_Y33_N16
\wm8731_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux0~0_combout\ = (\wm8731_inst|config_index\(2) & \wm8731_inst|config_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_inst|config_index\(2),
	datad => \wm8731_inst|config_index\(1),
	combout => \wm8731_inst|Mux0~0_combout\);

-- Location: FF_X8_Y33_N17
\wm8731_inst|config_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Mux0~0_combout\,
	ena => \wm8731_inst|config_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_data\(3));

-- Location: LCCOMB_X5_Y33_N4
\i2c_inst|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector15~2_combout\ = ((!\i2c_inst|state.start~q\ & !\i2c_inst|Selector16~4_combout\)) # (!\wm8731_inst|config_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.start~q\,
	datac => \i2c_inst|Selector16~4_combout\,
	datad => \wm8731_inst|config_data\(3),
	combout => \i2c_inst|Selector15~2_combout\);

-- Location: LCCOMB_X4_Y33_N16
\i2c_inst|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector18~2_combout\ = ((\i2c_inst|shift_reg\(3) & !\i2c_inst|WideOr5~0_combout\)) # (!\i2c_inst|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(3),
	datac => \i2c_inst|WideOr5~0_combout\,
	datad => \i2c_inst|Selector15~2_combout\,
	combout => \i2c_inst|Selector18~2_combout\);

-- Location: LCCOMB_X4_Y33_N22
\i2c_inst|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector18~3_combout\ = (\i2c_inst|Selector18~4_combout\) # ((\i2c_inst|Selector18~2_combout\) # ((\i2c_inst|bit_counter[2]~4_combout\ & \i2c_inst|shift_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector18~4_combout\,
	datab => \i2c_inst|bit_counter[2]~4_combout\,
	datac => \i2c_inst|shift_reg\(3),
	datad => \i2c_inst|Selector18~2_combout\,
	combout => \i2c_inst|Selector18~3_combout\);

-- Location: FF_X4_Y33_N23
\i2c_inst|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector18~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(3));

-- Location: LCCOMB_X1_Y33_N8
\i2c_inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~4_combout\ = (\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & (!\i2c_inst|bit_counter\(0) & \i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datab => \i2c_inst|bit_counter\(3),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X2_Y33_N18
\i2c_inst|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector19~3_combout\ = (\i2c_inst|state.read_data~q\ & ((\i2c_inst|Decoder0~4_combout\ & (\i2c_inst|sda_internal~q\)) # (!\i2c_inst|Decoder0~4_combout\ & ((\i2c_inst|shift_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|sda_internal~q\,
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|shift_reg\(2),
	datad => \i2c_inst|Decoder0~4_combout\,
	combout => \i2c_inst|Selector19~3_combout\);

-- Location: LCCOMB_X3_Y33_N8
\i2c_inst|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector19~2_combout\ = (\i2c_inst|Selector19~3_combout\) # ((\i2c_inst|shift_reg\(2) & ((\i2c_inst|bit_counter[2]~4_combout\) # (!\i2c_inst|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter[2]~4_combout\,
	datab => \i2c_inst|WideOr5~0_combout\,
	datac => \i2c_inst|shift_reg\(2),
	datad => \i2c_inst|Selector19~3_combout\,
	combout => \i2c_inst|Selector19~2_combout\);

-- Location: FF_X3_Y33_N9
\i2c_inst|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector19~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(2));

-- Location: LCCOMB_X3_Y33_N24
\i2c_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Add0~1_combout\ = \i2c_inst|bit_counter\(0) $ (\i2c_inst|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Add0~1_combout\);

-- Location: LCCOMB_X3_Y33_N20
\i2c_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux0~3_combout\ = (\i2c_inst|Mux0~2_combout\ & ((\i2c_inst|shift_reg\(3)) # ((!\i2c_inst|Add0~1_combout\)))) # (!\i2c_inst|Mux0~2_combout\ & (((\i2c_inst|shift_reg\(2) & \i2c_inst|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Mux0~2_combout\,
	datab => \i2c_inst|shift_reg\(3),
	datac => \i2c_inst|shift_reg\(2),
	datad => \i2c_inst|Add0~1_combout\,
	combout => \i2c_inst|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y33_N10
\i2c_inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~3_combout\ = (!\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & (\i2c_inst|bit_counter\(0) & !\i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(2),
	datab => \i2c_inst|bit_counter\(3),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X2_Y33_N8
\i2c_inst|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector14~3_combout\ = (\i2c_inst|state.read_data~q\ & ((\i2c_inst|Decoder0~3_combout\ & ((\i2c_inst|sda_internal~q\))) # (!\i2c_inst|Decoder0~3_combout\ & (\i2c_inst|shift_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Decoder0~3_combout\,
	datab => \i2c_inst|shift_reg\(7),
	datac => \i2c_inst|sda_internal~q\,
	datad => \i2c_inst|state.read_data~q\,
	combout => \i2c_inst|Selector14~3_combout\);

-- Location: LCCOMB_X3_Y33_N12
\i2c_inst|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector14~2_combout\ = (\i2c_inst|Selector14~3_combout\) # ((\i2c_inst|shift_reg\(7) & ((\i2c_inst|bit_counter[2]~4_combout\) # (!\i2c_inst|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter[2]~4_combout\,
	datab => \i2c_inst|WideOr5~0_combout\,
	datac => \i2c_inst|shift_reg\(7),
	datad => \i2c_inst|Selector14~3_combout\,
	combout => \i2c_inst|Selector14~2_combout\);

-- Location: FF_X3_Y33_N13
\i2c_inst|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector14~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(7));

-- Location: LCCOMB_X3_Y33_N16
\i2c_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~0_combout\ = (!\i2c_inst|bit_counter\(0) & (!\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & \i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(0),
	datab => \i2c_inst|bit_counter\(2),
	datac => \i2c_inst|bit_counter\(3),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X4_Y33_N30
\i2c_inst|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector15~5_combout\ = (\i2c_inst|state.read_data~q\ & ((\i2c_inst|Decoder0~0_combout\ & (\i2c_inst|sda_internal~q\)) # (!\i2c_inst|Decoder0~0_combout\ & ((\i2c_inst|shift_reg\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Decoder0~0_combout\,
	datab => \i2c_inst|sda_internal~q\,
	datac => \i2c_inst|state.read_data~q\,
	datad => \i2c_inst|shift_reg\(6),
	combout => \i2c_inst|Selector15~5_combout\);

-- Location: LCCOMB_X4_Y33_N10
\i2c_inst|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector15~3_combout\ = ((\i2c_inst|shift_reg\(6) & !\i2c_inst|WideOr5~0_combout\)) # (!\i2c_inst|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_inst|shift_reg\(6),
	datac => \i2c_inst|WideOr5~0_combout\,
	datad => \i2c_inst|Selector15~2_combout\,
	combout => \i2c_inst|Selector15~3_combout\);

-- Location: LCCOMB_X4_Y33_N24
\i2c_inst|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector15~4_combout\ = (\i2c_inst|Selector15~5_combout\) # ((\i2c_inst|Selector15~3_combout\) # ((\i2c_inst|bit_counter[2]~4_combout\ & \i2c_inst|shift_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector15~5_combout\,
	datab => \i2c_inst|bit_counter[2]~4_combout\,
	datac => \i2c_inst|shift_reg\(6),
	datad => \i2c_inst|Selector15~3_combout\,
	combout => \i2c_inst|Selector15~4_combout\);

-- Location: FF_X4_Y33_N25
\i2c_inst|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector15~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(6));

-- Location: LCCOMB_X3_Y33_N28
\i2c_inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~2_combout\ = (\i2c_inst|bit_counter\(0) & (!\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & \i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(0),
	datab => \i2c_inst|bit_counter\(2),
	datac => \i2c_inst|bit_counter\(3),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X4_Y33_N26
\i2c_inst|Selector16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector16~8_combout\ = (\i2c_inst|state.read_data~q\ & ((\i2c_inst|Decoder0~2_combout\ & ((\i2c_inst|sda_internal~q\))) # (!\i2c_inst|Decoder0~2_combout\ & (\i2c_inst|shift_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(5),
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|sda_internal~q\,
	datad => \i2c_inst|Decoder0~2_combout\,
	combout => \i2c_inst|Selector16~8_combout\);

-- Location: LCCOMB_X8_Y33_N18
\wm8731_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux1~0_combout\ = (\wm8731_inst|config_index\(2) & ((!\wm8731_inst|config_index\(0)))) # (!\wm8731_inst|config_index\(2) & (\wm8731_inst|config_index\(1) & \wm8731_inst|config_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|config_index\(1),
	datab => \wm8731_inst|config_index\(2),
	datac => \wm8731_inst|config_index\(0),
	combout => \wm8731_inst|Mux1~0_combout\);

-- Location: FF_X8_Y33_N19
\wm8731_inst|config_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wm8731_inst|Mux1~0_combout\,
	ena => \wm8731_inst|config_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|config_data\(5));

-- Location: LCCOMB_X5_Y33_N18
\i2c_inst|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector16~5_combout\ = (\wm8731_inst|config_data\(5) & ((\i2c_inst|state.start~q\) # (\i2c_inst|Selector16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.start~q\,
	datac => \i2c_inst|Selector16~4_combout\,
	datad => \wm8731_inst|config_data\(5),
	combout => \i2c_inst|Selector16~5_combout\);

-- Location: LCCOMB_X4_Y33_N20
\i2c_inst|Selector16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector16~6_combout\ = (\i2c_inst|Selector16~8_combout\) # ((\i2c_inst|Selector16~5_combout\) # ((!\i2c_inst|Selector16~7_combout\ & \i2c_inst|shift_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector16~8_combout\,
	datab => \i2c_inst|Selector16~7_combout\,
	datac => \i2c_inst|shift_reg\(5),
	datad => \i2c_inst|Selector16~5_combout\,
	combout => \i2c_inst|Selector16~6_combout\);

-- Location: FF_X4_Y33_N21
\i2c_inst|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector16~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(5));

-- Location: LCCOMB_X3_Y33_N18
\i2c_inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Decoder0~1_combout\ = (!\i2c_inst|bit_counter\(0) & (\i2c_inst|bit_counter\(2) & (!\i2c_inst|bit_counter\(3) & !\i2c_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(0),
	datab => \i2c_inst|bit_counter\(2),
	datac => \i2c_inst|bit_counter\(3),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X4_Y33_N4
\i2c_inst|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector17~4_combout\ = (\i2c_inst|state.read_data~q\ & ((\i2c_inst|Decoder0~1_combout\ & ((\i2c_inst|sda_internal~q\))) # (!\i2c_inst|Decoder0~1_combout\ & (\i2c_inst|shift_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(4),
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|sda_internal~q\,
	datad => \i2c_inst|Decoder0~1_combout\,
	combout => \i2c_inst|Selector17~4_combout\);

-- Location: LCCOMB_X4_Y33_N0
\i2c_inst|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector17~2_combout\ = ((\i2c_inst|shift_reg\(4) & !\i2c_inst|WideOr5~0_combout\)) # (!\i2c_inst|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(4),
	datac => \i2c_inst|WideOr5~0_combout\,
	datad => \i2c_inst|Selector15~2_combout\,
	combout => \i2c_inst|Selector17~2_combout\);

-- Location: LCCOMB_X4_Y33_N2
\i2c_inst|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector17~3_combout\ = (\i2c_inst|Selector17~4_combout\) # ((\i2c_inst|Selector17~2_combout\) # ((\i2c_inst|bit_counter[2]~4_combout\ & \i2c_inst|shift_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector17~4_combout\,
	datab => \i2c_inst|bit_counter[2]~4_combout\,
	datac => \i2c_inst|shift_reg\(4),
	datad => \i2c_inst|Selector17~2_combout\,
	combout => \i2c_inst|Selector17~3_combout\);

-- Location: FF_X4_Y33_N3
\i2c_inst|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector17~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|shift_reg\(4));

-- Location: LCCOMB_X3_Y33_N26
\i2c_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux0~0_combout\ = (\i2c_inst|bit_counter\(1) & (\i2c_inst|shift_reg\(5) & (\i2c_inst|bit_counter\(0)))) # (!\i2c_inst|bit_counter\(1) & (((\i2c_inst|bit_counter\(0)) # (\i2c_inst|shift_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(5),
	datab => \i2c_inst|bit_counter\(1),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|shift_reg\(4),
	combout => \i2c_inst|Mux0~0_combout\);

-- Location: LCCOMB_X3_Y33_N6
\i2c_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux0~1_combout\ = (\i2c_inst|Mux0~0_combout\ & ((\i2c_inst|shift_reg\(7)) # ((!\i2c_inst|Add0~1_combout\)))) # (!\i2c_inst|Mux0~0_combout\ & (((\i2c_inst|shift_reg\(6) & \i2c_inst|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(7),
	datab => \i2c_inst|shift_reg\(6),
	datac => \i2c_inst|Mux0~0_combout\,
	datad => \i2c_inst|Add0~1_combout\,
	combout => \i2c_inst|Mux0~1_combout\);

-- Location: LCCOMB_X2_Y33_N14
\i2c_inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector8~1_combout\ = (\i2c_inst|Selector8~0_combout\ & ((\i2c_inst|Add0~2_combout\ & ((\i2c_inst|Mux0~1_combout\))) # (!\i2c_inst|Add0~2_combout\ & (\i2c_inst|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector8~0_combout\,
	datab => \i2c_inst|Add0~2_combout\,
	datac => \i2c_inst|Mux0~3_combout\,
	datad => \i2c_inst|Mux0~1_combout\,
	combout => \i2c_inst|Selector8~1_combout\);

-- Location: LCCOMB_X2_Y33_N28
\i2c_inst|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector8~3_combout\ = (\i2c_inst|state.read_data~q\) # ((\i2c_inst|state.receive_ack~q\) # (!\i2c_inst|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_inst|state.read_data~q\,
	datac => \i2c_inst|state.idle~q\,
	datad => \i2c_inst|state.receive_ack~q\,
	combout => \i2c_inst|Selector8~3_combout\);

-- Location: LCCOMB_X3_Y33_N22
\i2c_inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux1~2_combout\ = (\i2c_inst|bit_counter\(0) & (((\i2c_inst|shift_reg\(6)) # (\i2c_inst|bit_counter\(1))))) # (!\i2c_inst|bit_counter\(0) & (\i2c_inst|shift_reg\(7) & ((!\i2c_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(7),
	datab => \i2c_inst|shift_reg\(6),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Mux1~2_combout\);

-- Location: LCCOMB_X3_Y33_N4
\i2c_inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux1~3_combout\ = (\i2c_inst|Mux1~2_combout\ & ((\i2c_inst|shift_reg\(4)) # ((!\i2c_inst|bit_counter\(1))))) # (!\i2c_inst|Mux1~2_combout\ & (((\i2c_inst|shift_reg\(5) & \i2c_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|shift_reg\(4),
	datab => \i2c_inst|shift_reg\(5),
	datac => \i2c_inst|Mux1~2_combout\,
	datad => \i2c_inst|bit_counter\(1),
	combout => \i2c_inst|Mux1~3_combout\);

-- Location: LCCOMB_X3_Y33_N10
\i2c_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux1~0_combout\ = (\i2c_inst|bit_counter\(1) & (((\i2c_inst|bit_counter\(0))))) # (!\i2c_inst|bit_counter\(1) & ((\i2c_inst|bit_counter\(0) & (\i2c_inst|shift_reg\(2))) # (!\i2c_inst|bit_counter\(0) & ((\i2c_inst|shift_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(1),
	datab => \i2c_inst|shift_reg\(2),
	datac => \i2c_inst|bit_counter\(0),
	datad => \i2c_inst|shift_reg\(3),
	combout => \i2c_inst|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y33_N0
\i2c_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Mux1~1_combout\ = (\i2c_inst|bit_counter\(1) & ((\i2c_inst|Mux1~0_combout\ & (\i2c_inst|shift_reg\(0))) # (!\i2c_inst|Mux1~0_combout\ & ((\i2c_inst|shift_reg\(1)))))) # (!\i2c_inst|bit_counter\(1) & (((\i2c_inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(1),
	datab => \i2c_inst|shift_reg\(0),
	datac => \i2c_inst|shift_reg\(1),
	datad => \i2c_inst|Mux1~0_combout\,
	combout => \i2c_inst|Mux1~1_combout\);

-- Location: LCCOMB_X3_Y33_N2
\i2c_inst|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector8~2_combout\ = (!\i2c_inst|bit_counter\(3) & ((\i2c_inst|bit_counter\(2) & ((\i2c_inst|Mux1~1_combout\))) # (!\i2c_inst|bit_counter\(2) & (\i2c_inst|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|bit_counter\(3),
	datab => \i2c_inst|bit_counter\(2),
	datac => \i2c_inst|Mux1~3_combout\,
	datad => \i2c_inst|Mux1~1_combout\,
	combout => \i2c_inst|Selector8~2_combout\);

-- Location: LCCOMB_X2_Y33_N2
\i2c_inst|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector8~4_combout\ = (\i2c_inst|Selector8~3_combout\ & ((\i2c_inst|sda_internal~q\) # ((\i2c_inst|state.write_data~q\ & \i2c_inst|Selector8~2_combout\)))) # (!\i2c_inst|Selector8~3_combout\ & (\i2c_inst|state.write_data~q\ & 
-- ((\i2c_inst|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector8~3_combout\,
	datab => \i2c_inst|state.write_data~q\,
	datac => \i2c_inst|sda_internal~q\,
	datad => \i2c_inst|Selector8~2_combout\,
	combout => \i2c_inst|Selector8~4_combout\);

-- Location: LCCOMB_X2_Y33_N12
\i2c_inst|Selector8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|Selector8~6_combout\ = (\i2c_inst|Selector8~1_combout\) # ((\i2c_inst|Selector8~4_combout\) # ((\i2c_inst|Selector8~5_combout\ & \i2c_inst|shift_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|Selector8~5_combout\,
	datab => \i2c_inst|shift_reg\(8),
	datac => \i2c_inst|Selector8~1_combout\,
	datad => \i2c_inst|Selector8~4_combout\,
	combout => \i2c_inst|Selector8~6_combout\);

-- Location: FF_X2_Y33_N13
\i2c_inst|sda_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_inst|Selector8~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_inst|sda_internal~q\);

-- Location: LCCOMB_X2_Y33_N4
\i2c_inst|sda~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_inst|sda~6_combout\ = (\i2c_inst|state.write_addr~q\) # ((\i2c_inst|state.start~q\) # ((\i2c_inst|state.send_ack~q\) # (\i2c_inst|state.write_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_inst|state.write_addr~q\,
	datab => \i2c_inst|state.start~q\,
	datac => \i2c_inst|state.send_ack~q\,
	datad => \i2c_inst|state.write_data~q\,
	combout => \i2c_inst|sda~6_combout\);

-- Location: IOIBUF_X0_Y47_N1
\sdata~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdata,
	o => \sdata~input_o\);

-- Location: LCCOMB_X3_Y45_N6
\i2s_inst|shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[0]~feeder_combout\ = \sdata~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdata~input_o\,
	combout => \i2s_inst|shift_reg[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y47_N22
\wclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wclk,
	o => \wclk~input_o\);

-- Location: LCCOMB_X4_Y45_N18
\i2s_inst|last_wclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|last_wclk~feeder_combout\ = \wclk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wclk~input_o\,
	combout => \i2s_inst|last_wclk~feeder_combout\);

-- Location: FF_X4_Y45_N19
\i2s_inst|last_wclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|last_wclk~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|last_wclk~q\);

-- Location: LCCOMB_X4_Y45_N4
\i2s_inst|sampling_edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|sampling_edge~0_combout\ = (\wclk~input_o\ & !\i2s_inst|last_wclk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wclk~input_o\,
	datad => \i2s_inst|last_wclk~q\,
	combout => \i2s_inst|sampling_edge~0_combout\);

-- Location: FF_X4_Y45_N5
\i2s_inst|sampling_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|sampling_edge~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|sampling_edge~q\);

-- Location: FF_X3_Y45_N7
\i2s_inst|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(0));

-- Location: LCCOMB_X2_Y45_N24
\i2s_inst|audio_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[0]~feeder_combout\ = \i2s_inst|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(0),
	combout => \i2s_inst|audio_data[0]~feeder_combout\);

-- Location: LCCOMB_X2_Y45_N8
\i2s_inst|bit_counter[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|bit_counter[0]~4_combout\ = !\i2s_inst|bit_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|bit_counter\(0),
	combout => \i2s_inst|bit_counter[0]~4_combout\);

-- Location: FF_X2_Y45_N9
\i2s_inst|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|bit_counter[0]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|bit_counter\(0));

-- Location: LCCOMB_X3_Y45_N22
\i2s_inst|bit_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|bit_counter[1]~2_combout\ = \i2s_inst|bit_counter\(1) $ (((\i2s_inst|sampling_edge~q\ & \i2s_inst|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s_inst|sampling_edge~q\,
	datac => \i2s_inst|bit_counter\(1),
	datad => \i2s_inst|bit_counter\(0),
	combout => \i2s_inst|bit_counter[1]~2_combout\);

-- Location: FF_X3_Y45_N23
\i2s_inst|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|bit_counter[1]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|bit_counter\(1));

-- Location: LCCOMB_X3_Y45_N24
\i2s_inst|bit_counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|bit_counter[2]~3_combout\ = \i2s_inst|bit_counter\(2) $ (((\i2s_inst|bit_counter\(0) & (\i2s_inst|sampling_edge~q\ & \i2s_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s_inst|bit_counter\(0),
	datab => \i2s_inst|sampling_edge~q\,
	datac => \i2s_inst|bit_counter\(2),
	datad => \i2s_inst|bit_counter\(1),
	combout => \i2s_inst|bit_counter[2]~3_combout\);

-- Location: FF_X3_Y45_N25
\i2s_inst|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|bit_counter[2]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|bit_counter\(2));

-- Location: LCCOMB_X3_Y45_N16
\i2s_inst|bit_counter[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|bit_counter[3]~0_combout\ = (!\i2s_inst|bit_counter\(1)) # (!\i2s_inst|bit_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2s_inst|bit_counter\(2),
	datad => \i2s_inst|bit_counter\(1),
	combout => \i2s_inst|bit_counter[3]~0_combout\);

-- Location: LCCOMB_X3_Y45_N28
\i2s_inst|bit_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|bit_counter[3]~1_combout\ = \i2s_inst|bit_counter\(3) $ (((\i2s_inst|bit_counter\(0) & (\i2s_inst|sampling_edge~q\ & !\i2s_inst|bit_counter[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s_inst|bit_counter\(0),
	datab => \i2s_inst|sampling_edge~q\,
	datac => \i2s_inst|bit_counter\(3),
	datad => \i2s_inst|bit_counter[3]~0_combout\,
	combout => \i2s_inst|bit_counter[3]~1_combout\);

-- Location: FF_X3_Y45_N29
\i2s_inst|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|bit_counter[3]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|bit_counter\(3));

-- Location: LCCOMB_X2_Y45_N16
\i2s_inst|audio_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[0]~0_combout\ = (!\reset~input_o\ & (\i2s_inst|bit_counter\(0) & \i2s_inst|bit_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i2s_inst|bit_counter\(0),
	datad => \i2s_inst|bit_counter\(2),
	combout => \i2s_inst|audio_data[0]~0_combout\);

-- Location: LCCOMB_X2_Y45_N6
\i2s_inst|audio_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[0]~1_combout\ = (\i2s_inst|bit_counter\(1) & (\i2s_inst|bit_counter\(3) & (\i2s_inst|sampling_edge~q\ & \i2s_inst|audio_data[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s_inst|bit_counter\(1),
	datab => \i2s_inst|bit_counter\(3),
	datac => \i2s_inst|sampling_edge~q\,
	datad => \i2s_inst|audio_data[0]~0_combout\,
	combout => \i2s_inst|audio_data[0]~1_combout\);

-- Location: FF_X2_Y45_N25
\i2s_inst|audio_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[0]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(0));

-- Location: LCCOMB_X3_Y45_N26
\i2s_inst|shift_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[1]~feeder_combout\ = \i2s_inst|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(0),
	combout => \i2s_inst|shift_reg[1]~feeder_combout\);

-- Location: FF_X3_Y45_N27
\i2s_inst|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(1));

-- Location: LCCOMB_X2_Y45_N18
\i2s_inst|audio_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[1]~feeder_combout\ = \i2s_inst|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(1),
	combout => \i2s_inst|audio_data[1]~feeder_combout\);

-- Location: FF_X2_Y45_N19
\i2s_inst|audio_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[1]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(1));

-- Location: LCCOMB_X3_Y45_N8
\i2s_inst|shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[2]~feeder_combout\ = \i2s_inst|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(1),
	combout => \i2s_inst|shift_reg[2]~feeder_combout\);

-- Location: FF_X3_Y45_N9
\i2s_inst|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(2));

-- Location: LCCOMB_X2_Y45_N0
\i2s_inst|audio_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[2]~feeder_combout\ = \i2s_inst|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(2),
	combout => \i2s_inst|audio_data[2]~feeder_combout\);

-- Location: FF_X2_Y45_N1
\i2s_inst|audio_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[2]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(2));

-- Location: LCCOMB_X3_Y45_N30
\i2s_inst|shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[3]~feeder_combout\ = \i2s_inst|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(2),
	combout => \i2s_inst|shift_reg[3]~feeder_combout\);

-- Location: FF_X3_Y45_N31
\i2s_inst|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(3));

-- Location: LCCOMB_X2_Y45_N14
\i2s_inst|audio_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[3]~feeder_combout\ = \i2s_inst|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(3),
	combout => \i2s_inst|audio_data[3]~feeder_combout\);

-- Location: FF_X2_Y45_N15
\i2s_inst|audio_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[3]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(3));

-- Location: LCCOMB_X3_Y45_N20
\i2s_inst|shift_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[4]~feeder_combout\ = \i2s_inst|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(3),
	combout => \i2s_inst|shift_reg[4]~feeder_combout\);

-- Location: FF_X3_Y45_N21
\i2s_inst|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(4));

-- Location: FF_X2_Y45_N17
\i2s_inst|audio_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2s_inst|shift_reg\(4),
	sload => VCC,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(4));

-- Location: LCCOMB_X3_Y45_N10
\i2s_inst|shift_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[5]~feeder_combout\ = \i2s_inst|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(4),
	combout => \i2s_inst|shift_reg[5]~feeder_combout\);

-- Location: FF_X3_Y45_N11
\i2s_inst|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(5));

-- Location: LCCOMB_X2_Y45_N30
\i2s_inst|audio_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[5]~feeder_combout\ = \i2s_inst|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(5),
	combout => \i2s_inst|audio_data[5]~feeder_combout\);

-- Location: FF_X2_Y45_N31
\i2s_inst|audio_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[5]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(5));

-- Location: LCCOMB_X3_Y45_N12
\i2s_inst|shift_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[6]~feeder_combout\ = \i2s_inst|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(5),
	combout => \i2s_inst|shift_reg[6]~feeder_combout\);

-- Location: FF_X3_Y45_N13
\i2s_inst|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(6));

-- Location: LCCOMB_X2_Y45_N12
\i2s_inst|audio_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[6]~feeder_combout\ = \i2s_inst|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(6),
	combout => \i2s_inst|audio_data[6]~feeder_combout\);

-- Location: FF_X2_Y45_N13
\i2s_inst|audio_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[6]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(6));

-- Location: LCCOMB_X3_Y45_N18
\i2s_inst|shift_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[7]~feeder_combout\ = \i2s_inst|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(6),
	combout => \i2s_inst|shift_reg[7]~feeder_combout\);

-- Location: FF_X3_Y45_N19
\i2s_inst|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(7));

-- Location: LCCOMB_X2_Y45_N22
\i2s_inst|audio_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[7]~feeder_combout\ = \i2s_inst|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(7),
	combout => \i2s_inst|audio_data[7]~feeder_combout\);

-- Location: FF_X2_Y45_N23
\i2s_inst|audio_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[7]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(7));

-- Location: FF_X3_Y45_N17
\i2s_inst|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2s_inst|shift_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(8));

-- Location: LCCOMB_X1_Y45_N0
\i2s_inst|audio_data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[8]~feeder_combout\ = \i2s_inst|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(8),
	combout => \i2s_inst|audio_data[8]~feeder_combout\);

-- Location: FF_X1_Y45_N1
\i2s_inst|audio_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[8]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(8));

-- Location: LCCOMB_X1_Y45_N8
\i2s_inst|shift_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[9]~feeder_combout\ = \i2s_inst|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(8),
	combout => \i2s_inst|shift_reg[9]~feeder_combout\);

-- Location: FF_X1_Y45_N9
\i2s_inst|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(9));

-- Location: LCCOMB_X2_Y45_N20
\i2s_inst|audio_data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[9]~feeder_combout\ = \i2s_inst|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(9),
	combout => \i2s_inst|audio_data[9]~feeder_combout\);

-- Location: FF_X2_Y45_N21
\i2s_inst|audio_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[9]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(9));

-- Location: LCCOMB_X1_Y45_N14
\i2s_inst|shift_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[10]~feeder_combout\ = \i2s_inst|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(9),
	combout => \i2s_inst|shift_reg[10]~feeder_combout\);

-- Location: FF_X1_Y45_N15
\i2s_inst|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(10));

-- Location: LCCOMB_X2_Y45_N26
\i2s_inst|audio_data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[10]~feeder_combout\ = \i2s_inst|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(10),
	combout => \i2s_inst|audio_data[10]~feeder_combout\);

-- Location: FF_X2_Y45_N27
\i2s_inst|audio_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[10]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(10));

-- Location: LCCOMB_X1_Y45_N4
\i2s_inst|shift_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[11]~feeder_combout\ = \i2s_inst|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(10),
	combout => \i2s_inst|shift_reg[11]~feeder_combout\);

-- Location: FF_X1_Y45_N5
\i2s_inst|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(11));

-- Location: LCCOMB_X2_Y45_N28
\i2s_inst|audio_data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[11]~feeder_combout\ = \i2s_inst|shift_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(11),
	combout => \i2s_inst|audio_data[11]~feeder_combout\);

-- Location: FF_X2_Y45_N29
\i2s_inst|audio_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[11]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(11));

-- Location: LCCOMB_X1_Y45_N10
\i2s_inst|shift_reg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[12]~feeder_combout\ = \i2s_inst|shift_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_inst|shift_reg\(11),
	combout => \i2s_inst|shift_reg[12]~feeder_combout\);

-- Location: FF_X1_Y45_N11
\i2s_inst|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(12));

-- Location: LCCOMB_X1_Y45_N26
\i2s_inst|audio_data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[12]~feeder_combout\ = \i2s_inst|shift_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(12),
	combout => \i2s_inst|audio_data[12]~feeder_combout\);

-- Location: FF_X1_Y45_N27
\i2s_inst|audio_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[12]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(12));

-- Location: LCCOMB_X1_Y45_N24
\i2s_inst|shift_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[13]~feeder_combout\ = \i2s_inst|shift_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(12),
	combout => \i2s_inst|shift_reg[13]~feeder_combout\);

-- Location: FF_X1_Y45_N25
\i2s_inst|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(13));

-- Location: LCCOMB_X2_Y45_N10
\i2s_inst|audio_data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[13]~feeder_combout\ = \i2s_inst|shift_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(13),
	combout => \i2s_inst|audio_data[13]~feeder_combout\);

-- Location: FF_X2_Y45_N11
\i2s_inst|audio_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[13]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(13));

-- Location: LCCOMB_X1_Y45_N18
\i2s_inst|shift_reg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[14]~feeder_combout\ = \i2s_inst|shift_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(13),
	combout => \i2s_inst|shift_reg[14]~feeder_combout\);

-- Location: FF_X1_Y45_N19
\i2s_inst|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(14));

-- Location: LCCOMB_X2_Y45_N4
\i2s_inst|audio_data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[14]~feeder_combout\ = \i2s_inst|shift_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(14),
	combout => \i2s_inst|audio_data[14]~feeder_combout\);

-- Location: FF_X2_Y45_N5
\i2s_inst|audio_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[14]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(14));

-- Location: LCCOMB_X1_Y45_N12
\i2s_inst|shift_reg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|shift_reg[15]~feeder_combout\ = \i2s_inst|shift_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(14),
	combout => \i2s_inst|shift_reg[15]~feeder_combout\);

-- Location: FF_X1_Y45_N13
\i2s_inst|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|shift_reg[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|shift_reg\(15));

-- Location: LCCOMB_X2_Y45_N2
\i2s_inst|audio_data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|audio_data[15]~feeder_combout\ = \i2s_inst|shift_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_inst|shift_reg\(15),
	combout => \i2s_inst|audio_data[15]~feeder_combout\);

-- Location: FF_X2_Y45_N3
\i2s_inst|audio_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|audio_data[15]~feeder_combout\,
	ena => \i2s_inst|audio_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|audio_data\(15));

-- Location: LCCOMB_X3_Y45_N0
\i2s_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2s_inst|Equal0~0_combout\ = (\i2s_inst|bit_counter\(3) & (\i2s_inst|bit_counter\(2) & (\i2s_inst|bit_counter\(1) & \i2s_inst|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s_inst|bit_counter\(3),
	datab => \i2s_inst|bit_counter\(2),
	datac => \i2s_inst|bit_counter\(1),
	datad => \i2s_inst|bit_counter\(0),
	combout => \i2s_inst|Equal0~0_combout\);

-- Location: FF_X3_Y45_N1
\i2s_inst|data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2s_inst|Equal0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \i2s_inst|sampling_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_inst|data_valid~q\);

-- Location: IOIBUF_X3_Y73_N22
\bclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bclk,
	o => \bclk~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

ww_scl <= \scl~output_o\;

ww_audio_data(0) <= \audio_data[0]~output_o\;

ww_audio_data(1) <= \audio_data[1]~output_o\;

ww_audio_data(2) <= \audio_data[2]~output_o\;

ww_audio_data(3) <= \audio_data[3]~output_o\;

ww_audio_data(4) <= \audio_data[4]~output_o\;

ww_audio_data(5) <= \audio_data[5]~output_o\;

ww_audio_data(6) <= \audio_data[6]~output_o\;

ww_audio_data(7) <= \audio_data[7]~output_o\;

ww_audio_data(8) <= \audio_data[8]~output_o\;

ww_audio_data(9) <= \audio_data[9]~output_o\;

ww_audio_data(10) <= \audio_data[10]~output_o\;

ww_audio_data(11) <= \audio_data[11]~output_o\;

ww_audio_data(12) <= \audio_data[12]~output_o\;

ww_audio_data(13) <= \audio_data[13]~output_o\;

ww_audio_data(14) <= \audio_data[14]~output_o\;

ww_audio_data(15) <= \audio_data[15]~output_o\;

ww_data_valid <= \data_valid~output_o\;

sda <= \sda~output_o\;
END structure;


