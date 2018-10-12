library verilog;
use verilog.vl_types.all;
entity cache_datapath is
    port(
        clk             : in     vl_logic;
        mem_address     : in     vl_logic_vector(31 downto 0);
        mem_wdata       : in     vl_logic_vector(31 downto 0);
        mem_byte_enable : in     vl_logic_vector(3 downto 0);
        pmem_rdata      : in     vl_logic_vector(255 downto 0);
        way_sel         : in     vl_logic;
        load_lru        : in     vl_logic;
        lru_in          : in     vl_logic;
        tag_sel         : in     vl_logic;
        load_line       : in     vl_logic;
        load_word       : in     vl_logic;
        hit0            : out    vl_logic;
        hit1            : out    vl_logic;
        valid_in        : out    vl_logic;
        dirty_c         : out    vl_logic;
        lru_out         : out    vl_logic;
        pmem_address    : out    vl_logic_vector(31 downto 0);
        pmem_wdata      : out    vl_logic_vector(255 downto 0);
        mem_rdata       : out    vl_logic_vector(31 downto 0)
    );
end cache_datapath;
