library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_inverter is 

end tb_inverter;

architecture Behavioral of tb_inverter is 
component inverter is 
	port(
		inv_in 	: in STD_LOGIC;
		-- Output
		inv_out : out STD_LOGIC
	);
end component;

signal inv_in		: STD_LOGIC;
signal inv_out		: STD_LOGIC;

begin

uut: inverter port map(
		inv_in 	=> inv_in,
		inv_out => inv_out
);

-- Test Cases

stim_proc: process
begin

inv_in <= '0';
wait for 50ns;

inv_in <= '1';
wait for 50ns;

inv_in <= '0';
wait for 50ns;

inv_in <= '1';
wait for 50ns;

wait;

end process;
end Behavioral;