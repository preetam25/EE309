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

-- DATE "11/02/2019 21:23:52"

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
	rrex_ir : IN std_logic_vector(15 DOWNTO 0);
	exmem_ir : IN std_logic_vector(15 DOWNTO 0);
	memwb_ir : IN std_logic_vector(15 DOWNTO 0);
	wbdone_ir : IN std_logic_vector(15 DOWNTO 0);
	exmem_addr : IN std_logic_vector(2 DOWNTO 0);
	memwb_addr : IN std_logic_vector(2 DOWNTO 0);
	wbdone_addr : IN std_logic_vector(2 DOWNTO 0);
	fwd_mux1 : OUT std_logic_vector(2 DOWNTO 0);
	fwd_mux2 : OUT std_logic_vector(2 DOWNTO 0)
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
SIGNAL ww_rrex_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_exmem_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_memwb_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_wbdone_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_exmem_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_memwb_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wbdone_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_fwd_mux1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_fwd_mux2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \fwd_mux1~22_combout\ : std_logic;
SIGNAL \fwd_mux1~23_combout\ : std_logic;
SIGNAL \fwd_mux2~0_combout\ : std_logic;
SIGNAL \fwd_mux1~0_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \fwd_mux2~1_combout\ : std_logic;
SIGNAL \fwd_mux1~4_combout\ : std_logic;
SIGNAL \fwd_mux1~24_combout\ : std_logic;
SIGNAL \fwd_mux1~25_combout\ : std_logic;
SIGNAL \fwd_mux1~26_combout\ : std_logic;
SIGNAL \fwd_mux1~1_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \fwd_mux1~2_combout\ : std_logic;
SIGNAL \fwd_mux1~3_combout\ : std_logic;
SIGNAL \fwd_mux1~12_combout\ : std_logic;
SIGNAL \fwd_mux1~9_combout\ : std_logic;
SIGNAL \fwd_mux1~10_combout\ : std_logic;
SIGNAL \fwd_mux1~8_combout\ : std_logic;
SIGNAL \fwd_mux1~11_combout\ : std_logic;
SIGNAL \fwd_mux1~13_combout\ : std_logic;
SIGNAL \fwd_mux1~5_combout\ : std_logic;
SIGNAL \fwd_mux1~6_combout\ : std_logic;
SIGNAL \fwd_mux1~7_combout\ : std_logic;
SIGNAL \fwd_mux1~14_combout\ : std_logic;
SIGNAL \fwd_mux1~16_combout\ : std_logic;
SIGNAL \fwd_mux1~17_combout\ : std_logic;
SIGNAL \fwd_mux1~15_combout\ : std_logic;
SIGNAL \fwd_mux1~19_combout\ : std_logic;
SIGNAL \fwd_mux1~18_combout\ : std_logic;
SIGNAL \fwd_mux1~20_combout\ : std_logic;
SIGNAL \fwd_mux1~21_combout\ : std_logic;
SIGNAL \fwd_mux1~27_combout\ : std_logic;
SIGNAL \fwd_mux1~33_combout\ : std_logic;
SIGNAL \fwd_mux1~34_combout\ : std_logic;
SIGNAL \fwd_mux1~35_combout\ : std_logic;
SIGNAL \fwd_mux1~36_combout\ : std_logic;
SIGNAL \fwd_mux1~28_combout\ : std_logic;
SIGNAL \fwd_mux1~29_combout\ : std_logic;
SIGNAL \fwd_mux1~31_combout\ : std_logic;
SIGNAL \fwd_mux1~30_combout\ : std_logic;
SIGNAL \fwd_mux1~32_combout\ : std_logic;
SIGNAL \fwd_mux1~37_combout\ : std_logic;
SIGNAL \fwd_mux1~38_combout\ : std_logic;
SIGNAL \fwd_mux1~39_combout\ : std_logic;
SIGNAL \fwd_mux1~40_combout\ : std_logic;
SIGNAL \fwd_mux1~42_combout\ : std_logic;
SIGNAL \fwd_mux1~41_combout\ : std_logic;
SIGNAL \fwd_mux1~43_combout\ : std_logic;
SIGNAL \fwd_mux1~44_combout\ : std_logic;
SIGNAL \fwd_mux1~45_combout\ : std_logic;
SIGNAL \fwd_mux2~2_combout\ : std_logic;
SIGNAL \fwd_mux2~25_combout\ : std_logic;
SIGNAL \fwd_mux2~26_combout\ : std_logic;
SIGNAL \fwd_mux2~27_combout\ : std_logic;
SIGNAL \fwd_mux2~24_combout\ : std_logic;
SIGNAL \fwd_mux2~28_combout\ : std_logic;
SIGNAL \fwd_mux2~22_combout\ : std_logic;
SIGNAL \fwd_mux2~23_combout\ : std_logic;
SIGNAL \fwd_mux2~29_combout\ : std_logic;
SIGNAL \fwd_mux2~10_combout\ : std_logic;
SIGNAL \fwd_mux2~4_combout\ : std_logic;
SIGNAL \fwd_mux2~5_combout\ : std_logic;
SIGNAL \fwd_mux2~6_combout\ : std_logic;
SIGNAL \fwd_mux2~7_combout\ : std_logic;
SIGNAL \fwd_mux2~8_combout\ : std_logic;
SIGNAL \fwd_mux2~9_combout\ : std_logic;
SIGNAL \fwd_mux2~11_combout\ : std_logic;
SIGNAL \fwd_mux2~3_combout\ : std_logic;
SIGNAL \fwd_mux2~36_combout\ : std_logic;
SIGNAL \fwd_mux2~37_combout\ : std_logic;
SIGNAL \fwd_mux2~19_combout\ : std_logic;
SIGNAL \fwd_mux2~20_combout\ : std_logic;
SIGNAL \fwd_mux2~12_combout\ : std_logic;
SIGNAL \fwd_mux2~15_combout\ : std_logic;
SIGNAL \fwd_mux2~16_combout\ : std_logic;
SIGNAL \Equal52~0_combout\ : std_logic;
SIGNAL \fwd_mux2~14_combout\ : std_logic;
SIGNAL \fwd_mux2~17_combout\ : std_logic;
SIGNAL \fwd_mux2~13_combout\ : std_logic;
SIGNAL \fwd_mux2~18_combout\ : std_logic;
SIGNAL \fwd_mux2~21_combout\ : std_logic;
SIGNAL \fwd_mux2~30_combout\ : std_logic;
SIGNAL \fwd_mux2~31_combout\ : std_logic;
SIGNAL \fwd_mux2~32_combout\ : std_logic;
SIGNAL \Equal46~0_combout\ : std_logic;
SIGNAL \fwd_mux2~33_combout\ : std_logic;
SIGNAL \fwd_mux2~34_combout\ : std_logic;
SIGNAL \fwd_mux2~35_combout\ : std_logic;
SIGNAL \exmem_addr~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \exmem_ir~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memwb_addr~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memwb_ir~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \wbdone_ir~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \wbdone_addr~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rrex_ir~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_rrex_ir <= rrex_ir;
ww_exmem_ir <= exmem_ir;
ww_memwb_ir <= memwb_ir;
ww_wbdone_ir <= wbdone_ir;
ww_exmem_addr <= exmem_addr;
ww_memwb_addr <= memwb_addr;
ww_wbdone_addr <= wbdone_addr;
fwd_mux1 <= ww_fwd_mux1;
fwd_mux2 <= ww_fwd_mux2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_addr[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_addr(1),
	combout => \memwb_addr~combout\(1));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_addr[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_addr(0),
	combout => \memwb_addr~combout\(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(10),
	combout => \rrex_ir~combout\(10));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(9),
	combout => \rrex_ir~combout\(9));

