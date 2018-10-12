library verilog;
use verilog.vl_types.all;
entity data_modifier is
    port(
        mem_byte_enable : in     vl_logic_vector(3 downto 0);
        wdata_from_cpu  : in     vl_logic_vector(31 downto 0);
        offset          : in     vl_logic_vector(4 downto 0);
        data_out        : in     vl_logic_vector(255 downto 0);
        data_changed_in : out    vl_logic_vector(255 downto 0)
    );
end data_modifier;
