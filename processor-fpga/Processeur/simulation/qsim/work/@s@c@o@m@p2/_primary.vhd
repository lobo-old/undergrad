library verilog;
use verilog.vl_types.all;
entity SCOMP2 is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        program_counter_out: out    vl_logic_vector(7 downto 0);
        register_AC_out : out    vl_logic_vector(15 downto 0);
        memory_data_register_out: out    vl_logic_vector(15 downto 0);
        memory_address_register_out: out    vl_logic_vector(7 downto 0);
        memory_write_out: out    vl_logic;
        instruction_register_out: out    vl_logic_vector(15 downto 0);
        entree_Port     : in     vl_logic_vector(15 downto 0);
        sortie_Port_out : out    vl_logic_vector(15 downto 0)
    );
end SCOMP2;
