library verilog;
use verilog.vl_types.all;
entity up_down_counter_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        up_down         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end up_down_counter_vlg_sample_tst;
