LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY A3_1 IS
	PORT(a,b : IN std_logic;
		  c : OUT std_logic
	);	  
END A3_1;

ARCHITECTURE blinking OF A3_1 IS
	BEGIN
	c <= (a AND b);
END blinking;