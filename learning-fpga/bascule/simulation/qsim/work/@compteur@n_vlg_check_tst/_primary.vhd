library verilog;
use verilog.vl_types.all;
entity CompteurN_vlg_check_tst is
    port(
        CLK_Out         : in     vl_logic;
        V_COUNT         : in     vl_logic_vector(28 downto 0);
        sampler_rx      : in     vl_logic
    );
end CompteurN_vlg_check_tst;
