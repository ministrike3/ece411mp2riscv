library verilog;
use verilog.vl_types.all;
entity cache_compare is
    port(
        a               : in     vl_logic_vector(23 downto 0);
        b               : in     vl_logic_vector(23 downto 0);
        valid           : in     vl_logic;
        eq              : out    vl_logic
    );
end cache_compare;
