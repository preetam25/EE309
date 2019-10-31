-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "10/31/2019 21:18:25"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	forwarding_logic IS
    PORT (
	idrr_ir : IN std_logic_vector(15 DOWNTO 0);
	rrex_ir : IN std_logic_vector(15 DOWNTO 0);
	exmem_ir : IN std_logic_vector(15 DOWNTO 0);
	memwb_ir : IN std_logic_vector(15 DOWNTO 0);
	fwd_mux1 : OUT std_logic_vector(1 DOWNTO 0);
	fwd_mux2 : OUT std_logic_vector(1 DOWNTO 0)
	);
END forwarding_logic;

-- Design Ports Information


ARCHITECTURE structure OF forwarding_logic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_idrr_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rrex_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_exmem_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_memwb_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fwd_mux1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_fwd_mux2 : std_logic_vector(1 DOWNTO 0);
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \fwd_mux1~8_combout\ : std_logic;
SIGNAL \fwd_mux1~3_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \fwd_mux1~9_combout\ : std_logic;
SIGNAL \fwd_mux1~10_combout\ : std_logic;
SIGNAL \fwd_mux1~14_combout\ : std_logic;
SIGNAL \fwd_mux1~0_combout\ : std_logic;
SIGNAL \fwd_mux1~15_combout\ : std_logic;
SIGNAL \fwd_mux1~11_combout\ : std_logic;
SIGNAL \fwd_mux1~12_combout\ : std_logic;
SIGNAL \fwd_mux1~13_combout\ : std_logic;
SIGNAL \fwd_mux1~16_combout\ : std_logic;
SIGNAL \fwd_mux1~5_combout\ : std_logic;
SIGNAL \fwd_mux1~4_combout\ : std_logic;
SIGNAL \fwd_mux1~6_combout\ : std_logic;
SIGNAL \fwd_mux1~1_combout\ : std_logic;
SIGNAL \fwd_mux1~2_combout\ : std_logic;
SIGNAL \fwd_mux1~7_combout\ : std_logic;
SIGNAL \fwd_mux1~17_combout\ : std_logic;
SIGNAL \fwd_mux1~18_combout\ : std_logic;
SIGNAL \fwd_mux2~3_combout\ : std_logic;
SIGNAL \fwd_mux2~2_combout\ : std_logic;
SIGNAL \fwd_mux2~5_combout\ : std_logic;
SIGNAL \fwd_mux2~4_combout\ : std_logic;
SIGNAL \fwd_mux2~12_combout\ : std_logic;
SIGNAL \fwd_mux2~14_combout\ : std_logic;
SIGNAL \fwd_mux2~13_combout\ : std_logic;
SIGNAL \fwd_mux2~8_combout\ : std_logic;
SIGNAL \fwd_mux2~7_combout\ : std_logic;
SIGNAL \fwd_mux2~9_combout\ : std_logic;
SIGNAL \fwd_mux2~10_combout\ : std_logic;
SIGNAL \fwd_mux2~6_combout\ : std_logic;
SIGNAL \fwd_mux2~11_combout\ : std_logic;
SIGNAL \fwd_mux2~15_combout\ : std_logic;
SIGNAL \fwd_mux2~18_combout\ : std_logic;
SIGNAL \fwd_mux2~16_combout\ : std_logic;
SIGNAL \fwd_mux2~17_combout\ : std_logic;
SIGNAL \exmem_ir~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memwb_ir~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rrex_ir~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \idrr_ir~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_idrr_ir <= idrr_ir;
ww_rrex_ir <= rrex_ir;
ww_exmem_ir <= exmem_ir;
ww_memwb_ir <= memwb_ir;
fwd_mux1 <= ww_fwd_mux1;
fwd_mux2 <= ww_fwd_mux2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(11),
	combout => \idrr_ir~combout\(11));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(5),
	combout => \rrex_ir~combout\(5));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(9),
	combout => \idrr_ir~combout\(9));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(3),
	combout => \rrex_ir~combout\(3));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(10),
	combout => \idrr_ir~combout\(10));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(4),
	combout => \rrex_ir~combout\(4));

