module tag_store (
	input clk,
	input tag_index,
	input tag_in,
	input tag_load,
	output  tag_out 
);
int tag_array  [7:0][8:0];

initial
begin
	for (int i = 0; i < 8; i++)
	begin
		tag_array[i]   = 9'b0;
   end
end

always_ff @(posedge clk)
begin
    if (tag_load==1)
    begin
		tag_array[tag_index]=tag_in;
    end
end

always_comb
begin
	tag_out=tag_array[tag_index];
end

endmodule: tag_store
