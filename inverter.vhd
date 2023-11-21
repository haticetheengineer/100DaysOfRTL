library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inverter is 
	Port(
		inv_in 	: in STD_LOGIC;
		inv_out : out STD_LOGIC
	);
end inverter;

architecture Behavioral of inverter is
begin
	inv_out <= not inv_in;
end Behavioral;