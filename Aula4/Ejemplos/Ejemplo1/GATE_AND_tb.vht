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
-- Generated on "04/03/2025 21:07:16"
                                                            
-- Vhdl Test Bench template for design  :  GATE_AND
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GATE_AND_tb IS
END GATE_AND_tb;

ARCHITECTURE GATE_AND_tb_arch OF GATE_AND_tb IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL a : STD_LOGIC := '0';
	SIGNAL b : STD_LOGIC := '0';
	SIGNAL c : STD_LOGIC := '0';
	
	COMPONENT GATE_AND
		PORT (
			a : IN STD_LOGIC;
			b : IN STD_LOGIC;
			c : BUFFER STD_LOGIC
		);
	END COMPONENT;
	
	BEGIN
	
	i1 : GATE_AND
	PORT MAP (
-- list connections between master ports and signals
		a => a,
		b => b,
		c => c
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
	a <= '0'; b <= '0';
	WAIT FOR 10ns; 
	a <= '0'; b <= '1';
	WAIT FOR 10ns;   
	a <= '1'; b <= '0';
	WAIT FOR 10ns; 
	a <= '1'; b <= '1';
	WAIT FOR 10ns;      

	END PROCESS always; 
	
END GATE_AND_tb_arch;
