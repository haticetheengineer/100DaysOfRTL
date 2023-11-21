library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_comparator_4bit is
	
end tb_comparator_4bit;

architecture Behavioral of tb_comparator_4bit is
	component comparator_4bit is
		port(
		input_1 : in std_logic_vector(3 downto 0);
		input_2 : in std_logic_vector(3 downto 0);
		-- Output
		out1 	: out std_logic; -- input1 > input2
		out2 	: out std_logic; -- input2 > input1
		out3 	: out std_logic -- input1 = input2
	);
	end component;
	
	signal in1_sig, in2_sig 			: std_logic_vector(3 downto 0);
	signal out1_sig, out2_sig, out3_sig : std_logic;
	
	begin
	
	uut: comparator_4bit port map(
		input_1 => in1_sig,
		input_2 => in2_sig,
		out1 => out1_sig,
		out2 => out2_sig,
		out3 => out3_sig
	);
	
	-- Test Cases
stim_proc: process
	begin
		in1_sig <= "0000";
		in2_sig <= "1111";
		wait for 20ns;
		
		in1_sig <= "0001";
		in2_sig <= "1110";
		wait for 20ns;
		
		in1_sig <= "1010";
		in2_sig <= "1100";
		wait for 20ns;
		
		in1_sig <= "1111";
		in2_sig <= "1111";
		wait for 20ns;
		
		in1_sig <= "1010";
		in2_sig <= "0111";
		wait for 20ns;
		
		in1_sig <= "1110";
		in2_sig <= "0010";
		wait for 20ns;
	
		in1_sig <= "1001";
		in2_sig <= "1001";
		wait for 20ns;
		
		in1_sig <= "0100";
		in2_sig <= "1011";
		wait for 20ns;
	
	wait;
	end process;

end Behavioral;