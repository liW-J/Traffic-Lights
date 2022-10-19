-- Copyright (C) 1991-2013 Altera Corporation
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/30/2020 19:23:22"
                                                            
-- Vhdl Test Bench template for design  :  traffic
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY traffic_vhd_tst IS
END traffic_vhd_tst;
ARCHITECTURE traffic_arch OF traffic_vhd_tst IS
-- constants     
CONSTANT CLK_P : TIME := 31.25 ms;                                              
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DX1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DX2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL LIGHT : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL LIGHTA : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL NB1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL NB2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
COMPONENT traffic
	PORT (
	CLK : IN STD_LOGIC;
	DX1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DX2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	EN : IN STD_LOGIC;
	LIGHT : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	LIGHTA : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	NB1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	NB2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : traffic
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DX1 => DX1,
	DX2 => DX2,
	EN => EN,
	LIGHT => LIGHT,
	LIGHTA => LIGHTA,
	NB1 => NB1,
	NB2 => NB2,
	RST => RST
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
  CLK <= '0';                   
  WAIT FOR CLK_P;
  CLK <= '1';
  WAIT FOR CLK_P;                                                         
END PROCESS always; 
RST <= '0', '1' AFTER 1*CLK_P;
EN <= '0', '1' AFTER 1*CLK_P;                                
END traffic_arch;
