library verilog;
use verilog.vl_types.all;
entity Compteur16_vlg_check_tst is
    port(
        CLK_Out         : in     vl_logic;
        V_COUNT         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Compteur16_vlg_check_tst;
