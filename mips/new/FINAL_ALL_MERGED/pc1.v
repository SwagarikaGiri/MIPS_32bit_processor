module pc1(p_in,p_out,instruct,control,clk);
input  [31:0] p_in; // the input that we are going to get 
input   [15:0] instruct;
input control;
input clk;
output reg [31:0] p_out; //output of the program counter it is either pc+4 or pc+4+signextension
 wire [31:0] p_in4;
 wire [31:0] input2=32'd4;
 wire cout;
 wire cin;
 wire cout1;
 assign cin=1'b0;
 wire [31:0] extend_32;
 wire [31:0] ext_address;
 wire [31:0] p_in4extended;
 wire [31:0] result;
adder_32_bit1 uu1(p_in,input2,p_in4,cout,cin);// pc+4 is calculated
sign_extension uu2(instruct,extend_32);
left_shift_2bit uu3(extend_32,ext_address);
adder_32_bit1 uu4(p_in4,ext_address,p_in4extended,cout1,cin);
mux2_1 uu5(p_in4,p_in4extended,control,result);

initial 
 begin
   assign p_out=32'd0;
   
 
 end
 always @( clk)
   begin
    assign p_out = result;
	
   end 
 
  
endmodule  
	
 
 