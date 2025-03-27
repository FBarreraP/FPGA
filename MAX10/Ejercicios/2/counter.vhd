LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY counter IS
	PORT(a,b : IN std_logic;
		  c : OUT std_logic
	);	  
END counter;

ARCHITECTURE blinking OF counter IS
BEGIN

c <= (a AND NOT b) OR (NOT a AND b);


END blinking;