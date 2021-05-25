library verilog;
use verilog.vl_types.all;
entity bascule_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        EL              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end bascule_vlg_sample_tst;
