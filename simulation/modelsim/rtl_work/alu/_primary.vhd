library verilog;
use verilog.vl_types.all;
library work;
entity alu is
    port(
        aluop           : in     work.rv32i_types.alu_ops;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        f               : out    vl_logic_vector(31 downto 0)
    );
end alu;
