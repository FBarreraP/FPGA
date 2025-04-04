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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Thu Apr 03 13:02:58 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY A3_1_blocks IS 
	PORT
	(
		in1 :  IN  STD_LOGIC;
		in2 :  IN  STD_LOGIC;
		in3 :  IN  STD_LOGIC;
		in4 :  IN  STD_LOGIC;
		out1 :  OUT  STD_LOGIC
	);
END A3_1_blocks;

ARCHITECTURE bdf_type OF A3_1_blocks IS 

COMPONENT a3_1
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 c : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_inst : a3_1
PORT MAP(a => in1,
		 b => in2,
		 c => SYNTHESIZED_WIRE_0);


b2v_inst1 : a3_1
PORT MAP(a => in3,
		 b => in4,
		 c => SYNTHESIZED_WIRE_1);


b2v_inst2 : a3_1
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => SYNTHESIZED_WIRE_1,
		 c => out1);


END bdf_type;