library verilog;
use verilog.vl_types.all;
entity bascule is
    port(
        QL              : out    vl_logic;
        D               : in     vl_logic;
        EL              : in     vl_logic;
        Q0              : out    vl_logic;
        Qff             : out    vl_logic
    );
end bascule;
