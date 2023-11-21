library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux_4x1_using_mux_2x1 is
	
end tb_mux_4x1_using_mux_2x1;

architecture Behavioral of tb_mux_4x1_using_mux_2x1 is
component mux_4x1_using_mux_2x1
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
end component;

signal I0_sig, I1_sig, I2_sig, I3_sig, Q_sig :  std_logic_vector(3 downto 0);
signal sel_sig :  std_logic_vector(1 downto 0);

begin

uut : mux_4x1_using_mux_2x1 port map
    (
        I_0 	=> I0_sig,
		I_1 	=> I1_sig,
		I_2 	=> I2_sig,
		I_3 	=> I3_sig,
		Q_out3 	=> Q_sig,
		sel(0)  => sel_sig(0),
		sel(1)  => sel_sig(1)
		
    );
-- Test Cases
stim_proc: process
	begin
	I0_sig <= "1011"; -- A=11
	I1_sig <= "1000"; -- B=8
	I2_sig <= "1111"; -- A=15
	I3_sig <= "0011"; -- A=3
	sel_sig <= "00";
	wait for 20ns;
	
	I0_sig <= "1011"; -- A=11
	I1_sig <= "1000"; -- B=8
	I2_sig <= "1111"; -- A=15
	I3_sig <= "0011"; -- A=3
    sel_sig <= "01";
	wait for 20ns;
	
	I0_sig <= "1011"; -- A=11
	I1_sig <= "1000"; -- B=8
	I2_sig <= "1111"; -- A=15
	I3_sig <= "0011"; -- A=3
    sel_sig <= "10";
	wait for 20ns;

	I0_sig <= "1011"; -- A=11
	I1_sig <= "1000"; -- B=8
	I2_sig <= "1111"; -- A=15
	I3_sig <= "0011"; -- A=3
    sel_sig <= "11";
	wait for 20ns;

	wait;
	end process;
end Behavioral;