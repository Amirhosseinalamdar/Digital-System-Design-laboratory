library verilog;
use verilog.vl_types.all;
entity pipline is
    port(
        start           : in     vl_logic;
        Address         : in     vl_logic_vector(4 downto 0);
        Load            : in     vl_logic;
        clk             : in     vl_logic;
        \OUT\           : out    vl_logic_vector(3 downto 0)
    );
end pipline;
