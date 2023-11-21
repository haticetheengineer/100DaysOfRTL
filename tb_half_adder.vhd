library IEEE;
use IEEE.std_logic_1164.all;

entity tb_half_adder is
--  Port ( );
end tb_half_adder;

architecture Behavioral of tb_half_adder is 
component half_adder is 
	port(
		a 		: in std_logic;
		b		: in std_logic;
		-- Outputs
		sum 	: out std_logic;
		carry	: out std_logic
	);
end component;

signal a		: std_logic;
signal b		: std_logic;
signal sum		: std_logic;
signal carry	: std_logic;

begin

uut: half_adder port map(
		a => a,
		b => b,
		sum => sum,
		carry => carry
);

-- Test Cases

stim_proc: process
begin

a <= '0';
b <= '0';
wait for 10ns;

a <= '1';
b <= '0';
wait for 10ns;

a <= '0';
b <= '1';
wait for 10ns;

a <= '1';
b <= '1';
wait for 10ns;

wait;

end process;


end Behavioral;