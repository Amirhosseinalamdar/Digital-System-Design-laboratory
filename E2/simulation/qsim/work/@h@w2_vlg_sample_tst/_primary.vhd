library verilog;
use verilog.vl_types.all;
entity HW2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        Ent             : in     vl_logic;
        \IN\            : in     vl_logic;
        \out\           : in     vl_logic;
        reset           : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end HW2_vlg_sample_tst;
