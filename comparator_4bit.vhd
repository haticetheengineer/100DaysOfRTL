library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_4bit is
	port(
		input_1 : in std_logic_vector(3 downto 0);
		input_2 : in std_logic_vector(3 downto 0);
		-- Output
		out1 	: out std_logic; -- input1 > input2
		out2 	: out std_logic; -- input2 > input1
		out3 	: out std_logic  -- input1 = input2
	);
end comparator_4bit;

architecture Behavioral of comparator_4bit is
	begin
		process(input_1, input_2)
		begin
			if(input_1>input_2) then
				out1 <= '1';
				out2 <= '0';
				out3 <= '0';
			elsif(input_2>input_1) then
				out2 <= '1';
				out1 <= '0';
				out3 <= '0';
			elsif(input_1 = input_2) then
				out3 <= '1';
				out2 <= '0';
				out1 <= '0';
			else
				out1 <= '0';
				out2 <= '0';
				out3 <= '0';
			end if;
		end process;
end Behavioral;