-- Location: LC_X8_Y6_N4
\Equal10~0\ : maxv_lcell
-- Equation(s):
-- \Equal10~0_combout\ = (\idrr_ir~combout\(9) & (\rrex_ir~combout\(3) & (\idrr_ir~combout\(10) $ (!\rrex_ir~combout\(4))))) # (!\idrr_ir~combout\(9) & (!\rrex_ir~combout\(3) & (\idrr_ir~combout\(10) $ (!\rrex_ir~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(9),
	datab => \rrex_ir~combout\(3),
	datac => \idrr_ir~combout\(10),
	datad => \rrex_ir~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal10~0_combout\);

-- Location: LC_X9_Y6_N8
\Equal10~1\ : maxv_lcell
-- Equation(s):
-- \Equal10~1_combout\ = ((\Equal10~0_combout\ & (\idrr_ir~combout\(11) $ (!\rrex_ir~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \idrr_ir~combout\(11),
	datac => \rrex_ir~combout\(5),
	datad => \Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal10~1_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(15),
	combout => \exmem_ir~combout\(15));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(13),
	combout => \exmem_ir~combout\(13));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(12),
	combout => \exmem_ir~combout\(12));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(14),
	combout => \exmem_ir~combout\(14));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(4),
	combout => \exmem_ir~combout\(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(3),
	combout => \exmem_ir~combout\(3));

-- Location: LC_X8_Y6_N7
\fwd_mux1~8\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~8_combout\ = (\idrr_ir~combout\(9) & (\exmem_ir~combout\(3) & (\exmem_ir~combout\(4) $ (!\idrr_ir~combout\(10))))) # (!\idrr_ir~combout\(9) & (!\exmem_ir~combout\(3) & (\exmem_ir~combout\(4) $ (!\idrr_ir~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(9),
	datab => \exmem_ir~combout\(4),
	datac => \idrr_ir~combout\(10),
	datad => \exmem_ir~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~8_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(14),
	combout => \idrr_ir~combout\(14));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(13),
	combout => \idrr_ir~combout\(13));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(15),
	combout => \idrr_ir~combout\(15));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(12),
	combout => \idrr_ir~combout\(12));

-- Location: LC_X10_Y6_N6
\fwd_mux1~3\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~3_combout\ = (\idrr_ir~combout\(14) & (!\idrr_ir~combout\(13) & (\idrr_ir~combout\(15) $ (\idrr_ir~combout\(12))))) # (!\idrr_ir~combout\(14) & (!\idrr_ir~combout\(15) & ((!\idrr_ir~combout\(12)) # (!\idrr_ir~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0325",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(14),
	datab => \idrr_ir~combout\(13),
	datac => \idrr_ir~combout\(15),
	datad => \idrr_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~3_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(5),
	combout => \exmem_ir~combout\(5));

