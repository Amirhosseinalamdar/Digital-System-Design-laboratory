library verilog;
use verilog.vl_types.all;
entity final is
    port(
        \open\          : out    vl_logic;
        \IN\            : in     vl_logic;
        Q0              : out    vl_logic;
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        \out\           : in     vl_logic;
        close           : out    vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q3              : out    vl_logic;
        T               : in     vl_logic;
        enter           : in     vl_logic
    );
end final;
