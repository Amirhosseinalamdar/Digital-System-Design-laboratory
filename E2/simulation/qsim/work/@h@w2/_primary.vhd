library verilog;
use verilog.vl_types.all;
entity HW2 is
    port(
        \open\          : out    vl_logic;
        \IN\            : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        \out\           : in     vl_logic;
        close           : out    vl_logic;
        reset           : in     vl_logic;
        T               : in     vl_logic;
        Ent             : in     vl_logic
    );
end HW2;
