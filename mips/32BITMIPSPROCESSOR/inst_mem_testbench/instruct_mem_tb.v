module instruct_mem_tb;
reg [31:0] pc;
reg clk;
wire [5:0] opcode;
wire [4:0] r_reg1;
wire [4:0] r_reg2;
wire [4:0] w_reg;
wire [4:0] shift;
wire [5:0] funct;
wire [31:0] inst_16bit;
//clk,pc,opcode,r_reg1,r_reg2,w_reg,shift,funct
instruct_mem uu1(.clk(clk),.pc(pc),.opcode(opcode),.r_reg1(r_reg1),.r_reg2(r_reg2),.w_reg(w_reg),.shift(shift),.funct(funct));
initial
begin
$monitor("clk =%b pc =%b opcode =%b r_reg1 =%b r_reg2=%b w_reg=%b shift =%b function =%b ",clk,pc,opcode,r_reg1,r_reg2,w_reg,shift,funct);
#50 clk=1'b1; pc=32'd1;
#50 clk=1'b1; pc=32'd2;
#50 clk=1'b1; pc=32'd3;
end
endmodule

