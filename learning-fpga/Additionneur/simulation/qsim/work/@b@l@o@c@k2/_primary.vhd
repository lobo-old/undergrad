library verilog;
use verilog.vl_types.all;
entity BLOCK2 is
    port(
        LEDG            : out    vl_logic_vector(1 downto 0);
        sw              : in     vl_logic_vector(2 downto 0)
    );
end BLOCK2;
