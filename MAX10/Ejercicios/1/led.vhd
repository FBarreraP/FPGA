LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY led IS
	PORT(a,b : IN std_logic;
		  c : OUT std_logic
	);	  
END led;

ARCHITECTURE blinking OF led IS
BEGIN

c <= (a AND NOT b) OR (NOT a AND b);


END blinking;