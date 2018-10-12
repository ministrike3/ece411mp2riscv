import rv32i_types::*; /* Import types defined in rv32i_types.sv */

module control
(
  input clk,
  input rv32i_opcode opcode,
  input logic [2:0] funct3,
  input logic [6:0] funct7,
  input logic br_en,
  input mem_resp,
  output logic [2:0] loader_mask,
  output logic load_pc,
  output logic load_ir,
  output logic load_regfile,
  output logic [2:0] regfilemux_sel,
  output logic load_data_out,
  output logic pcmux_sel,
  output branch_funct3_t cmpop,
  output logic alumux1_sel,
  output logic [2:0] alumux2_sel,
  output logic marmux_sel,
  output logic cmpmux_sel,
  output logic load_mar,
  output logic load_mdr,
  output alu_ops aluop,
  output logic mem_read,
  output logic mem_write,
  output rv32i_mem_wmask mem_byte_enable
);

enum int unsigned {
  fetch1,
  fetch2,
  fetch3,
  decode,
  s_auipc,
  s_lui,
  calc_addr,
  ldr1,
  ldr2,
  str1,
  str2,
  s_imm,
  br,
  s_regreg,
  s_jal,
  s_jalr1,
  s_jalr2
} state, next_state;

always_comb
begin : state_actions
/* Default assignments */
  load_pc = 1'b0;
  load_ir = 1'b0;
  load_regfile = 1'b0;
  alumux1_sel = 1'b0;
  alumux2_sel = 2'b00;
  aluop = alu_ops'(funct3);
  mem_read = 1'b0;
  mem_write = 1'b0;
  mem_byte_enable = 4'b1111;
  pcmux_sel = 1'b0;
  cmpop = branch_funct3_t'(funct3);
  regfilemux_sel = 2'b00;
  marmux_sel = 1'b0;
  cmpmux_sel = 1'b0;
  load_mar = 1'b0;
  load_mdr = 1'b0;
  load_data_out = 1'b0;
  loader_mask= 3'b010;
  case(state)
    fetch1: begin
    /* MAR <= PC */
      load_mar = 1;
    end
    fetch2: begin
    /* Read memory */
      mem_read = 1;
      load_mdr = 1;
    end
    fetch3: begin
    /* Load IR */
      load_ir = 1;
    end
    s_auipc: begin
      load_regfile = 1;
      alumux1_sel = 1;
      alumux2_sel = 1;
      aluop = alu_add;
      load_pc = 1;
    end
    s_lui: begin
      load_regfile=1;
      load_pc=1;
      regfilemux_sel=2;
    end
    decode: /* Do nothing */;
    s_imm: begin
        load_regfile = 1;
		  aluop=alu_ops'(funct3);
        case(arith_funct3_t'(funct3))
            slt: begin
                cmpop = blt;
                cmpmux_sel = 1;
                regfilemux_sel = 1;
            end
            sltu: begin
                cmpop = bltu;
                cmpmux_sel = 1;
                regfilemux_sel = 1;
            end
            sr: begin
                if (funct7 == 7'b0100000)
                    aluop = alu_sra;
            end
				default:;
        endcase
        load_pc = 1;
    end

    br: begin
        pcmux_sel = br_en;
        alumux2_sel = 2;
        alumux1_sel = 1;
        load_pc = 1;
        aluop = alu_add;
    end
    calc_addr: begin
        aluop = alu_add;
        if (opcode[5] == 1)
            begin
                load_data_out = 1;
                alumux2_sel = 3;
            end
        marmux_sel = 1;
        load_mar = 1;
    end
    ldr1: begin
        mem_read = 1;
        load_mdr = 1;
    end
    ldr2: begin
        regfilemux_sel = 3;
        load_regfile = 1;
        load_pc = 1;
		  loader_mask= funct3;
    end
	 
    str1: begin
        mem_write = 1;
		  case(store_funct3_t'(funct3))
			  sb:begin
					mem_byte_enable=4'b0001;
			  end
			  sh:begin
					mem_byte_enable=4'b0011;
			  end
			  sw:begin
					mem_byte_enable=4'b1111;
			  end	
			  default:begin
					mem_byte_enable=4'b1111;; 
			  end
		  endcase 
    end
    str2: begin
        load_pc = 1;
    end
	 s_jal:begin
		 //set the selector and load bits as needed
		 regfilemux_sel = 4;
		 load_regfile = 1;
		 load_pc = 1;
		 //ALU logic -> pc+j_immm
		 aluop=alu_add;
		 alumux2_sel=5;
		 alumux1_sel=1;
		 //make sure it jumps rather then goes to next instruction
		 pcmux_sel=1;
	 end
	 
	 s_jalr1:begin
		 //set the selector and load bits as needed
		 regfilemux_sel = 4;
		 load_regfile = 1;
		 load_pc = 1;
		 pcmux_sel=1;	  
		 //ALU logic part 1-> pc+i_immm
		 aluop=alu_add;
		 alumux2_sel=0;
		 alumux1_sel=0;		 
	 end
	 s_jalr2:begin
		 load_pc = 1;
		 pcmux_sel=1;	  
		 aluop=alu_and;
		 alumux1_sel=1;
		 alumux2_sel=6;
		 pcmux_sel=1;	 
	 end 
	 
    s_regreg: begin
        load_regfile = 1;
		  alumux2_sel=4;
        case(alu_ops'(funct3))
		     slt:begin
			      cmpop = blt;
               cmpmux_sel = 0;
               regfilemux_sel = 1;
			  end
			  sltu:begin
               cmpop = bltu;
               cmpmux_sel = 0;
               regfilemux_sel = 1;
			  end
		     sr:begin
					if (funct7 == 7'b0100000)
					aluop = alu_sra;
					else
					aluop = alu_srl;
			  end
			  add:begin
				  if (funct7 == 7'b0100000)
				  aluop = alu_sub;
				  else 
				  aluop = alu_add;
			  end
			  default:begin
			      aluop=alu_ops'(funct3);
			  end
			endcase
        load_pc = 1;
    end
    default: /* Do nothing */;
  endcase
end



always_comb
begin : next_state_logic
    next_state = state;
    case(state)
        fetch1: next_state = fetch2;
        fetch2: if (mem_resp) next_state = fetch3;
        fetch3: next_state = decode;
        calc_addr: begin
            if(opcode[5] == 1)
                next_state = str1;
            else
                next_state = ldr1;
        end
        ldr1: if (mem_resp) next_state = ldr2;
        str1: if (mem_resp) next_state = str2;
		  s_jalr1: next_state = s_jalr2;
        decode: begin
            case(opcode)
                op_imm: next_state = s_imm;
                op_br: next_state = br;
                op_load: next_state = calc_addr;
                op_store: next_state = calc_addr;
                op_auipc: next_state = s_auipc;
                op_lui: next_state = s_lui;
					 op_reg: next_state = s_regreg;
					 op_jal: next_state = s_jal;
					 op_jalr: next_state = s_jalr1;
                default: $display("Unknown opcode");
            endcase
        end
        default: next_state = fetch1;
    endcase
end

always_ff @(posedge clk)
begin : next_state_assignment
  state <= next_state;
end

endmodule : control
