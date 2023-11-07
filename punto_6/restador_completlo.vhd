<<<<<<< HEAD
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity restador_completlo is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sub : out STD_LOGIC;
           Borrow : out STD_LOGIC;
           CLK : in STD_LOGIC);
end restador_completlo;

architecture Behavioral of restador_completlo is
    signal Difference : STD_LOGIC;
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            Difference <= (A XOR B) XOR Cin;
            Borrow <= (NOT A AND B) OR (B AND Cin) OR (Cin AND NOT A);
            Sub <= Difference;
        end if;
    end process;
end Behavioral;
=======
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


>>>>>>> 4ebf7e0d125b6edef53d33d6d25a811717b1a93a
