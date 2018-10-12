import rv32i_types::*;
module mp2
(
    input clk,
    /* Memory signals */
    input pmem_resp,
    input [255:0] pmem_rdata,
    output pmem_read,
    output pmem_write,
    output [31:0] pmem_address,
    output [255:0]pmem_wdata
);

logic [3:0] mem_byte_enable;
logic mem_read, mem_write, mem_resp;
rv32i_word mem_address, mem_wdata, mem_rdata;
cpu cpu(
    .clk,
    .mem_resp,
    .mem_rdata, //[31:0]
	 //outputs
    .mem_read,
    .mem_write,
    .mem_byte_enable, //[3:0]
    .mem_address, //[31:0]
    .mem_wdata //[31:0]
);

cache cache(
	 .clk,
    .mem_resp,
    .mem_rdata, //[31:0]
    .mem_read,
    .mem_write,
    .mem_byte_enable, //[3:0]
    .mem_address, //[31:0]
    .mem_wdata, //[31:0]
	 
	 .pmem_address, //[31:0]
	 .pmem_rdata, // [255:0]
	 .pmem_wdata, // [255:0]
	 .pmem_read, //
	 .pmem_write,
	 .pmem_resp
);

endmodule: mp2