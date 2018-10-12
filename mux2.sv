module mux2 #(parameter width = 32)
(
input sel,
input [width-1:0] a, b,
output logic [width-1:0] f
);
always_comb
begin
case(sel)
	0:begin
		f=a;
	end
	default:begin
	f=b;
	end
endcase
end
endmodule : mux2