library verilog;
use verilog.vl_types.all;
entity CompteurN is
    port(
        CLK_in          : in     vl_logic;
        RESET           : in     vl_logic;
        START           : in     vl_logic;
        V_COUNT         : out    vl_logic_vector(28 downto 0);
        CLK_Out         : out    vl_logic
    );
end CompteurN;
