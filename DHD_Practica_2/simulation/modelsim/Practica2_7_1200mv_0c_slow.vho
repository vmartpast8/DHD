-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/29/2024 16:21:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_R : BUFFER std_logic_vector(0 TO 7);
	VGA_G : BUFFER std_logic_vector(0 TO 7);
	VGA_B : BUFFER std_logic_vector(0 TO 7);
	VGA_BLANK_N : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_CLK : BUFFER std_logic;
	UP : IN std_logic;
	DOWN : IN std_logic;
	UP_D : IN std_logic;
	DOWN_D : IN std_logic
	);
END vga_top;

-- Design Ports Information
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP_D	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOWN_D	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOWN	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_G : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_B : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_UP : std_logic;
SIGNAL ww_DOWN : std_logic;
SIGNAL ww_UP_D : std_logic;
SIGNAL ww_DOWN_D : std_logic;
SIGNAL \PLL|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA|vga_vs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK3\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK4\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PLL|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|Add0~0_combout\ : std_logic;
SIGNAL \VGA|Add0~1\ : std_logic;
SIGNAL \VGA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~3\ : std_logic;
SIGNAL \VGA|Add0~4_combout\ : std_logic;
SIGNAL \VGA|Add0~5\ : std_logic;
SIGNAL \VGA|Add0~6_combout\ : std_logic;
SIGNAL \VGA|Add0~7\ : std_logic;
SIGNAL \VGA|Add0~8_combout\ : std_logic;
SIGNAL \VGA|Add0~9\ : std_logic;
SIGNAL \VGA|Add0~10_combout\ : std_logic;
SIGNAL \VGA|Add0~17\ : std_logic;
SIGNAL \VGA|Add0~18_combout\ : std_logic;
SIGNAL \VGA|cont_hs~0_combout\ : std_logic;
SIGNAL \VGA|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|cont_hs~2_combout\ : std_logic;
SIGNAL \VGA|Add0~11\ : std_logic;
SIGNAL \VGA|Add0~12_combout\ : std_logic;
SIGNAL \VGA|Add0~13\ : std_logic;
SIGNAL \VGA|Add0~14_combout\ : std_logic;
SIGNAL \VGA|Add0~15\ : std_logic;
SIGNAL \VGA|Add0~16_combout\ : std_logic;
SIGNAL \VGA|cont_hs~1_combout\ : std_logic;
SIGNAL \VGA|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA|pixel_x[4]~feeder_combout\ : std_logic;
SIGNAL \VGA|pixel_x[3]~feeder_combout\ : std_logic;
SIGNAL \int_bola|Add5~1\ : std_logic;
SIGNAL \int_bola|Add5~3\ : std_logic;
SIGNAL \int_bola|Add5~5\ : std_logic;
SIGNAL \int_bola|Add5~7\ : std_logic;
SIGNAL \int_bola|Add5~9\ : std_logic;
SIGNAL \int_bola|Add5~10_combout\ : std_logic;
SIGNAL \int_bola|Add5~6_combout\ : std_logic;
SIGNAL \int_bola|Add5~4_combout\ : std_logic;
SIGNAL \int_bola|Add5~0_combout\ : std_logic;
SIGNAL \VGA|pixel_x[1]~feeder_combout\ : std_logic;
SIGNAL \VGA|pixel_x[0]~feeder_combout\ : std_logic;
SIGNAL \int_bola|LessThan4~0_combout\ : std_logic;
SIGNAL \int_bola|Add5~2_combout\ : std_logic;
SIGNAL \int_bola|LessThan4~1_combout\ : std_logic;
SIGNAL \int_bola|Add5~8_combout\ : std_logic;
SIGNAL \int_bola|LessThan4~2_combout\ : std_logic;
SIGNAL \int_bola|Add5~11\ : std_logic;
SIGNAL \int_bola|Add5~12_combout\ : std_logic;
SIGNAL \VGA|Equal2~1_combout\ : std_logic;
SIGNAL \VGA|Equal2~0_combout\ : std_logic;
SIGNAL \VGA|Equal2~2_combout\ : std_logic;
SIGNAL \VGA|Add1~0_combout\ : std_logic;
SIGNAL \VGA|cont_vs[0]~9_combout\ : std_logic;
SIGNAL \VGA|Add1~1\ : std_logic;
SIGNAL \VGA|Add1~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[1]~8_combout\ : std_logic;
SIGNAL \VGA|Add1~3\ : std_logic;
SIGNAL \VGA|Add1~4_combout\ : std_logic;
SIGNAL \VGA|cont_vs[2]~7_combout\ : std_logic;
SIGNAL \VGA|Add1~5\ : std_logic;
SIGNAL \VGA|Add1~6_combout\ : std_logic;
SIGNAL \VGA|cont_vs[3]~6_combout\ : std_logic;
SIGNAL \VGA|Add1~7\ : std_logic;
SIGNAL \VGA|Add1~8_combout\ : std_logic;
SIGNAL \VGA|cont_vs[4]~5_combout\ : std_logic;
SIGNAL \VGA|Add1~9\ : std_logic;
SIGNAL \VGA|Add1~11\ : std_logic;
SIGNAL \VGA|Add1~12_combout\ : std_logic;
SIGNAL \VGA|cont_vs[6]~3_combout\ : std_logic;
SIGNAL \VGA|Add1~13\ : std_logic;
SIGNAL \VGA|Add1~14_combout\ : std_logic;
SIGNAL \VGA|cont_vs[7]~4_combout\ : std_logic;
SIGNAL \VGA|process_0~6_combout\ : std_logic;
SIGNAL \VGA|process_0~5_combout\ : std_logic;
SIGNAL \VGA|process_0~7_combout\ : std_logic;
SIGNAL \VGA|process_0~8_combout\ : std_logic;
SIGNAL \VGA|Add1~15\ : std_logic;
SIGNAL \VGA|Add1~16_combout\ : std_logic;
SIGNAL \VGA|cont_vs[8]~1_combout\ : std_logic;
SIGNAL \VGA|Add1~17\ : std_logic;
SIGNAL \VGA|Add1~18_combout\ : std_logic;
SIGNAL \VGA|cont_vs[9]~0_combout\ : std_logic;
SIGNAL \VGA|process_0~9_combout\ : std_logic;
SIGNAL \VGA|Add1~10_combout\ : std_logic;
SIGNAL \VGA|cont_vs[5]~2_combout\ : std_logic;
SIGNAL \VGA|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA|process_0~3_combout\ : std_logic;
SIGNAL \VGA|process_0~4_combout\ : std_logic;
SIGNAL \VGA|vs~q\ : std_logic;
SIGNAL \VGA|vga_vs~q\ : std_logic;
SIGNAL \VGA|vga_vs~clkctrl_outclk\ : std_logic;
SIGNAL \int_bola|Bola_X[1]~9_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[1]~10\ : std_logic;
SIGNAL \int_bola|Bola_X[2]~11_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[2]~12\ : std_logic;
SIGNAL \int_bola|Bola_X[3]~13_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[3]~feeder_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[3]~14\ : std_logic;
SIGNAL \int_bola|Bola_X[4]~15_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[4]~16\ : std_logic;
SIGNAL \int_bola|Bola_X[5]~17_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[5]~18\ : std_logic;
SIGNAL \int_bola|Bola_X[6]~19_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[6]~20\ : std_logic;
SIGNAL \int_bola|Bola_X[7]~21_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[7]~22\ : std_logic;
SIGNAL \int_bola|Bola_X[8]~23_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~1_combout\ : std_logic;
SIGNAL \int_bola|LessThan19~0_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[1]~7_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~0_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[1]~8_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~2_combout\ : std_logic;
SIGNAL \int_bola|Add9~1_cout\ : std_logic;
SIGNAL \int_bola|Add9~3\ : std_logic;
SIGNAL \int_bola|Add9~4_combout\ : std_logic;
SIGNAL \int_bola|Add9~5\ : std_logic;
SIGNAL \int_bola|Add9~6_combout\ : std_logic;
SIGNAL \int_bola|Mover_Bola~1_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~3_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~4_combout\ : std_logic;
SIGNAL \int_bola|Add9~7\ : std_logic;
SIGNAL \int_bola|Add9~9\ : std_logic;
SIGNAL \int_bola|Add9~11\ : std_logic;
SIGNAL \int_bola|Add9~12_combout\ : std_logic;
SIGNAL \int_bola|Add9~8_combout\ : std_logic;
SIGNAL \int_bola|Add9~10_combout\ : std_logic;
SIGNAL \int_bola|Mover_Bola~2_combout\ : std_logic;
SIGNAL \int_bola|Add9~2_combout\ : std_logic;
SIGNAL \int_bola|Mover_Bola~0_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~5_combout\ : std_logic;
SIGNAL \UP~input_o\ : std_logic;
SIGNAL \DOWN~input_o\ : std_logic;
SIGNAL \int_bola|Mover_Pala~3_combout\ : std_logic;
SIGNAL \int_bola|Mover_Pala~2_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Pala_Y~0_combout\ : std_logic;
SIGNAL \int_bola|Add4~0_combout\ : std_logic;
SIGNAL \int_bola|Add4~1\ : std_logic;
SIGNAL \int_bola|Add4~2_combout\ : std_logic;
SIGNAL \int_bola|Add4~3\ : std_logic;
SIGNAL \int_bola|Add4~4_combout\ : std_logic;
SIGNAL \int_bola|Add4~5\ : std_logic;
SIGNAL \int_bola|Add4~6_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y[4]~3_combout\ : std_logic;
SIGNAL \int_bola|Add4~7\ : std_logic;
SIGNAL \int_bola|Add4~8_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y[5]~2_combout\ : std_logic;
SIGNAL \int_bola|Add4~9\ : std_logic;
SIGNAL \int_bola|Add4~10_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y[6]~1_combout\ : std_logic;
SIGNAL \int_bola|Add4~11\ : std_logic;
SIGNAL \int_bola|Add4~12_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y[7]~0_combout\ : std_logic;
SIGNAL \int_bola|Add4~13\ : std_logic;
SIGNAL \int_bola|Add4~14_combout\ : std_logic;
SIGNAL \int_bola|Mover_Pala~0_combout\ : std_logic;
SIGNAL \int_bola|Mover_Pala~1_combout\ : std_logic;
SIGNAL \int_bola|Add4~15\ : std_logic;
SIGNAL \int_bola|Add4~16_combout\ : std_logic;
SIGNAL \int_bola|Add1~1\ : std_logic;
SIGNAL \int_bola|Add1~3\ : std_logic;
SIGNAL \int_bola|Add1~5\ : std_logic;
SIGNAL \int_bola|Add1~7\ : std_logic;
SIGNAL \int_bola|Add1~9\ : std_logic;
SIGNAL \int_bola|Add1~10_combout\ : std_logic;
SIGNAL \int_bola|Add1~8_combout\ : std_logic;
SIGNAL \int_bola|Add1~6_combout\ : std_logic;
SIGNAL \int_bola|Add1~4_combout\ : std_logic;
SIGNAL \int_bola|Add1~2_combout\ : std_logic;
SIGNAL \int_bola|Add1~0_combout\ : std_logic;
SIGNAL \int_bola|Add10~1\ : std_logic;
SIGNAL \int_bola|Add10~3\ : std_logic;
SIGNAL \int_bola|Add10~5\ : std_logic;
SIGNAL \int_bola|Add10~7\ : std_logic;
SIGNAL \int_bola|Add10~9\ : std_logic;
SIGNAL \int_bola|Add10~10_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[2]~9_cout\ : std_logic;
SIGNAL \int_bola|Bola_Y[2]~10_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[2]~11\ : std_logic;
SIGNAL \int_bola|Bola_Y[3]~12_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[3]~13\ : std_logic;
SIGNAL \int_bola|Bola_Y[4]~14_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[4]~15\ : std_logic;
SIGNAL \int_bola|Bola_Y[5]~16_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[5]~17\ : std_logic;
SIGNAL \int_bola|Bola_Y[6]~18_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[6]~19\ : std_logic;
SIGNAL \int_bola|Bola_Y[7]~20_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[7]~21\ : std_logic;
SIGNAL \int_bola|Bola_Y[8]~22_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_Y[2]~1_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_Y[2]~2_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_Y[2]~0_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_Y[2]~3_combout\ : std_logic;
SIGNAL \int_bola|Bola_Y[8]~23\ : std_logic;
SIGNAL \int_bola|Bola_Y[9]~24_combout\ : std_logic;
SIGNAL \int_bola|Add10~8_combout\ : std_logic;
SIGNAL \int_bola|Add10~6_combout\ : std_logic;
SIGNAL \int_bola|Add10~4_combout\ : std_logic;
SIGNAL \int_bola|Add10~2_combout\ : std_logic;
SIGNAL \int_bola|Add10~0_combout\ : std_logic;
SIGNAL \int_bola|LessThan22~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan22~16_combout\ : std_logic;
SIGNAL \int_bola|Add8~1\ : std_logic;
SIGNAL \int_bola|Add8~3\ : std_logic;
SIGNAL \int_bola|Add8~5\ : std_logic;
SIGNAL \int_bola|Add8~7\ : std_logic;
SIGNAL \int_bola|Add8~8_combout\ : std_logic;
SIGNAL \int_bola|Add8~4_combout\ : std_logic;
SIGNAL \int_bola|Add8~6_combout\ : std_logic;
SIGNAL \int_bola|Add8~2_combout\ : std_logic;
SIGNAL \int_bola|Add12~0_combout\ : std_logic;
SIGNAL \int_bola|Add8~9\ : std_logic;
SIGNAL \int_bola|Add8~10_combout\ : std_logic;
SIGNAL \int_bola|Add8~11\ : std_logic;
SIGNAL \int_bola|Add8~12_combout\ : std_logic;
SIGNAL \int_bola|Add12~1_combout\ : std_logic;
SIGNAL \int_bola|Add12~2_combout\ : std_logic;
SIGNAL \int_bola|Add12~3_combout\ : std_logic;
SIGNAL \int_bola|Add12~4_combout\ : std_logic;
SIGNAL \int_bola|Add12~5_combout\ : std_logic;
SIGNAL \int_bola|Add12~6_combout\ : std_logic;
SIGNAL \int_bola|Add8~0_combout\ : std_logic;
SIGNAL \int_bola|LessThan21~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan21~16_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~6_combout\ : std_logic;
SIGNAL \int_bola|Add6~1\ : std_logic;
SIGNAL \int_bola|Add6~3\ : std_logic;
SIGNAL \int_bola|Add6~5\ : std_logic;
SIGNAL \int_bola|Add6~7\ : std_logic;
SIGNAL \int_bola|Add6~9\ : std_logic;
SIGNAL \int_bola|Add6~10_combout\ : std_logic;
SIGNAL \int_bola|Add6~8_combout\ : std_logic;
SIGNAL \int_bola|Add6~6_combout\ : std_logic;
SIGNAL \int_bola|Add6~4_combout\ : std_logic;
SIGNAL \int_bola|Add6~0_combout\ : std_logic;
SIGNAL \int_bola|Add6~2_combout\ : std_logic;
SIGNAL \int_bola|Add11~1_cout\ : std_logic;
SIGNAL \int_bola|Add11~3\ : std_logic;
SIGNAL \int_bola|Add11~5\ : std_logic;
SIGNAL \int_bola|Add11~7\ : std_logic;
SIGNAL \int_bola|Add11~8_combout\ : std_logic;
SIGNAL \int_bola|Add6~11\ : std_logic;
SIGNAL \int_bola|Add6~12_combout\ : std_logic;
SIGNAL \int_bola|Add11~9\ : std_logic;
SIGNAL \int_bola|Add11~10_combout\ : std_logic;
SIGNAL \int_bola|Add11~2_combout\ : std_logic;
SIGNAL \int_bola|Add11~6_combout\ : std_logic;
SIGNAL \int_bola|Add11~4_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[1]~9_combout\ : std_logic;
SIGNAL \int_bola|Mover_Pala_D~2_combout\ : std_logic;
SIGNAL \DOWN_D~input_o\ : std_logic;
SIGNAL \int_bola|Mover_Pala_D~3_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Pala_Y_D~0_combout\ : std_logic;
SIGNAL \int_bola|Add3~0_combout\ : std_logic;
SIGNAL \int_bola|Add3~1\ : std_logic;
SIGNAL \int_bola|Add3~2_combout\ : std_logic;
SIGNAL \int_bola|Add3~3\ : std_logic;
SIGNAL \int_bola|Add3~4_combout\ : std_logic;
SIGNAL \int_bola|Add3~5\ : std_logic;
SIGNAL \int_bola|Add3~6_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y_D[4]~3_combout\ : std_logic;
SIGNAL \int_bola|Add3~7\ : std_logic;
SIGNAL \int_bola|Add3~8_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y_D[5]~2_combout\ : std_logic;
SIGNAL \int_bola|Add3~9\ : std_logic;
SIGNAL \int_bola|Add3~10_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y_D[6]~1_combout\ : std_logic;
SIGNAL \int_bola|Add3~11\ : std_logic;
SIGNAL \int_bola|Add3~12_combout\ : std_logic;
SIGNAL \int_bola|Pala_Y_D[7]~0_combout\ : std_logic;
SIGNAL \int_bola|Add3~13\ : std_logic;
SIGNAL \int_bola|Add3~14_combout\ : std_logic;
SIGNAL \int_bola|Mover_Pala_D~0_combout\ : std_logic;
SIGNAL \UP_D~input_o\ : std_logic;
SIGNAL \int_bola|Mover_Pala_D~1_combout\ : std_logic;
SIGNAL \int_bola|Add3~15\ : std_logic;
SIGNAL \int_bola|Add3~16_combout\ : std_logic;
SIGNAL \int_bola|LessThan24~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan24~16_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[1]~10_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[1]~11_combout\ : std_logic;
SIGNAL \int_bola|Add2~1\ : std_logic;
SIGNAL \int_bola|Add2~3\ : std_logic;
SIGNAL \int_bola|Add2~5\ : std_logic;
SIGNAL \int_bola|Add2~7\ : std_logic;
SIGNAL \int_bola|Add2~9\ : std_logic;
SIGNAL \int_bola|Add2~10_combout\ : std_logic;
SIGNAL \int_bola|Add2~8_combout\ : std_logic;
SIGNAL \int_bola|Add2~6_combout\ : std_logic;
SIGNAL \int_bola|Add2~4_combout\ : std_logic;
SIGNAL \int_bola|Add2~2_combout\ : std_logic;
SIGNAL \int_bola|Add2~0_combout\ : std_logic;
SIGNAL \int_bola|Add13~1\ : std_logic;
SIGNAL \int_bola|Add13~3\ : std_logic;
SIGNAL \int_bola|Add13~5\ : std_logic;
SIGNAL \int_bola|Add13~7\ : std_logic;
SIGNAL \int_bola|Add13~9\ : std_logic;
SIGNAL \int_bola|Add13~10_combout\ : std_logic;
SIGNAL \int_bola|Add13~8_combout\ : std_logic;
SIGNAL \int_bola|Add13~6_combout\ : std_logic;
SIGNAL \int_bola|Add13~4_combout\ : std_logic;
SIGNAL \int_bola|Add13~2_combout\ : std_logic;
SIGNAL \int_bola|Add13~0_combout\ : std_logic;
SIGNAL \int_bola|LessThan25~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan25~16_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[1]~12_combout\ : std_logic;
SIGNAL \int_bola|Desplaza_Bola_X[2]~13_combout\ : std_logic;
SIGNAL \int_bola|Bola_X[8]~24\ : std_logic;
SIGNAL \int_bola|Bola_X[9]~25_combout\ : std_logic;
SIGNAL \int_bola|LessThan12~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan12~16_combout\ : std_logic;
SIGNAL \VGA|process_0~0_combout\ : std_logic;
SIGNAL \VGA|video_on~q\ : std_logic;
SIGNAL \VGA|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA|pixel_y[4]~feeder_combout\ : std_logic;
SIGNAL \int_bola|Add7~1\ : std_logic;
SIGNAL \int_bola|Add7~3\ : std_logic;
SIGNAL \int_bola|Add7~5\ : std_logic;
SIGNAL \int_bola|Add7~7\ : std_logic;
SIGNAL \int_bola|Add7~9\ : std_logic;
SIGNAL \int_bola|Add7~10_combout\ : std_logic;
SIGNAL \int_bola|Add7~8_combout\ : std_logic;
SIGNAL \int_bola|Add7~6_combout\ : std_logic;
SIGNAL \int_bola|Add7~4_combout\ : std_logic;
SIGNAL \int_bola|Add7~2_combout\ : std_logic;
SIGNAL \int_bola|Add7~0_combout\ : std_logic;
SIGNAL \int_bola|LessThan14~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan14~16_combout\ : std_logic;
SIGNAL \int_bola|LessThan15~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan15~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~7_combout\ : std_logic;
SIGNAL \int_bola|LessThan13~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~17_cout\ : std_logic;
SIGNAL \int_bola|LessThan13~18_combout\ : std_logic;
SIGNAL \VGA|vga_r~8_combout\ : std_logic;
SIGNAL \int_bola|LessThan5~0_combout\ : std_logic;
SIGNAL \int_bola|LessThan5~1_combout\ : std_logic;
SIGNAL \int_bola|Add0~0_combout\ : std_logic;
SIGNAL \int_bola|Add0~1_combout\ : std_logic;
SIGNAL \int_bola|Add0~2_combout\ : std_logic;
SIGNAL \int_bola|Add0~3_combout\ : std_logic;
SIGNAL \int_bola|Add0~4_combout\ : std_logic;
SIGNAL \int_bola|Add0~5_combout\ : std_logic;
SIGNAL \int_bola|LessThan6~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan6~16_combout\ : std_logic;
SIGNAL \int_bola|LessThan7~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan7~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~0_combout\ : std_logic;
SIGNAL \VGA|vga_r~1_combout\ : std_logic;
SIGNAL \VGA|vga_r~4_combout\ : std_logic;
SIGNAL \int_bola|LessThan0~1_combout\ : std_logic;
SIGNAL \int_bola|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA|vga_r~5_combout\ : std_logic;
SIGNAL \int_bola|LessThan2~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan2~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~2_combout\ : std_logic;
SIGNAL \int_bola|LessThan3~1_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~3_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~5_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~7_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~9_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~11_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~13_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~15_cout\ : std_logic;
SIGNAL \int_bola|LessThan3~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~3_combout\ : std_logic;
SIGNAL \VGA|vga_r~6_combout\ : std_logic;
SIGNAL \VGA|vga_r~9_combout\ : std_logic;
SIGNAL \VGA|vga_r~q\ : std_logic;
SIGNAL \VGA|vga_g~q\ : std_logic;
SIGNAL \VGA|vga_b~q\ : std_logic;
SIGNAL \VGA|vga_blank_N~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_blank_N~q\ : std_logic;
SIGNAL \VGA|process_0~1_combout\ : std_logic;
SIGNAL \VGA|process_0~2_combout\ : std_logic;
SIGNAL \VGA|hs~q\ : std_logic;
SIGNAL \VGA|vga_hs~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_hs~q\ : std_logic;
SIGNAL \int_bola|Bola_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \int_bola|Bola_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \int_bola|Desplaza_Pala_Y_D\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|pixel_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \int_bola|Pala_Y_D\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \int_bola|Pala_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|pixel_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_hs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_vs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \int_bola|Desplaza_Pala_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \int_bola|Desplaza_Bola_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \int_bola|Desplaza_Bola_Y\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLK <= ww_VGA_CLK;
ww_UP <= UP;
ww_DOWN <= DOWN;
ww_UP_D <= UP_D;
ww_DOWN_D <= DOWN_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\PLL|altpll_component|_clk0\ <= \PLL|altpll_component|pll_CLK_bus\(0);
\PLL|altpll_component|pll~CLK1\ <= \PLL|altpll_component|pll_CLK_bus\(1);
\PLL|altpll_component|pll~CLK2\ <= \PLL|altpll_component|pll_CLK_bus\(2);
\PLL|altpll_component|pll~CLK3\ <= \PLL|altpll_component|pll_CLK_bus\(3);
\PLL|altpll_component|pll~CLK4\ <= \PLL|altpll_component|pll_CLK_bus\(4);

\VGA|vga_vs~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA|vga_vs~q\);

\PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL|altpll_component|_clk0\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_r~q\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_g~q\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_b~q\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_blank_N~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_hs~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_vs~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\PLL|altpll_component|pll\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 10,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "-3000",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 2,
	m_ph => 4,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "manual",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL|altpll_component|pll~FBOUT\,
	inclk => \PLL|altpll_component|pll_INCLK_bus\,
	fbout => \PLL|altpll_component|pll~FBOUT\,
	clk => \PLL|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL|altpll_component|_clk0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X81_Y64_N12
\VGA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~0_combout\ = \VGA|cont_hs\(0) $ (VCC)
-- \VGA|Add0~1\ = CARRY(\VGA|cont_hs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(0),
	datad => VCC,
	combout => \VGA|Add0~0_combout\,
	cout => \VGA|Add0~1\);

-- Location: FF_X81_Y64_N13
\VGA|cont_hs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(0));

-- Location: LCCOMB_X81_Y64_N14
\VGA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~2_combout\ = (\VGA|cont_hs\(1) & (!\VGA|Add0~1\)) # (!\VGA|cont_hs\(1) & ((\VGA|Add0~1\) # (GND)))
-- \VGA|Add0~3\ = CARRY((!\VGA|Add0~1\) # (!\VGA|cont_hs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(1),
	datad => VCC,
	cin => \VGA|Add0~1\,
	combout => \VGA|Add0~2_combout\,
	cout => \VGA|Add0~3\);

-- Location: FF_X81_Y64_N15
\VGA|cont_hs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(1));

