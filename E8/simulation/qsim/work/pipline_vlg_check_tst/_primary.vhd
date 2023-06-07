library verilog;
use verilog.vl_types.all;
entity pipline_vlg_check_tst is
    port(
        \OUT\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end pipline_vlg_check_tst;
