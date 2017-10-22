module mux2_1( input1 , input2, sel, output1 );
  input [31:0] input1, input2;
  input sel;
  output reg [31:0]output1;
  
  
  always @(input1 or input2 or sel )
    begin 
      case(sel)
       
          1'b0:   output1[31:0]=input1[31:0];
          1'b1:  output1[31:0]=input2[31:0];
          
      endcase
    end
 endmodule   