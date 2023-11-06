library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FFD is
port (D,clk: in std_logic;
		Q: out std_logic);
end FFD;

architecture behavioral of FFD is
begin
process(clk)
begin 
if (clk='1' and clk'event) then
Q<=D;
end if;
end process;
end behavioral;
