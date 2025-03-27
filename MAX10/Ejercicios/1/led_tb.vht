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
-- Generated on "01/13/2020 13:26:55"
                                                            
-- Vhdl Test Bench template for design  :  led
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY led_tb IS

END led_tb;

ARCHITECTURE led_arch OF led_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL a1 : STD_LOGIC := '0';
SIGNAL b1 : STD_LOGIC := '0';
SIGNAL c1 : STD_LOGIC := '0';

COMPONENT led
	PORT (
		a : IN STD_LOGIC;
		b : IN STD_LOGIC;
		c : OUT STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : led
	PORT MAP (
-- list connections between master ports and signals
		a => a1,
		b => b1,
		c => c1
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
a1 <= '0'; b1 <= '0';
WAIT FOR 10ns; 
a1 <= '0'; b1 <= '1';
WAIT FOR 10ns;   
a1 <= '1'; b1 <= '0';
WAIT FOR 10ns; 
a1 <= '1'; b1 <= '1';
WAIT FOR 10ns; 
                                           
END PROCESS always;
                                          
END led_arch;
