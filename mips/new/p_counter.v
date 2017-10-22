module p_counter(p_in,p_out,clk,instruct,control);
input  [31:0] p_in; // the input that we are going to get 
output reg [31:0] p_out; //output of the program counter it is either pc+4 or pc+4+signextension
input  [15:0] instruct; // it is the instruction that is passed through signextension
input clk;
input control;
 wire [31:0] p_in4;
 wire [31:0] input2=32'd4;
 //wire carryout;
/* wire [31:0] extend_32;
wire [31:0] ext_address;
wire [31:0] p_in4extended;
wire carryout;
wire carryout1; * */
initial 
 begin
 p_out=32'd0;
 adder_32_bit1 uu1(p_in,input2,p_in4,carryout,1'b0);
 /* sign_extension uu2(instruct,extend_32);
 left_shift_2bit uu3(extend_32,ext_address);
 adder_32_bit1 uu4(p_in4,ext_address,p_in4extended,carryout1,1'd0); */
// p_out = sum;
 
 end
  /* always @(negedge clk)
   begin
    assign p_out = (control)?p_in4exdended:p_in4;
	
   end */
endmodule  
	
 
 