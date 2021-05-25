library verilog;
use verilog.vl_types.all;
entity adicionaire1BIT_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end adicionaire1BIT_vlg_sample_tst;
