library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_encoder_8x3 is

end tb_encoder_8x3;

architecture Behavioral of tb_encoder_8x3 is
component encoder_8x3
	port(
		I 	: in STD_LOGIC_VECTOR(7 downto 0);
		EN 	: in STD_LOGIC;
		-- Output
		O 	: out STD_LOGIC_VECTOR(2 downto 0)
	);
end component;

signal in_signal 	: STD_LOGIC_VECTOR(7 downto 0);
signal out_signal 	: STD_LOGIC_VECTOR(2 downto 0);
signal en_signal 	: STD_LOGIC;

begin

uut: encoder_8x3 port map(
	I 	=> in_signal,
	O 	=> out_signal,
	EN 	=> en_signal
);

-- Test Cases
stim_proc: process
	begin
		in_signal <= "00000001";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "00000010";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "00000100";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "00001000";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "00010000";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "00100000";
		en_signal <= '1';
		wait for 20ns;
	
		in_signal <= "01000000";
		en_signal <= '1';
		wait for 20ns;
		
		in_signal <= "10000000";
		en_signal <= '1';
		wait for 20ns;
	
	wait;
	end process;
end Behavioral;