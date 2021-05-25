library verilog;
use verilog.vl_types.all;
entity test_Tog_flipflop is
    port(
        Pst             : in     vl_logic;
        Rst             : in     vl_logic;
        T               : in     vl_logic;
        Clk             : in     vl_logic;
        Q               : out    vl_logic
    );
end test_Tog_flipflop;
