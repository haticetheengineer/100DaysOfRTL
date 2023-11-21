library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buffer_with_bus is 
	Port(
		buff_in 	: in  STD_LOGIC_VECTOR(3 downto 0);
		buff_out 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end buffer_with_bus;

architecture Behavioral of buffer_with_bus is
begin
	buff_out <=  buff_in;
end Behavioral;