library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity restador is
	port
	(a: in std_logic;
	 b: in std_logic;
	 borrow: out std_logic;
	 r: out std_logic
	);
end restador;

architecture behavioral of restador is 
begin 
	process (a,b) begin
		if a < b then
		r<= '1';
		borrow <= '1';
		elsif a > b then
		r<= '1';
		borrow <= '0';
		else
		r<= '0';
		borrow <= '0';
		end if;
	end process;
end behavioral;
		