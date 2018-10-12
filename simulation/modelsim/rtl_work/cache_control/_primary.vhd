library verilog;
use verilog.vl_types.all;
entity cache_control is
    port(
        clk             : in     vl_logic;
        mem_read        : in     vl_logic;
        mem_write       : in     vl_logic;
        pmem_resp       : in     vl_logic;
        hit0            : in     vl_logic;
        hit1            : in     vl_logic;
        dirty_c         : in     vl_logic;
        valid_in        : in     vl_logic;
        lru_out         : in     vl_logic;
        mem_resp        : out    vl_logic;
        pmem_read       : out    vl_logic;
        pmem_write      : out    vl_logic;
        load_lru        : out    vl_logic;
        way_sel         : out    vl_logic;
        lru_in          : out    vl_logic;
        load_word       : out    vl_logic;
        load_line       : out    vl_logic;
        tag_sel         : out    vl_logic
    );
end cache_control;
