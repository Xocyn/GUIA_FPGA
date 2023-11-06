library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is 
port (
		in_a: in std_logic;
		in_b: in std_logic;
		in_cin: in std_logic;
		clk: in std_logic;
		o_f: out std_logic;
		o_cout: out std_logic);
end sumador_completo;

architecture behavioral of sumador_completo is

component FFD
port (D,clk: in std_logic;
		Q: out std_logic);
end component;

signal a,b,cin,cout,f: std_logic;
begin 
	F<= a xor b xor cin;
	cout<= (a and b) or (cin and (a xor b));

D1: FFD port map (in_a, clk, a);
D2: FFD port map (in_b, clk, b);
D3: FFD port map (in_cin, clk, cin);
D4: FFD port map (cout, clk, o_cout);
D5: FFD port map (f, clk, o_f);
end behavioral;