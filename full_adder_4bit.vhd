library ieee;
use ieee.std_logic_1164.all;

entity full_adder_4bit is

  port (
    A 		: in STD_LOGIC_VECTOR (3 downto 0);
	B 		: in STD_LOGIC_VECTOR (3 downto 0);
	Cin 	: in STD_LOGIC;
	-- Output
	S 		: out STD_LOGIC_VECTOR (3 downto 0);
	Cout 	: out STD_LOGIC
    );
 
end full_adder_4bit;

architecture Behavioral of full_adder_4bit is
	component full_adder
		Port( 
			a 		: in STD_LOGIC;
			b 		: in STD_LOGIC;
			c 		: in STD_LOGIC;
			-- Output
			sum		: out STD_LOGIC;
			carry 	: out STD_LOGIC
			);
	end component;
	
	begin 
	signal carry_sig: STD_LOGIC_VECTOR(4 downto 0);
	
	FA0: full_adder port map( A(0), B(0), Cin, S(0), carry_sig(1));
	FA1: full_adder port map( A(1), B(1), carry_sig(1), S(1), carry_sig(2));
	FA2: full_adder port map( A(2), B(2), carry_sig(2), S(2), carry_sig(3));
	FA3: full_adder port map( A(3), B(3), carry_sig(3), S(3), carry_sig(4));
	
	Cout <= carry_sig(4);



end Behavioral;