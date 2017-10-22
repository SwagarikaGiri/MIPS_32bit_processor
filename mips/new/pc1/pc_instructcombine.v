module pc_instructcombine;
wire [31:0] p_in;
wire [31:0] p_out;
wire [15:0] instruct;
wire control;
wire clk;
/* wire [31:0] pc;
wire [5:0] opcode;//6 bit opcode
wire [4:0] r_reg1;
wire [4:0] r_reg2;
wire [4:0] w_reg;
wire [4:0] shift;
wire [5:0] funct;
wire  [15:0] inst_16bit; */
assign p_in=32'd0;
assign instruct=15'd1;
assign control=1'b0;
assign clk =1'b1;
pc1 uu1 (p_in,p_out,instruct,control,clk);
/* assign pc = p_out;
instruct_mem uu2(clk,pc,opcode,r_reg1,r_reg2,w_reg,shift,funct,inst_16bit);
wire [31:0] p_in1;
wire [31:0] p_out1;
wire [15:0] instruct1;
wire control1;
wire clk1;
assign p_in1=32'd1;
assign instruct1=inst_16bit;
assign control=1'b0;
assign clk1=1'b1;
pc1 uu3 (p_in1,p_out1,instruct1,control1,clk1);  */
end module