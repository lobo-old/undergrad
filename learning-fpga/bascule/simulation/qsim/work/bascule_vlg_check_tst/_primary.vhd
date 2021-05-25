library verilog;
use verilog.vl_types.all;
entity bascule_vlg_check_tst is
    port(
        Q0              : in     vl_logic;
        Qff             : in     vl_logic;
        QL              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end bascule_vlg_check_tst;
