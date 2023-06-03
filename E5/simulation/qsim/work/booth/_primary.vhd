library verilog;
use verilog.vl_types.all;
entity booth is
    port(
        A_in            : in     vl_logic_vector(3 downto 0);
        B_in            : in     vl_logic_vector(3 downto 0);
        rstN            : in     vl_logic;
        clk             : in     vl_logic;
        res             : out    vl_logic_vector(7 downto 0);
        done            : out    vl_logic
    );
end booth;
