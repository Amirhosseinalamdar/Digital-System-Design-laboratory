library verilog;
use verilog.vl_types.all;
entity pipline_vlg_sample_tst is
    port(
        Address         : in     vl_logic_vector(4 downto 0);
        Load            : in     vl_logic;
        clk             : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pipline_vlg_sample_tst;
