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
-- Generated on "11/30/2020 16:54:33"
                                                            
-- Vhdl Test Bench template for design  :  time
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY time_vhd_tst IS
END time_vhd_tst;
ARCHITECTURE time_arch OF time_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DX1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DX2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL NB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL NB1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL NB2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT time
	PORT (
	CLK : IN STD_LOGIC;
	DX : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DX1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DX2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	EN : IN STD_LOGIC;
	NB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	NB1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	NB2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RST : IN STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : time
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DX => DX,
	DX1 => DX1,
	DX2 => DX2,
	EN => EN,
	NB => NB,
	NB1 => NB1,
	NB2 => NB2,
	RST => RST,
	S => S
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
END time_arch;
