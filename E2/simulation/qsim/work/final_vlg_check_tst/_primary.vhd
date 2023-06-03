library verilog;
use verilog.vl_types.all;
entity final_vlg_check_tst is
    port(
        close           : in     vl_logic;
        \open\          : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end final_vlg_check_tst;
