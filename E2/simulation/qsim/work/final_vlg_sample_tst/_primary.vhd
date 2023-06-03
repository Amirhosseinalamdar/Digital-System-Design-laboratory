library verilog;
use verilog.vl_types.all;
entity final_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        enter           : in     vl_logic;
        \IN\            : in     vl_logic;
        \out\           : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end final_vlg_sample_tst;
