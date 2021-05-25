library verilog;
use verilog.vl_types.all;
entity test_TFF_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        EN              : in     vl_logic;
        PRES            : in     vl_logic;
        RES             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end test_TFF_vlg_sample_tst;
