library verilog;
use verilog.vl_types.all;
entity up_down_counter is
    port(
        Q0              : out    vl_logic;
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        enable          : in     vl_logic;
        Q1              : out    vl_logic;
        up_down         : in     vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic
    );
end up_down_counter;