-- Location: LC_X8_Y6_N9
\Equal15~0\ : maxv_lcell
-- Equation(s):
-- \Equal15~0_combout\ = ((\idrr_ir~combout\(11) $ (\exmem_ir~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \idrr_ir~combout\(11),
	datad => \exmem_ir~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~0_combout\);

-- Location: LC_X8_Y6_N5
\fwd_mux1~9\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~9_combout\ = (!\exmem_ir~combout\(14) & (\fwd_mux1~8_combout\ & (\fwd_mux1~3_combout\ & !\Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(14),
	datab => \fwd_mux1~8_combout\,
	datac => \fwd_mux1~3_combout\,
	datad => \Equal15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~9_combout\);

-- Location: LC_X9_Y6_N1
\fwd_mux1~10\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~10_combout\ = ((\exmem_ir~combout\(13) & (\exmem_ir~combout\(15))) # (!\exmem_ir~combout\(13) & ((\exmem_ir~combout\(12))))) # (!\fwd_mux1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(15),
	datab => \exmem_ir~combout\(13),
	datac => \exmem_ir~combout\(12),
	datad => \fwd_mux1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~10_combout\);

-- Location: LC_X9_Y6_N5
\fwd_mux1~14\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~14_combout\ = (\exmem_ir~combout\(12) & (!\exmem_ir~combout\(14) & (\exmem_ir~combout\(15)))) # (!\exmem_ir~combout\(12) & (\exmem_ir~combout\(14) & (!\exmem_ir~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2424",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(12),
	datab => \exmem_ir~combout\(14),
	datac => \exmem_ir~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~14_combout\);

-- Location: LC_X10_Y6_N1
\fwd_mux1~0\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~0_combout\ = (!\idrr_ir~combout\(14) & (!\idrr_ir~combout\(15) & ((!\idrr_ir~combout\(12)) # (!\idrr_ir~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0105",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(14),
	datab => \idrr_ir~combout\(13),
	datac => \idrr_ir~combout\(15),
	datad => \idrr_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~0_combout\);

-- Location: LC_X9_Y6_N6
\fwd_mux1~15\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~15_combout\ = (\Equal10~1_combout\ & (!\exmem_ir~combout\(13) & (\fwd_mux1~14_combout\ & \fwd_mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \exmem_ir~combout\(13),
	datac => \fwd_mux1~14_combout\,
	datad => \fwd_mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~15_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(14),
	combout => \rrex_ir~combout\(14));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(15),
	combout => \rrex_ir~combout\(15));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(13),
	combout => \rrex_ir~combout\(13));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(12),
	combout => \rrex_ir~combout\(12));

-- Location: LC_X10_Y6_N7
\fwd_mux1~11\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~11_combout\ = (\rrex_ir~combout\(15) & ((\rrex_ir~combout\(14)) # ((\rrex_ir~combout\(13))))) # (!\rrex_ir~combout\(15) & ((\rrex_ir~combout\(13) & (\rrex_ir~combout\(14))) # (!\rrex_ir~combout\(13) & ((\rrex_ir~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebe8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(14),
	datab => \rrex_ir~combout\(15),
	datac => \rrex_ir~combout\(13),
	datad => \rrex_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~11_combout\);

-- Location: LC_X10_Y6_N5
\fwd_mux1~12\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~12_combout\ = (!\rrex_ir~combout\(13) & ((\rrex_ir~combout\(14) & (!\rrex_ir~combout\(15) & !\rrex_ir~combout\(12))) # (!\rrex_ir~combout\(14) & (\rrex_ir~combout\(15) & \rrex_ir~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0402",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(14),
	datab => \rrex_ir~combout\(15),
	datac => \rrex_ir~combout\(13),
	datad => \rrex_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~12_combout\);

-- Location: LC_X10_Y6_N4
\fwd_mux1~13\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~13_combout\ = (\fwd_mux1~11_combout\ & (\fwd_mux1~3_combout\ & (\fwd_mux1~12_combout\))) # (!\fwd_mux1~11_combout\ & ((\fwd_mux1~12_combout\ & ((\fwd_mux1~0_combout\))) # (!\fwd_mux1~12_combout\ & (\fwd_mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b282",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~3_combout\,
	datab => \fwd_mux1~11_combout\,
	datac => \fwd_mux1~12_combout\,
	datad => \fwd_mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~13_combout\);

-- Location: LC_X9_Y6_N2
\fwd_mux1~16\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~16_combout\ = (\fwd_mux1~10_combout\ & (!\fwd_mux1~15_combout\ & ((!\fwd_mux1~13_combout\) # (!\Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \fwd_mux1~10_combout\,
	datac => \fwd_mux1~15_combout\,
	datad => \fwd_mux1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~16_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(5),
	combout => \memwb_ir~combout\(5));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(4),
	combout => \memwb_ir~combout\(4));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(3),
	combout => \memwb_ir~combout\(3));

-- Location: LC_X8_Y6_N1
\fwd_mux1~5\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~5_combout\ = (\idrr_ir~combout\(9) & (\memwb_ir~combout\(3) & (\memwb_ir~combout\(4) $ (!\idrr_ir~combout\(10))))) # (!\idrr_ir~combout\(9) & (!\memwb_ir~combout\(3) & (\memwb_ir~combout\(4) $ (!\idrr_ir~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(9),
	datab => \memwb_ir~combout\(4),
	datac => \idrr_ir~combout\(10),
	datad => \memwb_ir~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~5_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(14),
	combout => \memwb_ir~combout\(14));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(12),
	combout => \memwb_ir~combout\(12));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(15),
	combout => \memwb_ir~combout\(15));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(13),
	combout => \memwb_ir~combout\(13));

-- Location: LC_X7_Y6_N4
\fwd_mux1~4\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~4_combout\ = (\memwb_ir~combout\(13) & (((!\memwb_ir~combout\(15))))) # (!\memwb_ir~combout\(13) & (!\memwb_ir~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3535",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(12),
	datab => \memwb_ir~combout\(15),
	datac => \memwb_ir~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~4_combout\);

