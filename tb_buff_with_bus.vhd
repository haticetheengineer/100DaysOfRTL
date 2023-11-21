library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_buffer_with_bus is 

end tb_buffer_with_bus;

architecture Behavioral of tb_buffer_with_bus is 
component buffer_with_bus is 
	Port(
		buff_in 	: in  STD_LOGIC_VECTOR(3 downto 0);
		buff_out 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

signal buff_in		: STD_LOGIC_VECTOR(3 downto 0);
signal buff_out		: STD_LOGIC_VECTOR(3 downto 0);

begin

uut: buffer_with_bus port map(
		buff_in 	=> buff_in,
		buff_out 	=> buff_out
);

-- Test Cases

stim_proc: process
begin

buff_in <= "0000";
wait for 10ns;

buff_in <= "0001";
wait for 10ns;

buff_in <= "0010";
wait for 10ns;

buff_in <= "0011";
wait for 10ns;

buff_in <= "0100";
wait for 10ns;

buff_in <= "0101";
wait for 10ns;

buff_in <= "0110";
wait for 10ns;

buff_in <= "0111";
wait for 10ns;

buff_in <= "1000";
wait for 10ns;

buff_in <= "1001";
wait for 10ns;

buff_in <= "1010";
wait for 10ns;

buff_in <= "1011";
wait for 10ns;

buff_in <= "1100";
wait for 10ns;

buff_in <= "1101";
wait for 10ns;

buff_in <= "1110";
wait for 10ns;

buff_in <= "1111";
wait for 10ns;

wait;

end process;
end Behavioral;