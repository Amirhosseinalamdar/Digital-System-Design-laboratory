library verilog;
use verilog.vl_types.all;
entity booth_vlg_sample_tst is
    port(
        A_in            : in     vl_logic_vector(3 downto 0);
        B_in            : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        rstN            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end booth_vlg_sample_tst;
