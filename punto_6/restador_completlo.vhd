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
