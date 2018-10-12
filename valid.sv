module valid_store (
	input clk,
	input valid_index,
	input valid_load,
	output  valid_out  //
);
int valid_array  [7:0];

initial
begin
	for (int i = 0; i < 8; i++)
	begin
		valid_array[i]   = 1'b0;
   end
end

always_ff @(posedge clk)
begin
    if (valid_load==1)
    begin
		valid_array[valid_index]=1'b1;
    end

end

always_comb
begin
	valid_out=valid_array[valid_index];
end

endmodule: valid_store
