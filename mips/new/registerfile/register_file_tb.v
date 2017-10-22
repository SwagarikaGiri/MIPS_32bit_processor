 //register_file (clk,rst,r_wr_en,r_reg1,r_reg2,w_reg,w_data,r1_data,r2_data) ;
 module register_filetb;
 reg clk;
 reg rst;
 reg r_wr_en;
 reg [31:0] w_data;
 reg [4:0] r_reg1;
 reg [4:0] r_reg2;
 reg [4:0] w_reg;
 
 wire [31:0] r1_data;
 wire [31:0] r2_data;
 register_file uu1(.clk(clk),.rst(rst),.r_wr_en(r_wr_en),.r_reg1(r_reg1),.r_reg2(r_reg2),.w_reg(w_reg),.w_data(w_data),.r1_data(r1_data),.r2_data(r2_data));
 initial
  begin
  $monitor("clk =%d rst =%d write enabed =%d register address1 =%d  register address 2=%d  write register address =%d write data =%d read data1 =%d read data2 =%d ",clk,rst,r_wr_en,r_reg1,r_reg2,w_reg,w_data,r1_data,r2_data);
  #5 clk=1'b1; rst=1'b0; r_wr_en=1'b1;r_reg1=5'd1;r_reg2=5'd2;w_reg=5'd3; w_data=32'd100;
  end
  endmodule