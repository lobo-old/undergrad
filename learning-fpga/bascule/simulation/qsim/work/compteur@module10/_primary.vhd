library verilog;
use verilog.vl_types.all;
entity compteurModule10 is
    port(
        Q               : out    vl_logic_vector(3 downto 0);
        PRE             : in     vl_logic;
        CLR             : in     vl_logic;
        EN              : in     vl_logic;
        CLK             : in     vl_logic
    );
end compteurModule10;
