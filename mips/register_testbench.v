/* input                    clk,  
      input                    rst,  
      // write port  
      input                    reg_write_en,  
      input          [4:0]     reg_write_dest,  
      input          [31:0]     reg_write_data,  
      //read port 1  
      input          [4:0]     reg_read_addr_1,  
      output          [31:0]     reg_read_data_1,  
      //read port 2  
      input          [4:0]     reg_read_addr_2,  
      output          [31:0]     reg_read_data_2  
 );  
      reg     [31:0]     reg_array [31:0];  
 */
`timescale 1ns/1ps

module register_testbench;

reg clk;
reg rst;            
reg [4:0] reg_read_addr_1;
reg [4:0] reg_read_addr_2;
reg [4:0] reg_write_data;
reg [4:0] reg_write_dest;
reg reg_write_en;
wire [31:0] reg_read_data1;
wire [31:0] reg_read_data2;
reg [31:0] reg_array[31:0];



register_file uu1(.clk(clk), .rst(rst),.reg_read_addr_1(reg_read_addr_1),.reg_read_addr_2(reg_read_addr_1),.reg_write_data(reg_write_data),.reg_write_dest(reg_write_dest));
register_file uu2(.reg_array[0](reg_array[0]),.reg_array[1](reg_array[1],.reg_array[2](reg_array[2]),.reg_array[3](reg_array[3]);
initial begin
      for(i=0;i<32;i=i+1)
	      reg_array[i]<=32'd5;
	  end


end
always
begin
    clk = 1; #10; clk = 0; #10;
end

initial begin

$monitor(" time =%0d clk = %d reset = %d register rs =%d register rt =%d  register write enable =%d register write =%d register write data =%d register read data1 =%d register read data2 =%d",$time,clk,rst,reg_read_addr_1,reg_read_addr_2,reg_write_dest,reg_write_data,reg_read_data1,reg_read_data2);
reg_read_addr_1 = 5'b00000; reg_read_addr2=5'b00001; rst=0;reg_write_dest=5'b00011;reg_write_data=32'd10;reg_write_en=1'b1;#20;



end
endmodule