library verilog;
use verilog.vl_types.all;
entity ffjk is
    port(
        clk             : in     vl_logic;
        jk              : in     vl_logic_vector(1 downto 0);
        q               : out    vl_logic
    );
end ffjk;
