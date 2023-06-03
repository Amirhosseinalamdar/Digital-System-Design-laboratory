library verilog;
use verilog.vl_types.all;
entity booth_vlg_check_tst is
    port(
        done            : in     vl_logic;
        res             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end booth_vlg_check_tst;