-- Location: LC_X7_Y6_N1
\fwd_mux1~6\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~6_combout\ = (\fwd_mux1~5_combout\ & (!\memwb_ir~combout\(14) & (\fwd_mux1~4_combout\ & \fwd_mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~5_combout\,
	datab => \memwb_ir~combout\(14),
	datac => \fwd_mux1~4_combout\,
	datad => \fwd_mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~6_combout\);

-- Location: LC_X7_Y6_N8
\fwd_mux1~1\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~1_combout\ = (\memwb_ir~combout\(12) & (\memwb_ir~combout\(15) & ((!\memwb_ir~combout\(14))))) # (!\memwb_ir~combout\(12) & (!\memwb_ir~combout\(15) & ((\memwb_ir~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1188",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(12),
	datab => \memwb_ir~combout\(15),
	datad => \memwb_ir~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~1_combout\);

-- Location: LC_X9_Y6_N3
\fwd_mux1~2\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~2_combout\ = (\Equal10~1_combout\ & (\fwd_mux1~1_combout\ & (!\memwb_ir~combout\(13) & \fwd_mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \fwd_mux1~1_combout\,
	datac => \memwb_ir~combout\(13),
	datad => \fwd_mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~2_combout\);

-- Location: LC_X9_Y6_N4
\fwd_mux1~7\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~7_combout\ = (\fwd_mux1~2_combout\) # ((\fwd_mux1~6_combout\ & (\memwb_ir~combout\(5) $ (!\idrr_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(5),
	datab => \idrr_ir~combout\(11),
	datac => \fwd_mux1~6_combout\,
	datad => \fwd_mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~7_combout\);

-- Location: LC_X9_Y6_N9
\fwd_mux1~17\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~17_combout\ = (\Equal10~1_combout\ & ((\fwd_mux1~13_combout\) # ((\fwd_mux1~16_combout\ & \fwd_mux1~7_combout\)))) # (!\Equal10~1_combout\ & (\fwd_mux1~16_combout\ & (\fwd_mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \fwd_mux1~16_combout\,
	datac => \fwd_mux1~7_combout\,
	datad => \fwd_mux1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~17_combout\);

-- Location: LC_X9_Y6_N0
\fwd_mux1~18\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~18_combout\ = (\fwd_mux1~16_combout\ & (((\fwd_mux1~7_combout\)))) # (!\fwd_mux1~16_combout\ & (((!\fwd_mux1~13_combout\)) # (!\Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \fwd_mux1~16_combout\,
	datac => \fwd_mux1~7_combout\,
	datad => \fwd_mux1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~18_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(8),
	combout => \idrr_ir~combout\(8));

-- Location: LC_X9_Y6_N7
\fwd_mux2~3\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~3_combout\ = (\rrex_ir~combout\(14)) # ((\rrex_ir~combout\(15)) # (\rrex_ir~combout\(5) $ (\idrr_ir~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffde",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(5),
	datab => \rrex_ir~combout\(14),
	datac => \idrr_ir~combout\(8),
	datad => \rrex_ir~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~3_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(6),
	combout => \idrr_ir~combout\(6));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(7),
	combout => \idrr_ir~combout\(7));

