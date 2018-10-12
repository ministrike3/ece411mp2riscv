import rv32i_types::*;

module comparator
(
    input branch_funct3_t cmpop,
    input [31:0] a, b,
    output logic br_en
);

always_comb
begin
    case (cmpop)
        beq:  br_en = (a==b) ;
        bne:  br_en = (a!=b) ;
        blt:  br_en = ($signed(a) < $signed(b));
        bge:  br_en = ($signed(a) >= $signed(b));
        bltu: br_en = (a<b);
        bgeu: br_en = (a>=b);
    endcase
end

endmodule : comparator
