library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity restador_completo is
	port
	(		-- Input ports
		in_a	: in  std_logic;
		in_b	: in  std_logic;
		in_bw : in std_logic;
		clk	: in  std_logic;
		-- Output ports
		r	: out std_logic;
		b_out	: out std_logic
	);
end restador_completo;


