library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux_4to1_with_4bits is 
	Port(
	    sel 	: in  STD_LOGIC_VECTOR(1 downto 0);
		I_0 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_1 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_2 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_3 	: in  STD_LOGIC_VECTOR(3 downto 0);
		Q_out 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end mux_4to1_with_4bits;

architecture Behavioral of mux_4to1_with_4bits is
begin
with sel select
	Q_out <=  I_0 when "00",
		      I_1 when "01",
		      I_2 when "10",
		      I_3 when "11", 
		      "0000" when others;
		  
end Behavioral;