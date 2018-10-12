library verilog;
use verilog.vl_types.all;
entity ldselect is
    generic(
        width           : integer := 32
    );
    port(
        sel             : in     vl_logic_vector(2 downto 0);
        a               : in     vl_logic_vector;
        z               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end ldselect;
