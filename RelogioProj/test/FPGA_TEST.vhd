library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY FPGA_TEST IS   
PORT ( 
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0); 
	LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
	); 
END FPGA_TEST; 
 
ARCHITECTURE Behavior OF FPGA_TEST IS 
BEGIN 
	LEDR <= SW; 
END Behavior;