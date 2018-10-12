module cache(
  input clk,
  input [31:0] mem_address,
  input [31:0] mem_wdata,
  input [3:0] mem_byte_enable,
  input [255:0] pmem_rdata,
  output [31:0] pmem_address,
  output [255:0] pmem_wdata,
  output [31:0] mem_rdata,
input mem_read,
input mem_write,
input pmem_resp,
output mem_resp,
output pmem_read,
output pmem_write
);

   logic way_sel;
   logic load_lru;
   logic lru_in;
   logic tag_select;
   logic load_line;
   logic load_word;
   logic hit0;
   logic hit1;
   logic valid_in;
   logic dirty_c;
   logic lru_out;
	logic tag_sel;
cache_control control(
.*
);
cache_datapath datapath(
.*
);

endmodule