module ldselect #(parameter width = 32)
(
input [2:0] sel,
input [width-1:0] a,
output logic [width-1:0] z
);
always_comb
begin
case(sel)
	//LB
	0:begin
		z={{24{a[7]}},a[7:0]};
	end
	//LH
	1:begin
		z={{16{a[15]}},a[15:0]};
	end
	//LW
	2:begin
		z=a;
	end
	//LBU
	4:begin
	z={{24{1'b0}},a[7:0]};
	end
	//LHU
	default:begin
	z={{16{1'b0}},a[15:0]};
	end
endcase
end
endmodule : ldselect