-- Location: LC_X11_Y9_N4
\fwd_mux1~22\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~22_combout\ = (\memwb_addr~combout\(1) & (\rrex_ir~combout\(10) & (\memwb_addr~combout\(0) $ (!\rrex_ir~combout\(9))))) # (!\memwb_addr~combout\(1) & (!\rrex_ir~combout\(10) & (\memwb_addr~combout\(0) $ (!\rrex_ir~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_addr~combout\(1),
	datab => \memwb_addr~combout\(0),
	datac => \rrex_ir~combout\(10),
	datad => \rrex_ir~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~22_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(11),
	combout => \rrex_ir~combout\(11));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_addr[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_addr(2),
	combout => \memwb_addr~combout\(2));

-- Location: LC_X11_Y9_N5
\fwd_mux1~23\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~23_combout\ = (\fwd_mux1~22_combout\ & ((\rrex_ir~combout\(11) $ (!\memwb_addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a00a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~22_combout\,
	datac => \rrex_ir~combout\(11),
	datad => \memwb_addr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~23_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(14),
	combout => \memwb_ir~combout\(14));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(13),
	combout => \memwb_ir~combout\(13));

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

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(12),
	combout => \memwb_ir~combout\(12));

-- Location: LC_X10_Y6_N7
\fwd_mux2~0\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~0_combout\ = (\memwb_ir~combout\(14) & (\memwb_ir~combout\(13) & (!\memwb_ir~combout\(15) & !\memwb_ir~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(14),
	datab => \memwb_ir~combout\(13),
	datac => \memwb_ir~combout\(15),
	datad => \memwb_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~0_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(12),
	combout => \rrex_ir~combout\(12));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(13),
	combout => \rrex_ir~combout\(13));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(15),
	combout => \rrex_ir~combout\(15));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(14),
	combout => \rrex_ir~combout\(14));

-- Location: LC_X11_Y9_N0
\fwd_mux1~0\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~0_combout\ = (\rrex_ir~combout\(13) & (!\rrex_ir~combout\(15) & (\rrex_ir~combout\(12) $ (!\rrex_ir~combout\(14))))) # (!\rrex_ir~combout\(13) & (\rrex_ir~combout\(15) $ (((\rrex_ir~combout\(12)) # (!\rrex_ir~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1a07",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(12),
	datab => \rrex_ir~combout\(13),
	datac => \rrex_ir~combout\(15),
	datad => \rrex_ir~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~0_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(8),
	combout => \memwb_ir~combout\(8));

