<h1>Aula 12</h1>

Esta clase consiste en .

<h2></h2>

Es recomendable:

1. Uno o dos registros (señales) con clk (flip-flops) para entradas digitales para evitar metastabilidad
2. Evitar process inecesarios
3. No cambiar el valor de un registro (seña)l en más de un process

Lectura digital

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity pulsador_lector_RS is
	port (
		clk: in std_logic; 
		rst : in std_logic;
		strt : in std_logic;
		
		btn: in std_logic; 
		led: out std_logic  
	);
end entity pulsador_lector_RS;

architecture behavioral of pulsador_lector_RS is

	signal btn_s: std_logic;
	signal flag : std_logic;
	
	begin
	-- Lógica secuencial
	process(clk)
		begin
		if rising_edge(clk) then
			if rst = '1' then
				btn_s <= '0'; 
				flag <= '0';
				
			elsif strt = '1' or flag = '1' then
				flag <= '1';
				btn_s <= btn; -- Almacena el estado del botón
			
			end if;
		end if;
	end process;
	

	-- Lógica combinacional
	led <= '1' when btn_s = '1' else '0';
	
end behavioral;
```

Test bench de la lectura digital

```vhdl
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pulsador_lector_RS_tb IS
END pulsador_lector_RS_tb;

ARCHITECTURE pulsador_lector_RS_arch OF pulsador_lector_RS_tb IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL btn : STD_LOGIC;
	SIGNAL clk : STD_LOGIC;
	SIGNAL led : STD_LOGIC;
	SIGNAL rst : STD_LOGIC;
	SIGNAL strt : STD_LOGIC;

	COMPONENT pulsador_lector_RS
		PORT (
		btn : IN STD_LOGIC;
		clk : IN STD_LOGIC;
		led : OUT STD_LOGIC;
		rst : IN STD_LOGIC;
		strt : IN STD_LOGIC
		);
	END COMPONENT;

	BEGIN
	i1 : pulsador_lector_RS
	PORT MAP (
	-- list connections between master ports and signals
		btn => btn,
		clk => clk,
		led => led,
		rst => rst,
		strt => strt
	);
		
	init : PROCESS                                               
	-- variable declarations                                     
	BEGIN                                                        
				-- code that executes only once    
			rst <= '1';
			wait for 30ns;
			rst <= '0'; 
			wait;
	END PROCESS init; 

	start : PROCESS                                               
	-- variable declarations                                     
	BEGIN                                                        
				-- code that executes only once    
			strt <= '0';
			wait for 50ns;
			strt <= '1';
			wait for 20ns;
			strt <= '0';
			wait;
	END PROCESS start; 

	clock: process
	begin
		-- Un bucle infinito para la generación continua del reloj
		loop
			clk <= '1';
			wait for 10ns;
			clk <= '0';
			wait for 10ns;
		end loop;
	END PROCESS clock; 

	always : PROCESS                                              
	-- optional sensitivity list                                  
	-- (        )                                                 
	-- variable declarations                                      
	BEGIN                                                         
				-- code executes for every event on sensitivity list  
		btn <= '0';
		WAIT FOR 20ns; 
		btn <= '1';
		WAIT FOR 20ns;                                                        
	END PROCESS always;  
	
END pulsador_lector_RS_arch;

```


PWM a 1 kHz

```vhdl
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PWM_1kHz IS
	Port (
		clk       : in  std_logic;  				
		dutycycle : in  unsigned(15 downto 0); 
		pwm_out   : out std_logic					
	);
END PWM_1kHz;

ARCHITECTURE PWM_1kHz_arch OF PWM_1kHz IS

	constant PERIOD : unsigned(15 downto 0) := to_unsigned(50000, 16);
	signal counter  : unsigned(15 downto 0) := (others => '0');			
	
	BEGIN
	
	-- Lógica secuencial
	process(clk)
		begin
		if rising_edge(clk) then
			if counter = PERIOD - 1 then
				counter <= (others => '0');
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	-- Lógica combinacional
	pwm_out <= '1' when counter < dutycycle else '0';
    
END PWM_1kHz_arch;
```

Test bench del PWM a 1 kHz

``` vhdl
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;     
USE IEEE.NUMERIC_STD.ALL;                             

ENTITY PWM_1kHz_tb IS
END PWM_1kHz_tb;

ARCHITECTURE PWM_1kHz_tb_arch OF PWM_1kHz_tb IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL clk : STD_LOGIC;
	SIGNAL dutycycle : unsigned(15 DOWNTO 0);
	SIGNAL pwm_out : STD_LOGIC;
	
	COMPONENT PWM_1kHz
		PORT (
			clk : IN STD_LOGIC;
			dutycycle : IN unsigned(15 DOWNTO 0);
			pwm_out : OUT STD_LOGIC
		);
	END COMPONENT;
	
	BEGIN
	i1 : PWM_1kHz
	PORT MAP (
		-- list connections between master ports and signals
		clk => clk,
		dutycycle => dutycycle,
		pwm_out => pwm_out
	);
		
	init : PROCESS                                               
	-- variable declarations                                     
	BEGIN                                                        
	-- code that executes only once                      
	WAIT;                                                       
	END PROCESS init; 
	
	clock: process
	begin
	  -- Un bucle infinito para la generación continua del reloj
	  loop
		 clk <= '1';
		 wait for 10ns;
		 clk <= '0';
		 wait for 10ns;
	  end loop;
	END PROCESS clock; 
	
	always : PROCESS                                              
	-- optional sensitivity list                                  
	-- (        )                                                 
	-- variable declarations                                      
	BEGIN                                                         
	-- code executes for every event on sensitivity list 
		dutycycle <= to_unsigned(0, 16);
		WAIT FOR 2ms; 
		dutycycle <= to_unsigned(5000, 16);
		WAIT FOR 2ms;   
		dutycycle <= to_unsigned(15000, 16);
		WAIT FOR 2ms; 
		dutycycle <= to_unsigned(25000, 16);
		WAIT FOR 2ms; 
		dutycycle <= to_unsigned(35000, 16);
		WAIT FOR 2ms;  	
		dutycycle <= to_unsigned(45000, 16);
		WAIT FOR 2ms; 
		dutycycle <= to_unsigned(50000, 16);
		WAIT FOR 2ms; 	                                                        
	END PROCESS always;   
	
END PWM_1kHz_tb_arch;
```