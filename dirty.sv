module dirty_store (
	input clk,
	input dirty_index,
	input dirty_in,
	input dirty_load,
	output  dirty_out  //
);
int dirty_array  [7:0];

initial
begin
	for (int i = 0; i < 8; i++)
	begin
		dirty_array[i]   = 1'b0;
   end
end

always_ff @(posedge clk)
begin
    if (dirty_load==1)
    begin
		dirty_array[dirty_index]=dirty_in;
    end

end

always_comb
begin
	dirty_out=dirty_array[dirty_index];
end

endmodule: dirty_store