-- Location: LC_X10_Y6_N5
\Equal27~0\ : maxv_lcell
-- Equation(s):
-- \Equal27~0_combout\ = \memwb_ir~combout\(8) $ ((((\rrex_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(8),
	datac => \rrex_ir~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal27~0_combout\);

-- Location: LC_X10_Y6_N0
\fwd_mux2~1\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~1_combout\ = (!\memwb_ir~combout\(14) & (!\memwb_ir~combout\(13) & (!\memwb_ir~combout\(15) & \memwb_ir~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(14),
	datab => \memwb_ir~combout\(13),
	datac => \memwb_ir~combout\(15),
	datad => \memwb_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~1_combout\);

-- Location: LC_X11_Y9_N8
\fwd_mux1~4\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~4_combout\ = (\rrex_ir~combout\(12) & (!\rrex_ir~combout\(15) & ((\rrex_ir~combout\(14)) # (!\rrex_ir~combout\(13))))) # (!\rrex_ir~combout\(12) & (\rrex_ir~combout\(15) $ (((\rrex_ir~combout\(13)) # (!\rrex_ir~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e07",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(12),
	datab => \rrex_ir~combout\(13),
	datac => \rrex_ir~combout\(15),
	datad => \rrex_ir~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~4_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(7),
	combout => \memwb_ir~combout\(7));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(6),
	combout => \memwb_ir~combout\(6));

-- Location: LC_X11_Y9_N6
\fwd_mux1~24\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~24_combout\ = (\rrex_ir~combout\(9) & (\memwb_ir~combout\(6) & (\memwb_ir~combout\(7) $ (!\rrex_ir~combout\(10))))) # (!\rrex_ir~combout\(9) & (!\memwb_ir~combout\(6) & (\memwb_ir~combout\(7) $ (!\rrex_ir~combout\(10)))))

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
	dataa => \rrex_ir~combout\(9),
	datab => \memwb_ir~combout\(7),
	datac => \rrex_ir~combout\(10),
	datad => \memwb_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~24_combout\);

-- Location: LC_X11_Y9_N7
\fwd_mux1~25\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~25_combout\ = (!\Equal27~0_combout\ & (\fwd_mux2~1_combout\ & (\fwd_mux1~4_combout\ & \fwd_mux1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~0_combout\,
	datab => \fwd_mux2~1_combout\,
	datac => \fwd_mux1~4_combout\,
	datad => \fwd_mux1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~25_combout\);

-- Location: LC_X11_Y9_N2
\fwd_mux1~26\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~26_combout\ = (!\fwd_mux1~25_combout\ & (((!\fwd_mux1~0_combout\) # (!\fwd_mux2~0_combout\)) # (!\fwd_mux1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~23_combout\,
	datab => \fwd_mux2~0_combout\,
	datac => \fwd_mux1~0_combout\,
	datad => \fwd_mux1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~26_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_addr[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_addr(1),
	combout => \wbdone_addr~combout\(1));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_addr[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_addr(0),
	combout => \wbdone_addr~combout\(0));

-- Location: LC_X11_Y7_N4
\fwd_mux1~1\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~1_combout\ = (\rrex_ir~combout\(10) & (\wbdone_addr~combout\(1) & (\wbdone_addr~combout\(0) $ (!\rrex_ir~combout\(9))))) # (!\rrex_ir~combout\(10) & (!\wbdone_addr~combout\(1) & (\wbdone_addr~combout\(0) $ (!\rrex_ir~combout\(9)))))

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
	dataa => \rrex_ir~combout\(10),
	datab => \wbdone_addr~combout\(1),
	datac => \wbdone_addr~combout\(0),
	datad => \rrex_ir~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~1_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_addr[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_addr(2),
	combout => \wbdone_addr~combout\(2));

-- Location: LC_X11_Y7_N2
\Equal22~0\ : maxv_lcell
-- Equation(s):
-- \Equal22~0_combout\ = ((\rrex_ir~combout\(11) $ (\wbdone_addr~combout\(2))))

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
	datac => \rrex_ir~combout\(11),
	datad => \wbdone_addr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal22~0_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(15),
	combout => \wbdone_ir~combout\(15));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(12),
	combout => \wbdone_ir~combout\(12));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(14),
	combout => \wbdone_ir~combout\(14));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(13),
	combout => \wbdone_ir~combout\(13));

-- Location: LC_X10_Y4_N5
\fwd_mux1~2\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~2_combout\ = (!\wbdone_ir~combout\(15) & (!\wbdone_ir~combout\(12) & (\wbdone_ir~combout\(14) & \wbdone_ir~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wbdone_ir~combout\(15),
	datab => \wbdone_ir~combout\(12),
	datac => \wbdone_ir~combout\(14),
	datad => \wbdone_ir~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~2_combout\);

-- Location: LC_X11_Y7_N5
\fwd_mux1~3\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~3_combout\ = (\fwd_mux1~1_combout\ & (!\Equal22~0_combout\ & (\fwd_mux1~0_combout\ & \fwd_mux1~2_combout\)))

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
	dataa => \fwd_mux1~1_combout\,
	datab => \Equal22~0_combout\,
	datac => \fwd_mux1~0_combout\,
	datad => \fwd_mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~3_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(8),
	combout => \wbdone_ir~combout\(8));

-- Location: LC_X10_Y4_N4
\fwd_mux1~12\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~12_combout\ = (\wbdone_ir~combout\(12) & (!\wbdone_ir~combout\(13) & (\wbdone_ir~combout\(8) $ (!\rrex_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0084",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wbdone_ir~combout\(8),
	datab => \wbdone_ir~combout\(12),
	datac => \rrex_ir~combout\(11),
	datad => \wbdone_ir~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~12_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(5),
	combout => \wbdone_ir~combout\(5));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(3),
	combout => \wbdone_ir~combout\(3));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(4),
	combout => \wbdone_ir~combout\(4));

-- Location: LC_X12_Y7_N7
\fwd_mux1~9\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~9_combout\ = (\rrex_ir~combout\(10) & (\wbdone_ir~combout\(4) & (\rrex_ir~combout\(9) $ (!\wbdone_ir~combout\(3))))) # (!\rrex_ir~combout\(10) & (!\wbdone_ir~combout\(4) & (\rrex_ir~combout\(9) $ (!\wbdone_ir~combout\(3)))))

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
	dataa => \rrex_ir~combout\(10),
	datab => \rrex_ir~combout\(9),
	datac => \wbdone_ir~combout\(3),
	datad => \wbdone_ir~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~9_combout\);

-- Location: LC_X10_Y4_N9
\fwd_mux1~10\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~10_combout\ = (!\wbdone_ir~combout\(12) & (\fwd_mux1~9_combout\ & (\rrex_ir~combout\(11) $ (!\wbdone_ir~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(11),
	datab => \wbdone_ir~combout\(12),
	datac => \wbdone_ir~combout\(5),
	datad => \fwd_mux1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~10_combout\);

-- Location: LC_X10_Y4_N6
\fwd_mux1~8\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~8_combout\ = (!\wbdone_ir~combout\(15) & (((!\wbdone_ir~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wbdone_ir~combout\(15),
	datac => \wbdone_ir~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~8_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(6),
	combout => \wbdone_ir~combout\(6));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(7),
	combout => \wbdone_ir~combout\(7));

-- Location: LC_X11_Y7_N8
\fwd_mux1~11\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~11_combout\ = (\wbdone_ir~combout\(6) & (\rrex_ir~combout\(9) & (\wbdone_ir~combout\(7) $ (!\rrex_ir~combout\(10))))) # (!\wbdone_ir~combout\(6) & (!\rrex_ir~combout\(9) & (\wbdone_ir~combout\(7) $ (!\rrex_ir~combout\(10)))))

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
	dataa => \wbdone_ir~combout\(6),
	datab => \wbdone_ir~combout\(7),
	datac => \rrex_ir~combout\(10),
	datad => \rrex_ir~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~11_combout\);

-- Location: LC_X10_Y4_N7
\fwd_mux1~13\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~13_combout\ = (\fwd_mux1~8_combout\ & ((\fwd_mux1~10_combout\) # ((\fwd_mux1~12_combout\ & \fwd_mux1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~12_combout\,
	datab => \fwd_mux1~10_combout\,
	datac => \fwd_mux1~8_combout\,
	datad => \fwd_mux1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~13_combout\);

-- Location: LC_X10_Y4_N2
\fwd_mux1~5\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~5_combout\ = (\wbdone_ir~combout\(12) & (!\wbdone_ir~combout\(14) & (\wbdone_ir~combout\(15) $ (\wbdone_ir~combout\(13))))) # (!\wbdone_ir~combout\(12) & (!\wbdone_ir~combout\(13) & (\wbdone_ir~combout\(15) $ (\wbdone_ir~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "041a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wbdone_ir~combout\(15),
	datab => \wbdone_ir~combout\(12),
	datac => \wbdone_ir~combout\(14),
	datad => \wbdone_ir~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~5_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(11),
	combout => \wbdone_ir~combout\(11));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(9),
	combout => \wbdone_ir~combout\(9));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(10),
	combout => \wbdone_ir~combout\(10));

-- Location: LC_X12_Y7_N9
\fwd_mux1~6\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~6_combout\ = (\rrex_ir~combout\(10) & (\wbdone_ir~combout\(10) & (\rrex_ir~combout\(9) $ (!\wbdone_ir~combout\(9))))) # (!\rrex_ir~combout\(10) & (!\wbdone_ir~combout\(10) & (\rrex_ir~combout\(9) $ (!\wbdone_ir~combout\(9)))))

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
	dataa => \rrex_ir~combout\(10),
	datab => \rrex_ir~combout\(9),
	datac => \wbdone_ir~combout\(9),
	datad => \wbdone_ir~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~6_combout\);

-- Location: LC_X11_Y6_N9
\fwd_mux1~7\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~7_combout\ = (\fwd_mux1~5_combout\ & (\fwd_mux1~6_combout\ & (\wbdone_ir~combout\(11) $ (!\rrex_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~5_combout\,
	datab => \wbdone_ir~combout\(11),
	datac => \rrex_ir~combout\(11),
	datad => \fwd_mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~7_combout\);

-- Location: LC_X11_Y6_N0
\fwd_mux1~14\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~14_combout\ = (\fwd_mux1~3_combout\) # ((\fwd_mux1~4_combout\ & ((\fwd_mux1~13_combout\) # (\fwd_mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~3_combout\,
	datab => \fwd_mux1~13_combout\,
	datac => \fwd_mux1~4_combout\,
	datad => \fwd_mux1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~14_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(5),
	combout => \memwb_ir~combout\(5));

-- Location: LC_X10_Y6_N1
\fwd_mux1~16\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~16_combout\ = (!\memwb_ir~combout\(14) & (((!\memwb_ir~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(14),
	datac => \memwb_ir~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~16_combout\);

-- Location: LC_X10_Y6_N8
\fwd_mux1~17\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~17_combout\ = (!\memwb_ir~combout\(12) & (\fwd_mux1~16_combout\ & (\rrex_ir~combout\(11) $ (!\memwb_ir~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(11),
	datab => \memwb_ir~combout\(12),
	datac => \memwb_ir~combout\(5),
	datad => \fwd_mux1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~17_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(4),
	combout => \memwb_ir~combout\(4));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(3),
	combout => \memwb_ir~combout\(3));

-- Location: LC_X11_Y7_N1
\fwd_mux1~15\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~15_combout\ = (\rrex_ir~combout\(10) & (\memwb_ir~combout\(4) & (\memwb_ir~combout\(3) $ (!\rrex_ir~combout\(9))))) # (!\rrex_ir~combout\(10) & (!\memwb_ir~combout\(4) & (\memwb_ir~combout\(3) $ (!\rrex_ir~combout\(9)))))

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
	dataa => \rrex_ir~combout\(10),
	datab => \memwb_ir~combout\(4),
	datac => \memwb_ir~combout\(3),
	datad => \rrex_ir~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~15_combout\);

-- Location: LC_X10_Y6_N4
\fwd_mux1~19\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~19_combout\ = (\memwb_ir~combout\(12) & (!\memwb_ir~combout\(14) & (\memwb_ir~combout\(13) $ (\memwb_ir~combout\(15))))) # (!\memwb_ir~combout\(12) & (!\memwb_ir~combout\(13) & (\memwb_ir~combout\(14) $ (\memwb_ir~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1412",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(14),
	datab => \memwb_ir~combout\(13),
	datac => \memwb_ir~combout\(15),
	datad => \memwb_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~19_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(11),
	combout => \memwb_ir~combout\(11));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(10),
	combout => \memwb_ir~combout\(10));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(9),
	combout => \memwb_ir~combout\(9));

-- Location: LC_X12_Y7_N2
\fwd_mux1~18\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~18_combout\ = (\rrex_ir~combout\(10) & (\memwb_ir~combout\(10) & (\rrex_ir~combout\(9) $ (!\memwb_ir~combout\(9))))) # (!\rrex_ir~combout\(10) & (!\memwb_ir~combout\(10) & (\rrex_ir~combout\(9) $ (!\memwb_ir~combout\(9)))))

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
	dataa => \rrex_ir~combout\(10),
	datab => \memwb_ir~combout\(10),
	datac => \rrex_ir~combout\(9),
	datad => \memwb_ir~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~18_combout\);

-- Location: LC_X11_Y6_N3
\fwd_mux1~20\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~20_combout\ = (\fwd_mux1~19_combout\ & (\fwd_mux1~18_combout\ & (\rrex_ir~combout\(11) $ (!\memwb_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(11),
	datab => \fwd_mux1~19_combout\,
	datac => \memwb_ir~combout\(11),
	datad => \fwd_mux1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~20_combout\);

-- Location: LC_X11_Y6_N7
\fwd_mux1~21\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~21_combout\ = ((!\fwd_mux1~20_combout\ & ((!\fwd_mux1~15_combout\) # (!\fwd_mux1~17_combout\)))) # (!\fwd_mux1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~17_combout\,
	datab => \fwd_mux1~15_combout\,
	datac => \fwd_mux1~4_combout\,
	datad => \fwd_mux1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~21_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(14),
	combout => \exmem_ir~combout\(14));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(15),
	combout => \exmem_ir~combout\(15));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(13),
	combout => \exmem_ir~combout\(13));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(12),
	combout => \exmem_ir~combout\(12));

-- Location: LC_X12_Y5_N6
\fwd_mux1~27\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~27_combout\ = (!\exmem_ir~combout\(14) & ((\exmem_ir~combout\(15) & (!\exmem_ir~combout\(13))) # (!\exmem_ir~combout\(15) & (\exmem_ir~combout\(13) & \exmem_ir~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(14),
	datab => \exmem_ir~combout\(15),
	datac => \exmem_ir~combout\(13),
	datad => \exmem_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~27_combout\);

-- Location: LC_X12_Y5_N5
\fwd_mux1~33\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~33_combout\ = ((!\exmem_ir~combout\(15) & (!\exmem_ir~combout\(14) & \exmem_ir~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \exmem_ir~combout\(15),
	datac => \exmem_ir~combout\(14),
	datad => \exmem_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~33_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(6),
	combout => \exmem_ir~combout\(6));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(7),
	combout => \exmem_ir~combout\(7));

-- Location: LC_X12_Y7_N0
\fwd_mux1~34\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~34_combout\ = (\exmem_ir~combout\(6) & (\rrex_ir~combout\(9) & (\rrex_ir~combout\(10) $ (!\exmem_ir~combout\(7))))) # (!\exmem_ir~combout\(6) & (!\rrex_ir~combout\(9) & (\rrex_ir~combout\(10) $ (!\exmem_ir~combout\(7)))))

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
	dataa => \exmem_ir~combout\(6),
	datab => \rrex_ir~combout\(9),
	datac => \rrex_ir~combout\(10),
	datad => \exmem_ir~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~34_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(8),
	combout => \exmem_ir~combout\(8));

-- Location: LC_X12_Y5_N7
\fwd_mux1~35\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~35_combout\ = ((\fwd_mux1~34_combout\ & (\rrex_ir~combout\(11) $ (!\exmem_ir~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rrex_ir~combout\(11),
	datac => \fwd_mux1~34_combout\,
	datad => \exmem_ir~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~35_combout\);

-- Location: LC_X12_Y5_N2
\fwd_mux1~36\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~36_combout\ = (\fwd_mux1~33_combout\ & (\fwd_mux1~35_combout\ & (!\exmem_ir~combout\(13) & \fwd_mux1~4_combout\)))

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
	dataa => \fwd_mux1~33_combout\,
	datab => \fwd_mux1~35_combout\,
	datac => \exmem_ir~combout\(13),
	datad => \fwd_mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~36_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(11),
	combout => \exmem_ir~combout\(11));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(9),
	combout => \exmem_ir~combout\(9));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(10),
	combout => \exmem_ir~combout\(10));

-- Location: LC_X12_Y6_N9
\fwd_mux1~28\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~28_combout\ = (\exmem_ir~combout\(9) & (\rrex_ir~combout\(9) & (\rrex_ir~combout\(10) $ (!\exmem_ir~combout\(10))))) # (!\exmem_ir~combout\(9) & (!\rrex_ir~combout\(9) & (\rrex_ir~combout\(10) $ (!\exmem_ir~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(9),
	datab => \rrex_ir~combout\(10),
	datac => \rrex_ir~combout\(9),
	datad => \exmem_ir~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~28_combout\);

-- Location: LC_X12_Y6_N7
\fwd_mux1~29\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~29_combout\ = (\fwd_mux1~4_combout\ & (\fwd_mux1~28_combout\ & (\rrex_ir~combout\(11) $ (!\exmem_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~4_combout\,
	datab => \rrex_ir~combout\(11),
	datac => \exmem_ir~combout\(11),
	datad => \fwd_mux1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~29_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(5),
	combout => \exmem_ir~combout\(5));

-- Location: LC_X12_Y5_N9
\fwd_mux1~31\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~31_combout\ = (!\exmem_ir~combout\(12) & (!\exmem_ir~combout\(15) & (\rrex_ir~combout\(11) $ (!\exmem_ir~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0041",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(12),
	datab => \rrex_ir~combout\(11),
	datac => \exmem_ir~combout\(5),
	datad => \exmem_ir~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~31_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(3),
	combout => \exmem_ir~combout\(3));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(4),
	combout => \exmem_ir~combout\(4));

-- Location: LC_X12_Y7_N5
\fwd_mux1~30\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~30_combout\ = (\rrex_ir~combout\(10) & (\exmem_ir~combout\(4) & (\exmem_ir~combout\(3) $ (!\rrex_ir~combout\(9))))) # (!\rrex_ir~combout\(10) & (!\exmem_ir~combout\(4) & (\exmem_ir~combout\(3) $ (!\rrex_ir~combout\(9)))))

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
	dataa => \rrex_ir~combout\(10),
	datab => \exmem_ir~combout\(3),
	datac => \rrex_ir~combout\(9),
	datad => \exmem_ir~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~30_combout\);

-- Location: LC_X12_Y5_N0
\fwd_mux1~32\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~32_combout\ = (\fwd_mux1~4_combout\ & (\fwd_mux1~31_combout\ & (!\exmem_ir~combout\(14) & \fwd_mux1~30_combout\)))

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
	dataa => \fwd_mux1~4_combout\,
	datab => \fwd_mux1~31_combout\,
	datac => \exmem_ir~combout\(14),
	datad => \fwd_mux1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~32_combout\);

-- Location: LC_X12_Y5_N8
\fwd_mux1~37\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~37_combout\ = (!\fwd_mux1~36_combout\ & (!\fwd_mux1~32_combout\ & ((!\fwd_mux1~29_combout\) # (!\fwd_mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~27_combout\,
	datab => \fwd_mux1~36_combout\,
	datac => \fwd_mux1~29_combout\,
	datad => \fwd_mux1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~37_combout\);

-- Location: LC_X11_Y6_N5
\fwd_mux1~38\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~38_combout\ = ((\fwd_mux1~26_combout\ & (\fwd_mux1~14_combout\ & \fwd_mux1~21_combout\))) # (!\fwd_mux1~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~26_combout\,
	datab => \fwd_mux1~14_combout\,
	datac => \fwd_mux1~21_combout\,
	datad => \fwd_mux1~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~38_combout\);

-- Location: LC_X11_Y6_N6
\fwd_mux1~39\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~39_combout\ = (\fwd_mux1~37_combout\ & (((\fwd_mux1~14_combout\) # (!\fwd_mux1~21_combout\)) # (!\fwd_mux1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~26_combout\,
	datab => \fwd_mux1~14_combout\,
	datac => \fwd_mux1~21_combout\,
	datad => \fwd_mux1~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~39_combout\);

-- Location: LC_X12_Y5_N3
\fwd_mux1~40\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~40_combout\ = ((!\exmem_ir~combout\(15) & ((!\exmem_ir~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \exmem_ir~combout\(15),
	datad => \exmem_ir~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~40_combout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_addr[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_addr(2),
	combout => \exmem_addr~combout\(2));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_addr[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_addr(0),
	combout => \exmem_addr~combout\(0));

-- Location: LC_X12_Y6_N3
\fwd_mux1~42\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~42_combout\ = (\exmem_addr~combout\(2) & ((\rrex_ir~combout\(9) $ (\exmem_addr~combout\(0))) # (!\rrex_ir~combout\(11)))) # (!\exmem_addr~combout\(2) & ((\rrex_ir~combout\(11)) # (\rrex_ir~combout\(9) $ (\exmem_addr~combout\(0)))))

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
	dataa => \exmem_addr~combout\(2),
	datab => \rrex_ir~combout\(11),
	datac => \rrex_ir~combout\(9),
	datad => \exmem_addr~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~42_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_addr[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_addr(1),
	combout => \exmem_addr~combout\(1));

-- Location: LC_X12_Y6_N2
\fwd_mux1~41\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~41_combout\ = ((\fwd_mux1~0_combout\ & (\exmem_addr~combout\(1) $ (!\rrex_ir~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_addr~combout\(1),
	datac => \rrex_ir~combout\(10),
	datad => \fwd_mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~41_combout\);

-- Location: LC_X12_Y6_N1
\fwd_mux1~43\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~43_combout\ = (\exmem_ir~combout\(13) & (!\fwd_mux1~42_combout\ & (\fwd_mux1~41_combout\))) # (!\exmem_ir~combout\(13) & (((\fwd_mux1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~42_combout\,
	datab => \fwd_mux1~41_combout\,
	datac => \fwd_mux1~29_combout\,
	datad => \exmem_ir~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~43_combout\);

-- Location: LC_X11_Y6_N2
\fwd_mux1~44\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~44_combout\ = (\exmem_ir~combout\(14) & (!\fwd_mux1~14_combout\ & (\fwd_mux1~40_combout\ & \fwd_mux1~43_combout\)))

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
	dataa => \exmem_ir~combout\(14),
	datab => \fwd_mux1~14_combout\,
	datac => \fwd_mux1~40_combout\,
	datad => \fwd_mux1~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~44_combout\);

-- Location: LC_X11_Y6_N8
\fwd_mux1~45\ : maxv_lcell
-- Equation(s):
-- \fwd_mux1~45_combout\ = (\fwd_mux1~26_combout\ & (\fwd_mux1~44_combout\ & (\fwd_mux1~21_combout\ & \fwd_mux1~37_combout\)))

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
	dataa => \fwd_mux1~26_combout\,
	datab => \fwd_mux1~44_combout\,
	datac => \fwd_mux1~21_combout\,
	datad => \fwd_mux1~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux1~45_combout\);

-- Location: LC_X11_Y9_N9
\fwd_mux2~2\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~2_combout\ = (\rrex_ir~combout\(12) & (!\rrex_ir~combout\(13) & (\rrex_ir~combout\(15) $ (\rrex_ir~combout\(14))))) # (!\rrex_ir~combout\(12) & ((\rrex_ir~combout\(14) & (!\rrex_ir~combout\(13))) # (!\rrex_ir~combout\(14) & 
-- ((!\rrex_ir~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1325",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(12),
	datab => \rrex_ir~combout\(13),
	datac => \rrex_ir~combout\(15),
	datad => \rrex_ir~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~2_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(8),
	combout => \rrex_ir~combout\(8));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(7),
	combout => \rrex_ir~combout\(7));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(6),
	combout => \rrex_ir~combout\(6));

-- Location: LC_X12_Y6_N4
\fwd_mux2~25\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~25_combout\ = (\exmem_ir~combout\(10) & (\rrex_ir~combout\(7) & (\exmem_ir~combout\(9) $ (!\rrex_ir~combout\(6))))) # (!\exmem_ir~combout\(10) & (!\rrex_ir~combout\(7) & (\exmem_ir~combout\(9) $ (!\rrex_ir~combout\(6)))))

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
	dataa => \exmem_ir~combout\(10),
	datab => \rrex_ir~combout\(7),
	datac => \exmem_ir~combout\(9),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~25_combout\);

-- Location: LC_X12_Y6_N0
\fwd_mux2~26\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~26_combout\ = ((\fwd_mux2~25_combout\ & (\rrex_ir~combout\(8) $ (!\exmem_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(8),
	datac => \exmem_ir~combout\(11),
	datad => \fwd_mux2~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~26_combout\);

-- Location: LC_X12_Y5_N1
\fwd_mux2~27\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~27_combout\ = (!\exmem_ir~combout\(13) & (\fwd_mux1~33_combout\ & (\rrex_ir~combout\(8) $ (!\exmem_ir~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(13),
	datab => \rrex_ir~combout\(8),
	datac => \fwd_mux1~33_combout\,
	datad => \exmem_ir~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~27_combout\);

-- Location: LC_X12_Y7_N8
\fwd_mux2~24\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~24_combout\ = (\exmem_ir~combout\(6) & (\rrex_ir~combout\(6) & (\exmem_ir~combout\(7) $ (!\rrex_ir~combout\(7))))) # (!\exmem_ir~combout\(6) & (!\rrex_ir~combout\(6) & (\exmem_ir~combout\(7) $ (!\rrex_ir~combout\(7)))))

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
	dataa => \exmem_ir~combout\(6),
	datab => \exmem_ir~combout\(7),
	datac => \rrex_ir~combout\(7),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~24_combout\);

-- Location: LC_X12_Y5_N4
\fwd_mux2~28\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~28_combout\ = (\fwd_mux2~26_combout\ & ((\fwd_mux1~27_combout\) # ((\fwd_mux2~27_combout\ & \fwd_mux2~24_combout\)))) # (!\fwd_mux2~26_combout\ & (\fwd_mux2~27_combout\ & ((\fwd_mux2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~26_combout\,
	datab => \fwd_mux2~27_combout\,
	datac => \fwd_mux1~27_combout\,
	datad => \fwd_mux2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~28_combout\);

-- Location: LC_X12_Y7_N3
\fwd_mux2~22\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~22_combout\ = (\exmem_ir~combout\(4) & (\rrex_ir~combout\(7) & (\exmem_ir~combout\(3) $ (!\rrex_ir~combout\(6))))) # (!\exmem_ir~combout\(4) & (!\rrex_ir~combout\(7) & (\exmem_ir~combout\(3) $ (!\rrex_ir~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(4),
	datab => \exmem_ir~combout\(3),
	datac => \rrex_ir~combout\(7),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~22_combout\);

-- Location: LC_X10_Y5_N8
\fwd_mux2~23\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~23_combout\ = (!\exmem_ir~combout\(14) & (\fwd_mux2~22_combout\ & (\rrex_ir~combout\(8) $ (!\exmem_ir~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \exmem_ir~combout\(14),
	datab => \rrex_ir~combout\(8),
	datac => \fwd_mux2~22_combout\,
	datad => \exmem_ir~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~23_combout\);

-- Location: LC_X10_Y5_N9
\fwd_mux2~29\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~29_combout\ = ((!\fwd_mux2~28_combout\ & ((!\fwd_mux2~23_combout\) # (!\fwd_mux1~40_combout\)))) # (!\fwd_mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "373f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~40_combout\,
	datab => \fwd_mux2~2_combout\,
	datac => \fwd_mux2~28_combout\,
	datad => \fwd_mux2~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~29_combout\);

-- Location: LC_X10_Y4_N8
\fwd_mux2~10\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~10_combout\ = (\wbdone_ir~combout\(12) & (!\wbdone_ir~combout\(14) & (\wbdone_ir~combout\(8) $ (!\rrex_ir~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0804",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wbdone_ir~combout\(8),
	datab => \wbdone_ir~combout\(12),
	datac => \wbdone_ir~combout\(14),
	datad => \rrex_ir~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~10_combout\);

-- Location: LC_X12_Y7_N4
\fwd_mux2~4\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~4_combout\ = (\rrex_ir~combout\(7) & (\wbdone_ir~combout\(4) & (\wbdone_ir~combout\(3) $ (!\rrex_ir~combout\(6))))) # (!\rrex_ir~combout\(7) & (!\wbdone_ir~combout\(4) & (\wbdone_ir~combout\(3) $ (!\rrex_ir~combout\(6)))))

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
	dataa => \rrex_ir~combout\(7),
	datab => \wbdone_ir~combout\(4),
	datac => \wbdone_ir~combout\(3),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~4_combout\);

-- Location: LC_X10_Y4_N3
\fwd_mux2~5\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~5_combout\ = (!\wbdone_ir~combout\(14) & (\fwd_mux2~4_combout\ & (\wbdone_ir~combout\(5) $ (!\rrex_ir~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0900",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wbdone_ir~combout\(5),
	datab => \rrex_ir~combout\(8),
	datac => \wbdone_ir~combout\(14),
	datad => \fwd_mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~5_combout\);

-- Location: LC_X11_Y7_N3
\fwd_mux2~6\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~6_combout\ = (\rrex_ir~combout\(7) & (\wbdone_addr~combout\(1) & (\wbdone_addr~combout\(0) $ (!\rrex_ir~combout\(6))))) # (!\rrex_ir~combout\(7) & (!\wbdone_addr~combout\(1) & (\wbdone_addr~combout\(0) $ (!\rrex_ir~combout\(6)))))

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
	dataa => \rrex_ir~combout\(7),
	datab => \wbdone_addr~combout\(1),
	datac => \wbdone_addr~combout\(0),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~6_combout\);

-- Location: LC_X10_Y4_N0
\fwd_mux2~7\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~7_combout\ = (\wbdone_ir~combout\(13) & (\wbdone_ir~combout\(14) & (\rrex_ir~combout\(8) $ (!\wbdone_addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(8),
	datab => \wbdone_ir~combout\(13),
	datac => \wbdone_ir~combout\(14),
	datad => \wbdone_addr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~7_combout\);

-- Location: LC_X10_Y4_N1
\fwd_mux2~8\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~8_combout\ = (!\wbdone_ir~combout\(12) & ((\fwd_mux2~5_combout\) # ((\fwd_mux2~6_combout\ & \fwd_mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~5_combout\,
	datab => \wbdone_ir~combout\(12),
	datac => \fwd_mux2~6_combout\,
	datad => \fwd_mux2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~8_combout\);

-- Location: LC_X11_Y7_N9
\fwd_mux2~9\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~9_combout\ = (\wbdone_ir~combout\(6) & (\rrex_ir~combout\(6) & (\wbdone_ir~combout\(7) $ (!\rrex_ir~combout\(7))))) # (!\wbdone_ir~combout\(6) & (!\rrex_ir~combout\(6) & (\wbdone_ir~combout\(7) $ (!\rrex_ir~combout\(7)))))

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
	dataa => \wbdone_ir~combout\(6),
	datab => \wbdone_ir~combout\(7),
	datac => \rrex_ir~combout\(7),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~9_combout\);

-- Location: LC_X10_Y5_N6
\fwd_mux2~11\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~11_combout\ = (\fwd_mux2~8_combout\) # ((!\wbdone_ir~combout\(13) & (\fwd_mux2~10_combout\ & \fwd_mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wbdone_ir~combout\(13),
	datab => \fwd_mux2~10_combout\,
	datac => \fwd_mux2~8_combout\,
	datad => \fwd_mux2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~11_combout\);

-- Location: LC_X12_Y7_N6
\fwd_mux2~3\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~3_combout\ = (\rrex_ir~combout\(7) & (\wbdone_ir~combout\(10) & (\rrex_ir~combout\(6) $ (!\wbdone_ir~combout\(9))))) # (!\rrex_ir~combout\(7) & (!\wbdone_ir~combout\(10) & (\rrex_ir~combout\(6) $ (!\wbdone_ir~combout\(9)))))

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
	dataa => \rrex_ir~combout\(7),
	datab => \rrex_ir~combout\(6),
	datac => \wbdone_ir~combout\(9),
	datad => \wbdone_ir~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~3_combout\);

-- Location: LC_X11_Y6_N4
\fwd_mux2~36\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~36_combout\ = (\fwd_mux1~5_combout\ & (\fwd_mux2~3_combout\ & (\rrex_ir~combout\(8) $ (!\wbdone_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux1~5_combout\,
	datab => \rrex_ir~combout\(8),
	datac => \wbdone_ir~combout\(11),
	datad => \fwd_mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~36_combout\);

-- Location: LC_X10_Y5_N4
\fwd_mux2~37\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~37_combout\ = (\fwd_mux2~2_combout\ & ((\fwd_mux2~36_combout\) # ((\fwd_mux2~11_combout\ & !\wbdone_ir~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~11_combout\,
	datab => \fwd_mux2~2_combout\,
	datac => \fwd_mux2~36_combout\,
	datad => \wbdone_ir~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~37_combout\);

-- Location: LC_X11_Y9_N3
\fwd_mux2~19\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~19_combout\ = (\memwb_addr~combout\(1) & (\rrex_ir~combout\(7) & (\memwb_addr~combout\(0) $ (!\rrex_ir~combout\(6))))) # (!\memwb_addr~combout\(1) & (!\rrex_ir~combout\(7) & (\memwb_addr~combout\(0) $ (!\rrex_ir~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_addr~combout\(1),
	datab => \memwb_addr~combout\(0),
	datac => \rrex_ir~combout\(7),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~19_combout\);

-- Location: LC_X11_Y9_N1
\fwd_mux2~20\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~20_combout\ = ((\fwd_mux2~19_combout\ & (\rrex_ir~combout\(8) $ (!\memwb_addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fwd_mux2~19_combout\,
	datac => \rrex_ir~combout\(8),
	datad => \memwb_addr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~20_combout\);

-- Location: LC_X11_Y7_N6
\fwd_mux2~12\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~12_combout\ = (\rrex_ir~combout\(7) & (\memwb_ir~combout\(4) & (\memwb_ir~combout\(3) $ (!\rrex_ir~combout\(6))))) # (!\rrex_ir~combout\(7) & (!\memwb_ir~combout\(4) & (\memwb_ir~combout\(3) $ (!\rrex_ir~combout\(6)))))

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
	dataa => \rrex_ir~combout\(7),
	datab => \memwb_ir~combout\(4),
	datac => \memwb_ir~combout\(3),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~12_combout\);

-- Location: LC_X12_Y7_N1
\fwd_mux2~15\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~15_combout\ = (\memwb_ir~combout\(9) & (\rrex_ir~combout\(6) & (\memwb_ir~combout\(10) $ (!\rrex_ir~combout\(7))))) # (!\memwb_ir~combout\(9) & (!\rrex_ir~combout\(6) & (\memwb_ir~combout\(10) $ (!\rrex_ir~combout\(7)))))

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
	dataa => \memwb_ir~combout\(9),
	datab => \memwb_ir~combout\(10),
	datac => \rrex_ir~combout\(7),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~15_combout\);

-- Location: LC_X11_Y6_N1
\fwd_mux2~16\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~16_combout\ = (\fwd_mux2~15_combout\ & (\fwd_mux1~19_combout\ & (\rrex_ir~combout\(8) $ (!\memwb_ir~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~15_combout\,
	datab => \fwd_mux1~19_combout\,
	datac => \rrex_ir~combout\(8),
	datad => \memwb_ir~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~16_combout\);

-- Location: LC_X10_Y6_N6
\Equal52~0\ : maxv_lcell
-- Equation(s):
-- \Equal52~0_combout\ = \memwb_ir~combout\(8) $ ((((\rrex_ir~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwb_ir~combout\(8),
	datac => \rrex_ir~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal52~0_combout\);

-- Location: LC_X11_Y7_N7
\fwd_mux2~14\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~14_combout\ = (\memwb_ir~combout\(6) & (\rrex_ir~combout\(6) & (\memwb_ir~combout\(7) $ (!\rrex_ir~combout\(7))))) # (!\memwb_ir~combout\(6) & (!\rrex_ir~combout\(6) & (\memwb_ir~combout\(7) $ (!\rrex_ir~combout\(7)))))

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
	dataa => \memwb_ir~combout\(6),
	datab => \memwb_ir~combout\(7),
	datac => \rrex_ir~combout\(7),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~14_combout\);

-- Location: LC_X10_Y6_N9
\fwd_mux2~17\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~17_combout\ = (\fwd_mux2~16_combout\) # ((\fwd_mux2~1_combout\ & (!\Equal52~0_combout\ & \fwd_mux2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~16_combout\,
	datab => \fwd_mux2~1_combout\,
	datac => \Equal52~0_combout\,
	datad => \fwd_mux2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~17_combout\);

-- Location: LC_X10_Y6_N2
\fwd_mux2~13\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~13_combout\ = (!\memwb_ir~combout\(12) & (\fwd_mux1~16_combout\ & (\rrex_ir~combout\(8) $ (!\memwb_ir~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(8),
	datab => \memwb_ir~combout\(12),
	datac => \memwb_ir~combout\(5),
	datad => \fwd_mux1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~13_combout\);

-- Location: LC_X10_Y6_N3
\fwd_mux2~18\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~18_combout\ = ((!\fwd_mux2~17_combout\ & ((!\fwd_mux2~13_combout\) # (!\fwd_mux2~12_combout\)))) # (!\fwd_mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "13ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~12_combout\,
	datab => \fwd_mux2~17_combout\,
	datac => \fwd_mux2~13_combout\,
	datad => \fwd_mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~18_combout\);

-- Location: LC_X10_Y5_N1
\fwd_mux2~21\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~21_combout\ = (\fwd_mux2~18_combout\ & (((!\fwd_mux2~20_combout\) # (!\fwd_mux2~2_combout\)) # (!\fwd_mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~0_combout\,
	datab => \fwd_mux2~2_combout\,
	datac => \fwd_mux2~20_combout\,
	datad => \fwd_mux2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~21_combout\);

-- Location: LC_X10_Y5_N2
\fwd_mux2~30\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~30_combout\ = (((\fwd_mux2~37_combout\ & \fwd_mux2~21_combout\)) # (!\fwd_mux2~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fwd_mux2~29_combout\,
	datac => \fwd_mux2~37_combout\,
	datad => \fwd_mux2~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~30_combout\);

-- Location: LC_X10_Y5_N3
\fwd_mux2~31\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~31_combout\ = ((\fwd_mux2~29_combout\ & ((\fwd_mux2~37_combout\) # (!\fwd_mux2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fwd_mux2~29_combout\,
	datac => \fwd_mux2~37_combout\,
	datad => \fwd_mux2~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~31_combout\);

-- Location: LC_X12_Y6_N8
\fwd_mux2~32\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~32_combout\ = (\exmem_addr~combout\(0) & (\rrex_ir~combout\(6) & (\rrex_ir~combout\(7) $ (!\exmem_addr~combout\(1))))) # (!\exmem_addr~combout\(0) & (!\rrex_ir~combout\(6) & (\rrex_ir~combout\(7) $ (!\exmem_addr~combout\(1)))))

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
	dataa => \exmem_addr~combout\(0),
	datab => \rrex_ir~combout\(7),
	datac => \exmem_addr~combout\(1),
	datad => \rrex_ir~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~32_combout\);

-- Location: LC_X12_Y6_N6
\Equal46~0\ : maxv_lcell
-- Equation(s):
-- \Equal46~0_combout\ = \rrex_ir~combout\(8) $ ((((\exmem_addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rrex_ir~combout\(8),
	datac => \exmem_addr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal46~0_combout\);

-- Location: LC_X12_Y6_N5
\fwd_mux2~33\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~33_combout\ = (\exmem_ir~combout\(13) & (((\fwd_mux2~32_combout\ & !\Equal46~0_combout\)))) # (!\exmem_ir~combout\(13) & (\fwd_mux2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~26_combout\,
	datab => \fwd_mux2~32_combout\,
	datac => \Equal46~0_combout\,
	datad => \exmem_ir~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~33_combout\);

-- Location: LC_X10_Y5_N5
\fwd_mux2~34\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~34_combout\ = (\fwd_mux1~40_combout\ & (\fwd_mux2~2_combout\ & (\exmem_ir~combout\(14) & \fwd_mux2~33_combout\)))

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
	dataa => \fwd_mux1~40_combout\,
	datab => \fwd_mux2~2_combout\,
	datac => \exmem_ir~combout\(14),
	datad => \fwd_mux2~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~34_combout\);

-- Location: LC_X10_Y5_N7
\fwd_mux2~35\ : maxv_lcell
-- Equation(s):
-- \fwd_mux2~35_combout\ = (!\fwd_mux2~37_combout\ & (\fwd_mux2~29_combout\ & (\fwd_mux2~34_combout\ & \fwd_mux2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fwd_mux2~37_combout\,
	datab => \fwd_mux2~29_combout\,
	datac => \fwd_mux2~34_combout\,
	datad => \fwd_mux2~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fwd_mux2~35_combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(0));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(2));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(3));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(4));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rrex_ir[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rrex_ir(5));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\exmem_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_exmem_ir(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(0));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\memwb_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_memwb_ir(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(0));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(1));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wbdone_ir[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wbdone_ir(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux1~38_combout\,
	oe => VCC,
	padio => ww_fwd_mux1(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux1~39_combout\,
	oe => VCC,
	padio => ww_fwd_mux1(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux1~45_combout\,
	oe => VCC,
	padio => ww_fwd_mux1(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux2~30_combout\,
	oe => VCC,
	padio => ww_fwd_mux2(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux2~31_combout\,
	oe => VCC,
	padio => ww_fwd_mux2(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fwd_mux2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fwd_mux2~35_combout\,
	oe => VCC,
	padio => ww_fwd_mux2(2));
END structure;


