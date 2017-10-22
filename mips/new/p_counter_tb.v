module p_counter_tb;
reg [31:0] p_in;
reg [15:0] instruct;
reg clk;
reg control;
wire [31:0] p_out;
p_counter uu1(.p_in(p_in),.p_out(p_out),.clk(clk),.instruct(instruct),.control(control));
   always
       begin
            #5 clk=#5~clk;
       end
  
    initial
         begin
               $monitor("pc in =%d pc out =%d clk =%d instruction =%d control =%d",p_in,p_out,clk,instruct,control);
               #5 p_in=32'd100;  instruct = 16'd16; control=1'b1;
			   
         end
 endmodule
 
   

