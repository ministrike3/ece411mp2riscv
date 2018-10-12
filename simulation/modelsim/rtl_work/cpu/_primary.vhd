library verilog;
use verilog.vl_types.all;
entity cpu is
    port(
        clk             : in     vl_logic;
        mem_resp        : in     vl_logic;
        mem_rdata       : in     vl_logic_vector(31 downto 0);
        mem_read        : out    vl_logic;
        mem_write       : out    vl_logic;
        mem_byte_enable : out    vl_logic_vector(3 downto 0);
        mem_address     : out    vl_logic_vector(31 downto 0);
        mem_wdata       : out    vl_logic_vector(31 downto 0)
    );
end cpu;
