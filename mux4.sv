module mux4 #(parameter width = 32)
(
input [1:0] sel,
input [width-1:0] a, b, c, d,
output logic [width-1:0] z
);
always_comb
begin
case(sel)
	0:begin
		z=a;
	end
	1:begin
		z=b;
	end
	2:begin
		z=c;
	end
	default:begin
	z=d;
	end
endcase
end
endmodule : mux4