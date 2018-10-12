import rv32i_types::*;

module datapath
(
    input clk,

    /* control signals */
    input load_pc,
    input load_ir,
    input load_regfile,
    input load_mar,
    input load_mdr,
    input load_data_out,
    input pcmux_sel,
    input alumux1_sel,
    input [2:0] alumux2_sel,
    input [2:0] regfilemux_sel,
	 input [2:0] loader_mask,
    input marmux_sel,
    input cmpmux_sel,
    input alu_ops aluop,
    input branch_funct3_t cmpop,
    /* declare more ports here */
    output rv32i_opcode opcode,
    output [2:0] funct3,
    output [6:0] funct7,
    output br_en,
	 /*This is datapath to memory*/
	 output rv32i_word mem_address,
	 output rv32i_word mem_wdata,
	 input rv32i_word mem_rdata
);

/* declare internal signals */
rv32i_word rs1_out, rs2_out;
rv32i_word i_imm,u_imm,b_imm,s_imm, j_imm;
rv32i_word pc_out,pcmux_out, alu_out, alumux1_out, alumux2_out, regfilemux_out, marmux_out, cmpmux_out;
rv32i_word mdrreg_out,lds_out;
rv32i_reg rs1, rs2,rd;


mux2 pcmux
(
    .sel(pcmux_sel),
    .a(pc_out+4),
    .b(alu_out),
    .f(pcmux_out)
);

mux2 cmpmux
(
.sel(cmpmux_sel),
.a(rs2_out),
.b(i_imm),
.f(cmpmux_out)
);

mux2 alumux1
(
.sel(alumux1_sel),
.a(rs1_out),
.b(pc_out),
.f(alumux1_out)
);

mux2 marmux
(
.sel(marmux_sel),
.a(pc_out),
.b(alu_out),
.f(marmux_out)
);

mux8 alumux2
(
.sel(alumux2_sel),
.a(i_imm),
.b(u_imm),
.c(b_imm),
.d(s_imm),
.e(rs2_out),
.f(j_imm),
.g(32'hFFFFFFFE),
.h(),
.z(alumux2_out)
);

alu alu
(
  .aluop(aluop),
  .a(alumux1_out),
  .b(alumux2_out),
  .f(alu_out)
);

mux8 regfilemux
(
.sel(regfilemux_sel),
.a(alu_out),
.b({31'h00000000, br_en}),
.c(u_imm),
.d(lds_out),
.e(pc_out+4),
.f(),
.g(),
.h(),
.z(regfilemux_out)
);

pc_register pc
(
    .clk,
    .load(load_pc),
    .in(pcmux_out),
    .out(pc_out)
);

regfile regfile
(
    .clk,
    .load(load_regfile),
    .in(regfilemux_out),
    .src_a(rs1),
    .src_b(rs2),
    .dest(rd),
    .reg_a(rs1_out),
    .reg_b(rs2_out)
);

ir IR
(
  .clk,
  .load(load_ir),
  .in(mdrreg_out),
  .funct3(funct3),
  .funct7(funct7),
  .opcode(opcode),
  .i_imm(i_imm),
  .s_imm(s_imm),
  .b_imm(b_imm),
  .u_imm(u_imm),
  .j_imm(j_imm),
  .rs1(rs1),
  .rs2(rs2),
  .rd(rd)
);
register mdr
(
  .clk,
  .load(load_mdr),
  .in(mem_rdata),
  .out(mdrreg_out)
);
register mar
(
  .clk,
  .load(load_mar),
  .in(marmux_out),
  .out(mem_address)
);
register mem_data_out
(
  .clk,
  .load(load_data_out),
  .in(rs2_out),
  .out(mem_wdata)
);
comparator cmp
(
  .cmpop(cmpop),
  .a(rs1_out),
  .b(cmpmux_out),
  .br_en(br_en)
);

ldselect lds
(
  .sel(loader_mask),
  .a(mdrreg_out),
  .z(lds_out)
);
endmodule : datapath
