module lru (
	input clk,
	input lru_index,
	input lru_in, // this is 0 if its a 0 hit and 1 if its a 1 hit
	input load_lru,
	output logic lru_out //
);
logic data [7:0];
initial
begin
	for (int i = 0; i < 8; i++)
	begin
		data[i]  = 1'b0;
   end
end

always_ff @(posedge clk)
begin
    if (load_lru == 1)
    begin
    		data[lru_index] = lru_in;
    end
end

always_comb
begin
	lru_out = !(data[lru_index]);
	// if 0 remove 0, if 1 remove 1
end

endmodule: lru
