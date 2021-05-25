library verilog;
use verilog.vl_types.all;
entity test_TFF is
    port(
        \out\           : out    vl_logic;
        PRES            : in     vl_logic;
        RES             : in     vl_logic;
        EN              : in     vl_logic;
        CLOCK           : in     vl_logic
    );
end test_TFF;
