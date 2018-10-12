module data_modifier(
  input logic [3:0] mem_byte_enable,
  input logic [31:0] wdata_from_cpu,
  input logic [4:0]offset,
  input logic [255:0] data_out,
  output logic [255:0] data_changed_in
  );

  /*
given data_out as an input
check load word
if load word
find offset, move to that place, and put wdata there
output data_changed_in

what is mem_byte_enable for

*/
logic [7:0] b0,b1,b2,b3;

always_comb
begin
	if (offset==31)begin
		if (mem_byte_enable[0]==1) begin
			b0=wdata_from_cpu[7:0] ;
			end
		else begin
			b0= data_out [(offset*8) +:8] ;
			end
		b1=8'hXX;
		b2=8'hXX;
		b3=8'hXX;
		data_changed_in={b0,data_out[247:0]};
	end
	else if (offset==30)begin
		if (mem_byte_enable[0]==1) begin
			b0=wdata_from_cpu[7:0] ;
			end
		else begin
			b0= data_out [(offset*8) +:8] ;
			end
		if (mem_byte_enable[1]==1) begin
			b1=wdata_from_cpu[15:8] ;
			end
		else begin
			b1= data_out [((offset+1)*8) +:8] ;
			end
		b2=8'hXX;
		b3=8'hXX;
		data_changed_in={b1,b0,data_out[239:0]};
	end
	
	else if (offset==29)begin
		if (mem_byte_enable[0]==1) begin
			b0=wdata_from_cpu[7:0] ;
			end
		else begin
			b0= data_out [(offset*8) +:8] ;
			end
		if (mem_byte_enable[1]==1) begin
			b1=wdata_from_cpu[15:8] ;
			end
		else begin
			b1= data_out [((offset+1)*8) +:8] ;
			end
		if (mem_byte_enable[2]==1) begin
			b2=wdata_from_cpu[23:16] ;
			end
		else begin
			b2= data_out [((offset+2)*8) +:8] ;
			end
		b3=8'hXX;
		data_changed_in={b2,b1,b0,data_out[231:0]};
	end
	
	
	else if (offset==28)begin
		if (mem_byte_enable[0]==1) begin
			b0=wdata_from_cpu[7:0] ;
			end
		else begin
			b0= data_out [(offset*8) +:8] ;
			end
		if (mem_byte_enable[1]==1) begin
			b1=wdata_from_cpu[15:8] ;
			end
		else begin
			b1= data_out [((offset+1)*8) +:8] ;
			end
		if (mem_byte_enable[2]==1) begin
			b2=wdata_from_cpu[23:16] ;
			end
		else begin
			b2= data_out [((offset+2)*8) +:8] ;
			end
		if (mem_byte_enable[3]==1) begin
			b3=wdata_from_cpu[31:24] ;
			end
		else begin
			b3= data_out [((offset+3)*8) +:8] ;
			end
		data_changed_in={b3,b2,b1,b0,data_out[223:0]};
	end
	
	else begin
		if (mem_byte_enable[0]==1) begin
			b0=wdata_from_cpu[7:0] ;
			end
		else begin
			b0= data_out [(offset*8) +:8] ;
			end
		if (mem_byte_enable[1]==1) begin
			b1=wdata_from_cpu[15:8] ;
			end
		else begin
			b1= data_out [((offset+1)*8) +:8] ;
			end
		if (mem_byte_enable[2]==1) begin
			b2=wdata_from_cpu[23:16] ;
			end
		else begin
			b2= data_out [((offset+2)*8) +:8] ;
			end
		if (mem_byte_enable[3]==1) begin
			b3=wdata_from_cpu[31:24] ;
			end
		else begin
			b3= data_out [((offset+3)*8) +:8] ;
			end
		data_changed_in=data_out;
		data_changed_in[(offset*8) +:8]=b0;
		data_changed_in[((offset+1)*8) +:8]=b1;
		data_changed_in[((offset+2)*8) +:8]=b2;
		data_changed_in[((offset+3)*8) +:8]=b3;
	end
end
endmodule