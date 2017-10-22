module adder_32_bit(input1, input2, output1, overflow,carryin);
  
  input [31:0] input1, input2;
  input wire  carryin;
  output reg [31:0] output1;
  
  output reg overflow;
  
  
      always@(input1 or input2)
        begin
          
          {overflow , output1 } = input1 + input2 + carryin;
          
        end
    
endmodule