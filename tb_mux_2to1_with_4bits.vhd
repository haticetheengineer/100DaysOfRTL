library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux_2to1_with_4bits is 

end tb_mux_2to1_with_4bits;

architecture Behavioral of tb_mux_2to1_with_4bits is
component mux_2to1_with_4bits is 
	Port(
	    sel 	: in  STD_LOGIC;
		I_0 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_1 	: in  STD_LOGIC_VECTOR(3 downto 0);
		Q_out 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

signal I_0 	 : STD_LOGIC_VECTOR(3 downto 0);
signal I_1   : STD_LOGIC_VECTOR(3 downto 0);
signal Q_out : STD_LOGIC_VECTOR(3 downto 0);
signal sel 	 : STD_LOGIC;

begin

uut: mux_2to1_with_4bits port map(
		I_0 	=> I_0,
		I_1 	=> I_1,
		Q_out 	=> Q_out,
		sel 	=> sel
);

-- Test Cases

stim_proc: process
begin

I_0 <= "0000";
I_1 <= "1111";
sel <= '0';
wait for 10ns;

I_0 <= "0001";
I_1 <= "1110";
sel <= '0';
wait for 10ns;

I_0 <= "0010";
I_1 <= "1101";
sel <= '0';
wait for 10ns;

I_0 <= "0011";
I_1 <= "1100";
sel <= '0';
wait for 10ns;

I_0 <= "0100";
I_1 <= "1011";
sel <= '0';
wait for 10ns;

I_0 <= "0101";
I_1 <= "1010";
sel <= '0';
wait for 10ns;

I_0 <= "0110";
I_1 <= "1001";
sel <= '0';
wait for 10ns;

I_0 <= "0111";
I_1 <= "1000";
sel <= '0';
wait for 10ns;

I_0 <= "1000";
I_1 <= "0111";
sel <= '0';
wait for 10ns;

I_0 <= "1001";
I_1 <= "0110";
sel <= '0';
wait for 10ns;

I_0 <= "1010";
I_1 <= "0101";
sel <= '0';
wait for 10ns;

I_0 <= "1011";
I_1 <= "0100";
sel <= '0';
wait for 10ns;

I_0 <= "1100";
I_1 <= "0011";
sel <= '0';
wait for 10ns;

I_0 <= "1101";
I_1 <= "0010";
sel <= '0';
wait for 10ns;


I_0 <= "1110";
I_1 <= "0001";
sel <= '0';
wait for 10ns;

I_0 <= "1111";
I_1 <= "0000";
sel <= '0';
wait for 10ns;

-- test for I_1

I_0 <= "0000";
I_1 <= "1111";
sel <= '1';
wait for 10ns;

I_0 <= "0001";
I_1 <= "1110";
sel <= '1';
wait for 10ns;

I_0 <= "0010";
I_1 <= "1101";
sel <= '1';
wait for 10ns;

I_0 <= "0011";
I_1 <= "1100";
sel <= '1';
wait for 10ns;

I_0 <= "0100";
I_1 <= "1011";
sel <= '1';
wait for 10ns;

I_0 <= "0101";
I_1 <= "1010";
sel <= '1';
wait for 10ns;

I_0 <= "0110";
I_1 <= "1001";
sel <= '1';
wait for 10ns;

I_0 <= "0111";
I_1 <= "1000";
sel <= '1';
wait for 10ns;

I_0 <= "1000";
I_1 <= "0111";
sel <= '1';
wait for 10ns;

I_0 <= "1001";
I_1 <= "0110";
sel <= '1';
wait for 10ns;

I_0 <= "1010";
I_1 <= "0101";
sel <= '1';
wait for 10ns;

I_0 <= "1011";
I_1 <= "0100";
sel <= '1';
wait for 10ns;

I_0 <= "1100";
I_1 <= "0011";
sel <= '1';
wait for 10ns;

I_0 <= "1101";
I_1 <= "0010";
sel <= '1';
wait for 10ns;


I_0 <= "1110";
I_1 <= "0001";
sel <= '1';
wait for 10ns;

I_0 <= "1111";
I_1 <= "0000";
sel <= '1';
wait for 10ns;

wait;

end process;
end Behavioral;