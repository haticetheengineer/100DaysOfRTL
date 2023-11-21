library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_decoder_3x8 is
	
end tb_decoder_3x8;

architecture Behavioral of tb_decoder_3x8 is
component decoder_3x8
	port(
		I 	: in STD_LOGIC_VECTOR(2 downto 0);
		EN 	: in STD_LOGIC;
		-- Output
		O 	: out STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

signal in_signal 	: STD_LOGIC_VECTOR(2 downto 0);
signal out_signal 	: STD_LOGIC_VECTOR(7 downto 0);
signal en_signal 	: STD_LOGIC;

begin

uut: decoder_3x8 port map(
	I 	=> in_signal,
	O 	=> out_signal,
	EN 	=> en_signal
);

-- Test Cases
stim_proc: process
	begin
		in_signal <= "000";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "001";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "010";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "011";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "100";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "101";
		en_signal <= '1';
		wait for 20ns;
	
		in_signal <= "110";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "111";
		en_signal <= '1';
		wait for 20ns;
	
	wait;
	end process;
end Behavioral;