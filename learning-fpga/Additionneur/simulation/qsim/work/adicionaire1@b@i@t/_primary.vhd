library verilog;
use verilog.vl_types.all;
entity adicionaire1BIT is
    port(
        s               : out    vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        cin             : in     vl_logic;
        r               : out    vl_logic
    );
end adicionaire1BIT;
