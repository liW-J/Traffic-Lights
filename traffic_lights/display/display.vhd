	LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY display IS
PORT(S:IN STD_LOGIC_VECTOR(1 DOWNTO 0);
     LIGHTA:OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	  LIGHT:OUT STD_LOGIC_VECTOR(5 DOWNTO 0) );--红黄绿灯控制信号
 END display;			
 ARCHITECTURE behav OF display IS	
 BEGIN
PROCESS(S)--显示模块
BEGIN
  CASE S IS
  WHEN "00"=>LIGHT<="100001";
				 LIGHTA<="100001";
  WHEN "01"=>LIGHT<="100010";
				 LIGHTA<="100010";
  WHEN "10"=>LIGHT<="001100";
				 LIGHTA<="001100";
  WHEN "11"=>LIGHT<="010100";
				 LIGHTA<="010100";
				  WHEN OTHERS=>NULL;
				 END CASE;
				  END PROCESS;
				  END  behav;