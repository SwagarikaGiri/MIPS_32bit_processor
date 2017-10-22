module alu(input1,input2,alu_op,func,result,zero,wr_file,clk); 
      input  clk;  
      input          [31:0]     input1; //input1         
      input          [31:0]     input2; //input2        
      input          [5:0]     alu_op; //opcode  
      input          [5:0]	    func;// whatever function it may be and or etc
      output     reg     [31:0]     result;    //stores the result          
      output zero ; // stores if the result is zero
      output reg wr_file;
          	  // enable   
        
 always @(*)  
 begin   
      wr_file=1'b0;
      case(alu_op)  
      6'b000000: begin
	                    if(func==6'b100000)
                         begin
                          
                          result=input1 + input2;
                          wr_file=1'b1;
                        end
                        if(func==6'b100010)
                         begin
                        
                          result=input1 - input2;
                          wr_file=1'b1;
                        end
                         if(func==6'b100100)
                          begin
                       
                          result=input1 & input2;
                          wr_file=1'b1;
                         end
                         if(func==6'b100101)
                          begin
                       
                         result= input1 | input2;
                         wr_file=1'b1;
                        end
				 end
				
      6'b100000: begin
                        
                          result=input1 + input2;
                          wr_file=1'b1;
                 end// and
      6'b100011: begin
                        
                          result=input1 - input2;
                          wr_file=1'b1;
                 end// // and  
      6'b101011: begin
                        
                          result=input1 & input2;
                          wr_file=1'b1;
                 end// // or  
      default:begin
                        
                          result=input1 | input2;
                          wr_file=1'b1;
                 end//   
      endcase  
 end  
 assign zero = (result==32'd0) ? 1'b1: 1'b0;  
 endmodule  