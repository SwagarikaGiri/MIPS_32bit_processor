module adder_32_bit_tb1;
reg [31:0] input1,input2;
reg carryin;
wire carryout;
wire [31:0] sum;

adder_32_bit1 uu1(.input1(input1),.input2(input2),.sum(sum),.carryout(carryout),.carryin(carryin));
initial 
begin
$monitor("input1 =%d input2=%d output=%d overflow=%d  carryin =%d",input1,input2,sum,carryout,carryin);


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


