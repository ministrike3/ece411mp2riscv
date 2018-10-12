library verilog;
use verilog.vl_types.all;
library work;
entity cpu_datapath is
    port(
        clk             : in     vl_logic;
        load_pc         : in     vl_logic;
        load_ir         : in     vl_logic;
        load_regfile    : in     vl_logic;
        load_mar        : in     vl_logic;
        load_mdr        : in     vl_logic;
        load_data_out   : in     vl_logic;
        pcmux_sel       : in     vl_logic;
        alumux1_sel     : in     vl_logic;
        alumux2_sel     : in     vl_logic_vector(2 downto 0);
        regfilemux_sel  : in     vl_logic_vector(2 downto 0);
        loader_mask     : in     vl_logic_vector(2 downto 0);
        marmux_sel      : in     vl_logic;
        cmpmux_sel      : in     vl_logic;
        aluop           : in     work.rv32i_types.alu_ops;
        cmpop           : in     work.rv32i_types.branch_funct3_t;
        opcode          : out    work.rv32i_types.rv32i_opcode;
        funct3          : out    vl_logic_vector(2 downto 0);
        funct7          : out    vl_logic_vector(6 downto 0);
        br_en           : out    vl_logic;
        mem_address     : out    vl_logic_vector(31 downto 0);
        mem_wdata       : out    vl_logic_vector(31 downto 0);
        mem_rdata       : in     vl_logic_vector(31 downto 0)
    );
end cpu_datapath;
