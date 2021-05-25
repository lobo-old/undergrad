library verilog;
use verilog.vl_types.all;
entity SCOMP2_vlg_check_tst is
    port(
        instruction_register_out: in     vl_logic_vector(15 downto 0);
        memory_address_register_out: in     vl_logic_vector(7 downto 0);
        memory_data_register_out: in     vl_logic_vector(15 downto 0);
        memory_write_out: in     vl_logic;
        program_counter_out: in     vl_logic_vector(7 downto 0);
        register_AC_out : in     vl_logic_vector(15 downto 0);
        sortie_Port_out : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end SCOMP2_vlg_check_tst;
