library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux_4to1_with_4bits is 

end tb_mux_4to1_with_4bits;

architecture Behavioral of tb_mux_4to1_with_4bits is
component mux_4to1_with_4bits is 
	Port(
	    sel 	: in  STD_LOGIC_VECTOR(1 downto 0);
		I_0 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_1 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_2 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_3 	: in  STD_LOGIC_VECTOR(3 downto 0);
		-- Output
		Q_out 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

signal I_0 	 : STD_LOGIC_VECTOR(3 downto 0);
signal I_1   : STD_LOGIC_VECTOR(3 downto 0);
signal I_2 	 : STD_LOGIC_VECTOR(3 downto 0);
signal I_3   : STD_LOGIC_VECTOR(3 downto 0);
signal Q_out : STD_LOGIC_VECTOR(3 downto 0);
signal sel 	 : STD_LOGIC_VECTOR(1 downto 0);

begin

uut: mux_4to1_with_4bits port map(
		I_0 	=> I_0,
		I_1 	=> I_1,
		I_2 	=> I_2,
		I_3 	=> I_3,
		Q_out 	=> Q_out,
		sel 	=> sel
);

-- Test Cases
stim_proc: process
begin
-- Test 1
I_0 <= "1101"; -- I_0 = 13
I_1 <= "0110"; -- I_1 = 6
I_2 <= "1011"; -- I_2 = 11
I_3 <= "1001"; -- I_3 = 9

sel <= "00";
wait for 20ns;

sel <= "01";
wait for 20ns;

sel <= "10";
wait for 20ns;

sel <= "11";
wait for 20ns;

-- Test 2
I_0 <= "0101"; -- I_0 = 5
I_1 <= "1111"; -- I_1 = 15
I_2 <= "0111"; -- I_2 = 7
I_3 <= "1011"; -- I_3 = 11

sel <= "00";
wait for 20ns;

sel <= "01";
wait for 20ns;

sel <= "10";
wait for 20ns;

sel <= "11";
wait for 20ns;

wait;

end process;
end Behavioral;