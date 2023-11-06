library verilog;
use verilog.vl_types.all;
entity ffjk_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        jk              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ffjk_vlg_sample_tst;
