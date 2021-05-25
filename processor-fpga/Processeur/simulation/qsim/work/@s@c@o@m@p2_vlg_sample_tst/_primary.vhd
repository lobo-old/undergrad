library verilog;
use verilog.vl_types.all;
entity SCOMP2_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        entree_Port     : in     vl_logic_vector(15 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SCOMP2_vlg_sample_tst;
