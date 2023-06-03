library verilog;
use verilog.vl_types.all;
entity HW2_vlg_check_tst is
    port(
        close           : in     vl_logic;
        count           : in     vl_logic_vector(3 downto 0);
        \open\          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end HW2_vlg_check_tst;
