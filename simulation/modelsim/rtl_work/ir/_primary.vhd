library verilog;
use verilog.vl_types.all;
library work;
entity ir is
    port(
        clk             : in     vl_logic;
        load            : in     vl_logic;
        \in\            : in     vl_logic_vector(31 downto 0);
        funct3          : out    vl_logic_vector(2 downto 0);
        funct7          : out    vl_logic_vector(6 downto 0);
        opcode          : out    work.rv32i_types.rv32i_opcode;
        i_imm           : out    vl_logic_vector(31 downto 0);
        s_imm           : out    vl_logic_vector(31 downto 0);
        b_imm           : out    vl_logic_vector(31 downto 0);
        u_imm           : out    vl_logic_vector(31 downto 0);
        j_imm           : out    vl_logic_vector(31 downto 0);
        rs1             : out    vl_logic_vector(4 downto 0);
        rs2             : out    vl_logic_vector(4 downto 0);
        rd              : out    vl_logic_vector(4 downto 0)
    );
end ir;
