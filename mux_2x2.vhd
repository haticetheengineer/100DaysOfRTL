library IEEE;
use IEEE.std_logic_1164.all;


entity mux_2x2 is
	port(
		
	----------------------------------------------	
	-- Gate Level Combinational Design
	----------------------------------------------
		a1_in 		:in std_logic;
		b1_in 		:in std_logic;
		select1_in 	:in std_logic;
		-- outputs:
		Q1_out 		:out std_logic;
		
	----------------------------------------------	
	-- Concurrent Assignment Combinational Design
	----------------------------------------------
		a2_in 		:in std_logic;
		b2_in 		:in std_logic;
		select2_in 	:in std_logic;
		-- outputs:
		Q2_out 		:out std_logic;
		
		
		a3_in 		:in std_logic;
		b3_in 		:in std_logic;
		select3_in 	:in std_logic;
		-- outputs:
		Q3_out 		:out std_logic
	);
end entity;


architecture Behavioral of mux_2x2 is 
	signal temp1 : std_logic := '0';
	signal temp2 : std_logic := '0';
	begin
	
	----------------------------------------------
	-- Gate Level Combinational Design
	----------------------------------------------
	 temp1 	<= not(a1_in and select1_in);
	 temp2 	<= not(not(select1_in) and b1_in);
	 Q1_out <= not(temp1 and temp2);
	----------------------------------------------	
	-- Concurrent Assignment Combinational Design
	----------------------------------------------
	Q2_out <= a2_in when select2_in = '1' else
			  b2_in;
	----------------------------------------------	
	-- Process Combinational Design
	----------------------------------------------
	process(select3_in, a3_in, b3_in)
	begin
		if (select3_in = '1') then
			Q3_out <= a3_in;
		else
			Q3_out <= b3_in;
		end if;
	end process;
end Behavioral;