-- Location: LCCOMB_X81_Y64_N16
\VGA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~4_combout\ = (\VGA|cont_hs\(2) & (\VGA|Add0~3\ $ (GND))) # (!\VGA|cont_hs\(2) & (!\VGA|Add0~3\ & VCC))
-- \VGA|Add0~5\ = CARRY((\VGA|cont_hs\(2) & !\VGA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datad => VCC,
	cin => \VGA|Add0~3\,
	combout => \VGA|Add0~4_combout\,
	cout => \VGA|Add0~5\);

-- Location: FF_X81_Y64_N17
\VGA|cont_hs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(2));

-- Location: LCCOMB_X81_Y64_N18
\VGA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~6_combout\ = (\VGA|cont_hs\(3) & (!\VGA|Add0~5\)) # (!\VGA|cont_hs\(3) & ((\VGA|Add0~5\) # (GND)))
-- \VGA|Add0~7\ = CARRY((!\VGA|Add0~5\) # (!\VGA|cont_hs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(3),
	datad => VCC,
	cin => \VGA|Add0~5\,
	combout => \VGA|Add0~6_combout\,
	cout => \VGA|Add0~7\);

-- Location: FF_X81_Y64_N19
\VGA|cont_hs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(3));

-- Location: LCCOMB_X81_Y64_N20
\VGA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~8_combout\ = (\VGA|cont_hs\(4) & (\VGA|Add0~7\ $ (GND))) # (!\VGA|cont_hs\(4) & (!\VGA|Add0~7\ & VCC))
-- \VGA|Add0~9\ = CARRY((\VGA|cont_hs\(4) & !\VGA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(4),
	datad => VCC,
	cin => \VGA|Add0~7\,
	combout => \VGA|Add0~8_combout\,
	cout => \VGA|Add0~9\);

-- Location: FF_X81_Y64_N21
\VGA|cont_hs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(4));

-- Location: LCCOMB_X81_Y64_N22
\VGA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~10_combout\ = (\VGA|cont_hs\(5) & (!\VGA|Add0~9\)) # (!\VGA|cont_hs\(5) & ((\VGA|Add0~9\) # (GND)))
-- \VGA|Add0~11\ = CARRY((!\VGA|Add0~9\) # (!\VGA|cont_hs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(5),
	datad => VCC,
	cin => \VGA|Add0~9\,
	combout => \VGA|Add0~10_combout\,
	cout => \VGA|Add0~11\);

-- Location: LCCOMB_X81_Y64_N28
\VGA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~16_combout\ = (\VGA|cont_hs\(8) & (\VGA|Add0~15\ $ (GND))) # (!\VGA|cont_hs\(8) & (!\VGA|Add0~15\ & VCC))
-- \VGA|Add0~17\ = CARRY((\VGA|cont_hs\(8) & !\VGA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(8),
	datad => VCC,
	cin => \VGA|Add0~15\,
	combout => \VGA|Add0~16_combout\,
	cout => \VGA|Add0~17\);

-- Location: LCCOMB_X81_Y64_N30
\VGA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~18_combout\ = \VGA|cont_hs\(9) $ (\VGA|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(9),
	cin => \VGA|Add0~17\,
	combout => \VGA|Add0~18_combout\);

-- Location: LCCOMB_X81_Y64_N4
\VGA|cont_hs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~0_combout\ = (\VGA|Add0~18_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~18_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~0_combout\);

-- Location: FF_X81_Y64_N5
\VGA|cont_hs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(9));

-- Location: LCCOMB_X81_Y64_N10
\VGA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~0_combout\ = (\VGA|cont_hs\(0) & (\VGA|cont_hs\(4) & (\VGA|cont_hs\(9) & !\VGA|cont_hs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(0),
	datab => \VGA|cont_hs\(4),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y64_N8
\VGA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~1_combout\ = (\VGA|cont_hs\(2) & (\VGA|cont_hs\(3) & (\VGA|cont_hs\(1) & !\VGA|cont_hs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datab => \VGA|cont_hs\(3),
	datac => \VGA|cont_hs\(1),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y64_N2
\VGA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~2_combout\ = (\VGA|Equal0~0_combout\ & (\VGA|Equal0~1_combout\ & (!\VGA|cont_hs\(7) & \VGA|cont_hs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~0_combout\,
	datab => \VGA|Equal0~1_combout\,
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|Equal0~2_combout\);

-- Location: LCCOMB_X81_Y64_N0
\VGA|cont_hs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~2_combout\ = (\VGA|Add0~10_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~10_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~2_combout\);

-- Location: FF_X81_Y64_N1
\VGA|cont_hs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(5));

-- Location: LCCOMB_X81_Y64_N24
\VGA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~12_combout\ = (\VGA|cont_hs\(6) & (\VGA|Add0~11\ $ (GND))) # (!\VGA|cont_hs\(6) & (!\VGA|Add0~11\ & VCC))
-- \VGA|Add0~13\ = CARRY((\VGA|cont_hs\(6) & !\VGA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(6),
	datad => VCC,
	cin => \VGA|Add0~11\,
	combout => \VGA|Add0~12_combout\,
	cout => \VGA|Add0~13\);

-- Location: FF_X81_Y64_N25
\VGA|cont_hs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(6));

-- Location: LCCOMB_X81_Y64_N26
\VGA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~14_combout\ = (\VGA|cont_hs\(7) & (!\VGA|Add0~13\)) # (!\VGA|cont_hs\(7) & ((\VGA|Add0~13\) # (GND)))
-- \VGA|Add0~15\ = CARRY((!\VGA|Add0~13\) # (!\VGA|cont_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datad => VCC,
	cin => \VGA|Add0~13\,
	combout => \VGA|Add0~14_combout\,
	cout => \VGA|Add0~15\);

-- Location: FF_X81_Y64_N27
\VGA|cont_hs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(7));

-- Location: LCCOMB_X81_Y64_N6
\VGA|cont_hs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~1_combout\ = (\VGA|Add0~16_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|Add0~16_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~1_combout\);

-- Location: FF_X81_Y64_N7
\VGA|cont_hs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(8));

-- Location: LCCOMB_X82_Y64_N22
\VGA|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan5~0_combout\ = ((!\VGA|cont_hs\(8) & !\VGA|cont_hs\(7))) # (!\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_hs\(7),
	combout => \VGA|LessThan5~0_combout\);

-- Location: FF_X83_Y64_N19
\VGA|pixel_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(8),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(8));

-- Location: FF_X83_Y64_N17
\VGA|pixel_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(7),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(7));

-- Location: FF_X83_Y64_N15
\VGA|pixel_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(6),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(6));

-- Location: FF_X83_Y64_N13
\VGA|pixel_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(5),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(5));

-- Location: LCCOMB_X82_Y64_N16
\VGA|pixel_x[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[4]~feeder_combout\ = \VGA|cont_hs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(4),
	combout => \VGA|pixel_x[4]~feeder_combout\);

-- Location: FF_X82_Y64_N17
\VGA|pixel_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[4]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(4));

-- Location: LCCOMB_X82_Y64_N6
\VGA|pixel_x[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[3]~feeder_combout\ = \VGA|cont_hs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(3),
	combout => \VGA|pixel_x[3]~feeder_combout\);

-- Location: FF_X82_Y64_N7
\VGA|pixel_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[3]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(3));

-- Location: LCCOMB_X83_Y64_N8
\int_bola|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add5~0_combout\ = \VGA|pixel_x\(3) $ (VCC)
-- \int_bola|Add5~1\ = CARRY(\VGA|pixel_x\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(3),
	datad => VCC,
	combout => \int_bola|Add5~0_combout\,
	cout => \int_bola|Add5~1\);

-- Location: LCCOMB_X83_Y64_N10
\int_bola|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add5~2_combout\ = (\VGA|pixel_x\(4) & (!\int_bola|Add5~1\)) # (!\VGA|pixel_x\(4) & ((\int_bola|Add5~1\) # (GND)))
-- \int_bola|Add5~3\ = CARRY((!\int_bola|Add5~1\) # (!\VGA|pixel_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \int_bola|Add5~1\,
	combout => \int_bola|Add5~2_combout\,
	cout => \int_bola|Add5~3\);

-- Location: LCCOMB_X83_Y64_N12
\int_bola|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add5~4_combout\ = (\VGA|pixel_x\(5) & (\int_bola|Add5~3\ $ (GND))) # (!\VGA|pixel_x\(5) & (!\int_bola|Add5~3\ & VCC))
-- \int_bola|Add5~5\ = CARRY((\VGA|pixel_x\(5) & !\int_bola|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datad => VCC,
	cin => \int_bola|Add5~3\,
	combout => \int_bola|Add5~4_combout\,
	cout => \int_bola|Add5~5\);

-- Location: LCCOMB_X83_Y64_N14
\int_bola|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add5~6_combout\ = (\VGA|pixel_x\(6) & (!\int_bola|Add5~5\)) # (!\VGA|pixel_x\(6) & ((\int_bola|Add5~5\) # (GND)))
-- \int_bola|Add5~7\ = CARRY((!\int_bola|Add5~5\) # (!\VGA|pixel_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \int_bola|Add5~5\,
	combout => \int_bola|Add5~6_combout\,
	cout => \int_bola|Add5~7\);

-- Location: LCCOMB_X83_Y64_N16
\int_bola|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add5~8_combout\ = (\VGA|pixel_x\(7) & (\int_bola|Add5~7\ $ (GND))) # (!\VGA|pixel_x\(7) & (!\int_bola|Add5~7\ & VCC))
-- \int_bola|Add5~9\ = CARRY((\VGA|pixel_x\(7) & !\int_bola|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \int_bola|Add5~7\,
	combout => \int_bola|Add5~8_combout\,
	cout => \int_bola|Add5~9\);

-- Location: LCCOMB_X83_Y64_N18
\int_bola|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add5~10_combout\ = (\VGA|pixel_x\(8) & (!\int_bola|Add5~9\)) # (!\VGA|pixel_x\(8) & ((\int_bola|Add5~9\) # (GND)))
-- \int_bola|Add5~11\ = CARRY((!\int_bola|Add5~9\) # (!\VGA|pixel_x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \int_bola|Add5~9\,
	combout => \int_bola|Add5~10_combout\,
	cout => \int_bola|Add5~11\);

-- Location: LCCOMB_X82_Y64_N18
\VGA|pixel_x[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[1]~feeder_combout\ = \VGA|cont_hs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(1),
	combout => \VGA|pixel_x[1]~feeder_combout\);

-- Location: FF_X82_Y64_N19
\VGA|pixel_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[1]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(1));

-- Location: LCCOMB_X82_Y64_N28
\VGA|pixel_x[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[0]~feeder_combout\ = \VGA|cont_hs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(0),
	combout => \VGA|pixel_x[0]~feeder_combout\);

-- Location: FF_X82_Y64_N29
\VGA|pixel_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[0]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(0));

-- Location: FF_X83_Y64_N1
\VGA|pixel_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(2),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(2));

-- Location: LCCOMB_X83_Y64_N30
\int_bola|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan4~0_combout\ = (((!\VGA|pixel_x\(2)) # (!\VGA|pixel_x\(0))) # (!\VGA|pixel_x\(1))) # (!\int_bola|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~0_combout\,
	datab => \VGA|pixel_x\(1),
	datac => \VGA|pixel_x\(0),
	datad => \VGA|pixel_x\(2),
	combout => \int_bola|LessThan4~0_combout\);

-- Location: LCCOMB_X83_Y64_N22
\int_bola|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan4~1_combout\ = (((\int_bola|LessThan4~0_combout\ & !\int_bola|Add5~2_combout\)) # (!\int_bola|Add5~4_combout\)) # (!\int_bola|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~6_combout\,
	datab => \int_bola|Add5~4_combout\,
	datac => \int_bola|LessThan4~0_combout\,
	datad => \int_bola|Add5~2_combout\,
	combout => \int_bola|LessThan4~1_combout\);

-- Location: LCCOMB_X83_Y64_N24
\int_bola|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan4~2_combout\ = (!\int_bola|Add5~10_combout\ & (\int_bola|LessThan4~1_combout\ & !\int_bola|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~10_combout\,
	datac => \int_bola|LessThan4~1_combout\,
	datad => \int_bola|Add5~8_combout\,
	combout => \int_bola|LessThan4~2_combout\);

-- Location: FF_X83_Y64_N21
\VGA|pixel_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(9),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(9));

-- Location: LCCOMB_X83_Y64_N20
\int_bola|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add5~12_combout\ = \VGA|pixel_x\(9) $ (!\int_bola|Add5~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	cin => \int_bola|Add5~11\,
	combout => \int_bola|Add5~12_combout\);

-- Location: LCCOMB_X82_Y64_N12
\VGA|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~1_combout\ = (\VGA|cont_hs\(1)) # ((\VGA|cont_hs\(8)) # ((\VGA|cont_hs\(2)) # (!\VGA|cont_hs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(1),
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(2),
	datad => \VGA|cont_hs\(7),
	combout => \VGA|Equal2~1_combout\);

-- Location: LCCOMB_X82_Y64_N10
\VGA|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~0_combout\ = (\VGA|cont_hs\(0)) # (((\VGA|cont_hs\(6)) # (!\VGA|cont_hs\(9))) # (!\VGA|cont_hs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(0),
	datab => \VGA|cont_hs\(4),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|Equal2~0_combout\);

-- Location: LCCOMB_X82_Y64_N14
\VGA|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~2_combout\ = (\VGA|Equal2~1_combout\) # ((\VGA|cont_hs\(3)) # ((\VGA|Equal2~0_combout\) # (!\VGA|cont_hs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~1_combout\,
	datab => \VGA|cont_hs\(3),
	datac => \VGA|cont_hs\(5),
	datad => \VGA|Equal2~0_combout\,
	combout => \VGA|Equal2~2_combout\);

-- Location: LCCOMB_X84_Y63_N2
\VGA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~0_combout\ = \VGA|cont_vs\(0) $ (VCC)
-- \VGA|Add1~1\ = CARRY(\VGA|cont_vs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(0),
	datad => VCC,
	combout => \VGA|Add1~0_combout\,
	cout => \VGA|Add1~1\);

-- Location: LCCOMB_X83_Y63_N16
\VGA|cont_vs[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[0]~9_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(0))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(0),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|cont_vs[0]~9_combout\);

-- Location: FF_X83_Y63_N17
\VGA|cont_vs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(0));

-- Location: LCCOMB_X84_Y63_N4
\VGA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~2_combout\ = (\VGA|cont_vs\(1) & (!\VGA|Add1~1\)) # (!\VGA|cont_vs\(1) & ((\VGA|Add1~1\) # (GND)))
-- \VGA|Add1~3\ = CARRY((!\VGA|Add1~1\) # (!\VGA|cont_vs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(1),
	datad => VCC,
	cin => \VGA|Add1~1\,
	combout => \VGA|Add1~2_combout\,
	cout => \VGA|Add1~3\);

-- Location: LCCOMB_X84_Y63_N26
\VGA|cont_vs[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[1]~8_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(1)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|Add1~2_combout\,
	datac => \VGA|cont_vs\(1),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[1]~8_combout\);

-- Location: FF_X84_Y63_N27
\VGA|cont_vs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(1));

-- Location: LCCOMB_X84_Y63_N6
\VGA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~4_combout\ = (\VGA|cont_vs\(2) & (\VGA|Add1~3\ $ (GND))) # (!\VGA|cont_vs\(2) & (!\VGA|Add1~3\ & VCC))
-- \VGA|Add1~5\ = CARRY((\VGA|cont_vs\(2) & !\VGA|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(2),
	datad => VCC,
	cin => \VGA|Add1~3\,
	combout => \VGA|Add1~4_combout\,
	cout => \VGA|Add1~5\);

-- Location: LCCOMB_X85_Y63_N8
\VGA|cont_vs[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[2]~7_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(2)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~4_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(2),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[2]~7_combout\);

-- Location: FF_X85_Y63_N9
\VGA|cont_vs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(2));

-- Location: LCCOMB_X84_Y63_N8
\VGA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~6_combout\ = (\VGA|cont_vs\(3) & (!\VGA|Add1~5\)) # (!\VGA|cont_vs\(3) & ((\VGA|Add1~5\) # (GND)))
-- \VGA|Add1~7\ = CARRY((!\VGA|Add1~5\) # (!\VGA|cont_vs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datad => VCC,
	cin => \VGA|Add1~5\,
	combout => \VGA|Add1~6_combout\,
	cout => \VGA|Add1~7\);

-- Location: LCCOMB_X84_Y63_N30
\VGA|cont_vs[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[3]~6_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(3))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(3),
	datad => \VGA|Add1~6_combout\,
	combout => \VGA|cont_vs[3]~6_combout\);

-- Location: FF_X84_Y63_N31
\VGA|cont_vs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(3));

-- Location: LCCOMB_X84_Y63_N10
\VGA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~8_combout\ = (\VGA|cont_vs\(4) & (\VGA|Add1~7\ $ (GND))) # (!\VGA|cont_vs\(4) & (!\VGA|Add1~7\ & VCC))
-- \VGA|Add1~9\ = CARRY((\VGA|cont_vs\(4) & !\VGA|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(4),
	datad => VCC,
	cin => \VGA|Add1~7\,
	combout => \VGA|Add1~8_combout\,
	cout => \VGA|Add1~9\);

-- Location: LCCOMB_X85_Y63_N6
\VGA|cont_vs[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[4]~5_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(4)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~8_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(4),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[4]~5_combout\);

-- Location: FF_X85_Y63_N7
\VGA|cont_vs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(4));

-- Location: LCCOMB_X84_Y63_N12
\VGA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~10_combout\ = (\VGA|cont_vs\(5) & (!\VGA|Add1~9\)) # (!\VGA|cont_vs\(5) & ((\VGA|Add1~9\) # (GND)))
-- \VGA|Add1~11\ = CARRY((!\VGA|Add1~9\) # (!\VGA|cont_vs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(5),
	datad => VCC,
	cin => \VGA|Add1~9\,
	combout => \VGA|Add1~10_combout\,
	cout => \VGA|Add1~11\);

-- Location: LCCOMB_X84_Y63_N14
\VGA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~12_combout\ = (\VGA|cont_vs\(6) & (\VGA|Add1~11\ $ (GND))) # (!\VGA|cont_vs\(6) & (!\VGA|Add1~11\ & VCC))
-- \VGA|Add1~13\ = CARRY((\VGA|cont_vs\(6) & !\VGA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(6),
	datad => VCC,
	cin => \VGA|Add1~11\,
	combout => \VGA|Add1~12_combout\,
	cout => \VGA|Add1~13\);

-- Location: LCCOMB_X84_Y63_N0
\VGA|cont_vs[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[6]~3_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(6))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(6),
	datad => \VGA|Add1~12_combout\,
	combout => \VGA|cont_vs[6]~3_combout\);

-- Location: FF_X84_Y63_N1
\VGA|cont_vs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(6));

-- Location: LCCOMB_X84_Y63_N16
\VGA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~14_combout\ = (\VGA|cont_vs\(7) & (!\VGA|Add1~13\)) # (!\VGA|cont_vs\(7) & ((\VGA|Add1~13\) # (GND)))
-- \VGA|Add1~15\ = CARRY((!\VGA|Add1~13\) # (!\VGA|cont_vs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(7),
	datad => VCC,
	cin => \VGA|Add1~13\,
	combout => \VGA|Add1~14_combout\,
	cout => \VGA|Add1~15\);

-- Location: LCCOMB_X85_Y63_N14
\VGA|cont_vs[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[7]~4_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(7)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~14_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(7),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[7]~4_combout\);

-- Location: FF_X85_Y63_N15
\VGA|cont_vs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(7));