-- Location: LC_X8_Y6_N8
\fwd_mux2~2\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~2_combout\ = (\idrr_ir~combout\(6) & ((\idrr_ir~combout\(7) $ (\rrex_ir~combout\(4))) # (!\rrex_ir~combout\(3)))) # (!\idrr_ir~combout\(6) & ((\rrex_ir~combout\(3)) # (\idrr_ir~combout\(7) $ (\rrex_ir~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(6),
	datab => \rrex_ir~combout\(3),
	datac => \idrr_ir~combout\(7),
	datad => \rrex_ir~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~2_combout\);

-- Location: LC_X10_Y6_N8
\fwd_mux2~5\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~5_combout\ = (\idrr_ir~combout\(15) & (!\idrr_ir~combout\(14) & (!\idrr_ir~combout\(13) & \idrr_ir~combout\(12)))) # (!\idrr_ir~combout\(15) & (!\idrr_ir~combout\(12) & ((!\idrr_ir~combout\(13)) # (!\idrr_ir~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1007",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(14),
	datab => \idrr_ir~combout\(13),
	datac => \idrr_ir~combout\(15),
	datad => \idrr_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~5_combout\);

-- Location: LC_X10_Y6_N2
\fwd_mux2~4\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~4_combout\ = (\idrr_ir~combout\(14) & (!\idrr_ir~combout\(13) & (\idrr_ir~combout\(15) $ (\idrr_ir~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(14),
	datab => \idrr_ir~combout\(13),
	datac => \idrr_ir~combout\(15),
	datad => \idrr_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~4_combout\);

-- Location: LC_X7_Y6_N6
\fwd_mux2~12\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~12_combout\ = (\memwb_ir~combout\(12) & (\fwd_mux2~5_combout\ & (!\memwb_ir~combout\(13)))) # (!\memwb_ir~combout\(12) & ((\fwd_mux2~5_combout\) # ((\fwd_mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(12),
	datab => \fwd_mux2~5_combout\,
	datac => \memwb_ir~combout\(13),
	datad => \fwd_mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~12_combout\);

-- Location: LC_X7_Y6_N0
\fwd_mux2~14\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~14_combout\ = (!\memwb_ir~combout\(15) & (!\memwb_ir~combout\(14) & (\memwb_ir~combout\(5) $ (!\idrr_ir~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0021",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(5),
	datab => \memwb_ir~combout\(15),
	datac => \idrr_ir~combout\(8),
	datad => \memwb_ir~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~14_combout\);

-- Location: LC_X8_Y6_N6
\fwd_mux2~13\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~13_combout\ = (\idrr_ir~combout\(6) & (\memwb_ir~combout\(3) & (\memwb_ir~combout\(4) $ (!\idrr_ir~combout\(7))))) # (!\idrr_ir~combout\(6) & (!\memwb_ir~combout\(3) & (\memwb_ir~combout\(4) $ (!\idrr_ir~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(6),
	datab => \memwb_ir~combout\(4),
	datac => \idrr_ir~combout\(7),
	datad => \memwb_ir~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~13_combout\);

-- Location: LC_X10_Y6_N9
\fwd_mux2~8\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~8_combout\ = (\fwd_mux2~5_combout\ & (\exmem_ir~combout\(12) & (\exmem_ir~combout\(13)))) # (!\fwd_mux2~5_combout\ & ((\exmem_ir~combout\(12)) # ((!\fwd_mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4d5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~5_combout\,
	datab => \exmem_ir~combout\(12),
	datac => \exmem_ir~combout\(13),
	datad => \fwd_mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~8_combout\);

-- Location: LC_X8_Y6_N2
\fwd_mux2~7\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~7_combout\ = (\idrr_ir~combout\(6) & ((\exmem_ir~combout\(4) $ (\idrr_ir~combout\(7))) # (!\exmem_ir~combout\(3)))) # (!\idrr_ir~combout\(6) & ((\exmem_ir~combout\(3)) # (\exmem_ir~combout\(4) $ (\idrr_ir~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7dbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idrr_ir~combout\(6),
	datab => \exmem_ir~combout\(4),
	datac => \idrr_ir~combout\(7),
	datad => \exmem_ir~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~7_combout\);

-- Location: LC_X8_Y6_N0
\fwd_mux2~9\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~9_combout\ = ((\exmem_ir~combout\(14)) # (\idrr_ir~combout\(8) $ (\exmem_ir~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \idrr_ir~combout\(8),
	datac => \exmem_ir~combout\(14),
	datad => \exmem_ir~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~9_combout\);

-- Location: LC_X8_Y6_N3
\fwd_mux2~10\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~10_combout\ = (\fwd_mux2~8_combout\) # ((\fwd_mux2~7_combout\) # ((\fwd_mux2~9_combout\) # (\exmem_ir~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~8_combout\,
	datab => \fwd_mux2~7_combout\,
	datac => \fwd_mux2~9_combout\,
	datad => \exmem_ir~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~10_combout\);

-- Location: LC_X10_Y6_N3
\fwd_mux2~6\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~6_combout\ = (\fwd_mux2~5_combout\ & (((\rrex_ir~combout\(13) & \rrex_ir~combout\(12))))) # (!\fwd_mux2~5_combout\ & (((\rrex_ir~combout\(12))) # (!\fwd_mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f511",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~5_combout\,
	datab => \fwd_mux2~4_combout\,
	datac => \rrex_ir~combout\(13),
	datad => \rrex_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~6_combout\);

-- Location: LC_X7_Y6_N2
\fwd_mux2~11\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~11_combout\ = (\fwd_mux2~10_combout\ & ((\fwd_mux2~3_combout\) # ((\fwd_mux2~2_combout\) # (\fwd_mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~3_combout\,
	datab => \fwd_mux2~2_combout\,
	datac => \fwd_mux2~10_combout\,
	datad => \fwd_mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~11_combout\);

-- Location: LC_X7_Y6_N7
\fwd_mux2~15\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~15_combout\ = (\fwd_mux2~12_combout\ & (\fwd_mux2~14_combout\ & (\fwd_mux2~13_combout\ & \fwd_mux2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~12_combout\,
	datab => \fwd_mux2~14_combout\,
	datac => \fwd_mux2~13_combout\,
	datad => \fwd_mux2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~15_combout\);

-- Location: LC_X7_Y6_N5
\fwd_mux2~18\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~18_combout\ = (\fwd_mux2~15_combout\) # ((!\fwd_mux2~3_combout\ & (!\fwd_mux2~2_combout\ & !\fwd_mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~3_combout\,
	datab => \fwd_mux2~2_combout\,
	datac => \fwd_mux2~15_combout\,
	datad => \fwd_mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~18_combout\);

-- Location: LC_X7_Y6_N9
\fwd_mux2~16\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~16_combout\ = ((\fwd_mux2~2_combout\) # ((\fwd_mux2~3_combout\) # (\fwd_mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fwd_mux2~2_combout\,
	datac => \fwd_mux2~3_combout\,
	datad => \fwd_mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~16_combout\);

-- Location: LC_X7_Y6_N3
\fwd_mux2~17\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~17_combout\ = ((\fwd_mux2~15_combout\) # ((\fwd_mux2~16_combout\ & !\fwd_mux2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fwd_mux2~16_combout\,
	datac => \fwd_mux2~15_combout\,
	datad => \fwd_mux2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~17_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(0));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(1));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(2));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(3));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(4));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\idrr_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_idrr_ir(5));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(0));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(1));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(2));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(7));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(8));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(9));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(10));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(11));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(1));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(2));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(6));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(7));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(8));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(9));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(10));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(11));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(0));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(1));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(2));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(6));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(7));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(8));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(9));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(10));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(11));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux1~17_combout\,
	oe => VCC,
	padio => ww_fwd_mux1(0));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux1~18_combout\,
	oe => VCC,
	padio => ww_fwd_mux1(1));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux2~18_combout\,
	oe => VCC,
	padio => ww_fwd_mux2(0));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux2~17_combout\,
	oe => VCC,
	padio => ww_fwd_mux2(1));
END structure;


