library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_3x8 is
	port(
		I 	: in STD_LOGIC_VECTOR(2 downto 0);
		EN 	: in STD_LOGIC;
		-- Output
		O 	: out STD_LOGIC_VECTOR(7 downto 0)
	);
end decoder_3x8;

architecture Behavioral of decoder_3x8 is
begin
	my_decoder : process(I, EN)
	begin
		O <= "XXXXXXXX"; -- default output value
		if(EN = '1') then -- active high enable pin
			case I is
				when "000"  => O <= "00000001";
				when "001"  => O <= "00000010";
				when "010"  => O <= "00000100";
				when "011"  => O <= "00001000";
				when "100"  => O <= "00010000";
				when "101"  => O <= "00100000";
				when "110"  => O <= "01000000";
				when "111"  => O <= "10000000";
				when others => O <= "XXXXXXXX";
			end case;

		end if;
	end process my_decoder;
end Behavioral;