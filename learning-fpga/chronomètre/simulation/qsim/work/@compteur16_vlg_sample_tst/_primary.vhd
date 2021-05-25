library verilog;
use verilog.vl_types.all;
entity Compteur16_vlg_sample_tst is
    port(
        CLK_in          : in     vl_logic;
        RESET           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Compteur16_vlg_sample_tst;
