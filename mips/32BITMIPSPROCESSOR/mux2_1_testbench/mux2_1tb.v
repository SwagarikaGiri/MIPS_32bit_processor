module mux2_1tb;
reg[31:0] input1,input2;
reg sel;
wire [31:0] output1;
mux2_1 uu1(.input1(input1),.input2(input2),.sel(sel),.output1(output1));
   //$monitor("input1 %b input2 %b selectline %b output %b",input1, input2, sel, output1);
initial
begin
  $monitor("input1 %b input2 %b selectline %b output %b",input1, input2, sel, output1);
input1[31:0] =32'd650;
input2[31:0] =32'd150;
#50 sel=1'b0;
#50 sel=1'b1;
end
endmodule



