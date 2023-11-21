library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_8x3 is
	port(
		I 	: in STD_LOGIC_VECTOR(7 downto 0);
		EN 	: in STD_LOGIC;
		-- Output
		O 	: out STD_LOGIC_VECTOR(2 downto 0)
	);
end encoder_8x3;

architecture Behavioral of encoder_8x3 is

begin
	my_encoder : process(I, EN)
	begin
		O <= "XXX"; -- default output value
		if(EN = '1') then -- active high enable pin
			case I is
				when "00000001" => O <= "000";
				when "00000010" => O <= "001";
				when "00000100" => O <= "010";
				when "00001000" => O <= "011";
				when "00010000" => O <= "100";
				when "00100000" => O <= "101";
				when "01000000" => O <= "110";
				when "10000000" => O <= "111";
				when others => O <= "XXX";
			end case;

		end if;
	end process my_encoder;
end Behavioral;