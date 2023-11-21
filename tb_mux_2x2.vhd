library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_mux_2x2 is
--  Port ( );
end tb_mux_2x2;

architecture Behavioral of tb_mux_2x2 is
    component mux_2x2 is
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
end component;

signal a1_sig, a2_sig, a3_sig                 : std_logic;
signal b1_sig, b2_sig, b3_sig                 : std_logic;
signal select1_sig, select2_sig, select3_sig  : std_logic;
signal Q1_sig, Q2_sig, Q3_sig                 : std_logic;

begin
    uut:mux_2x2 port map
    (
        a1_in   => a1_sig,
        b1_in   => b1_sig,
        select1_in => select1_sig,
		Q1_out  => Q1_sig, 
		
		a2_in   => a2_sig,
        b2_in   => b2_sig,
        select2_in => select2_sig,
		Q2_out  => Q2_sig,
		
		a3_in   => a3_sig,
        b3_in   => b3_sig,
        select3_in => select3_sig,
		Q3_out  => Q3_sig  
    ); 
  -- Test cases:  
  process
  begin
  	----------------------------------------------
	-- Gate Level Combinational Design
	----------------------------------------------
    a1_sig <= '0';
    b1_sig <= '0';
    select1_sig <= '0';
    wait for 20ns;
    
    a1_sig <= '1';
    b1_sig <= '0';
    select1_sig <= '0';
    wait for 20ns;
    
    a1_sig <= '0';
    b1_sig <= '1';
    select1_sig <= '0';
    wait for 20ns;
    
    a1_sig <= '1';
    b1_sig <= '1';
    select1_sig <= '0';
    wait for 20ns;
    
    a1_sig <= '0';
    b1_sig <= '0';
    select1_sig <= '1';
    wait for 20ns;
    
    a1_sig <= '1';
    b1_sig <= '0';
    select1_sig <= '1';
    wait for 20ns;
    
    a1_sig <= '0';
    b1_sig <= '1';
    select1_sig <= '1';
    wait for 20ns;
    
    a1_sig <= '1';
    b1_sig <= '1';
    select1_sig <= '1';
    wait for 20ns;

	----------------------------------------------	
	-- Concurrent Assignment Combinational Design
	----------------------------------------------
	a2_sig <= '0';
    b2_sig <= '0';
    select2_sig <= '0';
    wait for 20ns;
    
    a2_sig <= '1';
    b2_sig <= '0';
    select2_sig <= '0';
    wait for 20ns;
    
    a2_sig <= '0';
    b2_sig <= '1';
    select2_sig <= '0';
    wait for 20ns;
    
    a2_sig <= '1';
    b2_sig <= '1';
    select2_sig <= '0';
    wait for 20ns;
    
    a2_sig <= '0';
    b2_sig <= '0';
    select2_sig <= '1';
    wait for 20ns;
    
    a2_sig <= '1';
    b2_sig <= '0';
    select2_sig <= '1';
    wait for 20ns;
    
    a2_sig <= '0';
    b2_sig <= '1';
    select2_sig <= '1';
    wait for 20ns;
    
    a2_sig <= '1';
    b2_sig <= '1';
    select2_sig <= '1';
    wait for 20ns;
    
    ----------------------------------------------	
	-- Process Combinational Design
	----------------------------------------------
	a3_sig <= '0';
    b3_sig <= '0';
    select3_sig <= '0';
    wait for 20ns;
    
    a3_sig <= '1';
    b3_sig <= '0';
    select3_sig <= '0';
    wait for 20ns;
    
    a3_sig <= '0';
    b3_sig <= '1';
    select3_sig <= '0';
    wait for 20ns;
    
    a3_sig <= '1';
    b3_sig <= '1';
    select3_sig <= '0';
    wait for 20ns;
    
    a3_sig <= '0';
    b3_sig <= '0';
    select3_sig <= '1';
    wait for 20ns;
    
    a3_sig <= '1';
    b3_sig <= '0';
    select3_sig <= '1';
    wait for 20ns;
    
    a3_sig <= '0';
    b3_sig <= '1';
    select3_sig <= '1';
    wait for 20ns;
    
    a3_sig <= '1';
    b3_sig <= '1';
    select3_sig <= '1';
    wait for 20ns;

wait;
  end process;  

end Behavioral;
