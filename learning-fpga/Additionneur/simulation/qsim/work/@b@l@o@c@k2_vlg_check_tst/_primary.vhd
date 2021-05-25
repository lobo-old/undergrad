library verilog;
use verilog.vl_types.all;
entity BLOCK2_vlg_check_tst is
    port(
        LEDG            : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end BLOCK2_vlg_check_tst;