-- Location: LCCOMB_X85_Y63_N12
\VGA|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~6_combout\ = (!\VGA|cont_vs\(5) & (!\VGA|cont_vs\(7) & (!\VGA|cont_vs\(6) & \VGA|cont_vs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(5),
	datab => \VGA|cont_vs\(7),
	datac => \VGA|cont_vs\(6),
	datad => \VGA|cont_vs\(2),
	combout => \VGA|process_0~6_combout\);

-- Location: LCCOMB_X84_Y63_N28
\VGA|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~5_combout\ = (\VGA|cont_vs\(3) & (!\VGA|cont_vs\(1) & (!\VGA|cont_vs\(0) & !\VGA|cont_vs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datab => \VGA|cont_vs\(1),
	datac => \VGA|cont_vs\(0),
	datad => \VGA|cont_vs\(4),
	combout => \VGA|process_0~5_combout\);

-- Location: LCCOMB_X82_Y64_N24
\VGA|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~7_combout\ = (\VGA|cont_hs\(7) & ((\VGA|cont_hs\(6)) # ((\VGA|cont_hs\(4) & \VGA|cont_hs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(4),
	datab => \VGA|cont_hs\(7),
	datac => \VGA|cont_hs\(5),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|process_0~7_combout\);

-- Location: LCCOMB_X83_Y64_N6
\VGA|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~8_combout\ = (\VGA|process_0~6_combout\ & (\VGA|process_0~5_combout\ & ((\VGA|cont_hs\(8)) # (\VGA|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~6_combout\,
	datab => \VGA|cont_hs\(8),
	datac => \VGA|process_0~5_combout\,
	datad => \VGA|process_0~7_combout\,
	combout => \VGA|process_0~8_combout\);

-- Location: LCCOMB_X84_Y63_N18
\VGA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~16_combout\ = (\VGA|cont_vs\(8) & (\VGA|Add1~15\ $ (GND))) # (!\VGA|cont_vs\(8) & (!\VGA|Add1~15\ & VCC))
-- \VGA|Add1~17\ = CARRY((\VGA|cont_vs\(8) & !\VGA|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(8),
	datad => VCC,
	cin => \VGA|Add1~15\,
	combout => \VGA|Add1~16_combout\,
	cout => \VGA|Add1~17\);

-- Location: LCCOMB_X84_Y63_N24
\VGA|cont_vs[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[8]~1_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(8))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(8),
	datad => \VGA|Add1~16_combout\,
	combout => \VGA|cont_vs[8]~1_combout\);

-- Location: FF_X84_Y63_N25
\VGA|cont_vs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(8));

-- Location: LCCOMB_X84_Y63_N20
\VGA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~18_combout\ = \VGA|Add1~17\ $ (\VGA|cont_vs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(9),
	cin => \VGA|Add1~17\,
	combout => \VGA|Add1~18_combout\);

-- Location: LCCOMB_X82_Y63_N24
\VGA|cont_vs[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[9]~0_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(9))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(9),
	datad => \VGA|Add1~18_combout\,
	combout => \VGA|cont_vs[9]~0_combout\);

-- Location: FF_X82_Y63_N25
\VGA|cont_vs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(9));

-- Location: LCCOMB_X82_Y64_N30
\VGA|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~9_combout\ = (\VGA|process_0~8_combout\ & (\VGA|cont_vs\(9) & (\VGA|cont_hs\(9) & !\VGA|cont_vs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~8_combout\,
	datab => \VGA|cont_vs\(9),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_vs\(8),
	combout => \VGA|process_0~9_combout\);

-- Location: LCCOMB_X84_Y63_N22
\VGA|cont_vs[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[5]~2_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(5))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(5),
	datad => \VGA|Add1~10_combout\,
	combout => \VGA|cont_vs[5]~2_combout\);

-- Location: FF_X84_Y63_N23
\VGA|cont_vs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(5));

-- Location: LCCOMB_X85_Y63_N10
\VGA|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~0_combout\ = (\VGA|cont_vs\(5) & (\VGA|cont_vs\(7) & (\VGA|cont_vs\(6) & \VGA|cont_vs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(5),
	datab => \VGA|cont_vs\(7),
	datac => \VGA|cont_vs\(6),
	datad => \VGA|cont_vs\(8),
	combout => \VGA|LessThan6~0_combout\);

-- Location: LCCOMB_X85_Y63_N16
\VGA|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~3_combout\ = (((\VGA|cont_vs\(2)) # (\VGA|cont_vs\(4))) # (!\VGA|cont_vs\(3))) # (!\VGA|cont_vs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(1),
	datab => \VGA|cont_vs\(3),
	datac => \VGA|cont_vs\(2),
	datad => \VGA|cont_vs\(4),
	combout => \VGA|process_0~3_combout\);

-- Location: LCCOMB_X85_Y63_N2
\VGA|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~4_combout\ = ((\VGA|cont_vs\(9)) # (\VGA|process_0~3_combout\)) # (!\VGA|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan6~0_combout\,
	datac => \VGA|cont_vs\(9),
	datad => \VGA|process_0~3_combout\,
	combout => \VGA|process_0~4_combout\);

-- Location: FF_X85_Y63_N3
\VGA|vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vs~q\);

-- Location: FF_X56_Y72_N1
\VGA|vga_vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|vs~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_vs~q\);

-- Location: CLKCTRL_G10
\VGA|vga_vs~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|vga_vs~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA|vga_vs~clkctrl_outclk\);

-- Location: LCCOMB_X85_Y65_N10
\int_bola|Bola_X[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[1]~9_combout\ = \int_bola|Bola_X\(1) $ (VCC)
-- \int_bola|Bola_X[1]~10\ = CARRY(\int_bola|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(1),
	datad => VCC,
	combout => \int_bola|Bola_X[1]~9_combout\,
	cout => \int_bola|Bola_X[1]~10\);

-- Location: FF_X85_Y65_N11
\int_bola|Bola_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(1));

-- Location: LCCOMB_X85_Y65_N12
\int_bola|Bola_X[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[2]~11_combout\ = (\int_bola|Bola_X\(2) & ((\int_bola|Desplaza_Bola_X\(2) & (\int_bola|Bola_X[1]~10\ & VCC)) # (!\int_bola|Desplaza_Bola_X\(2) & (!\int_bola|Bola_X[1]~10\)))) # (!\int_bola|Bola_X\(2) & ((\int_bola|Desplaza_Bola_X\(2) & 
-- (!\int_bola|Bola_X[1]~10\)) # (!\int_bola|Desplaza_Bola_X\(2) & ((\int_bola|Bola_X[1]~10\) # (GND)))))
-- \int_bola|Bola_X[2]~12\ = CARRY((\int_bola|Bola_X\(2) & (!\int_bola|Desplaza_Bola_X\(2) & !\int_bola|Bola_X[1]~10\)) # (!\int_bola|Bola_X\(2) & ((!\int_bola|Bola_X[1]~10\) # (!\int_bola|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(2),
	datab => \int_bola|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \int_bola|Bola_X[1]~10\,
	combout => \int_bola|Bola_X[2]~11_combout\,
	cout => \int_bola|Bola_X[2]~12\);

-- Location: FF_X85_Y65_N13
\int_bola|Bola_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(2));

-- Location: LCCOMB_X85_Y65_N14
\int_bola|Bola_X[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[3]~13_combout\ = ((\int_bola|Bola_X\(3) $ (\int_bola|Desplaza_Bola_X\(2) $ (!\int_bola|Bola_X[2]~12\)))) # (GND)
-- \int_bola|Bola_X[3]~14\ = CARRY((\int_bola|Bola_X\(3) & ((\int_bola|Desplaza_Bola_X\(2)) # (!\int_bola|Bola_X[2]~12\))) # (!\int_bola|Bola_X\(3) & (\int_bola|Desplaza_Bola_X\(2) & !\int_bola|Bola_X[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(3),
	datab => \int_bola|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \int_bola|Bola_X[2]~12\,
	combout => \int_bola|Bola_X[3]~13_combout\,
	cout => \int_bola|Bola_X[3]~14\);

-- Location: LCCOMB_X86_Y65_N0
\int_bola|Bola_X[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[3]~feeder_combout\ = \int_bola|Bola_X[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Bola_X[3]~13_combout\,
	combout => \int_bola|Bola_X[3]~feeder_combout\);

-- Location: FF_X86_Y65_N1
\int_bola|Bola_X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(3));

-- Location: LCCOMB_X85_Y65_N16
\int_bola|Bola_X[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[4]~15_combout\ = (\int_bola|Bola_X\(4) & ((\int_bola|Desplaza_Bola_X\(2) & (\int_bola|Bola_X[3]~14\ & VCC)) # (!\int_bola|Desplaza_Bola_X\(2) & (!\int_bola|Bola_X[3]~14\)))) # (!\int_bola|Bola_X\(4) & ((\int_bola|Desplaza_Bola_X\(2) & 
-- (!\int_bola|Bola_X[3]~14\)) # (!\int_bola|Desplaza_Bola_X\(2) & ((\int_bola|Bola_X[3]~14\) # (GND)))))
-- \int_bola|Bola_X[4]~16\ = CARRY((\int_bola|Bola_X\(4) & (!\int_bola|Desplaza_Bola_X\(2) & !\int_bola|Bola_X[3]~14\)) # (!\int_bola|Bola_X\(4) & ((!\int_bola|Bola_X[3]~14\) # (!\int_bola|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(4),
	datab => \int_bola|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \int_bola|Bola_X[3]~14\,
	combout => \int_bola|Bola_X[4]~15_combout\,
	cout => \int_bola|Bola_X[4]~16\);

-- Location: FF_X85_Y65_N17
\int_bola|Bola_X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(4));

-- Location: LCCOMB_X85_Y65_N18
\int_bola|Bola_X[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[5]~17_combout\ = ((\int_bola|Bola_X\(5) $ (\int_bola|Desplaza_Bola_X\(2) $ (!\int_bola|Bola_X[4]~16\)))) # (GND)
-- \int_bola|Bola_X[5]~18\ = CARRY((\int_bola|Bola_X\(5) & ((\int_bola|Desplaza_Bola_X\(2)) # (!\int_bola|Bola_X[4]~16\))) # (!\int_bola|Bola_X\(5) & (\int_bola|Desplaza_Bola_X\(2) & !\int_bola|Bola_X[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(5),
	datab => \int_bola|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \int_bola|Bola_X[4]~16\,
	combout => \int_bola|Bola_X[5]~17_combout\,
	cout => \int_bola|Bola_X[5]~18\);

-- Location: FF_X85_Y65_N19
\int_bola|Bola_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(5));

-- Location: LCCOMB_X85_Y65_N20
\int_bola|Bola_X[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[6]~19_combout\ = (\int_bola|Bola_X\(6) & ((\int_bola|Desplaza_Bola_X\(2) & (\int_bola|Bola_X[5]~18\ & VCC)) # (!\int_bola|Desplaza_Bola_X\(2) & (!\int_bola|Bola_X[5]~18\)))) # (!\int_bola|Bola_X\(6) & ((\int_bola|Desplaza_Bola_X\(2) & 
-- (!\int_bola|Bola_X[5]~18\)) # (!\int_bola|Desplaza_Bola_X\(2) & ((\int_bola|Bola_X[5]~18\) # (GND)))))
-- \int_bola|Bola_X[6]~20\ = CARRY((\int_bola|Bola_X\(6) & (!\int_bola|Desplaza_Bola_X\(2) & !\int_bola|Bola_X[5]~18\)) # (!\int_bola|Bola_X\(6) & ((!\int_bola|Bola_X[5]~18\) # (!\int_bola|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(6),
	datab => \int_bola|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \int_bola|Bola_X[5]~18\,
	combout => \int_bola|Bola_X[6]~19_combout\,
	cout => \int_bola|Bola_X[6]~20\);

-- Location: FF_X85_Y65_N21
\int_bola|Bola_X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(6));

-- Location: LCCOMB_X85_Y65_N22
\int_bola|Bola_X[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[7]~21_combout\ = ((\int_bola|Bola_X\(7) $ (\int_bola|Desplaza_Bola_X\(2) $ (!\int_bola|Bola_X[6]~20\)))) # (GND)
-- \int_bola|Bola_X[7]~22\ = CARRY((\int_bola|Bola_X\(7) & ((\int_bola|Desplaza_Bola_X\(2)) # (!\int_bola|Bola_X[6]~20\))) # (!\int_bola|Bola_X\(7) & (\int_bola|Desplaza_Bola_X\(2) & !\int_bola|Bola_X[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(7),
	datab => \int_bola|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \int_bola|Bola_X[6]~20\,
	combout => \int_bola|Bola_X[7]~21_combout\,
	cout => \int_bola|Bola_X[7]~22\);

-- Location: FF_X85_Y65_N23
\int_bola|Bola_X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(7));

-- Location: LCCOMB_X85_Y65_N24
\int_bola|Bola_X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[8]~23_combout\ = (\int_bola|Bola_X\(8) & ((\int_bola|Desplaza_Bola_X\(2) & (\int_bola|Bola_X[7]~22\ & VCC)) # (!\int_bola|Desplaza_Bola_X\(2) & (!\int_bola|Bola_X[7]~22\)))) # (!\int_bola|Bola_X\(8) & ((\int_bola|Desplaza_Bola_X\(2) & 
-- (!\int_bola|Bola_X[7]~22\)) # (!\int_bola|Desplaza_Bola_X\(2) & ((\int_bola|Bola_X[7]~22\) # (GND)))))
-- \int_bola|Bola_X[8]~24\ = CARRY((\int_bola|Bola_X\(8) & (!\int_bola|Desplaza_Bola_X\(2) & !\int_bola|Bola_X[7]~22\)) # (!\int_bola|Bola_X\(8) & ((!\int_bola|Bola_X[7]~22\) # (!\int_bola|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(8),
	datab => \int_bola|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \int_bola|Bola_X[7]~22\,
	combout => \int_bola|Bola_X[8]~23_combout\,
	cout => \int_bola|Bola_X[8]~24\);

-- Location: FF_X85_Y65_N25
\int_bola|Bola_X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(8));

-- Location: LCCOMB_X85_Y65_N0
\int_bola|Desplaza_Bola_X[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~1_combout\ = (!\int_bola|Bola_X\(5) & (!\int_bola|Bola_X\(6) & (!\int_bola|Bola_X\(7) & !\int_bola|Bola_X\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(5),
	datab => \int_bola|Bola_X\(6),
	datac => \int_bola|Bola_X\(7),
	datad => \int_bola|Bola_X\(8),
	combout => \int_bola|Desplaza_Bola_X[2]~1_combout\);

-- Location: LCCOMB_X85_Y65_N4
\int_bola|LessThan19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan19~0_combout\ = (((!\int_bola|Bola_X\(6)) # (!\int_bola|Bola_X\(3))) # (!\int_bola|Bola_X\(4))) # (!\int_bola|Bola_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(5),
	datab => \int_bola|Bola_X\(4),
	datac => \int_bola|Bola_X\(3),
	datad => \int_bola|Bola_X\(6),
	combout => \int_bola|LessThan19~0_combout\);

-- Location: LCCOMB_X85_Y65_N8
\int_bola|Desplaza_Bola_X[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[1]~7_combout\ = (!\int_bola|Bola_X\(7) & (\int_bola|LessThan19~0_combout\ & (\int_bola|Bola_X\(9) & !\int_bola|Bola_X\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(7),
	datab => \int_bola|LessThan19~0_combout\,
	datac => \int_bola|Bola_X\(9),
	datad => \int_bola|Bola_X\(8),
	combout => \int_bola|Desplaza_Bola_X[1]~7_combout\);

-- Location: LCCOMB_X86_Y65_N2
\int_bola|Desplaza_Bola_X[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~0_combout\ = (!\int_bola|Bola_X\(4) & (((!\int_bola|Bola_X\(1) & !\int_bola|Bola_X\(2))) # (!\int_bola|Bola_X\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(1),
	datab => \int_bola|Bola_X\(3),
	datac => \int_bola|Bola_X\(4),
	datad => \int_bola|Bola_X\(2),
	combout => \int_bola|Desplaza_Bola_X[2]~0_combout\);

-- Location: LCCOMB_X85_Y65_N30
\int_bola|Desplaza_Bola_X[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[1]~8_combout\ = (\int_bola|Desplaza_Bola_X[1]~7_combout\) # ((!\int_bola|Bola_X\(9) & ((!\int_bola|Desplaza_Bola_X[2]~0_combout\) # (!\int_bola|Desplaza_Bola_X[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(9),
	datab => \int_bola|Desplaza_Bola_X[2]~1_combout\,
	datac => \int_bola|Desplaza_Bola_X[1]~7_combout\,
	datad => \int_bola|Desplaza_Bola_X[2]~0_combout\,
	combout => \int_bola|Desplaza_Bola_X[1]~8_combout\);

-- Location: LCCOMB_X85_Y65_N2
\int_bola|Desplaza_Bola_X[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~2_combout\ = ((\int_bola|Bola_X\(9)) # (!\int_bola|Desplaza_Bola_X[2]~0_combout\)) # (!\int_bola|Desplaza_Bola_X[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Desplaza_Bola_X[2]~1_combout\,
	datac => \int_bola|Bola_X\(9),
	datad => \int_bola|Desplaza_Bola_X[2]~0_combout\,
	combout => \int_bola|Desplaza_Bola_X[2]~2_combout\);

-- Location: LCCOMB_X89_Y65_N18
\int_bola|Add9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add9~1_cout\ = CARRY(\int_bola|Bola_X\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(3),
	datad => VCC,
	cout => \int_bola|Add9~1_cout\);

-- Location: LCCOMB_X89_Y65_N20
\int_bola|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add9~2_combout\ = (\int_bola|Bola_X\(4) & (\int_bola|Add9~1_cout\ & VCC)) # (!\int_bola|Bola_X\(4) & (!\int_bola|Add9~1_cout\))
-- \int_bola|Add9~3\ = CARRY((!\int_bola|Bola_X\(4) & !\int_bola|Add9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(4),
	datad => VCC,
	cin => \int_bola|Add9~1_cout\,
	combout => \int_bola|Add9~2_combout\,
	cout => \int_bola|Add9~3\);

-- Location: LCCOMB_X89_Y65_N22
\int_bola|Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add9~4_combout\ = (\int_bola|Bola_X\(5) & ((GND) # (!\int_bola|Add9~3\))) # (!\int_bola|Bola_X\(5) & (\int_bola|Add9~3\ $ (GND)))
-- \int_bola|Add9~5\ = CARRY((\int_bola|Bola_X\(5)) # (!\int_bola|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(5),
	datad => VCC,
	cin => \int_bola|Add9~3\,
	combout => \int_bola|Add9~4_combout\,
	cout => \int_bola|Add9~5\);

-- Location: LCCOMB_X89_Y65_N24
\int_bola|Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add9~6_combout\ = (\int_bola|Bola_X\(6) & (\int_bola|Add9~5\ & VCC)) # (!\int_bola|Bola_X\(6) & (!\int_bola|Add9~5\))
-- \int_bola|Add9~7\ = CARRY((!\int_bola|Bola_X\(6) & !\int_bola|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(6),
	datad => VCC,
	cin => \int_bola|Add9~5\,
	combout => \int_bola|Add9~6_combout\,
	cout => \int_bola|Add9~7\);

-- Location: LCCOMB_X89_Y65_N12
\int_bola|Mover_Bola~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Bola~1_combout\ = (\int_bola|Add9~4_combout\) # (\int_bola|Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add9~4_combout\,
	datad => \int_bola|Add9~6_combout\,
	combout => \int_bola|Mover_Bola~1_combout\);

-- Location: LCCOMB_X85_Y65_N28
\int_bola|Desplaza_Bola_X[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~3_combout\ = (\int_bola|Bola_X\(5) & (\int_bola|Bola_X\(6) & (\int_bola|Bola_X\(3) & \int_bola|Bola_X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(5),
	datab => \int_bola|Bola_X\(6),
	datac => \int_bola|Bola_X\(3),
	datad => \int_bola|Bola_X\(4),
	combout => \int_bola|Desplaza_Bola_X[2]~3_combout\);

-- Location: LCCOMB_X85_Y65_N6
\int_bola|Desplaza_Bola_X[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~4_combout\ = (\int_bola|Bola_X\(9) & ((\int_bola|Bola_X\(7)) # ((\int_bola|Desplaza_Bola_X[2]~3_combout\) # (\int_bola|Bola_X\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(7),
	datab => \int_bola|Desplaza_Bola_X[2]~3_combout\,
	datac => \int_bola|Bola_X\(9),
	datad => \int_bola|Bola_X\(8),
	combout => \int_bola|Desplaza_Bola_X[2]~4_combout\);

-- Location: LCCOMB_X89_Y65_N26
\int_bola|Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add9~8_combout\ = (\int_bola|Bola_X\(7) & ((GND) # (!\int_bola|Add9~7\))) # (!\int_bola|Bola_X\(7) & (\int_bola|Add9~7\ $ (GND)))
-- \int_bola|Add9~9\ = CARRY((\int_bola|Bola_X\(7)) # (!\int_bola|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(7),
	datad => VCC,
	cin => \int_bola|Add9~7\,
	combout => \int_bola|Add9~8_combout\,
	cout => \int_bola|Add9~9\);

-- Location: LCCOMB_X89_Y65_N28
\int_bola|Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add9~10_combout\ = (\int_bola|Bola_X\(8) & (\int_bola|Add9~9\ & VCC)) # (!\int_bola|Bola_X\(8) & (!\int_bola|Add9~9\))
-- \int_bola|Add9~11\ = CARRY((!\int_bola|Bola_X\(8) & !\int_bola|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(8),
	datad => VCC,
	cin => \int_bola|Add9~9\,
	combout => \int_bola|Add9~10_combout\,
	cout => \int_bola|Add9~11\);

-- Location: LCCOMB_X89_Y65_N30
\int_bola|Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add9~12_combout\ = \int_bola|Add9~11\ $ (\int_bola|Bola_X\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Bola_X\(9),
	cin => \int_bola|Add9~11\,
	combout => \int_bola|Add9~12_combout\);

-- Location: LCCOMB_X89_Y65_N10
\int_bola|Mover_Bola~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Bola~2_combout\ = (\int_bola|Add9~12_combout\) # ((\int_bola|Add9~8_combout\) # (\int_bola|Add9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add9~12_combout\,
	datac => \int_bola|Add9~8_combout\,
	datad => \int_bola|Add9~10_combout\,
	combout => \int_bola|Mover_Bola~2_combout\);

-- Location: LCCOMB_X89_Y65_N6
\int_bola|Mover_Bola~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Bola~0_combout\ = (!\int_bola|Bola_X\(3) & (\int_bola|Add9~2_combout\ & ((\int_bola|Bola_X\(2)) # (\int_bola|Bola_X\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(3),
	datab => \int_bola|Bola_X\(2),
	datac => \int_bola|Bola_X\(1),
	datad => \int_bola|Add9~2_combout\,
	combout => \int_bola|Mover_Bola~0_combout\);

-- Location: LCCOMB_X89_Y65_N0
\int_bola|Desplaza_Bola_X[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~5_combout\ = (\int_bola|Mover_Bola~1_combout\) # ((\int_bola|Desplaza_Bola_X[2]~4_combout\) # ((\int_bola|Mover_Bola~2_combout\) # (\int_bola|Mover_Bola~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Mover_Bola~1_combout\,
	datab => \int_bola|Desplaza_Bola_X[2]~4_combout\,
	datac => \int_bola|Mover_Bola~2_combout\,
	datad => \int_bola|Mover_Bola~0_combout\,
	combout => \int_bola|Desplaza_Bola_X[2]~5_combout\);

-- Location: IOIBUF_X115_Y53_N15
\UP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP,
	o => \UP~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\DOWN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOWN,
	o => \DOWN~input_o\);

-- Location: LCCOMB_X89_Y63_N28
\int_bola|Mover_Pala~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala~3_combout\ = (\int_bola|Pala_Y\(9)) # (\DOWN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y\(9),
	datad => \DOWN~input_o\,
	combout => \int_bola|Mover_Pala~3_combout\);

-- Location: LCCOMB_X89_Y63_N18
\int_bola|Mover_Pala~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala~2_combout\ = (!\int_bola|Pala_Y\(7) & (((!\int_bola|Pala_Y\(5) & !\int_bola|Pala_Y\(4))) # (!\int_bola|Pala_Y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(5),
	datab => \int_bola|Pala_Y\(6),
	datac => \int_bola|Pala_Y\(4),
	datad => \int_bola|Pala_Y\(7),
	combout => \int_bola|Mover_Pala~2_combout\);

-- Location: LCCOMB_X89_Y63_N0
\int_bola|Desplaza_Pala_Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Pala_Y~0_combout\ = (\int_bola|Mover_Pala~1_combout\) # ((!\int_bola|Mover_Pala~3_combout\ & ((!\int_bola|Mover_Pala~2_combout\) # (!\int_bola|Pala_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(8),
	datab => \int_bola|Mover_Pala~3_combout\,
	datac => \int_bola|Mover_Pala~1_combout\,
	datad => \int_bola|Mover_Pala~2_combout\,
	combout => \int_bola|Desplaza_Pala_Y~0_combout\);

-- Location: FF_X89_Y63_N1
\int_bola|Desplaza_Pala_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Desplaza_Pala_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Desplaza_Pala_Y\(1));

-- Location: LCCOMB_X88_Y63_N6
\int_bola|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~0_combout\ = (\int_bola|Pala_Y\(1) & (\int_bola|Desplaza_Pala_Y\(1) $ (VCC))) # (!\int_bola|Pala_Y\(1) & (\int_bola|Desplaza_Pala_Y\(1) & VCC))
-- \int_bola|Add4~1\ = CARRY((\int_bola|Pala_Y\(1) & \int_bola|Desplaza_Pala_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(1),
	datab => \int_bola|Desplaza_Pala_Y\(1),
	datad => VCC,
	combout => \int_bola|Add4~0_combout\,
	cout => \int_bola|Add4~1\);

-- Location: FF_X88_Y63_N7
\int_bola|Pala_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(1));

-- Location: LCCOMB_X88_Y63_N8
\int_bola|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~2_combout\ = (\int_bola|Pala_Y\(2) & ((\int_bola|Desplaza_Pala_Y\(2) & (\int_bola|Add4~1\ & VCC)) # (!\int_bola|Desplaza_Pala_Y\(2) & (!\int_bola|Add4~1\)))) # (!\int_bola|Pala_Y\(2) & ((\int_bola|Desplaza_Pala_Y\(2) & (!\int_bola|Add4~1\)) 
-- # (!\int_bola|Desplaza_Pala_Y\(2) & ((\int_bola|Add4~1\) # (GND)))))
-- \int_bola|Add4~3\ = CARRY((\int_bola|Pala_Y\(2) & (!\int_bola|Desplaza_Pala_Y\(2) & !\int_bola|Add4~1\)) # (!\int_bola|Pala_Y\(2) & ((!\int_bola|Add4~1\) # (!\int_bola|Desplaza_Pala_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(2),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|Add4~1\,
	combout => \int_bola|Add4~2_combout\,
	cout => \int_bola|Add4~3\);

-- Location: FF_X88_Y63_N9
\int_bola|Pala_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(2));

-- Location: LCCOMB_X88_Y63_N10
\int_bola|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~4_combout\ = ((\int_bola|Pala_Y\(3) $ (\int_bola|Desplaza_Pala_Y\(2) $ (!\int_bola|Add4~3\)))) # (GND)
-- \int_bola|Add4~5\ = CARRY((\int_bola|Pala_Y\(3) & ((\int_bola|Desplaza_Pala_Y\(2)) # (!\int_bola|Add4~3\))) # (!\int_bola|Pala_Y\(3) & (\int_bola|Desplaza_Pala_Y\(2) & !\int_bola|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(3),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|Add4~3\,
	combout => \int_bola|Add4~4_combout\,
	cout => \int_bola|Add4~5\);

-- Location: FF_X88_Y63_N11
\int_bola|Pala_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(3));

-- Location: LCCOMB_X88_Y63_N12
\int_bola|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~6_combout\ = (\int_bola|Pala_Y\(4) & ((\int_bola|Desplaza_Pala_Y\(2) & (!\int_bola|Add4~5\)) # (!\int_bola|Desplaza_Pala_Y\(2) & ((\int_bola|Add4~5\) # (GND))))) # (!\int_bola|Pala_Y\(4) & ((\int_bola|Desplaza_Pala_Y\(2) & 
-- (\int_bola|Add4~5\ & VCC)) # (!\int_bola|Desplaza_Pala_Y\(2) & (!\int_bola|Add4~5\))))
-- \int_bola|Add4~7\ = CARRY((\int_bola|Pala_Y\(4) & ((!\int_bola|Add4~5\) # (!\int_bola|Desplaza_Pala_Y\(2)))) # (!\int_bola|Pala_Y\(4) & (!\int_bola|Desplaza_Pala_Y\(2) & !\int_bola|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(4),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|Add4~5\,
	combout => \int_bola|Add4~6_combout\,
	cout => \int_bola|Add4~7\);

-- Location: LCCOMB_X88_Y63_N2
\int_bola|Pala_Y[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y[4]~3_combout\ = !\int_bola|Add4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add4~6_combout\,
	combout => \int_bola|Pala_Y[4]~3_combout\);

-- Location: FF_X87_Y65_N27
\int_bola|Pala_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Pala_Y[4]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(4));

-- Location: LCCOMB_X88_Y63_N14
\int_bola|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~8_combout\ = ((\int_bola|Pala_Y\(5) $ (\int_bola|Desplaza_Pala_Y\(2) $ (\int_bola|Add4~7\)))) # (GND)
-- \int_bola|Add4~9\ = CARRY((\int_bola|Pala_Y\(5) & (\int_bola|Desplaza_Pala_Y\(2) & !\int_bola|Add4~7\)) # (!\int_bola|Pala_Y\(5) & ((\int_bola|Desplaza_Pala_Y\(2)) # (!\int_bola|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(5),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|Add4~7\,
	combout => \int_bola|Add4~8_combout\,
	cout => \int_bola|Add4~9\);

-- Location: LCCOMB_X88_Y65_N18
\int_bola|Pala_Y[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y[5]~2_combout\ = !\int_bola|Add4~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add4~8_combout\,
	combout => \int_bola|Pala_Y[5]~2_combout\);

-- Location: FF_X87_Y65_N5
\int_bola|Pala_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Pala_Y[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(5));

-- Location: LCCOMB_X88_Y63_N16
\int_bola|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~10_combout\ = (\int_bola|Pala_Y\(6) & ((\int_bola|Desplaza_Pala_Y\(2) & (!\int_bola|Add4~9\)) # (!\int_bola|Desplaza_Pala_Y\(2) & ((\int_bola|Add4~9\) # (GND))))) # (!\int_bola|Pala_Y\(6) & ((\int_bola|Desplaza_Pala_Y\(2) & 
-- (\int_bola|Add4~9\ & VCC)) # (!\int_bola|Desplaza_Pala_Y\(2) & (!\int_bola|Add4~9\))))
-- \int_bola|Add4~11\ = CARRY((\int_bola|Pala_Y\(6) & ((!\int_bola|Add4~9\) # (!\int_bola|Desplaza_Pala_Y\(2)))) # (!\int_bola|Pala_Y\(6) & (!\int_bola|Desplaza_Pala_Y\(2) & !\int_bola|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(6),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|Add4~9\,
	combout => \int_bola|Add4~10_combout\,
	cout => \int_bola|Add4~11\);

-- Location: LCCOMB_X88_Y63_N24
\int_bola|Pala_Y[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y[6]~1_combout\ = !\int_bola|Add4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add4~10_combout\,
	combout => \int_bola|Pala_Y[6]~1_combout\);

-- Location: FF_X87_Y65_N23
\int_bola|Pala_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Pala_Y[6]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(6));

-- Location: LCCOMB_X88_Y63_N18
\int_bola|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~12_combout\ = ((\int_bola|Pala_Y\(7) $ (\int_bola|Desplaza_Pala_Y\(2) $ (\int_bola|Add4~11\)))) # (GND)
-- \int_bola|Add4~13\ = CARRY((\int_bola|Pala_Y\(7) & (\int_bola|Desplaza_Pala_Y\(2) & !\int_bola|Add4~11\)) # (!\int_bola|Pala_Y\(7) & ((\int_bola|Desplaza_Pala_Y\(2)) # (!\int_bola|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(7),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|Add4~11\,
	combout => \int_bola|Add4~12_combout\,
	cout => \int_bola|Add4~13\);

-- Location: LCCOMB_X88_Y63_N26
\int_bola|Pala_Y[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y[7]~0_combout\ = !\int_bola|Add4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add4~12_combout\,
	combout => \int_bola|Pala_Y[7]~0_combout\);

-- Location: FF_X87_Y65_N25
\int_bola|Pala_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Pala_Y[7]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(7));

-- Location: LCCOMB_X88_Y63_N20
\int_bola|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~14_combout\ = (\int_bola|Pala_Y\(8) & ((\int_bola|Desplaza_Pala_Y\(2) & (\int_bola|Add4~13\ & VCC)) # (!\int_bola|Desplaza_Pala_Y\(2) & (!\int_bola|Add4~13\)))) # (!\int_bola|Pala_Y\(8) & ((\int_bola|Desplaza_Pala_Y\(2) & 
-- (!\int_bola|Add4~13\)) # (!\int_bola|Desplaza_Pala_Y\(2) & ((\int_bola|Add4~13\) # (GND)))))
-- \int_bola|Add4~15\ = CARRY((\int_bola|Pala_Y\(8) & (!\int_bola|Desplaza_Pala_Y\(2) & !\int_bola|Add4~13\)) # (!\int_bola|Pala_Y\(8) & ((!\int_bola|Add4~13\) # (!\int_bola|Desplaza_Pala_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(8),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|Add4~13\,
	combout => \int_bola|Add4~14_combout\,
	cout => \int_bola|Add4~15\);

-- Location: FF_X88_Y63_N21
\int_bola|Pala_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(8));

-- Location: LCCOMB_X88_Y63_N28
\int_bola|Mover_Pala~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala~0_combout\ = (\int_bola|Pala_Y\(6) & (\int_bola|Pala_Y\(7) & ((\int_bola|Pala_Y\(4)) # (\int_bola|Pala_Y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(6),
	datab => \int_bola|Pala_Y\(4),
	datac => \int_bola|Pala_Y\(7),
	datad => \int_bola|Pala_Y\(5),
	combout => \int_bola|Mover_Pala~0_combout\);

-- Location: LCCOMB_X88_Y63_N4
\int_bola|Mover_Pala~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala~1_combout\ = (!\UP~input_o\ & ((\int_bola|Pala_Y\(8)) # ((\int_bola|Pala_Y\(9)) # (!\int_bola|Mover_Pala~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \int_bola|Pala_Y\(8),
	datac => \int_bola|Pala_Y\(9),
	datad => \int_bola|Mover_Pala~0_combout\,
	combout => \int_bola|Mover_Pala~1_combout\);

-- Location: FF_X88_Y63_N5
\int_bola|Desplaza_Pala_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Mover_Pala~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Desplaza_Pala_Y\(2));

-- Location: LCCOMB_X88_Y63_N22
\int_bola|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add4~16_combout\ = \int_bola|Pala_Y\(9) $ (\int_bola|Desplaza_Pala_Y\(2) $ (!\int_bola|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(9),
	datab => \int_bola|Desplaza_Pala_Y\(2),
	cin => \int_bola|Add4~15\,
	combout => \int_bola|Add4~16_combout\);

-- Location: FF_X88_Y63_N23
\int_bola|Pala_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y\(9));

-- Location: LCCOMB_X87_Y65_N0
\int_bola|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add1~0_combout\ = \int_bola|Pala_Y\(4) $ (GND)
-- \int_bola|Add1~1\ = CARRY(!\int_bola|Pala_Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(4),
	datad => VCC,
	combout => \int_bola|Add1~0_combout\,
	cout => \int_bola|Add1~1\);

-- Location: LCCOMB_X87_Y65_N2
\int_bola|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add1~2_combout\ = (\int_bola|Pala_Y\(5) & (!\int_bola|Add1~1\)) # (!\int_bola|Pala_Y\(5) & (\int_bola|Add1~1\ & VCC))
-- \int_bola|Add1~3\ = CARRY((\int_bola|Pala_Y\(5) & !\int_bola|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y\(5),
	datad => VCC,
	cin => \int_bola|Add1~1\,
	combout => \int_bola|Add1~2_combout\,
	cout => \int_bola|Add1~3\);

-- Location: LCCOMB_X87_Y65_N4
\int_bola|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add1~4_combout\ = (\int_bola|Pala_Y\(6) & (!\int_bola|Add1~3\ & VCC)) # (!\int_bola|Pala_Y\(6) & (\int_bola|Add1~3\ $ (GND)))
-- \int_bola|Add1~5\ = CARRY((!\int_bola|Pala_Y\(6) & !\int_bola|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(6),
	datad => VCC,
	cin => \int_bola|Add1~3\,
	combout => \int_bola|Add1~4_combout\,
	cout => \int_bola|Add1~5\);

-- Location: LCCOMB_X87_Y65_N6
\int_bola|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add1~6_combout\ = (\int_bola|Pala_Y\(7) & ((\int_bola|Add1~5\) # (GND))) # (!\int_bola|Pala_Y\(7) & (!\int_bola|Add1~5\))
-- \int_bola|Add1~7\ = CARRY((\int_bola|Pala_Y\(7)) # (!\int_bola|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y\(7),
	datad => VCC,
	cin => \int_bola|Add1~5\,
	combout => \int_bola|Add1~6_combout\,
	cout => \int_bola|Add1~7\);

-- Location: LCCOMB_X87_Y65_N8
\int_bola|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add1~8_combout\ = (\int_bola|Pala_Y\(8) & (\int_bola|Add1~7\ $ (GND))) # (!\int_bola|Pala_Y\(8) & (!\int_bola|Add1~7\ & VCC))
-- \int_bola|Add1~9\ = CARRY((\int_bola|Pala_Y\(8) & !\int_bola|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y\(8),
	datad => VCC,
	cin => \int_bola|Add1~7\,
	combout => \int_bola|Add1~8_combout\,
	cout => \int_bola|Add1~9\);

-- Location: LCCOMB_X87_Y65_N10
\int_bola|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add1~10_combout\ = \int_bola|Add1~9\ $ (\int_bola|Pala_Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Pala_Y\(9),
	cin => \int_bola|Add1~9\,
	combout => \int_bola|Add1~10_combout\);

-- Location: LCCOMB_X88_Y65_N20
\int_bola|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add10~0_combout\ = (\int_bola|Add1~0_combout\ & (\int_bola|Pala_Y\(3) $ (VCC))) # (!\int_bola|Add1~0_combout\ & (\int_bola|Pala_Y\(3) & VCC))
-- \int_bola|Add10~1\ = CARRY((\int_bola|Add1~0_combout\ & \int_bola|Pala_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add1~0_combout\,
	datab => \int_bola|Pala_Y\(3),
	datad => VCC,
	combout => \int_bola|Add10~0_combout\,
	cout => \int_bola|Add10~1\);

-- Location: LCCOMB_X88_Y65_N22
\int_bola|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add10~2_combout\ = (\int_bola|Add1~2_combout\ & (!\int_bola|Add10~1\)) # (!\int_bola|Add1~2_combout\ & ((\int_bola|Add10~1\) # (GND)))
-- \int_bola|Add10~3\ = CARRY((!\int_bola|Add10~1\) # (!\int_bola|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add1~2_combout\,
	datad => VCC,
	cin => \int_bola|Add10~1\,
	combout => \int_bola|Add10~2_combout\,
	cout => \int_bola|Add10~3\);

-- Location: LCCOMB_X88_Y65_N24
\int_bola|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add10~4_combout\ = (\int_bola|Add1~4_combout\ & (\int_bola|Add10~3\ $ (GND))) # (!\int_bola|Add1~4_combout\ & (!\int_bola|Add10~3\ & VCC))
-- \int_bola|Add10~5\ = CARRY((\int_bola|Add1~4_combout\ & !\int_bola|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add1~4_combout\,
	datad => VCC,
	cin => \int_bola|Add10~3\,
	combout => \int_bola|Add10~4_combout\,
	cout => \int_bola|Add10~5\);

-- Location: LCCOMB_X88_Y65_N26
\int_bola|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add10~6_combout\ = (\int_bola|Add1~6_combout\ & (!\int_bola|Add10~5\)) # (!\int_bola|Add1~6_combout\ & ((\int_bola|Add10~5\) # (GND)))
-- \int_bola|Add10~7\ = CARRY((!\int_bola|Add10~5\) # (!\int_bola|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add1~6_combout\,
	datad => VCC,
	cin => \int_bola|Add10~5\,
	combout => \int_bola|Add10~6_combout\,
	cout => \int_bola|Add10~7\);

-- Location: LCCOMB_X88_Y65_N28
\int_bola|Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add10~8_combout\ = (\int_bola|Add1~8_combout\ & (\int_bola|Add10~7\ $ (GND))) # (!\int_bola|Add1~8_combout\ & (!\int_bola|Add10~7\ & VCC))
-- \int_bola|Add10~9\ = CARRY((\int_bola|Add1~8_combout\ & !\int_bola|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add1~8_combout\,
	datad => VCC,
	cin => \int_bola|Add10~7\,
	combout => \int_bola|Add10~8_combout\,
	cout => \int_bola|Add10~9\);

-- Location: LCCOMB_X88_Y65_N30
\int_bola|Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add10~10_combout\ = \int_bola|Add10~9\ $ (\int_bola|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add1~10_combout\,
	cin => \int_bola|Add10~9\,
	combout => \int_bola|Add10~10_combout\);

-- Location: LCCOMB_X87_Y64_N14
\int_bola|Bola_Y[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[2]~9_cout\ = CARRY(\int_bola|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(1),
	datad => VCC,
	cout => \int_bola|Bola_Y[2]~9_cout\);

-- Location: LCCOMB_X87_Y64_N16
\int_bola|Bola_Y[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[2]~10_combout\ = (\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(2) & (\int_bola|Bola_Y[2]~9_cout\ & VCC)) # (!\int_bola|Bola_Y\(2) & (!\int_bola|Bola_Y[2]~9_cout\)))) # (!\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(2) & 
-- (!\int_bola|Bola_Y[2]~9_cout\)) # (!\int_bola|Bola_Y\(2) & ((\int_bola|Bola_Y[2]~9_cout\) # (GND)))))
-- \int_bola|Bola_Y[2]~11\ = CARRY((\int_bola|Desplaza_Bola_Y\(2) & (!\int_bola|Bola_Y\(2) & !\int_bola|Bola_Y[2]~9_cout\)) # (!\int_bola|Desplaza_Bola_Y\(2) & ((!\int_bola|Bola_Y[2]~9_cout\) # (!\int_bola|Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(2),
	datad => VCC,
	cin => \int_bola|Bola_Y[2]~9_cout\,
	combout => \int_bola|Bola_Y[2]~10_combout\,
	cout => \int_bola|Bola_Y[2]~11\);

-- Location: FF_X87_Y64_N17
\int_bola|Bola_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(2));

-- Location: LCCOMB_X87_Y64_N18
\int_bola|Bola_Y[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[3]~12_combout\ = ((\int_bola|Desplaza_Bola_Y\(2) $ (\int_bola|Bola_Y\(3) $ (!\int_bola|Bola_Y[2]~11\)))) # (GND)
-- \int_bola|Bola_Y[3]~13\ = CARRY((\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(3)) # (!\int_bola|Bola_Y[2]~11\))) # (!\int_bola|Desplaza_Bola_Y\(2) & (\int_bola|Bola_Y\(3) & !\int_bola|Bola_Y[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(3),
	datad => VCC,
	cin => \int_bola|Bola_Y[2]~11\,
	combout => \int_bola|Bola_Y[3]~12_combout\,
	cout => \int_bola|Bola_Y[3]~13\);

-- Location: FF_X87_Y64_N19
\int_bola|Bola_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(3));

-- Location: LCCOMB_X87_Y64_N20
\int_bola|Bola_Y[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[4]~14_combout\ = (\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(4) & (\int_bola|Bola_Y[3]~13\ & VCC)) # (!\int_bola|Bola_Y\(4) & (!\int_bola|Bola_Y[3]~13\)))) # (!\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(4) & 
-- (!\int_bola|Bola_Y[3]~13\)) # (!\int_bola|Bola_Y\(4) & ((\int_bola|Bola_Y[3]~13\) # (GND)))))
-- \int_bola|Bola_Y[4]~15\ = CARRY((\int_bola|Desplaza_Bola_Y\(2) & (!\int_bola|Bola_Y\(4) & !\int_bola|Bola_Y[3]~13\)) # (!\int_bola|Desplaza_Bola_Y\(2) & ((!\int_bola|Bola_Y[3]~13\) # (!\int_bola|Bola_Y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(4),
	datad => VCC,
	cin => \int_bola|Bola_Y[3]~13\,
	combout => \int_bola|Bola_Y[4]~14_combout\,
	cout => \int_bola|Bola_Y[4]~15\);

-- Location: FF_X87_Y64_N21
\int_bola|Bola_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(4));

-- Location: LCCOMB_X87_Y64_N22
\int_bola|Bola_Y[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[5]~16_combout\ = ((\int_bola|Desplaza_Bola_Y\(2) $ (\int_bola|Bola_Y\(5) $ (!\int_bola|Bola_Y[4]~15\)))) # (GND)
-- \int_bola|Bola_Y[5]~17\ = CARRY((\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(5)) # (!\int_bola|Bola_Y[4]~15\))) # (!\int_bola|Desplaza_Bola_Y\(2) & (\int_bola|Bola_Y\(5) & !\int_bola|Bola_Y[4]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(5),
	datad => VCC,
	cin => \int_bola|Bola_Y[4]~15\,
	combout => \int_bola|Bola_Y[5]~16_combout\,
	cout => \int_bola|Bola_Y[5]~17\);

-- Location: FF_X87_Y64_N23
\int_bola|Bola_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(5));

-- Location: LCCOMB_X87_Y64_N24
\int_bola|Bola_Y[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[6]~18_combout\ = (\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(6) & (\int_bola|Bola_Y[5]~17\ & VCC)) # (!\int_bola|Bola_Y\(6) & (!\int_bola|Bola_Y[5]~17\)))) # (!\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(6) & 
-- (!\int_bola|Bola_Y[5]~17\)) # (!\int_bola|Bola_Y\(6) & ((\int_bola|Bola_Y[5]~17\) # (GND)))))
-- \int_bola|Bola_Y[6]~19\ = CARRY((\int_bola|Desplaza_Bola_Y\(2) & (!\int_bola|Bola_Y\(6) & !\int_bola|Bola_Y[5]~17\)) # (!\int_bola|Desplaza_Bola_Y\(2) & ((!\int_bola|Bola_Y[5]~17\) # (!\int_bola|Bola_Y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(6),
	datad => VCC,
	cin => \int_bola|Bola_Y[5]~17\,
	combout => \int_bola|Bola_Y[6]~18_combout\,
	cout => \int_bola|Bola_Y[6]~19\);

-- Location: FF_X87_Y64_N25
\int_bola|Bola_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(6));

-- Location: LCCOMB_X87_Y64_N26
\int_bola|Bola_Y[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[7]~20_combout\ = ((\int_bola|Desplaza_Bola_Y\(2) $ (\int_bola|Bola_Y\(7) $ (!\int_bola|Bola_Y[6]~19\)))) # (GND)
-- \int_bola|Bola_Y[7]~21\ = CARRY((\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(7)) # (!\int_bola|Bola_Y[6]~19\))) # (!\int_bola|Desplaza_Bola_Y\(2) & (\int_bola|Bola_Y\(7) & !\int_bola|Bola_Y[6]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(7),
	datad => VCC,
	cin => \int_bola|Bola_Y[6]~19\,
	combout => \int_bola|Bola_Y[7]~20_combout\,
	cout => \int_bola|Bola_Y[7]~21\);

-- Location: FF_X87_Y64_N27
\int_bola|Bola_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(7));

-- Location: LCCOMB_X87_Y64_N28
\int_bola|Bola_Y[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[8]~22_combout\ = (\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(8) & (\int_bola|Bola_Y[7]~21\ & VCC)) # (!\int_bola|Bola_Y\(8) & (!\int_bola|Bola_Y[7]~21\)))) # (!\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(8) & 
-- (!\int_bola|Bola_Y[7]~21\)) # (!\int_bola|Bola_Y\(8) & ((\int_bola|Bola_Y[7]~21\) # (GND)))))
-- \int_bola|Bola_Y[8]~23\ = CARRY((\int_bola|Desplaza_Bola_Y\(2) & (!\int_bola|Bola_Y\(8) & !\int_bola|Bola_Y[7]~21\)) # (!\int_bola|Desplaza_Bola_Y\(2) & ((!\int_bola|Bola_Y[7]~21\) # (!\int_bola|Bola_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(8),
	datad => VCC,
	cin => \int_bola|Bola_Y[7]~21\,
	combout => \int_bola|Bola_Y[8]~22_combout\,
	cout => \int_bola|Bola_Y[8]~23\);

-- Location: FF_X87_Y64_N29
\int_bola|Bola_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(8));

-- Location: LCCOMB_X86_Y63_N2
\int_bola|Desplaza_Bola_Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_Y[2]~1_combout\ = (\int_bola|Bola_Y\(3) & ((\int_bola|Bola_Y\(2)) # ((\int_bola|Bola_X\(1)) # (\int_bola|Bola_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(2),
	datab => \int_bola|Bola_X\(1),
	datac => \int_bola|Bola_Y\(3),
	datad => \int_bola|Bola_Y\(8),
	combout => \int_bola|Desplaza_Bola_Y[2]~1_combout\);

-- Location: LCCOMB_X87_Y63_N6
\int_bola|Desplaza_Bola_Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_Y[2]~2_combout\ = (\int_bola|Bola_Y\(5)) # ((\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(4)) # (\int_bola|Desplaza_Bola_Y[2]~1_combout\))) # (!\int_bola|Desplaza_Bola_Y\(2) & (\int_bola|Bola_Y\(4) & 
-- \int_bola|Desplaza_Bola_Y[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(5),
	datac => \int_bola|Bola_Y\(4),
	datad => \int_bola|Desplaza_Bola_Y[2]~1_combout\,
	combout => \int_bola|Desplaza_Bola_Y[2]~2_combout\);

-- Location: LCCOMB_X88_Y63_N0
\int_bola|Desplaza_Bola_Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_Y[2]~0_combout\ = (\int_bola|Bola_Y\(6) & ((\int_bola|Desplaza_Bola_Y\(2)) # ((\int_bola|Bola_Y\(7) & \int_bola|Bola_Y\(8))))) # (!\int_bola|Bola_Y\(6) & (\int_bola|Desplaza_Bola_Y\(2) & ((\int_bola|Bola_Y\(7)) # 
-- (\int_bola|Bola_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(6),
	datab => \int_bola|Bola_Y\(7),
	datac => \int_bola|Bola_Y\(8),
	datad => \int_bola|Desplaza_Bola_Y\(2),
	combout => \int_bola|Desplaza_Bola_Y[2]~0_combout\);

-- Location: LCCOMB_X88_Y63_N30
\int_bola|Desplaza_Bola_Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_Y[2]~3_combout\ = (\int_bola|Bola_Y\(9)) # ((\int_bola|Desplaza_Bola_Y[2]~2_combout\ & ((\int_bola|Desplaza_Bola_Y\(2)) # (\int_bola|Desplaza_Bola_Y[2]~0_combout\))) # (!\int_bola|Desplaza_Bola_Y[2]~2_combout\ & 
-- (\int_bola|Desplaza_Bola_Y\(2) & \int_bola|Desplaza_Bola_Y[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(9),
	datab => \int_bola|Desplaza_Bola_Y[2]~2_combout\,
	datac => \int_bola|Desplaza_Bola_Y\(2),
	datad => \int_bola|Desplaza_Bola_Y[2]~0_combout\,
	combout => \int_bola|Desplaza_Bola_Y[2]~3_combout\);

-- Location: FF_X88_Y63_N31
\int_bola|Desplaza_Bola_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Desplaza_Bola_Y[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Desplaza_Bola_Y\(2));

-- Location: LCCOMB_X87_Y64_N30
\int_bola|Bola_Y[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_Y[9]~24_combout\ = \int_bola|Desplaza_Bola_Y\(2) $ (\int_bola|Bola_Y\(9) $ (!\int_bola|Bola_Y[8]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_Y\(2),
	datab => \int_bola|Bola_Y\(9),
	cin => \int_bola|Bola_Y[8]~23\,
	combout => \int_bola|Bola_Y[9]~24_combout\);

-- Location: FF_X87_Y64_N31
\int_bola|Bola_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_Y[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_Y\(9));

-- Location: LCCOMB_X88_Y65_N0
\int_bola|LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~1_cout\ = CARRY((\int_bola|Bola_X\(1) & !\int_bola|Pala_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(1),
	datab => \int_bola|Pala_Y\(1),
	datad => VCC,
	cout => \int_bola|LessThan22~1_cout\);

-- Location: LCCOMB_X88_Y65_N2
\int_bola|LessThan22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~3_cout\ = CARRY((\int_bola|Bola_Y\(2) & (\int_bola|Pala_Y\(2) & !\int_bola|LessThan22~1_cout\)) # (!\int_bola|Bola_Y\(2) & ((\int_bola|Pala_Y\(2)) # (!\int_bola|LessThan22~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(2),
	datab => \int_bola|Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|LessThan22~1_cout\,
	cout => \int_bola|LessThan22~3_cout\);

-- Location: LCCOMB_X88_Y65_N4
\int_bola|LessThan22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~5_cout\ = CARRY((\int_bola|Pala_Y\(3) & ((\int_bola|Bola_Y\(3)) # (!\int_bola|LessThan22~3_cout\))) # (!\int_bola|Pala_Y\(3) & (\int_bola|Bola_Y\(3) & !\int_bola|LessThan22~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(3),
	datab => \int_bola|Bola_Y\(3),
	datad => VCC,
	cin => \int_bola|LessThan22~3_cout\,
	cout => \int_bola|LessThan22~5_cout\);

-- Location: LCCOMB_X88_Y65_N6
\int_bola|LessThan22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~7_cout\ = CARRY((\int_bola|Bola_Y\(4) & (\int_bola|Add10~0_combout\ & !\int_bola|LessThan22~5_cout\)) # (!\int_bola|Bola_Y\(4) & ((\int_bola|Add10~0_combout\) # (!\int_bola|LessThan22~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(4),
	datab => \int_bola|Add10~0_combout\,
	datad => VCC,
	cin => \int_bola|LessThan22~5_cout\,
	cout => \int_bola|LessThan22~7_cout\);

-- Location: LCCOMB_X88_Y65_N8
\int_bola|LessThan22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~9_cout\ = CARRY((\int_bola|Add10~2_combout\ & (\int_bola|Bola_Y\(5) & !\int_bola|LessThan22~7_cout\)) # (!\int_bola|Add10~2_combout\ & ((\int_bola|Bola_Y\(5)) # (!\int_bola|LessThan22~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add10~2_combout\,
	datab => \int_bola|Bola_Y\(5),
	datad => VCC,
	cin => \int_bola|LessThan22~7_cout\,
	cout => \int_bola|LessThan22~9_cout\);

-- Location: LCCOMB_X88_Y65_N10
\int_bola|LessThan22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~11_cout\ = CARRY((\int_bola|Bola_Y\(6) & (\int_bola|Add10~4_combout\ & !\int_bola|LessThan22~9_cout\)) # (!\int_bola|Bola_Y\(6) & ((\int_bola|Add10~4_combout\) # (!\int_bola|LessThan22~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(6),
	datab => \int_bola|Add10~4_combout\,
	datad => VCC,
	cin => \int_bola|LessThan22~9_cout\,
	cout => \int_bola|LessThan22~11_cout\);

-- Location: LCCOMB_X88_Y65_N12
\int_bola|LessThan22~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~13_cout\ = CARRY((\int_bola|Add10~6_combout\ & (\int_bola|Bola_Y\(7) & !\int_bola|LessThan22~11_cout\)) # (!\int_bola|Add10~6_combout\ & ((\int_bola|Bola_Y\(7)) # (!\int_bola|LessThan22~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add10~6_combout\,
	datab => \int_bola|Bola_Y\(7),
	datad => VCC,
	cin => \int_bola|LessThan22~11_cout\,
	cout => \int_bola|LessThan22~13_cout\);

-- Location: LCCOMB_X88_Y65_N14
\int_bola|LessThan22~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~15_cout\ = CARRY((\int_bola|Bola_Y\(8) & (\int_bola|Add10~8_combout\ & !\int_bola|LessThan22~13_cout\)) # (!\int_bola|Bola_Y\(8) & ((\int_bola|Add10~8_combout\) # (!\int_bola|LessThan22~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(8),
	datab => \int_bola|Add10~8_combout\,
	datad => VCC,
	cin => \int_bola|LessThan22~13_cout\,
	cout => \int_bola|LessThan22~15_cout\);

-- Location: LCCOMB_X88_Y65_N16
\int_bola|LessThan22~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan22~16_combout\ = (\int_bola|Add10~10_combout\ & (!\int_bola|LessThan22~15_cout\ & \int_bola|Bola_Y\(9))) # (!\int_bola|Add10~10_combout\ & ((\int_bola|Bola_Y\(9)) # (!\int_bola|LessThan22~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add10~10_combout\,
	datad => \int_bola|Bola_Y\(9),
	cin => \int_bola|LessThan22~15_cout\,
	combout => \int_bola|LessThan22~16_combout\);

-- Location: LCCOMB_X87_Y64_N0
\int_bola|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add8~0_combout\ = \int_bola|Bola_Y\(3) $ (VCC)
-- \int_bola|Add8~1\ = CARRY(\int_bola|Bola_Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_Y\(3),
	datad => VCC,
	combout => \int_bola|Add8~0_combout\,
	cout => \int_bola|Add8~1\);

-- Location: LCCOMB_X87_Y64_N2
\int_bola|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add8~2_combout\ = (\int_bola|Bola_Y\(4) & (!\int_bola|Add8~1\)) # (!\int_bola|Bola_Y\(4) & ((\int_bola|Add8~1\) # (GND)))
-- \int_bola|Add8~3\ = CARRY((!\int_bola|Add8~1\) # (!\int_bola|Bola_Y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_Y\(4),
	datad => VCC,
	cin => \int_bola|Add8~1\,
	combout => \int_bola|Add8~2_combout\,
	cout => \int_bola|Add8~3\);

-- Location: LCCOMB_X87_Y64_N4
\int_bola|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add8~4_combout\ = (\int_bola|Bola_Y\(5) & (\int_bola|Add8~3\ $ (GND))) # (!\int_bola|Bola_Y\(5) & (!\int_bola|Add8~3\ & VCC))
-- \int_bola|Add8~5\ = CARRY((\int_bola|Bola_Y\(5) & !\int_bola|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(5),
	datad => VCC,
	cin => \int_bola|Add8~3\,
	combout => \int_bola|Add8~4_combout\,
	cout => \int_bola|Add8~5\);

-- Location: LCCOMB_X87_Y64_N6
\int_bola|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add8~6_combout\ = (\int_bola|Bola_Y\(6) & (!\int_bola|Add8~5\)) # (!\int_bola|Bola_Y\(6) & ((\int_bola|Add8~5\) # (GND)))
-- \int_bola|Add8~7\ = CARRY((!\int_bola|Add8~5\) # (!\int_bola|Bola_Y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_Y\(6),
	datad => VCC,
	cin => \int_bola|Add8~5\,
	combout => \int_bola|Add8~6_combout\,
	cout => \int_bola|Add8~7\);

-- Location: LCCOMB_X87_Y64_N8
\int_bola|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add8~8_combout\ = (\int_bola|Bola_Y\(7) & (\int_bola|Add8~7\ $ (GND))) # (!\int_bola|Bola_Y\(7) & (!\int_bola|Add8~7\ & VCC))
-- \int_bola|Add8~9\ = CARRY((\int_bola|Bola_Y\(7) & !\int_bola|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(7),
	datad => VCC,
	cin => \int_bola|Add8~7\,
	combout => \int_bola|Add8~8_combout\,
	cout => \int_bola|Add8~9\);

-- Location: LCCOMB_X88_Y64_N24
\int_bola|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add12~0_combout\ = (\int_bola|Add8~6_combout\ & ((\int_bola|Add8~4_combout\) # (\int_bola|Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add8~4_combout\,
	datac => \int_bola|Add8~6_combout\,
	datad => \int_bola|Add8~2_combout\,
	combout => \int_bola|Add12~0_combout\);

-- Location: LCCOMB_X87_Y64_N10
\int_bola|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add8~10_combout\ = (\int_bola|Bola_Y\(8) & (!\int_bola|Add8~9\)) # (!\int_bola|Bola_Y\(8) & ((\int_bola|Add8~9\) # (GND)))
-- \int_bola|Add8~11\ = CARRY((!\int_bola|Add8~9\) # (!\int_bola|Bola_Y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_Y\(8),
	datad => VCC,
	cin => \int_bola|Add8~9\,
	combout => \int_bola|Add8~10_combout\,
	cout => \int_bola|Add8~11\);

-- Location: LCCOMB_X87_Y64_N12
\int_bola|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add8~12_combout\ = \int_bola|Add8~11\ $ (!\int_bola|Bola_Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Bola_Y\(9),
	cin => \int_bola|Add8~11\,
	combout => \int_bola|Add8~12_combout\);

-- Location: LCCOMB_X88_Y64_N20
\int_bola|Add12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add12~1_combout\ = \int_bola|Add8~12_combout\ $ (((\int_bola|Add8~8_combout\ & (\int_bola|Add12~0_combout\ & \int_bola|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~8_combout\,
	datab => \int_bola|Add12~0_combout\,
	datac => \int_bola|Add8~10_combout\,
	datad => \int_bola|Add8~12_combout\,
	combout => \int_bola|Add12~1_combout\);

-- Location: LCCOMB_X88_Y64_N26
\int_bola|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add12~2_combout\ = (\int_bola|Add8~4_combout\) # (\int_bola|Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \int_bola|Add8~4_combout\,
	datad => \int_bola|Add8~2_combout\,
	combout => \int_bola|Add12~2_combout\);

-- Location: LCCOMB_X88_Y64_N0
\int_bola|Add12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add12~3_combout\ = \int_bola|Add8~10_combout\ $ (((\int_bola|Add8~6_combout\ & (\int_bola|Add12~2_combout\ & \int_bola|Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~10_combout\,
	datab => \int_bola|Add8~6_combout\,
	datac => \int_bola|Add12~2_combout\,
	datad => \int_bola|Add8~8_combout\,
	combout => \int_bola|Add12~3_combout\);

-- Location: LCCOMB_X88_Y64_N22
\int_bola|Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add12~4_combout\ = \int_bola|Add8~8_combout\ $ (((\int_bola|Add8~6_combout\ & ((\int_bola|Add8~2_combout\) # (\int_bola|Add8~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~2_combout\,
	datab => \int_bola|Add8~4_combout\,
	datac => \int_bola|Add8~6_combout\,
	datad => \int_bola|Add8~8_combout\,
	combout => \int_bola|Add12~4_combout\);

-- Location: LCCOMB_X88_Y64_N28
\int_bola|Add12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add12~5_combout\ = \int_bola|Add8~6_combout\ $ (((\int_bola|Add8~4_combout\) # (\int_bola|Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add8~4_combout\,
	datac => \int_bola|Add8~6_combout\,
	datad => \int_bola|Add8~2_combout\,
	combout => \int_bola|Add12~5_combout\);

-- Location: LCCOMB_X88_Y64_N30
\int_bola|Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add12~6_combout\ = \int_bola|Add8~4_combout\ $ (\int_bola|Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \int_bola|Add8~4_combout\,
	datad => \int_bola|Add8~2_combout\,
	combout => \int_bola|Add12~6_combout\);

-- Location: LCCOMB_X89_Y64_N8
\int_bola|LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~1_cout\ = CARRY((\int_bola|Pala_Y\(1) & !\int_bola|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(1),
	datab => \int_bola|Bola_X\(1),
	datad => VCC,
	cout => \int_bola|LessThan21~1_cout\);

-- Location: LCCOMB_X89_Y64_N10
\int_bola|LessThan21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~3_cout\ = CARRY((\int_bola|Pala_Y\(2) & (\int_bola|Bola_Y\(2) & !\int_bola|LessThan21~1_cout\)) # (!\int_bola|Pala_Y\(2) & ((\int_bola|Bola_Y\(2)) # (!\int_bola|LessThan21~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(2),
	datab => \int_bola|Bola_Y\(2),
	datad => VCC,
	cin => \int_bola|LessThan21~1_cout\,
	cout => \int_bola|LessThan21~3_cout\);

-- Location: LCCOMB_X89_Y64_N12
\int_bola|LessThan21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~5_cout\ = CARRY((\int_bola|Pala_Y\(3) & ((!\int_bola|LessThan21~3_cout\) # (!\int_bola|Add8~0_combout\))) # (!\int_bola|Pala_Y\(3) & (!\int_bola|Add8~0_combout\ & !\int_bola|LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(3),
	datab => \int_bola|Add8~0_combout\,
	datad => VCC,
	cin => \int_bola|LessThan21~3_cout\,
	cout => \int_bola|LessThan21~5_cout\);

-- Location: LCCOMB_X89_Y64_N14
\int_bola|LessThan21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~7_cout\ = CARRY((\int_bola|Pala_Y\(4) & ((!\int_bola|LessThan21~5_cout\) # (!\int_bola|Add8~2_combout\))) # (!\int_bola|Pala_Y\(4) & (!\int_bola|Add8~2_combout\ & !\int_bola|LessThan21~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(4),
	datab => \int_bola|Add8~2_combout\,
	datad => VCC,
	cin => \int_bola|LessThan21~5_cout\,
	cout => \int_bola|LessThan21~7_cout\);

-- Location: LCCOMB_X89_Y64_N16
\int_bola|LessThan21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~9_cout\ = CARRY((\int_bola|Pala_Y\(5) & (\int_bola|Add12~6_combout\ & !\int_bola|LessThan21~7_cout\)) # (!\int_bola|Pala_Y\(5) & ((\int_bola|Add12~6_combout\) # (!\int_bola|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(5),
	datab => \int_bola|Add12~6_combout\,
	datad => VCC,
	cin => \int_bola|LessThan21~7_cout\,
	cout => \int_bola|LessThan21~9_cout\);

-- Location: LCCOMB_X89_Y64_N18
\int_bola|LessThan21~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~11_cout\ = CARRY((\int_bola|Pala_Y\(6) & ((\int_bola|Add12~5_combout\) # (!\int_bola|LessThan21~9_cout\))) # (!\int_bola|Pala_Y\(6) & (\int_bola|Add12~5_combout\ & !\int_bola|LessThan21~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(6),
	datab => \int_bola|Add12~5_combout\,
	datad => VCC,
	cin => \int_bola|LessThan21~9_cout\,
	cout => \int_bola|LessThan21~11_cout\);

-- Location: LCCOMB_X89_Y64_N20
\int_bola|LessThan21~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~13_cout\ = CARRY((\int_bola|Pala_Y\(7) & (!\int_bola|Add12~4_combout\ & !\int_bola|LessThan21~11_cout\)) # (!\int_bola|Pala_Y\(7) & ((!\int_bola|LessThan21~11_cout\) # (!\int_bola|Add12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(7),
	datab => \int_bola|Add12~4_combout\,
	datad => VCC,
	cin => \int_bola|LessThan21~11_cout\,
	cout => \int_bola|LessThan21~13_cout\);

-- Location: LCCOMB_X89_Y64_N22
\int_bola|LessThan21~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~15_cout\ = CARRY((\int_bola|Add12~3_combout\ & ((!\int_bola|LessThan21~13_cout\) # (!\int_bola|Pala_Y\(8)))) # (!\int_bola|Add12~3_combout\ & (!\int_bola|Pala_Y\(8) & !\int_bola|LessThan21~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add12~3_combout\,
	datab => \int_bola|Pala_Y\(8),
	datad => VCC,
	cin => \int_bola|LessThan21~13_cout\,
	cout => \int_bola|LessThan21~15_cout\);

-- Location: LCCOMB_X89_Y64_N24
\int_bola|LessThan21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan21~16_combout\ = (\int_bola|Pala_Y\(9) & ((!\int_bola|Add12~1_combout\) # (!\int_bola|LessThan21~15_cout\))) # (!\int_bola|Pala_Y\(9) & (!\int_bola|LessThan21~15_cout\ & !\int_bola|Add12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y\(9),
	datad => \int_bola|Add12~1_combout\,
	cin => \int_bola|LessThan21~15_cout\,
	combout => \int_bola|LessThan21~16_combout\);

-- Location: LCCOMB_X89_Y65_N2
\int_bola|Desplaza_Bola_X[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~6_combout\ = (\int_bola|Desplaza_Bola_X[2]~2_combout\ & ((\int_bola|Desplaza_Bola_X[2]~5_combout\) # ((\int_bola|LessThan22~16_combout\) # (\int_bola|LessThan21~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_X[2]~2_combout\,
	datab => \int_bola|Desplaza_Bola_X[2]~5_combout\,
	datac => \int_bola|LessThan22~16_combout\,
	datad => \int_bola|LessThan21~16_combout\,
	combout => \int_bola|Desplaza_Bola_X[2]~6_combout\);

-- Location: LCCOMB_X86_Y65_N6
\int_bola|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add6~0_combout\ = \int_bola|Bola_X\(3) $ (VCC)
-- \int_bola|Add6~1\ = CARRY(\int_bola|Bola_X\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(3),
	datad => VCC,
	combout => \int_bola|Add6~0_combout\,
	cout => \int_bola|Add6~1\);

-- Location: LCCOMB_X86_Y65_N8
\int_bola|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add6~2_combout\ = (\int_bola|Bola_X\(4) & (!\int_bola|Add6~1\)) # (!\int_bola|Bola_X\(4) & ((\int_bola|Add6~1\) # (GND)))
-- \int_bola|Add6~3\ = CARRY((!\int_bola|Add6~1\) # (!\int_bola|Bola_X\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(4),
	datad => VCC,
	cin => \int_bola|Add6~1\,
	combout => \int_bola|Add6~2_combout\,
	cout => \int_bola|Add6~3\);

-- Location: LCCOMB_X86_Y65_N10
\int_bola|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add6~4_combout\ = (\int_bola|Bola_X\(5) & (\int_bola|Add6~3\ $ (GND))) # (!\int_bola|Bola_X\(5) & (!\int_bola|Add6~3\ & VCC))
-- \int_bola|Add6~5\ = CARRY((\int_bola|Bola_X\(5) & !\int_bola|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(5),
	datad => VCC,
	cin => \int_bola|Add6~3\,
	combout => \int_bola|Add6~4_combout\,
	cout => \int_bola|Add6~5\);

-- Location: LCCOMB_X86_Y65_N12
\int_bola|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add6~6_combout\ = (\int_bola|Bola_X\(6) & (!\int_bola|Add6~5\)) # (!\int_bola|Bola_X\(6) & ((\int_bola|Add6~5\) # (GND)))
-- \int_bola|Add6~7\ = CARRY((!\int_bola|Add6~5\) # (!\int_bola|Bola_X\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(6),
	datad => VCC,
	cin => \int_bola|Add6~5\,
	combout => \int_bola|Add6~6_combout\,
	cout => \int_bola|Add6~7\);

-- Location: LCCOMB_X86_Y65_N14
\int_bola|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add6~8_combout\ = (\int_bola|Bola_X\(7) & (\int_bola|Add6~7\ $ (GND))) # (!\int_bola|Bola_X\(7) & (!\int_bola|Add6~7\ & VCC))
-- \int_bola|Add6~9\ = CARRY((\int_bola|Bola_X\(7) & !\int_bola|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(7),
	datad => VCC,
	cin => \int_bola|Add6~7\,
	combout => \int_bola|Add6~8_combout\,
	cout => \int_bola|Add6~9\);

-- Location: LCCOMB_X86_Y65_N16
\int_bola|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add6~10_combout\ = (\int_bola|Bola_X\(8) & (!\int_bola|Add6~9\)) # (!\int_bola|Bola_X\(8) & ((\int_bola|Add6~9\) # (GND)))
-- \int_bola|Add6~11\ = CARRY((!\int_bola|Add6~9\) # (!\int_bola|Bola_X\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Bola_X\(8),
	datad => VCC,
	cin => \int_bola|Add6~9\,
	combout => \int_bola|Add6~10_combout\,
	cout => \int_bola|Add6~11\);

-- Location: LCCOMB_X86_Y65_N20
\int_bola|Add11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add11~1_cout\ = CARRY((\int_bola|Add6~0_combout\ & \int_bola|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add6~0_combout\,
	datab => \int_bola|Add6~2_combout\,
	datad => VCC,
	cout => \int_bola|Add11~1_cout\);

-- Location: LCCOMB_X86_Y65_N22
\int_bola|Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add11~2_combout\ = (\int_bola|Add6~4_combout\ & (!\int_bola|Add11~1_cout\)) # (!\int_bola|Add6~4_combout\ & ((\int_bola|Add11~1_cout\) # (GND)))
-- \int_bola|Add11~3\ = CARRY((!\int_bola|Add11~1_cout\) # (!\int_bola|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add6~4_combout\,
	datad => VCC,
	cin => \int_bola|Add11~1_cout\,
	combout => \int_bola|Add11~2_combout\,
	cout => \int_bola|Add11~3\);

-- Location: LCCOMB_X86_Y65_N24
\int_bola|Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add11~4_combout\ = (\int_bola|Add6~6_combout\ & (\int_bola|Add11~3\ $ (GND))) # (!\int_bola|Add6~6_combout\ & (!\int_bola|Add11~3\ & VCC))
-- \int_bola|Add11~5\ = CARRY((\int_bola|Add6~6_combout\ & !\int_bola|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add6~6_combout\,
	datad => VCC,
	cin => \int_bola|Add11~3\,
	combout => \int_bola|Add11~4_combout\,
	cout => \int_bola|Add11~5\);

-- Location: LCCOMB_X86_Y65_N26
\int_bola|Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add11~6_combout\ = (\int_bola|Add6~8_combout\ & (!\int_bola|Add11~5\)) # (!\int_bola|Add6~8_combout\ & ((\int_bola|Add11~5\) # (GND)))
-- \int_bola|Add11~7\ = CARRY((!\int_bola|Add11~5\) # (!\int_bola|Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add6~8_combout\,
	datad => VCC,
	cin => \int_bola|Add11~5\,
	combout => \int_bola|Add11~6_combout\,
	cout => \int_bola|Add11~7\);

-- Location: LCCOMB_X86_Y65_N28
\int_bola|Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add11~8_combout\ = (\int_bola|Add6~10_combout\ & (\int_bola|Add11~7\ $ (GND))) # (!\int_bola|Add6~10_combout\ & (!\int_bola|Add11~7\ & VCC))
-- \int_bola|Add11~9\ = CARRY((\int_bola|Add6~10_combout\ & !\int_bola|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add6~10_combout\,
	datad => VCC,
	cin => \int_bola|Add11~7\,
	combout => \int_bola|Add11~8_combout\,
	cout => \int_bola|Add11~9\);

-- Location: LCCOMB_X86_Y65_N18
\int_bola|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add6~12_combout\ = \int_bola|Bola_X\(9) $ (!\int_bola|Add6~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(9),
	cin => \int_bola|Add6~11\,
	combout => \int_bola|Add6~12_combout\);

-- Location: LCCOMB_X86_Y65_N30
\int_bola|Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add11~10_combout\ = \int_bola|Add11~9\ $ (\int_bola|Add6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add6~12_combout\,
	cin => \int_bola|Add11~9\,
	combout => \int_bola|Add11~10_combout\);

-- Location: LCCOMB_X86_Y65_N4
\int_bola|Desplaza_Bola_X[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[1]~9_combout\ = (!\int_bola|Add11~6_combout\ & (((\int_bola|Bola_X\(4)) # (!\int_bola|Add11~4_combout\)) # (!\int_bola|Add11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add11~2_combout\,
	datab => \int_bola|Bola_X\(4),
	datac => \int_bola|Add11~6_combout\,
	datad => \int_bola|Add11~4_combout\,
	combout => \int_bola|Desplaza_Bola_X[1]~9_combout\);

-- Location: LCCOMB_X91_Y64_N2
\int_bola|Mover_Pala_D~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala_D~2_combout\ = (!\int_bola|Pala_Y_D\(7) & (((!\int_bola|Pala_Y_D\(5) & !\int_bola|Pala_Y_D\(4))) # (!\int_bola|Pala_Y_D\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(6),
	datab => \int_bola|Pala_Y_D\(5),
	datac => \int_bola|Pala_Y_D\(7),
	datad => \int_bola|Pala_Y_D\(4),
	combout => \int_bola|Mover_Pala_D~2_combout\);

-- Location: IOIBUF_X115_Y42_N15
\DOWN_D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOWN_D,
	o => \DOWN_D~input_o\);

-- Location: LCCOMB_X91_Y64_N4
\int_bola|Mover_Pala_D~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala_D~3_combout\ = (\int_bola|Pala_Y_D\(9)) # (\DOWN_D~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y_D\(9),
	datad => \DOWN_D~input_o\,
	combout => \int_bola|Mover_Pala_D~3_combout\);

-- Location: LCCOMB_X91_Y64_N6
\int_bola|Desplaza_Pala_Y_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Pala_Y_D~0_combout\ = (\int_bola|Mover_Pala_D~1_combout\) # ((!\int_bola|Mover_Pala_D~3_combout\ & ((!\int_bola|Mover_Pala_D~2_combout\) # (!\int_bola|Pala_Y_D\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(8),
	datab => \int_bola|Mover_Pala_D~1_combout\,
	datac => \int_bola|Mover_Pala_D~2_combout\,
	datad => \int_bola|Mover_Pala_D~3_combout\,
	combout => \int_bola|Desplaza_Pala_Y_D~0_combout\);

-- Location: FF_X91_Y64_N7
\int_bola|Desplaza_Pala_Y_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Desplaza_Pala_Y_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Desplaza_Pala_Y_D\(1));

-- Location: LCCOMB_X91_Y64_N12
\int_bola|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~0_combout\ = (\int_bola|Desplaza_Pala_Y_D\(1) & (\int_bola|Pala_Y_D\(1) $ (VCC))) # (!\int_bola|Desplaza_Pala_Y_D\(1) & (\int_bola|Pala_Y_D\(1) & VCC))
-- \int_bola|Add3~1\ = CARRY((\int_bola|Desplaza_Pala_Y_D\(1) & \int_bola|Pala_Y_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Pala_Y_D\(1),
	datab => \int_bola|Pala_Y_D\(1),
	datad => VCC,
	combout => \int_bola|Add3~0_combout\,
	cout => \int_bola|Add3~1\);

-- Location: FF_X90_Y64_N19
\int_bola|Pala_Y_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Add3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(1));

-- Location: LCCOMB_X91_Y64_N14
\int_bola|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~2_combout\ = (\int_bola|Pala_Y_D\(2) & ((\int_bola|Desplaza_Pala_Y_D\(2) & (\int_bola|Add3~1\ & VCC)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & (!\int_bola|Add3~1\)))) # (!\int_bola|Pala_Y_D\(2) & ((\int_bola|Desplaza_Pala_Y_D\(2) & 
-- (!\int_bola|Add3~1\)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & ((\int_bola|Add3~1\) # (GND)))))
-- \int_bola|Add3~3\ = CARRY((\int_bola|Pala_Y_D\(2) & (!\int_bola|Desplaza_Pala_Y_D\(2) & !\int_bola|Add3~1\)) # (!\int_bola|Pala_Y_D\(2) & ((!\int_bola|Add3~1\) # (!\int_bola|Desplaza_Pala_Y_D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(2),
	datab => \int_bola|Desplaza_Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|Add3~1\,
	combout => \int_bola|Add3~2_combout\,
	cout => \int_bola|Add3~3\);

-- Location: FF_X91_Y64_N15
\int_bola|Pala_Y_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(2));

-- Location: LCCOMB_X91_Y64_N16
\int_bola|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~4_combout\ = ((\int_bola|Pala_Y_D\(3) $ (\int_bola|Desplaza_Pala_Y_D\(2) $ (!\int_bola|Add3~3\)))) # (GND)
-- \int_bola|Add3~5\ = CARRY((\int_bola|Pala_Y_D\(3) & ((\int_bola|Desplaza_Pala_Y_D\(2)) # (!\int_bola|Add3~3\))) # (!\int_bola|Pala_Y_D\(3) & (\int_bola|Desplaza_Pala_Y_D\(2) & !\int_bola|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(3),
	datab => \int_bola|Desplaza_Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|Add3~3\,
	combout => \int_bola|Add3~4_combout\,
	cout => \int_bola|Add3~5\);

-- Location: FF_X91_Y64_N17
\int_bola|Pala_Y_D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(3));

-- Location: LCCOMB_X91_Y64_N18
\int_bola|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~6_combout\ = (\int_bola|Pala_Y_D\(4) & ((\int_bola|Desplaza_Pala_Y_D\(2) & (!\int_bola|Add3~5\)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & ((\int_bola|Add3~5\) # (GND))))) # (!\int_bola|Pala_Y_D\(4) & ((\int_bola|Desplaza_Pala_Y_D\(2) & 
-- (\int_bola|Add3~5\ & VCC)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & (!\int_bola|Add3~5\))))
-- \int_bola|Add3~7\ = CARRY((\int_bola|Pala_Y_D\(4) & ((!\int_bola|Add3~5\) # (!\int_bola|Desplaza_Pala_Y_D\(2)))) # (!\int_bola|Pala_Y_D\(4) & (!\int_bola|Desplaza_Pala_Y_D\(2) & !\int_bola|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(4),
	datab => \int_bola|Desplaza_Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|Add3~5\,
	combout => \int_bola|Add3~6_combout\,
	cout => \int_bola|Add3~7\);

-- Location: LCCOMB_X91_Y64_N30
\int_bola|Pala_Y_D[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y_D[4]~3_combout\ = !\int_bola|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add3~6_combout\,
	combout => \int_bola|Pala_Y_D[4]~3_combout\);

-- Location: FF_X90_Y64_N7
\int_bola|Pala_Y_D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Pala_Y_D[4]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(4));

-- Location: LCCOMB_X91_Y64_N20
\int_bola|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~8_combout\ = ((\int_bola|Pala_Y_D\(5) $ (\int_bola|Desplaza_Pala_Y_D\(2) $ (\int_bola|Add3~7\)))) # (GND)
-- \int_bola|Add3~9\ = CARRY((\int_bola|Pala_Y_D\(5) & (\int_bola|Desplaza_Pala_Y_D\(2) & !\int_bola|Add3~7\)) # (!\int_bola|Pala_Y_D\(5) & ((\int_bola|Desplaza_Pala_Y_D\(2)) # (!\int_bola|Add3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(5),
	datab => \int_bola|Desplaza_Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|Add3~7\,
	combout => \int_bola|Add3~8_combout\,
	cout => \int_bola|Add3~9\);

-- Location: LCCOMB_X91_Y64_N10
\int_bola|Pala_Y_D[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y_D[5]~2_combout\ = !\int_bola|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add3~8_combout\,
	combout => \int_bola|Pala_Y_D[5]~2_combout\);

-- Location: FF_X90_Y64_N21
\int_bola|Pala_Y_D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Pala_Y_D[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(5));

-- Location: LCCOMB_X91_Y64_N22
\int_bola|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~10_combout\ = (\int_bola|Pala_Y_D\(6) & ((\int_bola|Desplaza_Pala_Y_D\(2) & (!\int_bola|Add3~9\)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & ((\int_bola|Add3~9\) # (GND))))) # (!\int_bola|Pala_Y_D\(6) & ((\int_bola|Desplaza_Pala_Y_D\(2) & 
-- (\int_bola|Add3~9\ & VCC)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & (!\int_bola|Add3~9\))))
-- \int_bola|Add3~11\ = CARRY((\int_bola|Pala_Y_D\(6) & ((!\int_bola|Add3~9\) # (!\int_bola|Desplaza_Pala_Y_D\(2)))) # (!\int_bola|Pala_Y_D\(6) & (!\int_bola|Desplaza_Pala_Y_D\(2) & !\int_bola|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(6),
	datab => \int_bola|Desplaza_Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|Add3~9\,
	combout => \int_bola|Add3~10_combout\,
	cout => \int_bola|Add3~11\);

-- Location: LCCOMB_X90_Y64_N0
\int_bola|Pala_Y_D[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y_D[6]~1_combout\ = !\int_bola|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add3~10_combout\,
	combout => \int_bola|Pala_Y_D[6]~1_combout\);

-- Location: FF_X90_Y64_N1
\int_bola|Pala_Y_D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Pala_Y_D[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(6));

-- Location: LCCOMB_X91_Y64_N24
\int_bola|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~12_combout\ = ((\int_bola|Pala_Y_D\(7) $ (\int_bola|Desplaza_Pala_Y_D\(2) $ (\int_bola|Add3~11\)))) # (GND)
-- \int_bola|Add3~13\ = CARRY((\int_bola|Pala_Y_D\(7) & (\int_bola|Desplaza_Pala_Y_D\(2) & !\int_bola|Add3~11\)) # (!\int_bola|Pala_Y_D\(7) & ((\int_bola|Desplaza_Pala_Y_D\(2)) # (!\int_bola|Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(7),
	datab => \int_bola|Desplaza_Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|Add3~11\,
	combout => \int_bola|Add3~12_combout\,
	cout => \int_bola|Add3~13\);

-- Location: LCCOMB_X89_Y64_N0
\int_bola|Pala_Y_D[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Pala_Y_D[7]~0_combout\ = !\int_bola|Add3~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \int_bola|Add3~12_combout\,
	combout => \int_bola|Pala_Y_D[7]~0_combout\);

-- Location: FF_X90_Y64_N13
\int_bola|Pala_Y_D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \int_bola|Pala_Y_D[7]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(7));

-- Location: LCCOMB_X91_Y64_N26
\int_bola|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~14_combout\ = (\int_bola|Pala_Y_D\(8) & ((\int_bola|Desplaza_Pala_Y_D\(2) & (\int_bola|Add3~13\ & VCC)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & (!\int_bola|Add3~13\)))) # (!\int_bola|Pala_Y_D\(8) & ((\int_bola|Desplaza_Pala_Y_D\(2) & 
-- (!\int_bola|Add3~13\)) # (!\int_bola|Desplaza_Pala_Y_D\(2) & ((\int_bola|Add3~13\) # (GND)))))
-- \int_bola|Add3~15\ = CARRY((\int_bola|Pala_Y_D\(8) & (!\int_bola|Desplaza_Pala_Y_D\(2) & !\int_bola|Add3~13\)) # (!\int_bola|Pala_Y_D\(8) & ((!\int_bola|Add3~13\) # (!\int_bola|Desplaza_Pala_Y_D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(8),
	datab => \int_bola|Desplaza_Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|Add3~13\,
	combout => \int_bola|Add3~14_combout\,
	cout => \int_bola|Add3~15\);

-- Location: FF_X91_Y64_N27
\int_bola|Pala_Y_D[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(8));

-- Location: LCCOMB_X91_Y64_N8
\int_bola|Mover_Pala_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala_D~0_combout\ = (\int_bola|Pala_Y_D\(6) & (\int_bola|Pala_Y_D\(7) & ((\int_bola|Pala_Y_D\(5)) # (\int_bola|Pala_Y_D\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(6),
	datab => \int_bola|Pala_Y_D\(5),
	datac => \int_bola|Pala_Y_D\(7),
	datad => \int_bola|Pala_Y_D\(4),
	combout => \int_bola|Mover_Pala_D~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\UP_D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP_D,
	o => \UP_D~input_o\);

-- Location: LCCOMB_X91_Y64_N0
\int_bola|Mover_Pala_D~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Mover_Pala_D~1_combout\ = (!\UP_D~input_o\ & ((\int_bola|Pala_Y_D\(8)) # ((\int_bola|Pala_Y_D\(9)) # (!\int_bola|Mover_Pala_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(8),
	datab => \int_bola|Mover_Pala_D~0_combout\,
	datac => \UP_D~input_o\,
	datad => \int_bola|Pala_Y_D\(9),
	combout => \int_bola|Mover_Pala_D~1_combout\);

-- Location: FF_X91_Y64_N1
\int_bola|Desplaza_Pala_Y_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Mover_Pala_D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Desplaza_Pala_Y_D\(2));

-- Location: LCCOMB_X91_Y64_N28
\int_bola|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add3~16_combout\ = \int_bola|Pala_Y_D\(9) $ (\int_bola|Add3~15\ $ (!\int_bola|Desplaza_Pala_Y_D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y_D\(9),
	datad => \int_bola|Desplaza_Pala_Y_D\(2),
	cin => \int_bola|Add3~15\,
	combout => \int_bola|Add3~16_combout\);

-- Location: FF_X91_Y64_N29
\int_bola|Pala_Y_D[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Add3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Pala_Y_D\(9));

-- Location: LCCOMB_X88_Y64_N2
\int_bola|LessThan24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~1_cout\ = CARRY((\int_bola|Pala_Y_D\(1) & !\int_bola|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(1),
	datab => \int_bola|Bola_X\(1),
	datad => VCC,
	cout => \int_bola|LessThan24~1_cout\);

-- Location: LCCOMB_X88_Y64_N4
\int_bola|LessThan24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~3_cout\ = CARRY((\int_bola|Bola_Y\(2) & ((!\int_bola|LessThan24~1_cout\) # (!\int_bola|Pala_Y_D\(2)))) # (!\int_bola|Bola_Y\(2) & (!\int_bola|Pala_Y_D\(2) & !\int_bola|LessThan24~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(2),
	datab => \int_bola|Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|LessThan24~1_cout\,
	cout => \int_bola|LessThan24~3_cout\);

-- Location: LCCOMB_X88_Y64_N6
\int_bola|LessThan24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~5_cout\ = CARRY((\int_bola|Add8~0_combout\ & (\int_bola|Pala_Y_D\(3) & !\int_bola|LessThan24~3_cout\)) # (!\int_bola|Add8~0_combout\ & ((\int_bola|Pala_Y_D\(3)) # (!\int_bola|LessThan24~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~0_combout\,
	datab => \int_bola|Pala_Y_D\(3),
	datad => VCC,
	cin => \int_bola|LessThan24~3_cout\,
	cout => \int_bola|LessThan24~5_cout\);

-- Location: LCCOMB_X88_Y64_N8
\int_bola|LessThan24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~7_cout\ = CARRY((\int_bola|Add8~2_combout\ & (\int_bola|Pala_Y_D\(4) & !\int_bola|LessThan24~5_cout\)) # (!\int_bola|Add8~2_combout\ & ((\int_bola|Pala_Y_D\(4)) # (!\int_bola|LessThan24~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~2_combout\,
	datab => \int_bola|Pala_Y_D\(4),
	datad => VCC,
	cin => \int_bola|LessThan24~5_cout\,
	cout => \int_bola|LessThan24~7_cout\);

-- Location: LCCOMB_X88_Y64_N10
\int_bola|LessThan24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~9_cout\ = CARRY((\int_bola|Add12~6_combout\ & ((!\int_bola|LessThan24~7_cout\) # (!\int_bola|Pala_Y_D\(5)))) # (!\int_bola|Add12~6_combout\ & (!\int_bola|Pala_Y_D\(5) & !\int_bola|LessThan24~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add12~6_combout\,
	datab => \int_bola|Pala_Y_D\(5),
	datad => VCC,
	cin => \int_bola|LessThan24~7_cout\,
	cout => \int_bola|LessThan24~9_cout\);

-- Location: LCCOMB_X88_Y64_N12
\int_bola|LessThan24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~11_cout\ = CARRY((\int_bola|Pala_Y_D\(6) & ((\int_bola|Add12~5_combout\) # (!\int_bola|LessThan24~9_cout\))) # (!\int_bola|Pala_Y_D\(6) & (\int_bola|Add12~5_combout\ & !\int_bola|LessThan24~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(6),
	datab => \int_bola|Add12~5_combout\,
	datad => VCC,
	cin => \int_bola|LessThan24~9_cout\,
	cout => \int_bola|LessThan24~11_cout\);

-- Location: LCCOMB_X88_Y64_N14
\int_bola|LessThan24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~13_cout\ = CARRY((\int_bola|Add12~4_combout\ & (!\int_bola|Pala_Y_D\(7) & !\int_bola|LessThan24~11_cout\)) # (!\int_bola|Add12~4_combout\ & ((!\int_bola|LessThan24~11_cout\) # (!\int_bola|Pala_Y_D\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add12~4_combout\,
	datab => \int_bola|Pala_Y_D\(7),
	datad => VCC,
	cin => \int_bola|LessThan24~11_cout\,
	cout => \int_bola|LessThan24~13_cout\);

-- Location: LCCOMB_X88_Y64_N16
\int_bola|LessThan24~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~15_cout\ = CARRY((\int_bola|Pala_Y_D\(8) & (\int_bola|Add12~3_combout\ & !\int_bola|LessThan24~13_cout\)) # (!\int_bola|Pala_Y_D\(8) & ((\int_bola|Add12~3_combout\) # (!\int_bola|LessThan24~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(8),
	datab => \int_bola|Add12~3_combout\,
	datad => VCC,
	cin => \int_bola|LessThan24~13_cout\,
	cout => \int_bola|LessThan24~15_cout\);

-- Location: LCCOMB_X88_Y64_N18
\int_bola|LessThan24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan24~16_combout\ = (\int_bola|Pala_Y_D\(9) & ((!\int_bola|Add12~1_combout\) # (!\int_bola|LessThan24~15_cout\))) # (!\int_bola|Pala_Y_D\(9) & (!\int_bola|LessThan24~15_cout\ & !\int_bola|Add12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(9),
	datad => \int_bola|Add12~1_combout\,
	cin => \int_bola|LessThan24~15_cout\,
	combout => \int_bola|LessThan24~16_combout\);

-- Location: LCCOMB_X89_Y65_N4
\int_bola|Desplaza_Bola_X[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[1]~10_combout\ = ((\int_bola|LessThan24~16_combout\) # ((!\int_bola|Add11~8_combout\ & \int_bola|Desplaza_Bola_X[1]~9_combout\))) # (!\int_bola|Add11~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add11~8_combout\,
	datab => \int_bola|Add11~10_combout\,
	datac => \int_bola|Desplaza_Bola_X[1]~9_combout\,
	datad => \int_bola|LessThan24~16_combout\,
	combout => \int_bola|Desplaza_Bola_X[1]~10_combout\);

-- Location: LCCOMB_X89_Y65_N14
\int_bola|Desplaza_Bola_X[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[1]~11_combout\ = (\int_bola|Mover_Bola~1_combout\) # ((\int_bola|Mover_Bola~0_combout\) # ((\int_bola|Mover_Bola~2_combout\) # (\int_bola|LessThan21~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Mover_Bola~1_combout\,
	datab => \int_bola|Mover_Bola~0_combout\,
	datac => \int_bola|Mover_Bola~2_combout\,
	datad => \int_bola|LessThan21~16_combout\,
	combout => \int_bola|Desplaza_Bola_X[1]~11_combout\);

-- Location: LCCOMB_X90_Y64_N2
\int_bola|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add2~0_combout\ = \int_bola|Pala_Y_D\(4) $ (GND)
-- \int_bola|Add2~1\ = CARRY(!\int_bola|Pala_Y_D\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(4),
	datad => VCC,
	combout => \int_bola|Add2~0_combout\,
	cout => \int_bola|Add2~1\);

-- Location: LCCOMB_X90_Y64_N4
\int_bola|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add2~2_combout\ = (\int_bola|Pala_Y_D\(5) & (!\int_bola|Add2~1\)) # (!\int_bola|Pala_Y_D\(5) & (\int_bola|Add2~1\ & VCC))
-- \int_bola|Add2~3\ = CARRY((\int_bola|Pala_Y_D\(5) & !\int_bola|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y_D\(5),
	datad => VCC,
	cin => \int_bola|Add2~1\,
	combout => \int_bola|Add2~2_combout\,
	cout => \int_bola|Add2~3\);

-- Location: LCCOMB_X90_Y64_N6
\int_bola|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add2~4_combout\ = (\int_bola|Pala_Y_D\(6) & (!\int_bola|Add2~3\ & VCC)) # (!\int_bola|Pala_Y_D\(6) & (\int_bola|Add2~3\ $ (GND)))
-- \int_bola|Add2~5\ = CARRY((!\int_bola|Pala_Y_D\(6) & !\int_bola|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y_D\(6),
	datad => VCC,
	cin => \int_bola|Add2~3\,
	combout => \int_bola|Add2~4_combout\,
	cout => \int_bola|Add2~5\);

-- Location: LCCOMB_X90_Y64_N8
\int_bola|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add2~6_combout\ = (\int_bola|Pala_Y_D\(7) & ((\int_bola|Add2~5\) # (GND))) # (!\int_bola|Pala_Y_D\(7) & (!\int_bola|Add2~5\))
-- \int_bola|Add2~7\ = CARRY((\int_bola|Pala_Y_D\(7)) # (!\int_bola|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(7),
	datad => VCC,
	cin => \int_bola|Add2~5\,
	combout => \int_bola|Add2~6_combout\,
	cout => \int_bola|Add2~7\);

-- Location: LCCOMB_X90_Y64_N10
\int_bola|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add2~8_combout\ = (\int_bola|Pala_Y_D\(8) & (\int_bola|Add2~7\ $ (GND))) # (!\int_bola|Pala_Y_D\(8) & (!\int_bola|Add2~7\ & VCC))
-- \int_bola|Add2~9\ = CARRY((\int_bola|Pala_Y_D\(8) & !\int_bola|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Pala_Y_D\(8),
	datad => VCC,
	cin => \int_bola|Add2~7\,
	combout => \int_bola|Add2~8_combout\,
	cout => \int_bola|Add2~9\);

-- Location: LCCOMB_X90_Y64_N12
\int_bola|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add2~10_combout\ = \int_bola|Add2~9\ $ (\int_bola|Pala_Y_D\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Pala_Y_D\(9),
	cin => \int_bola|Add2~9\,
	combout => \int_bola|Add2~10_combout\);

-- Location: LCCOMB_X90_Y65_N18
\int_bola|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add13~0_combout\ = (\int_bola|Add2~0_combout\ & (\int_bola|Pala_Y_D\(3) $ (VCC))) # (!\int_bola|Add2~0_combout\ & (\int_bola|Pala_Y_D\(3) & VCC))
-- \int_bola|Add13~1\ = CARRY((\int_bola|Add2~0_combout\ & \int_bola|Pala_Y_D\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add2~0_combout\,
	datab => \int_bola|Pala_Y_D\(3),
	datad => VCC,
	combout => \int_bola|Add13~0_combout\,
	cout => \int_bola|Add13~1\);

-- Location: LCCOMB_X90_Y65_N20
\int_bola|Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add13~2_combout\ = (\int_bola|Add2~2_combout\ & (!\int_bola|Add13~1\)) # (!\int_bola|Add2~2_combout\ & ((\int_bola|Add13~1\) # (GND)))
-- \int_bola|Add13~3\ = CARRY((!\int_bola|Add13~1\) # (!\int_bola|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add2~2_combout\,
	datad => VCC,
	cin => \int_bola|Add13~1\,
	combout => \int_bola|Add13~2_combout\,
	cout => \int_bola|Add13~3\);

-- Location: LCCOMB_X90_Y65_N22
\int_bola|Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add13~4_combout\ = (\int_bola|Add2~4_combout\ & (\int_bola|Add13~3\ $ (GND))) # (!\int_bola|Add2~4_combout\ & (!\int_bola|Add13~3\ & VCC))
-- \int_bola|Add13~5\ = CARRY((\int_bola|Add2~4_combout\ & !\int_bola|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add2~4_combout\,
	datad => VCC,
	cin => \int_bola|Add13~3\,
	combout => \int_bola|Add13~4_combout\,
	cout => \int_bola|Add13~5\);

-- Location: LCCOMB_X90_Y65_N24
\int_bola|Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add13~6_combout\ = (\int_bola|Add2~6_combout\ & (!\int_bola|Add13~5\)) # (!\int_bola|Add2~6_combout\ & ((\int_bola|Add13~5\) # (GND)))
-- \int_bola|Add13~7\ = CARRY((!\int_bola|Add13~5\) # (!\int_bola|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add2~6_combout\,
	datad => VCC,
	cin => \int_bola|Add13~5\,
	combout => \int_bola|Add13~6_combout\,
	cout => \int_bola|Add13~7\);

-- Location: LCCOMB_X90_Y65_N26
\int_bola|Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add13~8_combout\ = (\int_bola|Add2~8_combout\ & (\int_bola|Add13~7\ $ (GND))) # (!\int_bola|Add2~8_combout\ & (!\int_bola|Add13~7\ & VCC))
-- \int_bola|Add13~9\ = CARRY((\int_bola|Add2~8_combout\ & !\int_bola|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add2~8_combout\,
	datad => VCC,
	cin => \int_bola|Add13~7\,
	combout => \int_bola|Add13~8_combout\,
	cout => \int_bola|Add13~9\);

-- Location: LCCOMB_X90_Y65_N28
\int_bola|Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add13~10_combout\ = \int_bola|Add13~9\ $ (\int_bola|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \int_bola|Add2~10_combout\,
	cin => \int_bola|Add13~9\,
	combout => \int_bola|Add13~10_combout\);

-- Location: LCCOMB_X90_Y65_N0
\int_bola|LessThan25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~1_cout\ = CARRY((\int_bola|Bola_X\(1) & !\int_bola|Pala_Y_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(1),
	datab => \int_bola|Pala_Y_D\(1),
	datad => VCC,
	cout => \int_bola|LessThan25~1_cout\);

-- Location: LCCOMB_X90_Y65_N2
\int_bola|LessThan25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~3_cout\ = CARRY((\int_bola|Pala_Y_D\(2) & ((!\int_bola|LessThan25~1_cout\) # (!\int_bola|Bola_Y\(2)))) # (!\int_bola|Pala_Y_D\(2) & (!\int_bola|Bola_Y\(2) & !\int_bola|LessThan25~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(2),
	datab => \int_bola|Bola_Y\(2),
	datad => VCC,
	cin => \int_bola|LessThan25~1_cout\,
	cout => \int_bola|LessThan25~3_cout\);

-- Location: LCCOMB_X90_Y65_N4
\int_bola|LessThan25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~5_cout\ = CARRY((\int_bola|Bola_Y\(3) & ((\int_bola|Pala_Y_D\(3)) # (!\int_bola|LessThan25~3_cout\))) # (!\int_bola|Bola_Y\(3) & (\int_bola|Pala_Y_D\(3) & !\int_bola|LessThan25~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(3),
	datab => \int_bola|Pala_Y_D\(3),
	datad => VCC,
	cin => \int_bola|LessThan25~3_cout\,
	cout => \int_bola|LessThan25~5_cout\);

-- Location: LCCOMB_X90_Y65_N6
\int_bola|LessThan25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~7_cout\ = CARRY((\int_bola|Bola_Y\(4) & (\int_bola|Add13~0_combout\ & !\int_bola|LessThan25~5_cout\)) # (!\int_bola|Bola_Y\(4) & ((\int_bola|Add13~0_combout\) # (!\int_bola|LessThan25~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(4),
	datab => \int_bola|Add13~0_combout\,
	datad => VCC,
	cin => \int_bola|LessThan25~5_cout\,
	cout => \int_bola|LessThan25~7_cout\);

-- Location: LCCOMB_X90_Y65_N8
\int_bola|LessThan25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~9_cout\ = CARRY((\int_bola|Bola_Y\(5) & ((!\int_bola|LessThan25~7_cout\) # (!\int_bola|Add13~2_combout\))) # (!\int_bola|Bola_Y\(5) & (!\int_bola|Add13~2_combout\ & !\int_bola|LessThan25~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(5),
	datab => \int_bola|Add13~2_combout\,
	datad => VCC,
	cin => \int_bola|LessThan25~7_cout\,
	cout => \int_bola|LessThan25~9_cout\);

-- Location: LCCOMB_X90_Y65_N10
\int_bola|LessThan25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~11_cout\ = CARRY((\int_bola|Add13~4_combout\ & ((!\int_bola|LessThan25~9_cout\) # (!\int_bola|Bola_Y\(6)))) # (!\int_bola|Add13~4_combout\ & (!\int_bola|Bola_Y\(6) & !\int_bola|LessThan25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add13~4_combout\,
	datab => \int_bola|Bola_Y\(6),
	datad => VCC,
	cin => \int_bola|LessThan25~9_cout\,
	cout => \int_bola|LessThan25~11_cout\);

-- Location: LCCOMB_X90_Y65_N12
\int_bola|LessThan25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~13_cout\ = CARRY((\int_bola|Bola_Y\(7) & ((!\int_bola|LessThan25~11_cout\) # (!\int_bola|Add13~6_combout\))) # (!\int_bola|Bola_Y\(7) & (!\int_bola|Add13~6_combout\ & !\int_bola|LessThan25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(7),
	datab => \int_bola|Add13~6_combout\,
	datad => VCC,
	cin => \int_bola|LessThan25~11_cout\,
	cout => \int_bola|LessThan25~13_cout\);

-- Location: LCCOMB_X90_Y65_N14
\int_bola|LessThan25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~15_cout\ = CARRY((\int_bola|Add13~8_combout\ & ((!\int_bola|LessThan25~13_cout\) # (!\int_bola|Bola_Y\(8)))) # (!\int_bola|Add13~8_combout\ & (!\int_bola|Bola_Y\(8) & !\int_bola|LessThan25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add13~8_combout\,
	datab => \int_bola|Bola_Y\(8),
	datad => VCC,
	cin => \int_bola|LessThan25~13_cout\,
	cout => \int_bola|LessThan25~15_cout\);

-- Location: LCCOMB_X90_Y65_N16
\int_bola|LessThan25~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan25~16_combout\ = (\int_bola|Bola_Y\(9) & ((!\int_bola|Add13~10_combout\) # (!\int_bola|LessThan25~15_cout\))) # (!\int_bola|Bola_Y\(9) & (!\int_bola|LessThan25~15_cout\ & !\int_bola|Add13~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(9),
	datad => \int_bola|Add13~10_combout\,
	cin => \int_bola|LessThan25~15_cout\,
	combout => \int_bola|LessThan25~16_combout\);

-- Location: LCCOMB_X89_Y65_N16
\int_bola|Desplaza_Bola_X[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[1]~12_combout\ = (\int_bola|LessThan22~16_combout\ & ((\int_bola|Desplaza_Bola_X[1]~10_combout\) # ((\int_bola|LessThan25~16_combout\)))) # (!\int_bola|LessThan22~16_combout\ & (\int_bola|Desplaza_Bola_X[1]~11_combout\ & 
-- ((\int_bola|Desplaza_Bola_X[1]~10_combout\) # (\int_bola|LessThan25~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|LessThan22~16_combout\,
	datab => \int_bola|Desplaza_Bola_X[1]~10_combout\,
	datac => \int_bola|Desplaza_Bola_X[1]~11_combout\,
	datad => \int_bola|LessThan25~16_combout\,
	combout => \int_bola|Desplaza_Bola_X[1]~12_combout\);

-- Location: LCCOMB_X89_Y65_N8
\int_bola|Desplaza_Bola_X[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Desplaza_Bola_X[2]~13_combout\ = (\int_bola|Desplaza_Bola_X[1]~8_combout\ & ((\int_bola|Desplaza_Bola_X[1]~12_combout\ & ((\int_bola|Desplaza_Bola_X\(2)))) # (!\int_bola|Desplaza_Bola_X[1]~12_combout\ & 
-- (\int_bola|Desplaza_Bola_X[2]~6_combout\)))) # (!\int_bola|Desplaza_Bola_X[1]~8_combout\ & (\int_bola|Desplaza_Bola_X[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Desplaza_Bola_X[1]~8_combout\,
	datab => \int_bola|Desplaza_Bola_X[2]~6_combout\,
	datac => \int_bola|Desplaza_Bola_X\(2),
	datad => \int_bola|Desplaza_Bola_X[1]~12_combout\,
	combout => \int_bola|Desplaza_Bola_X[2]~13_combout\);

-- Location: FF_X89_Y65_N9
\int_bola|Desplaza_Bola_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Desplaza_Bola_X[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Desplaza_Bola_X\(2));

-- Location: LCCOMB_X85_Y65_N26
\int_bola|Bola_X[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Bola_X[9]~25_combout\ = \int_bola|Bola_X\(9) $ (\int_bola|Desplaza_Bola_X\(2) $ (!\int_bola|Bola_X[8]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(9),
	datab => \int_bola|Desplaza_Bola_X\(2),
	cin => \int_bola|Bola_X[8]~24\,
	combout => \int_bola|Bola_X[9]~25_combout\);

-- Location: FF_X85_Y65_N27
\int_bola|Bola_X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \int_bola|Bola_X[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_bola|Bola_X\(9));

-- Location: LCCOMB_X84_Y65_N12
\int_bola|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~1_cout\ = CARRY((!\VGA|pixel_x\(1) & \int_bola|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(1),
	datab => \int_bola|Bola_X\(1),
	datad => VCC,
	cout => \int_bola|LessThan12~1_cout\);

-- Location: LCCOMB_X84_Y65_N14
\int_bola|LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~3_cout\ = CARRY((\VGA|pixel_x\(2) & ((!\int_bola|LessThan12~1_cout\) # (!\int_bola|Bola_X\(2)))) # (!\VGA|pixel_x\(2) & (!\int_bola|Bola_X\(2) & !\int_bola|LessThan12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(2),
	datab => \int_bola|Bola_X\(2),
	datad => VCC,
	cin => \int_bola|LessThan12~1_cout\,
	cout => \int_bola|LessThan12~3_cout\);

-- Location: LCCOMB_X84_Y65_N16
\int_bola|LessThan12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~5_cout\ = CARRY((\int_bola|Add5~0_combout\ & (\int_bola|Bola_X\(3) & !\int_bola|LessThan12~3_cout\)) # (!\int_bola|Add5~0_combout\ & ((\int_bola|Bola_X\(3)) # (!\int_bola|LessThan12~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~0_combout\,
	datab => \int_bola|Bola_X\(3),
	datad => VCC,
	cin => \int_bola|LessThan12~3_cout\,
	cout => \int_bola|LessThan12~5_cout\);

-- Location: LCCOMB_X84_Y65_N18
\int_bola|LessThan12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~7_cout\ = CARRY((\int_bola|Add5~2_combout\ & ((!\int_bola|LessThan12~5_cout\) # (!\int_bola|Bola_X\(4)))) # (!\int_bola|Add5~2_combout\ & (!\int_bola|Bola_X\(4) & !\int_bola|LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~2_combout\,
	datab => \int_bola|Bola_X\(4),
	datad => VCC,
	cin => \int_bola|LessThan12~5_cout\,
	cout => \int_bola|LessThan12~7_cout\);

-- Location: LCCOMB_X84_Y65_N20
\int_bola|LessThan12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~9_cout\ = CARRY((\int_bola|Add5~4_combout\ & (\int_bola|Bola_X\(5) & !\int_bola|LessThan12~7_cout\)) # (!\int_bola|Add5~4_combout\ & ((\int_bola|Bola_X\(5)) # (!\int_bola|LessThan12~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~4_combout\,
	datab => \int_bola|Bola_X\(5),
	datad => VCC,
	cin => \int_bola|LessThan12~7_cout\,
	cout => \int_bola|LessThan12~9_cout\);

-- Location: LCCOMB_X84_Y65_N22
\int_bola|LessThan12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~11_cout\ = CARRY((\int_bola|Bola_X\(6) & (\int_bola|Add5~6_combout\ & !\int_bola|LessThan12~9_cout\)) # (!\int_bola|Bola_X\(6) & ((\int_bola|Add5~6_combout\) # (!\int_bola|LessThan12~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(6),
	datab => \int_bola|Add5~6_combout\,
	datad => VCC,
	cin => \int_bola|LessThan12~9_cout\,
	cout => \int_bola|LessThan12~11_cout\);

-- Location: LCCOMB_X84_Y65_N24
\int_bola|LessThan12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~13_cout\ = CARRY((\int_bola|Add5~8_combout\ & (\int_bola|Bola_X\(7) & !\int_bola|LessThan12~11_cout\)) # (!\int_bola|Add5~8_combout\ & ((\int_bola|Bola_X\(7)) # (!\int_bola|LessThan12~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~8_combout\,
	datab => \int_bola|Bola_X\(7),
	datad => VCC,
	cin => \int_bola|LessThan12~11_cout\,
	cout => \int_bola|LessThan12~13_cout\);

-- Location: LCCOMB_X84_Y65_N26
\int_bola|LessThan12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~15_cout\ = CARRY((\int_bola|Add5~10_combout\ & ((!\int_bola|LessThan12~13_cout\) # (!\int_bola|Bola_X\(8)))) # (!\int_bola|Add5~10_combout\ & (!\int_bola|Bola_X\(8) & !\int_bola|LessThan12~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~10_combout\,
	datab => \int_bola|Bola_X\(8),
	datad => VCC,
	cin => \int_bola|LessThan12~13_cout\,
	cout => \int_bola|LessThan12~15_cout\);

-- Location: LCCOMB_X84_Y65_N28
\int_bola|LessThan12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan12~16_combout\ = (\int_bola|Add5~12_combout\ & (!\int_bola|LessThan12~15_cout\ & \int_bola|Bola_X\(9))) # (!\int_bola|Add5~12_combout\ & ((\int_bola|Bola_X\(9)) # (!\int_bola|LessThan12~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add5~12_combout\,
	datad => \int_bola|Bola_X\(9),
	cin => \int_bola|LessThan12~15_cout\,
	combout => \int_bola|LessThan12~16_combout\);

-- Location: LCCOMB_X84_Y64_N6
\VGA|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~0_combout\ = (!\VGA|LessThan6~0_combout\ & (\VGA|LessThan5~0_combout\ & !\VGA|cont_vs\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan6~0_combout\,
	datac => \VGA|LessThan5~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|process_0~0_combout\);

-- Location: FF_X84_Y64_N7
\VGA|video_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|video_on~q\);

-- Location: LCCOMB_X85_Y63_N4
\VGA|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~1_combout\ = (!\VGA|cont_vs\(9) & !\VGA|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(9),
	datab => \VGA|LessThan6~0_combout\,
	combout => \VGA|LessThan6~1_combout\);

-- Location: FF_X85_Y63_N29
\VGA|pixel_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(8),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(8));

-- Location: FF_X85_Y63_N27
\VGA|pixel_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(7),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(7));

-- Location: FF_X85_Y63_N25
\VGA|pixel_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(6),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(6));

-- Location: FF_X85_Y63_N23
\VGA|pixel_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(5),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(5));

-- Location: FF_X85_Y63_N5
\VGA|pixel_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(3),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(3));

-- Location: LCCOMB_X85_Y63_N0
\VGA|pixel_y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[4]~feeder_combout\ = \VGA|cont_vs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(4),
	combout => \VGA|pixel_y[4]~feeder_combout\);

-- Location: FF_X85_Y63_N1
\VGA|pixel_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[4]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(4));

-- Location: LCCOMB_X85_Y63_N20
\int_bola|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add7~0_combout\ = (\VGA|pixel_y\(3) & (\VGA|pixel_y\(4) $ (VCC))) # (!\VGA|pixel_y\(3) & (\VGA|pixel_y\(4) & VCC))
-- \int_bola|Add7~1\ = CARRY((\VGA|pixel_y\(3) & \VGA|pixel_y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	combout => \int_bola|Add7~0_combout\,
	cout => \int_bola|Add7~1\);

-- Location: LCCOMB_X85_Y63_N22
\int_bola|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add7~2_combout\ = (\VGA|pixel_y\(5) & (!\int_bola|Add7~1\)) # (!\VGA|pixel_y\(5) & ((\int_bola|Add7~1\) # (GND)))
-- \int_bola|Add7~3\ = CARRY((!\int_bola|Add7~1\) # (!\VGA|pixel_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \int_bola|Add7~1\,
	combout => \int_bola|Add7~2_combout\,
	cout => \int_bola|Add7~3\);

-- Location: LCCOMB_X85_Y63_N24
\int_bola|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add7~4_combout\ = (\VGA|pixel_y\(6) & (\int_bola|Add7~3\ $ (GND))) # (!\VGA|pixel_y\(6) & (!\int_bola|Add7~3\ & VCC))
-- \int_bola|Add7~5\ = CARRY((\VGA|pixel_y\(6) & !\int_bola|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \int_bola|Add7~3\,
	combout => \int_bola|Add7~4_combout\,
	cout => \int_bola|Add7~5\);

-- Location: LCCOMB_X85_Y63_N26
\int_bola|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add7~6_combout\ = (\VGA|pixel_y\(7) & (!\int_bola|Add7~5\)) # (!\VGA|pixel_y\(7) & ((\int_bola|Add7~5\) # (GND)))
-- \int_bola|Add7~7\ = CARRY((!\int_bola|Add7~5\) # (!\VGA|pixel_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \int_bola|Add7~5\,
	combout => \int_bola|Add7~6_combout\,
	cout => \int_bola|Add7~7\);

-- Location: LCCOMB_X85_Y63_N28
\int_bola|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add7~8_combout\ = (\VGA|pixel_y\(8) & (\int_bola|Add7~7\ $ (GND))) # (!\VGA|pixel_y\(8) & (!\int_bola|Add7~7\ & VCC))
-- \int_bola|Add7~9\ = CARRY((\VGA|pixel_y\(8) & !\int_bola|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => VCC,
	cin => \int_bola|Add7~7\,
	combout => \int_bola|Add7~8_combout\,
	cout => \int_bola|Add7~9\);

-- Location: LCCOMB_X85_Y63_N30
\int_bola|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add7~10_combout\ = \int_bola|Add7~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \int_bola|Add7~9\,
	combout => \int_bola|Add7~10_combout\);

-- Location: FF_X85_Y63_N19
\VGA|pixel_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(2),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(2));

-- Location: FF_X84_Y63_N3
\VGA|pixel_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(1),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(1));

-- Location: LCCOMB_X86_Y63_N14
\int_bola|LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~1_cout\ = CARRY((!\VGA|pixel_y\(1) & \int_bola|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \int_bola|Bola_X\(1),
	datad => VCC,
	cout => \int_bola|LessThan14~1_cout\);

-- Location: LCCOMB_X86_Y63_N16
\int_bola|LessThan14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~3_cout\ = CARRY((\int_bola|Bola_Y\(2) & (\VGA|pixel_y\(2) & !\int_bola|LessThan14~1_cout\)) # (!\int_bola|Bola_Y\(2) & ((\VGA|pixel_y\(2)) # (!\int_bola|LessThan14~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \int_bola|LessThan14~1_cout\,
	cout => \int_bola|LessThan14~3_cout\);

-- Location: LCCOMB_X86_Y63_N18
\int_bola|LessThan14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~5_cout\ = CARRY((\VGA|pixel_y\(3) & ((\int_bola|Bola_Y\(3)) # (!\int_bola|LessThan14~3_cout\))) # (!\VGA|pixel_y\(3) & (\int_bola|Bola_Y\(3) & !\int_bola|LessThan14~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \int_bola|Bola_Y\(3),
	datad => VCC,
	cin => \int_bola|LessThan14~3_cout\,
	cout => \int_bola|LessThan14~5_cout\);

-- Location: LCCOMB_X86_Y63_N20
\int_bola|LessThan14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~7_cout\ = CARRY((\int_bola|Add7~0_combout\ & ((!\int_bola|LessThan14~5_cout\) # (!\int_bola|Bola_Y\(4)))) # (!\int_bola|Add7~0_combout\ & (!\int_bola|Bola_Y\(4) & !\int_bola|LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add7~0_combout\,
	datab => \int_bola|Bola_Y\(4),
	datad => VCC,
	cin => \int_bola|LessThan14~5_cout\,
	cout => \int_bola|LessThan14~7_cout\);

-- Location: LCCOMB_X86_Y63_N22
\int_bola|LessThan14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~9_cout\ = CARRY((\int_bola|Bola_Y\(5) & ((!\int_bola|LessThan14~7_cout\) # (!\int_bola|Add7~2_combout\))) # (!\int_bola|Bola_Y\(5) & (!\int_bola|Add7~2_combout\ & !\int_bola|LessThan14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(5),
	datab => \int_bola|Add7~2_combout\,
	datad => VCC,
	cin => \int_bola|LessThan14~7_cout\,
	cout => \int_bola|LessThan14~9_cout\);

-- Location: LCCOMB_X86_Y63_N24
\int_bola|LessThan14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~11_cout\ = CARRY((\int_bola|Bola_Y\(6) & (\int_bola|Add7~4_combout\ & !\int_bola|LessThan14~9_cout\)) # (!\int_bola|Bola_Y\(6) & ((\int_bola|Add7~4_combout\) # (!\int_bola|LessThan14~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_Y\(6),
	datab => \int_bola|Add7~4_combout\,
	datad => VCC,
	cin => \int_bola|LessThan14~9_cout\,
	cout => \int_bola|LessThan14~11_cout\);

-- Location: LCCOMB_X86_Y63_N26
\int_bola|LessThan14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~13_cout\ = CARRY((\int_bola|Add7~6_combout\ & (\int_bola|Bola_Y\(7) & !\int_bola|LessThan14~11_cout\)) # (!\int_bola|Add7~6_combout\ & ((\int_bola|Bola_Y\(7)) # (!\int_bola|LessThan14~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add7~6_combout\,
	datab => \int_bola|Bola_Y\(7),
	datad => VCC,
	cin => \int_bola|LessThan14~11_cout\,
	cout => \int_bola|LessThan14~13_cout\);

-- Location: LCCOMB_X86_Y63_N28
\int_bola|LessThan14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~15_cout\ = CARRY((\int_bola|Add7~8_combout\ & ((!\int_bola|LessThan14~13_cout\) # (!\int_bola|Bola_Y\(8)))) # (!\int_bola|Add7~8_combout\ & (!\int_bola|Bola_Y\(8) & !\int_bola|LessThan14~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add7~8_combout\,
	datab => \int_bola|Bola_Y\(8),
	datad => VCC,
	cin => \int_bola|LessThan14~13_cout\,
	cout => \int_bola|LessThan14~15_cout\);

-- Location: LCCOMB_X86_Y63_N30
\int_bola|LessThan14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan14~16_combout\ = (\int_bola|Add7~10_combout\ & (!\int_bola|LessThan14~15_cout\ & \int_bola|Bola_Y\(9))) # (!\int_bola|Add7~10_combout\ & ((\int_bola|Bola_Y\(9)) # (!\int_bola|LessThan14~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add7~10_combout\,
	datad => \int_bola|Bola_Y\(9),
	cin => \int_bola|LessThan14~15_cout\,
	combout => \int_bola|LessThan14~16_combout\);

-- Location: FF_X84_Y63_N29
\VGA|pixel_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(0),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(0));

-- Location: LCCOMB_X86_Y64_N0
\int_bola|LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \int_bola|LessThan15~1_cout\);

-- Location: LCCOMB_X86_Y64_N2
\int_bola|LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~3_cout\ = CARRY((\int_bola|Bola_X\(1) & ((!\int_bola|LessThan15~1_cout\) # (!\VGA|pixel_y\(1)))) # (!\int_bola|Bola_X\(1) & (!\VGA|pixel_y\(1) & !\int_bola|LessThan15~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Bola_X\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cin => \int_bola|LessThan15~1_cout\,
	cout => \int_bola|LessThan15~3_cout\);

-- Location: LCCOMB_X86_Y64_N4
\int_bola|LessThan15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~5_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\int_bola|LessThan15~3_cout\) # (!\int_bola|Bola_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\int_bola|Bola_Y\(2) & !\int_bola|LessThan15~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \int_bola|Bola_Y\(2),
	datad => VCC,
	cin => \int_bola|LessThan15~3_cout\,
	cout => \int_bola|LessThan15~5_cout\);

-- Location: LCCOMB_X86_Y64_N6
\int_bola|LessThan15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~7_cout\ = CARRY((\VGA|pixel_y\(3) & (\int_bola|Add8~0_combout\ & !\int_bola|LessThan15~5_cout\)) # (!\VGA|pixel_y\(3) & ((\int_bola|Add8~0_combout\) # (!\int_bola|LessThan15~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \int_bola|Add8~0_combout\,
	datad => VCC,
	cin => \int_bola|LessThan15~5_cout\,
	cout => \int_bola|LessThan15~7_cout\);

-- Location: LCCOMB_X86_Y64_N8
\int_bola|LessThan15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~9_cout\ = CARRY((\int_bola|Add8~2_combout\ & (\VGA|pixel_y\(4) & !\int_bola|LessThan15~7_cout\)) # (!\int_bola|Add8~2_combout\ & ((\VGA|pixel_y\(4)) # (!\int_bola|LessThan15~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~2_combout\,
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \int_bola|LessThan15~7_cout\,
	cout => \int_bola|LessThan15~9_cout\);

-- Location: LCCOMB_X86_Y64_N10
\int_bola|LessThan15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~11_cout\ = CARRY((\int_bola|Add8~4_combout\ & ((!\int_bola|LessThan15~9_cout\) # (!\VGA|pixel_y\(5)))) # (!\int_bola|Add8~4_combout\ & (!\VGA|pixel_y\(5) & !\int_bola|LessThan15~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~4_combout\,
	datab => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \int_bola|LessThan15~9_cout\,
	cout => \int_bola|LessThan15~11_cout\);

-- Location: LCCOMB_X86_Y64_N12
\int_bola|LessThan15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~13_cout\ = CARRY((\int_bola|Add8~6_combout\ & (\VGA|pixel_y\(6) & !\int_bola|LessThan15~11_cout\)) # (!\int_bola|Add8~6_combout\ & ((\VGA|pixel_y\(6)) # (!\int_bola|LessThan15~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~6_combout\,
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \int_bola|LessThan15~11_cout\,
	cout => \int_bola|LessThan15~13_cout\);

-- Location: LCCOMB_X86_Y64_N14
\int_bola|LessThan15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\int_bola|Add8~8_combout\ & !\int_bola|LessThan15~13_cout\)) # (!\VGA|pixel_y\(7) & ((\int_bola|Add8~8_combout\) # (!\int_bola|LessThan15~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \int_bola|Add8~8_combout\,
	datad => VCC,
	cin => \int_bola|LessThan15~13_cout\,
	cout => \int_bola|LessThan15~15_cout\);

-- Location: LCCOMB_X86_Y64_N16
\int_bola|LessThan15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan15~16_combout\ = (\VGA|pixel_y\(8) & ((!\int_bola|LessThan15~15_cout\) # (!\int_bola|Add8~10_combout\))) # (!\VGA|pixel_y\(8) & (!\int_bola|Add8~10_combout\ & !\int_bola|LessThan15~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datab => \int_bola|Add8~10_combout\,
	cin => \int_bola|LessThan15~15_cout\,
	combout => \int_bola|LessThan15~16_combout\);

-- Location: LCCOMB_X85_Y64_N26
\VGA|vga_r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~7_combout\ = (\VGA|video_on~q\ & (!\int_bola|LessThan14~16_combout\ & ((\int_bola|Add8~12_combout\) # (!\int_bola|LessThan15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add8~12_combout\,
	datab => \VGA|video_on~q\,
	datac => \int_bola|LessThan14~16_combout\,
	datad => \int_bola|LessThan15~16_combout\,
	combout => \VGA|vga_r~7_combout\);

-- Location: LCCOMB_X85_Y64_N6
\int_bola|LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~1_cout\ = CARRY(\VGA|pixel_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(0),
	datad => VCC,
	cout => \int_bola|LessThan13~1_cout\);

-- Location: LCCOMB_X85_Y64_N8
\int_bola|LessThan13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~3_cout\ = CARRY((\VGA|pixel_x\(1) & (\int_bola|Bola_X\(1) & !\int_bola|LessThan13~1_cout\)) # (!\VGA|pixel_x\(1) & ((\int_bola|Bola_X\(1)) # (!\int_bola|LessThan13~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(1),
	datab => \int_bola|Bola_X\(1),
	datad => VCC,
	cin => \int_bola|LessThan13~1_cout\,
	cout => \int_bola|LessThan13~3_cout\);

-- Location: LCCOMB_X85_Y64_N10
\int_bola|LessThan13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~5_cout\ = CARRY((\VGA|pixel_x\(2) & ((!\int_bola|LessThan13~3_cout\) # (!\int_bola|Bola_X\(2)))) # (!\VGA|pixel_x\(2) & (!\int_bola|Bola_X\(2) & !\int_bola|LessThan13~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(2),
	datab => \int_bola|Bola_X\(2),
	datad => VCC,
	cin => \int_bola|LessThan13~3_cout\,
	cout => \int_bola|LessThan13~5_cout\);

-- Location: LCCOMB_X85_Y64_N12
\int_bola|LessThan13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~7_cout\ = CARRY((\int_bola|Add6~0_combout\ & ((!\int_bola|LessThan13~5_cout\) # (!\VGA|pixel_x\(3)))) # (!\int_bola|Add6~0_combout\ & (!\VGA|pixel_x\(3) & !\int_bola|LessThan13~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add6~0_combout\,
	datab => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \int_bola|LessThan13~5_cout\,
	cout => \int_bola|LessThan13~7_cout\);

-- Location: LCCOMB_X85_Y64_N14
\int_bola|LessThan13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~9_cout\ = CARRY((\int_bola|Add6~2_combout\ & (\VGA|pixel_x\(4) & !\int_bola|LessThan13~7_cout\)) # (!\int_bola|Add6~2_combout\ & ((\VGA|pixel_x\(4)) # (!\int_bola|LessThan13~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add6~2_combout\,
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \int_bola|LessThan13~7_cout\,
	cout => \int_bola|LessThan13~9_cout\);

-- Location: LCCOMB_X85_Y64_N16
\int_bola|LessThan13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~11_cout\ = CARRY((\VGA|pixel_x\(5) & (\int_bola|Add6~4_combout\ & !\int_bola|LessThan13~9_cout\)) # (!\VGA|pixel_x\(5) & ((\int_bola|Add6~4_combout\) # (!\int_bola|LessThan13~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \int_bola|Add6~4_combout\,
	datad => VCC,
	cin => \int_bola|LessThan13~9_cout\,
	cout => \int_bola|LessThan13~11_cout\);

-- Location: LCCOMB_X85_Y64_N18
\int_bola|LessThan13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~13_cout\ = CARRY((\int_bola|Add6~6_combout\ & (\VGA|pixel_x\(6) & !\int_bola|LessThan13~11_cout\)) # (!\int_bola|Add6~6_combout\ & ((\VGA|pixel_x\(6)) # (!\int_bola|LessThan13~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add6~6_combout\,
	datab => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \int_bola|LessThan13~11_cout\,
	cout => \int_bola|LessThan13~13_cout\);

-- Location: LCCOMB_X85_Y64_N20
\int_bola|LessThan13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~15_cout\ = CARRY((\VGA|pixel_x\(7) & (\int_bola|Add6~8_combout\ & !\int_bola|LessThan13~13_cout\)) # (!\VGA|pixel_x\(7) & ((\int_bola|Add6~8_combout\) # (!\int_bola|LessThan13~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(7),
	datab => \int_bola|Add6~8_combout\,
	datad => VCC,
	cin => \int_bola|LessThan13~13_cout\,
	cout => \int_bola|LessThan13~15_cout\);

-- Location: LCCOMB_X85_Y64_N22
\int_bola|LessThan13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~17_cout\ = CARRY((\int_bola|Add6~10_combout\ & (\VGA|pixel_x\(8) & !\int_bola|LessThan13~15_cout\)) # (!\int_bola|Add6~10_combout\ & ((\VGA|pixel_x\(8)) # (!\int_bola|LessThan13~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add6~10_combout\,
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \int_bola|LessThan13~15_cout\,
	cout => \int_bola|LessThan13~17_cout\);

-- Location: LCCOMB_X85_Y64_N24
\int_bola|LessThan13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan13~18_combout\ = (\VGA|pixel_x\(9) & ((\int_bola|LessThan13~17_cout\) # (!\int_bola|Add6~12_combout\))) # (!\VGA|pixel_x\(9) & (\int_bola|LessThan13~17_cout\ & !\int_bola|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	datad => \int_bola|Add6~12_combout\,
	cin => \int_bola|LessThan13~17_cout\,
	combout => \int_bola|LessThan13~18_combout\);

-- Location: LCCOMB_X85_Y64_N28
\VGA|vga_r~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~8_combout\ = (!\int_bola|LessThan12~16_combout\ & (\VGA|vga_r~7_combout\ & !\int_bola|LessThan13~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|LessThan12~16_combout\,
	datac => \VGA|vga_r~7_combout\,
	datad => \int_bola|LessThan13~18_combout\,
	combout => \VGA|vga_r~8_combout\);

-- Location: LCCOMB_X83_Y64_N28
\int_bola|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan5~0_combout\ = (\VGA|pixel_x\(5) & (\VGA|pixel_x\(3) & (\VGA|pixel_x\(6) & \VGA|pixel_x\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \VGA|pixel_x\(3),
	datac => \VGA|pixel_x\(6),
	datad => \VGA|pixel_x\(4),
	combout => \int_bola|LessThan5~0_combout\);

-- Location: LCCOMB_X83_Y64_N2
\int_bola|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan5~1_combout\ = (\VGA|pixel_x\(9) & ((\VGA|pixel_x\(8)) # ((\VGA|pixel_x\(7)) # (\int_bola|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	datab => \VGA|pixel_x\(8),
	datac => \VGA|pixel_x\(7),
	datad => \int_bola|LessThan5~0_combout\,
	combout => \int_bola|LessThan5~1_combout\);

-- Location: LCCOMB_X87_Y63_N4
\int_bola|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add0~0_combout\ = (\VGA|pixel_y\(6) & (\VGA|pixel_y\(7) & ((\VGA|pixel_y\(5)) # (\VGA|pixel_y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \VGA|pixel_y\(5),
	datac => \VGA|pixel_y\(7),
	datad => \VGA|pixel_y\(4),
	combout => \int_bola|Add0~0_combout\);

-- Location: LCCOMB_X87_Y63_N2
\int_bola|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add0~1_combout\ = (\VGA|pixel_y\(8) & \int_bola|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datac => \int_bola|Add0~0_combout\,
	combout => \int_bola|Add0~1_combout\);

-- Location: LCCOMB_X87_Y63_N8
\int_bola|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add0~2_combout\ = \VGA|pixel_y\(8) $ (\int_bola|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datac => \int_bola|Add0~0_combout\,
	combout => \int_bola|Add0~2_combout\);

-- Location: LCCOMB_X86_Y64_N30
\int_bola|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add0~3_combout\ = \VGA|pixel_y\(7) $ (((\VGA|pixel_y\(6) & ((\VGA|pixel_y\(5)) # (\VGA|pixel_y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \VGA|pixel_y\(6),
	datac => \VGA|pixel_y\(4),
	datad => \VGA|pixel_y\(7),
	combout => \int_bola|Add0~3_combout\);

-- Location: LCCOMB_X87_Y63_N10
\int_bola|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add0~4_combout\ = \VGA|pixel_y\(6) $ (((\VGA|pixel_y\(5)) # (\VGA|pixel_y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \VGA|pixel_y\(5),
	datad => \VGA|pixel_y\(4),
	combout => \int_bola|Add0~4_combout\);

-- Location: LCCOMB_X87_Y63_N0
\int_bola|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|Add0~5_combout\ = \VGA|pixel_y\(4) $ (\VGA|pixel_y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datad => \VGA|pixel_y\(5),
	combout => \int_bola|Add0~5_combout\);

-- Location: LCCOMB_X84_Y64_N8
\int_bola|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~1_cout\ = CARRY((!\VGA|pixel_y\(1) & \int_bola|Pala_Y_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \int_bola|Pala_Y_D\(1),
	datad => VCC,
	cout => \int_bola|LessThan6~1_cout\);

-- Location: LCCOMB_X84_Y64_N10
\int_bola|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~3_cout\ = CARRY((\int_bola|Pala_Y_D\(2) & (\VGA|pixel_y\(2) & !\int_bola|LessThan6~1_cout\)) # (!\int_bola|Pala_Y_D\(2) & ((\VGA|pixel_y\(2)) # (!\int_bola|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \int_bola|LessThan6~1_cout\,
	cout => \int_bola|LessThan6~3_cout\);

-- Location: LCCOMB_X84_Y64_N12
\int_bola|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~5_cout\ = CARRY((\VGA|pixel_y\(3) & (\int_bola|Pala_Y_D\(3) & !\int_bola|LessThan6~3_cout\)) # (!\VGA|pixel_y\(3) & ((\int_bola|Pala_Y_D\(3)) # (!\int_bola|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \int_bola|Pala_Y_D\(3),
	datad => VCC,
	cin => \int_bola|LessThan6~3_cout\,
	cout => \int_bola|LessThan6~5_cout\);

-- Location: LCCOMB_X84_Y64_N14
\int_bola|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~7_cout\ = CARRY((\int_bola|Pala_Y_D\(4) & ((!\int_bola|LessThan6~5_cout\) # (!\VGA|pixel_y\(4)))) # (!\int_bola|Pala_Y_D\(4) & (!\VGA|pixel_y\(4) & !\int_bola|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(4),
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \int_bola|LessThan6~5_cout\,
	cout => \int_bola|LessThan6~7_cout\);

-- Location: LCCOMB_X84_Y64_N16
\int_bola|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~9_cout\ = CARRY((\int_bola|Pala_Y_D\(5) & (\int_bola|Add0~5_combout\ & !\int_bola|LessThan6~7_cout\)) # (!\int_bola|Pala_Y_D\(5) & ((\int_bola|Add0~5_combout\) # (!\int_bola|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(5),
	datab => \int_bola|Add0~5_combout\,
	datad => VCC,
	cin => \int_bola|LessThan6~7_cout\,
	cout => \int_bola|LessThan6~9_cout\);

-- Location: LCCOMB_X84_Y64_N18
\int_bola|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~11_cout\ = CARRY((\int_bola|Add0~4_combout\ & ((\int_bola|Pala_Y_D\(6)) # (!\int_bola|LessThan6~9_cout\))) # (!\int_bola|Add0~4_combout\ & (\int_bola|Pala_Y_D\(6) & !\int_bola|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add0~4_combout\,
	datab => \int_bola|Pala_Y_D\(6),
	datad => VCC,
	cin => \int_bola|LessThan6~9_cout\,
	cout => \int_bola|LessThan6~11_cout\);

-- Location: LCCOMB_X84_Y64_N20
\int_bola|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~13_cout\ = CARRY((\int_bola|Pala_Y_D\(7) & (!\int_bola|Add0~3_combout\ & !\int_bola|LessThan6~11_cout\)) # (!\int_bola|Pala_Y_D\(7) & ((!\int_bola|LessThan6~11_cout\) # (!\int_bola|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(7),
	datab => \int_bola|Add0~3_combout\,
	datad => VCC,
	cin => \int_bola|LessThan6~11_cout\,
	cout => \int_bola|LessThan6~13_cout\);

-- Location: LCCOMB_X84_Y64_N22
\int_bola|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~15_cout\ = CARRY((\int_bola|Pala_Y_D\(8) & (\int_bola|Add0~2_combout\ & !\int_bola|LessThan6~13_cout\)) # (!\int_bola|Pala_Y_D\(8) & ((\int_bola|Add0~2_combout\) # (!\int_bola|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(8),
	datab => \int_bola|Add0~2_combout\,
	datad => VCC,
	cin => \int_bola|LessThan6~13_cout\,
	cout => \int_bola|LessThan6~15_cout\);

-- Location: LCCOMB_X84_Y64_N24
\int_bola|LessThan6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan6~16_combout\ = (\int_bola|Add0~1_combout\ & (!\int_bola|LessThan6~15_cout\ & \int_bola|Pala_Y_D\(9))) # (!\int_bola|Add0~1_combout\ & ((\int_bola|Pala_Y_D\(9)) # (!\int_bola|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add0~1_combout\,
	datad => \int_bola|Pala_Y_D\(9),
	cin => \int_bola|LessThan6~15_cout\,
	combout => \int_bola|LessThan6~16_combout\);

-- Location: LCCOMB_X90_Y64_N14
\int_bola|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \int_bola|LessThan7~1_cout\);

-- Location: LCCOMB_X90_Y64_N16
\int_bola|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~3_cout\ = CARRY((\VGA|pixel_y\(1) & (\int_bola|Pala_Y_D\(1) & !\int_bola|LessThan7~1_cout\)) # (!\VGA|pixel_y\(1) & ((\int_bola|Pala_Y_D\(1)) # (!\int_bola|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \int_bola|Pala_Y_D\(1),
	datad => VCC,
	cin => \int_bola|LessThan7~1_cout\,
	cout => \int_bola|LessThan7~3_cout\);

-- Location: LCCOMB_X90_Y64_N18
\int_bola|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~5_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\int_bola|LessThan7~3_cout\) # (!\int_bola|Pala_Y_D\(2)))) # (!\VGA|pixel_y\(2) & (!\int_bola|Pala_Y_D\(2) & !\int_bola|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \int_bola|Pala_Y_D\(2),
	datad => VCC,
	cin => \int_bola|LessThan7~3_cout\,
	cout => \int_bola|LessThan7~5_cout\);

-- Location: LCCOMB_X90_Y64_N20
\int_bola|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~7_cout\ = CARRY((\VGA|pixel_y\(3) & (\int_bola|Pala_Y_D\(3) & !\int_bola|LessThan7~5_cout\)) # (!\VGA|pixel_y\(3) & ((\int_bola|Pala_Y_D\(3)) # (!\int_bola|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \int_bola|Pala_Y_D\(3),
	datad => VCC,
	cin => \int_bola|LessThan7~5_cout\,
	cout => \int_bola|LessThan7~7_cout\);

-- Location: LCCOMB_X90_Y64_N22
\int_bola|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~9_cout\ = CARRY((\int_bola|Pala_Y_D\(4) & (\VGA|pixel_y\(4) & !\int_bola|LessThan7~7_cout\)) # (!\int_bola|Pala_Y_D\(4) & ((\VGA|pixel_y\(4)) # (!\int_bola|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y_D\(4),
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \int_bola|LessThan7~7_cout\,
	cout => \int_bola|LessThan7~9_cout\);

-- Location: LCCOMB_X90_Y64_N24
\int_bola|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\int_bola|Add2~2_combout\ & !\int_bola|LessThan7~9_cout\)) # (!\VGA|pixel_y\(5) & ((\int_bola|Add2~2_combout\) # (!\int_bola|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \int_bola|Add2~2_combout\,
	datad => VCC,
	cin => \int_bola|LessThan7~9_cout\,
	cout => \int_bola|LessThan7~11_cout\);

-- Location: LCCOMB_X90_Y64_N26
\int_bola|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\int_bola|LessThan7~11_cout\) # (!\int_bola|Add2~4_combout\))) # (!\VGA|pixel_y\(6) & (!\int_bola|Add2~4_combout\ & !\int_bola|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \int_bola|Add2~4_combout\,
	datad => VCC,
	cin => \int_bola|LessThan7~11_cout\,
	cout => \int_bola|LessThan7~13_cout\);

-- Location: LCCOMB_X90_Y64_N28
\int_bola|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\int_bola|Add2~6_combout\ & !\int_bola|LessThan7~13_cout\)) # (!\VGA|pixel_y\(7) & ((\int_bola|Add2~6_combout\) # (!\int_bola|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \int_bola|Add2~6_combout\,
	datad => VCC,
	cin => \int_bola|LessThan7~13_cout\,
	cout => \int_bola|LessThan7~15_cout\);

-- Location: LCCOMB_X90_Y64_N30
\int_bola|LessThan7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan7~16_combout\ = (\VGA|pixel_y\(8) & ((!\int_bola|Add2~8_combout\) # (!\int_bola|LessThan7~15_cout\))) # (!\VGA|pixel_y\(8) & (!\int_bola|LessThan7~15_cout\ & !\int_bola|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => \int_bola|Add2~8_combout\,
	cin => \int_bola|LessThan7~15_cout\,
	combout => \int_bola|LessThan7~16_combout\);

-- Location: LCCOMB_X85_Y64_N2
\VGA|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~0_combout\ = (\VGA|video_on~q\ & (\int_bola|Add5~12_combout\ & ((\int_bola|Add2~10_combout\) # (!\int_bola|LessThan7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|video_on~q\,
	datab => \int_bola|Add5~12_combout\,
	datac => \int_bola|Add2~10_combout\,
	datad => \int_bola|LessThan7~16_combout\,
	combout => \VGA|vga_r~0_combout\);

-- Location: LCCOMB_X85_Y64_N4
\VGA|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~1_combout\ = (!\int_bola|LessThan5~1_combout\ & (!\int_bola|LessThan6~16_combout\ & \VGA|vga_r~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|LessThan5~1_combout\,
	datab => \int_bola|LessThan6~16_combout\,
	datad => \VGA|vga_r~0_combout\,
	combout => \VGA|vga_r~1_combout\);

-- Location: LCCOMB_X83_Y64_N0
\VGA|vga_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~4_combout\ = (\VGA|pixel_x\(4) & ((\VGA|pixel_x\(0)) # ((\VGA|pixel_x\(1)) # (\VGA|pixel_x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(0),
	datab => \VGA|pixel_x\(1),
	datac => \VGA|pixel_x\(2),
	datad => \VGA|pixel_x\(4),
	combout => \VGA|vga_r~4_combout\);

-- Location: LCCOMB_X83_Y64_N4
\int_bola|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan0~1_combout\ = (\int_bola|Add5~6_combout\) # (\int_bola|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~6_combout\,
	datad => \int_bola|Add5~12_combout\,
	combout => \int_bola|LessThan0~1_combout\);

-- Location: LCCOMB_X83_Y64_N26
\int_bola|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan0~0_combout\ = (\int_bola|Add5~10_combout\) # ((\int_bola|Add5~8_combout\) # ((\int_bola|Add5~4_combout\) # (\int_bola|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add5~10_combout\,
	datab => \int_bola|Add5~8_combout\,
	datac => \int_bola|Add5~4_combout\,
	datad => \int_bola|Add5~2_combout\,
	combout => \int_bola|LessThan0~0_combout\);

-- Location: LCCOMB_X84_Y64_N4
\VGA|vga_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~5_combout\ = (\VGA|vga_r~4_combout\ & (!\VGA|pixel_x\(3) & ((\int_bola|LessThan0~1_combout\) # (\int_bola|LessThan0~0_combout\)))) # (!\VGA|vga_r~4_combout\ & ((\int_bola|LessThan0~1_combout\) # ((\int_bola|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_r~4_combout\,
	datab => \int_bola|LessThan0~1_combout\,
	datac => \int_bola|LessThan0~0_combout\,
	datad => \VGA|pixel_x\(3),
	combout => \VGA|vga_r~5_combout\);

-- Location: LCCOMB_X87_Y63_N14
\int_bola|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~1_cout\ = CARRY((\int_bola|Pala_Y\(1) & !\VGA|pixel_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cout => \int_bola|LessThan2~1_cout\);

-- Location: LCCOMB_X87_Y63_N16
\int_bola|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~3_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\int_bola|LessThan2~1_cout\) # (!\int_bola|Pala_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\int_bola|Pala_Y\(2) & !\int_bola|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \int_bola|Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|LessThan2~1_cout\,
	cout => \int_bola|LessThan2~3_cout\);

-- Location: LCCOMB_X87_Y63_N18
\int_bola|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~5_cout\ = CARRY((\VGA|pixel_y\(3) & (\int_bola|Pala_Y\(3) & !\int_bola|LessThan2~3_cout\)) # (!\VGA|pixel_y\(3) & ((\int_bola|Pala_Y\(3)) # (!\int_bola|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \int_bola|Pala_Y\(3),
	datad => VCC,
	cin => \int_bola|LessThan2~3_cout\,
	cout => \int_bola|LessThan2~5_cout\);

-- Location: LCCOMB_X87_Y63_N20
\int_bola|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~7_cout\ = CARRY((\int_bola|Pala_Y\(4) & ((!\int_bola|LessThan2~5_cout\) # (!\VGA|pixel_y\(4)))) # (!\int_bola|Pala_Y\(4) & (!\VGA|pixel_y\(4) & !\int_bola|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(4),
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \int_bola|LessThan2~5_cout\,
	cout => \int_bola|LessThan2~7_cout\);

-- Location: LCCOMB_X87_Y63_N22
\int_bola|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~9_cout\ = CARRY((\int_bola|Pala_Y\(5) & (\int_bola|Add0~5_combout\ & !\int_bola|LessThan2~7_cout\)) # (!\int_bola|Pala_Y\(5) & ((\int_bola|Add0~5_combout\) # (!\int_bola|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(5),
	datab => \int_bola|Add0~5_combout\,
	datad => VCC,
	cin => \int_bola|LessThan2~7_cout\,
	cout => \int_bola|LessThan2~9_cout\);

-- Location: LCCOMB_X87_Y63_N24
\int_bola|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~11_cout\ = CARRY((\int_bola|Add0~4_combout\ & ((\int_bola|Pala_Y\(6)) # (!\int_bola|LessThan2~9_cout\))) # (!\int_bola|Add0~4_combout\ & (\int_bola|Pala_Y\(6) & !\int_bola|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add0~4_combout\,
	datab => \int_bola|Pala_Y\(6),
	datad => VCC,
	cin => \int_bola|LessThan2~9_cout\,
	cout => \int_bola|LessThan2~11_cout\);

-- Location: LCCOMB_X87_Y63_N26
\int_bola|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~13_cout\ = CARRY((\int_bola|Add0~3_combout\ & (!\int_bola|Pala_Y\(7) & !\int_bola|LessThan2~11_cout\)) # (!\int_bola|Add0~3_combout\ & ((!\int_bola|LessThan2~11_cout\) # (!\int_bola|Pala_Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add0~3_combout\,
	datab => \int_bola|Pala_Y\(7),
	datad => VCC,
	cin => \int_bola|LessThan2~11_cout\,
	cout => \int_bola|LessThan2~13_cout\);

-- Location: LCCOMB_X87_Y63_N28
\int_bola|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~15_cout\ = CARRY((\int_bola|Pala_Y\(8) & (\int_bola|Add0~2_combout\ & !\int_bola|LessThan2~13_cout\)) # (!\int_bola|Pala_Y\(8) & ((\int_bola|Add0~2_combout\) # (!\int_bola|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(8),
	datab => \int_bola|Add0~2_combout\,
	datad => VCC,
	cin => \int_bola|LessThan2~13_cout\,
	cout => \int_bola|LessThan2~15_cout\);

-- Location: LCCOMB_X87_Y63_N30
\int_bola|LessThan2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan2~16_combout\ = (\int_bola|Add0~1_combout\ & (!\int_bola|LessThan2~15_cout\ & \int_bola|Pala_Y\(9))) # (!\int_bola|Add0~1_combout\ & ((\int_bola|Pala_Y\(9)) # (!\int_bola|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \int_bola|Add0~1_combout\,
	datad => \int_bola|Pala_Y\(9),
	cin => \int_bola|LessThan2~15_cout\,
	combout => \int_bola|LessThan2~16_combout\);

-- Location: LCCOMB_X86_Y63_N0
\VGA|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~2_combout\ = (!\VGA|pixel_x\(9) & (!\VGA|pixel_x\(6) & (!\VGA|pixel_x\(5) & !\int_bola|LessThan2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	datab => \VGA|pixel_x\(6),
	datac => \VGA|pixel_x\(5),
	datad => \int_bola|LessThan2~16_combout\,
	combout => \VGA|vga_r~2_combout\);

-- Location: LCCOMB_X87_Y65_N14
\int_bola|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \int_bola|LessThan3~1_cout\);

-- Location: LCCOMB_X87_Y65_N16
\int_bola|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~3_cout\ = CARRY((\VGA|pixel_y\(1) & (\int_bola|Pala_Y\(1) & !\int_bola|LessThan3~1_cout\)) # (!\VGA|pixel_y\(1) & ((\int_bola|Pala_Y\(1)) # (!\int_bola|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \int_bola|Pala_Y\(1),
	datad => VCC,
	cin => \int_bola|LessThan3~1_cout\,
	cout => \int_bola|LessThan3~3_cout\);

-- Location: LCCOMB_X87_Y65_N18
\int_bola|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~5_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\int_bola|LessThan3~3_cout\) # (!\int_bola|Pala_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\int_bola|Pala_Y\(2) & !\int_bola|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \int_bola|Pala_Y\(2),
	datad => VCC,
	cin => \int_bola|LessThan3~3_cout\,
	cout => \int_bola|LessThan3~5_cout\);

-- Location: LCCOMB_X87_Y65_N20
\int_bola|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~7_cout\ = CARRY((\int_bola|Pala_Y\(3) & ((!\int_bola|LessThan3~5_cout\) # (!\VGA|pixel_y\(3)))) # (!\int_bola|Pala_Y\(3) & (!\VGA|pixel_y\(3) & !\int_bola|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Pala_Y\(3),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \int_bola|LessThan3~5_cout\,
	cout => \int_bola|LessThan3~7_cout\);

-- Location: LCCOMB_X87_Y65_N22
\int_bola|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~9_cout\ = CARRY((\VGA|pixel_y\(4) & ((!\int_bola|LessThan3~7_cout\) # (!\int_bola|Pala_Y\(4)))) # (!\VGA|pixel_y\(4) & (!\int_bola|Pala_Y\(4) & !\int_bola|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \int_bola|Pala_Y\(4),
	datad => VCC,
	cin => \int_bola|LessThan3~7_cout\,
	cout => \int_bola|LessThan3~9_cout\);

-- Location: LCCOMB_X87_Y65_N24
\int_bola|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\int_bola|Add1~2_combout\ & !\int_bola|LessThan3~9_cout\)) # (!\VGA|pixel_y\(5) & ((\int_bola|Add1~2_combout\) # (!\int_bola|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \int_bola|Add1~2_combout\,
	datad => VCC,
	cin => \int_bola|LessThan3~9_cout\,
	cout => \int_bola|LessThan3~11_cout\);

-- Location: LCCOMB_X87_Y65_N26
\int_bola|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~13_cout\ = CARRY((\int_bola|Add1~4_combout\ & (\VGA|pixel_y\(6) & !\int_bola|LessThan3~11_cout\)) # (!\int_bola|Add1~4_combout\ & ((\VGA|pixel_y\(6)) # (!\int_bola|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add1~4_combout\,
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \int_bola|LessThan3~11_cout\,
	cout => \int_bola|LessThan3~13_cout\);

-- Location: LCCOMB_X87_Y65_N28
\int_bola|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~15_cout\ = CARRY((\int_bola|Add1~6_combout\ & ((!\int_bola|LessThan3~13_cout\) # (!\VGA|pixel_y\(7)))) # (!\int_bola|Add1~6_combout\ & (!\VGA|pixel_y\(7) & !\int_bola|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|Add1~6_combout\,
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \int_bola|LessThan3~13_cout\,
	cout => \int_bola|LessThan3~15_cout\);

-- Location: LCCOMB_X87_Y65_N30
\int_bola|LessThan3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \int_bola|LessThan3~16_combout\ = (\VGA|pixel_y\(8) & ((!\int_bola|Add1~8_combout\) # (!\int_bola|LessThan3~15_cout\))) # (!\VGA|pixel_y\(8) & (!\int_bola|LessThan3~15_cout\ & !\int_bola|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => \int_bola|Add1~8_combout\,
	cin => \int_bola|LessThan3~15_cout\,
	combout => \int_bola|LessThan3~16_combout\);

-- Location: LCCOMB_X87_Y65_N12
\VGA|vga_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~3_combout\ = (!\VGA|pixel_x\(7) & (!\VGA|pixel_x\(8) & ((\int_bola|Add1~10_combout\) # (!\int_bola|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(7),
	datab => \VGA|pixel_x\(8),
	datac => \int_bola|LessThan3~16_combout\,
	datad => \int_bola|Add1~10_combout\,
	combout => \VGA|vga_r~3_combout\);

-- Location: LCCOMB_X85_Y64_N0
\VGA|vga_r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~6_combout\ = (\VGA|video_on~q\ & (\VGA|vga_r~5_combout\ & (\VGA|vga_r~2_combout\ & \VGA|vga_r~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|video_on~q\,
	datab => \VGA|vga_r~5_combout\,
	datac => \VGA|vga_r~2_combout\,
	datad => \VGA|vga_r~3_combout\,
	combout => \VGA|vga_r~6_combout\);

-- Location: LCCOMB_X85_Y64_N30
\VGA|vga_r~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~9_combout\ = (\VGA|vga_r~8_combout\) # ((\VGA|vga_r~6_combout\) # ((!\int_bola|LessThan4~2_combout\ & \VGA|vga_r~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_bola|LessThan4~2_combout\,
	datab => \VGA|vga_r~8_combout\,
	datac => \VGA|vga_r~1_combout\,
	datad => \VGA|vga_r~6_combout\,
	combout => \VGA|vga_r~9_combout\);

-- Location: FF_X85_Y64_N5
\VGA|vga_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|vga_r~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_r~q\);

-- Location: FF_X85_Y64_N25
\VGA|vga_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|vga_r~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_g~q\);

-- Location: FF_X85_Y64_N13
\VGA|vga_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|vga_r~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_b~q\);

-- Location: LCCOMB_X84_Y64_N28
\VGA|vga_blank_N~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_blank_N~feeder_combout\ = \VGA|video_on~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|video_on~q\,
	combout => \VGA|vga_blank_N~feeder_combout\);

-- Location: FF_X84_Y64_N29
\VGA|vga_blank_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_blank_N~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_blank_N~q\);

-- Location: LCCOMB_X82_Y64_N8
\VGA|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~1_combout\ = (!\VGA|cont_hs\(8) & (\VGA|cont_hs\(9) & \VGA|cont_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_hs\(7),
	combout => \VGA|process_0~1_combout\);

-- Location: LCCOMB_X82_Y64_N0
\VGA|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~2_combout\ = ((\VGA|cont_hs\(5) & (\VGA|cont_hs\(6) & \VGA|cont_hs\(4))) # (!\VGA|cont_hs\(5) & (!\VGA|cont_hs\(6) & !\VGA|cont_hs\(4)))) # (!\VGA|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datab => \VGA|cont_hs\(6),
	datac => \VGA|process_0~1_combout\,
	datad => \VGA|cont_hs\(4),
	combout => \VGA|process_0~2_combout\);

-- Location: FF_X82_Y64_N1
\VGA|hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|hs~q\);

-- Location: LCCOMB_X74_Y69_N8
\VGA|vga_hs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_hs~feeder_combout\ = \VGA|hs~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|hs~q\,
	combout => \VGA|vga_hs~feeder_combout\);

-- Location: FF_X74_Y69_N9
\VGA|vga_hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_hs~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_hs~q\);
END structure;


