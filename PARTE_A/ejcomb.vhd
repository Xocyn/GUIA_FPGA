library ieee;
use ieee.std_logic_1164.all;
entity ejcomb is
port (A: in std_logic;
      B: in std_logic;
		LED: out std_logic);
end ejcomb;
architecture behavioral of ejcomb is 
begin
LED <= not (A and B);
end behavioral;

--git log --oneline
--git reset --hard "la version que quiero"