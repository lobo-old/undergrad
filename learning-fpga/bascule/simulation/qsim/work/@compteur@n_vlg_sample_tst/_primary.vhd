library verilog;
use verilog.vl_types.all;
entity CompteurN_vlg_sample_tst is
    port(
        CLK_in          : in     vl_logic;
        RESET           : in     vl_logic;
        START           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CompteurN_vlg_sample_tst;
