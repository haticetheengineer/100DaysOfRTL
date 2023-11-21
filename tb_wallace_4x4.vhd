library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_wallace_4x4 is

end tb_wallace_4x4;

architecture Behavioral of tb_wallace_4x4 is
component wallace_4x4 is
	port ( 
			A_in   : in std_logic_vector(3 downto 0);
			B_in   : in std_logic_vector(3 downto 0);
			result : out std_logic_vector(7 downto 0)
		  );
end component;

signal A_sig        :  std_logic_vector(3 downto 0);
signal B_sig        :  std_logic_vector(3 downto 0);
signal result_sig   :  std_logic_vector(7 downto 0);

begin

 uut : wallace_4x4 port map
    (
        A_in => A_sig,
        B_in => B_sig,
		result => result_sig 
    );  
	-- Test cases:
	stim_proc: process
	begin
	A_sig <= "1011"; -- A=11
	B_sig <= "1000"; -- B=8
	wait for 20ns;
	
	A_sig <= "1011"; -- A=11
	B_sig <= "1010"; -- B=10
	wait for 20ns;
	
	A_sig <= "0011"; -- A=3
	B_sig <= "1000"; -- B=8
	wait for 20ns;
	
	A_sig <= "0111"; -- A=7
	B_sig <= "0001"; -- B=1
	wait for 20ns;
	
	A_sig <= "1111"; -- A=15
	B_sig <= "1111"; -- B=15
	wait for 20ns;
	
	A_sig <= "1010"; -- A=10
	B_sig <= "0000"; -- B=0
	wait for 20ns;
	
	
	wait;
	end process;
end Behavioral;