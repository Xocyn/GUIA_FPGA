library ieee;
use ieee.std_logic_1164.all;

entity ffjk is
	port
	(
		-- Input ports
		clk : in std_logic;
		jk	: in  std_logic_vector(1 downto 0);
		-- Output ports
		q	: buffer std_logic
	);
end ffjk;

architecture behavioral of ffjk is
begin
	process (clk) begin
	if (rising_edge (clk)) then
		case jk is
		when "00" => q <= q;
		when "01" => q <= '0';
		when "10" => q <= '1';
		when "11" => q <= not(q);
		end case;
	-- else q <= q;
	end if;
	end process;
end behavioral;
