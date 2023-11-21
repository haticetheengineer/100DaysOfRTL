library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1_with_4bits is 
	Port(
	    sel 	: in  STD_LOGIC;
		I_0 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_1 	: in  STD_LOGIC_VECTOR(3 downto 0);
		Q_out 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end mux_2to1_with_4bits;

architecture Behavioral of mux_2to1_with_4bits is
begin
	Q_out <=  I_0 when (sel = '0') else I_1;
end Behavioral;