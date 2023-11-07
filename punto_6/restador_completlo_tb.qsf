library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity restador_completlo_tb is
end restador_completlo_tb;

architecture sim of restador_completlo_tb is
    signal A, B, Cin, Sub, Borrow, CLK: STD_LOGIC;
begin
    uut: entity work.restador_completlo
        port map (
            A => A,
            B => B,
            Cin => Cin,
            Sub => Sub,
            Borrow => Borrow,
            CLK => CLK
        );
    
    process
    begin
        A <= '0'; B <= '0'; Cin <= '0'; CLK <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0'; CLK <= not CLK; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0'; CLK <= not CLK; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0'; CLK <= not CLK; wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1'; CLK <= not CLK; wait for 10 ns;
		  A <= '1'; B <= '0'; Cin <= '1'; CLK <= not CLK; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1'; CLK <= not CLK; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1'; CLK <= not CLK; wait for 10 ns;
		  wait;
    end process;
end sim;
