/* module alu(input1,input2,alu_op,funct,result,zero,wr_file,clk); 
 input  clk;  
      input          [31:0]     input1; //input1         
      input          [31:0]     input2,; //input2        
      input          [5:0]     alu_op; //opcode  
      input          [5:0]	    funct;// whatever function it may be and or etc
      output     reg     [31:0]     result;    //stores the result          
      output zero ; // stores if the result is zero
      output  reg wr_file;	// enable   
    assign wr_file=1'b0;
module alu_testbench;
reg [31:0]t_a,t_b;
reg [2:0] t_control;
wire [31:0] t_result;
wire t_zero;
alu uu(.a(t_a),.b(t_b),.alu_control(t_control),.result(t_result),.zero(t_zero)); */

module alu_tb;
reg [31:0] input1,input2;
reg [5:0] alu_op;
reg [5:0] func;
wire [31:0] result;
wire zero;
reg clk;
wire wr_file;
alu uu1(.input1(input1),.input2(input2),.alu_op(alu_op),.func(func),.result(result),.zero(zero),.wr_file(wr_file),.clk(clk));
initial
 begin
 $monitor("input1 %d input2 =%d aluopcode =%d function =%d result =%d zero =%d write file %d clock %d",input1,input2,alu_op,func,result,zero,wr_file,clk);
 #5
  input1=32'd100; input2=32'd99; alu_op=6'b000000; func=6'b100000;clk=1'b1;
  #5
  input1=32'd99; input2=32'd99; alu_op=6'b000000; func=6'b100010;clk=1'b1;
  #5
  input1=32'd100; input2=32'd99; alu_op=6'b000000; func=6'b100100;clk=1'b1;
  #5
  input1=32'd100; input2=32'd99; alu_op=6'b000000; func=6'b100101;clk=1'b1;
  #5
  input1=32'd100; input2=32'd99; alu_op=6'b100000; clk=1'b1;
  #5
  input1=32'd100; input2=32'd99; alu_op=6'b100011; clk=1'b1;
  #5
  input1=32'd100; input2=32'd99; alu_op=6'b101010; clk=1'b1;
  
 
 end
 endmodule

