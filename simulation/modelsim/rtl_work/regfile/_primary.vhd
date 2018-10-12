library verilog;
use verilog.vl_types.all;
entity regfile is
    port(
        clk             : in     vl_logic;
        load            : in     vl_logic;
        \in\            : in     vl_logic_vector(31 downto 0);
        src_a           : in     vl_logic_vector(4 downto 0);
        src_b           : in     vl_logic_vector(4 downto 0);
        dest            : in     vl_logic_vector(4 downto 0);
        reg_a           : out    vl_logic_vector(31 downto 0);
        reg_b           : out    vl_logic_vector(31 downto 0)
    );
end regfile;
