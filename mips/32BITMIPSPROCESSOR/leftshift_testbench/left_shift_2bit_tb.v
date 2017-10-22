module left_shift_2bit_tb;
reg [31:0] input1;
wire [31:0] output1;
left_shift_2bit uu1(.input1(input1),.output1(output1));
initial
begin
$monitor("input is %d output is %d",input1,output1);
#5 input1=32'd16;
#10 input1 =32'd32;
end
endmodule
 