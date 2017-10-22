module adder_32_bit_tb;
reg [31:0] input1,input2;
reg carryin;
wire overflow;
wire [31:0] output1;
adder_32_bit uu1(.input1(input1),.input2(input2),.output1(output1),.overflow(overflow),.carryin(carryin));
initial 
begin
$monitor("input1 =%d input2=%d output=%d overflow=%d  carryin =%d",input1,input2,output1,overflow,carryin);


#50
carryin=1'b0;
input1=32'd1;
input2=32'd3;
#50
carryin=1'b1;
input1=32'd1;
input2=32'd3;

end
endmodule


