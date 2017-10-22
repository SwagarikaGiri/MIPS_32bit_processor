module pc_combine(p_out,opcode,r_reg1,r_reg2,w_reg,shift,funct,inst_16bit,r1_data,r2_data,result,zero,wr_file);
 wire [31:0] p_in;
 output reg  [31:0] p_out;
 wire [15:0] instruct;
 wire control;
 wire clk;
 wire [31:0] p_out1;
 assign p_in=32'd0;
 assign instruct=16'd1;
 assign control=1'b0;
 assign clk=1'b1;
 
 // **********************************************************************************
 wire clk_1=1'b1;
output  reg [5:0] opcode;//6 bit opcode
output reg [4:0] r_reg1;
output reg [4:0] r_reg2;
output reg [4:0] w_reg;
output reg [4:0] shift;
output reg [5:0] funct;
output reg [15:0] inst_16bit;

wire  [5:0] opcode_1;//6 bit opcode
wire  [4:0] r_reg1_1;
wire  [4:0] r_reg2_1;
wire  [4:0] w_reg_1;
wire  [4:0] shift_1;
wire  [5:0] funct_1;
wire  [15:0] inst_16bit_1;

// ************************************************************************************
wire rst=1'b1;
wire r_wr_en=1'b1;
wire [31:0] w_data=32'd100;
output reg [31:0] r1_data;
output reg [31:0] r2_data;
wire [31:0] r1_data_1;
wire [31:0] r2_data_1;
wire clk_2=1'b1;
// *******************************************************************
  output reg [31:0] result;
  output reg zero;
  output reg wr_file;
  wire [5:0] opcode_2=6'b000000;
  wire clk_3=1'b1;
  wire [31:0] result1;
  wire zero1;
  wire wr_file1;
 
      pc1 uu1(p_in,p_out1,instruct,control,clk);
	  instruct_mem uu2 (clk_1,p_out1,opcode_1,r_reg1_1,r_reg2_1,w_reg_1,shift_1,funct_1,inst_16bit_1);
	  register_file uu3 (clk_2,rst,r_wr_en,r_reg1_1,r_reg2_1,w_reg_1,w_data,r1_data_1,r2_data_1) ;
	  alu uu4 (r1_data_1,r2_data_1,opcode_2,funct_1,result1,zero1,wr_file1,clk_3); 
	 // module alu(input1,input2,alu_op,func,result,zero,wr_file,clk); 
	  
 initial
 begin
      assign  p_out  = p_out1;
      assign opcode  = opcode_1;//6 bit opcode
      assign  r_reg1 = r_reg1_1; 
      assign  r_reg2 = r_reg2_1;
      assign  w_reg  = w_reg_1;
      assign shift   = shift_1;
      assign funct   = funct_1;
	  assign inst_16bit =inst_16bit_1;
	  assign r1_data=r1_data_1;
	  assign r2_data=r2_data_1;
	  assign result =result1;
	  assign zero =zero1;
	  assign wr_file=wr_file1;
  
 end
endmodule
 
 
