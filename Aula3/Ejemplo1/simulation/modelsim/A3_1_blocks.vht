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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/03/2025 18:54:03"
                                                            
-- Vhdl Test Bench template for design  :  A3_1_blocks
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY A3_1_blocks_vhd_tst IS
END A3_1_blocks_vhd_tst;
ARCHITECTURE A3_1_blocks_arch OF A3_1_blocks_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in1 : STD_LOGIC;
SIGNAL in2 : STD_LOGIC;
SIGNAL in3 : STD_LOGIC;
SIGNAL in4 : STD_LOGIC;
SIGNAL out1 : STD_LOGIC;
COMPONENT A3_1_blocks
	PORT (
	in1 : IN STD_LOGIC;
	in2 : IN STD_LOGIC;
	in3 : IN STD_LOGIC;
	in4 : IN STD_LOGIC;
	out1 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : A3_1_blocks
	PORT MAP (
-- list connections between master ports and signals
	in1 => in1,
	in2 => in2,
	in3 => in3,
	in4 => in4,
	out1 => out1
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END A3_1_blocks_arch;
