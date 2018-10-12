module mux8 #(parameter width = 32)
(
input [2:0] sel,
input [width-1:0] a, b, c, d, e, f, g, h,
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
	3:begin
		z=d;
	end
	4:begin
		z=e;
	end
	5:begin
		z=f;
	end
	6:begin
		z=g;
	end
	default:begin
	z=h;
	end
endcase
end
endmodule : mux8