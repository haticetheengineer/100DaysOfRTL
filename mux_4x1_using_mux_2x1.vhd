library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4x1_using_mux_2x1 is
	Port(
		sel		: in  STD_LOGIC_VECTOR(1 downto 0);
		I_0 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_1 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_2 	: in  STD_LOGIC_VECTOR(3 downto 0);
		I_3 	: in  STD_LOGIC_VECTOR(3 downto 0);
		-- Output
		--Q_out1 	: out STD_LOGIC_VECTOR(3 downto 0);
		--Q_out2 	: out STD_LOGIC_VECTOR(3 downto 0);
		Q_out3 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end mux_4x1_using_mux_2x1;

architecture Behavioral of mux_4x1_using_mux_2x1 is
component mux_2to1_with_4bits
	port(
	sel_sig	 	: in STD_LOGIC;
	A_in_sig 	: in STD_LOGIC_VECTOR(3 downto 0);
	B_in_sig 	: in STD_LOGIC_VECTOR(3 downto 0);
	-- Output
	Q_out_sig 	: out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

signal mux_1_out, mux_2_out : STD_LOGIC_VECTOR(3 downto 0);

begin

M1 : mux_2to1_with_4bits port map(
	A_in_sig => I_0,
	B_in_sig => I_1,
	sel_sig  => sel(0),
	-- Output
 	Q_out_sig => mux_1_out

);

M2 : mux_2to1_with_4bits port map(
	A_in_sig => I_2,
	B_in_sig => I_3,
	sel_sig  => sel(0),
	-- Output
 	Q_out_sig => mux_2_out

);

M3 : mux_2to1_with_4bits port map(
	A_in_sig => mux_1_out,
	B_in_sig => mux_2_out,
	sel_sig  => sel(1),
	-- Output
 	Q_out_sig => Q_out3

);

		  
end Behavioral;