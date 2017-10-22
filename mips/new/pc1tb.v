module pc1tb;
reg [31:0] p_in;
wire [31:0] p_out;
reg [15:0] instruct;
reg control;
reg clk;
pc1 uu1(.p_in(p_in),.p_out(p_out),.instruct(instruct),.control(control),.clk(clk));
      always
       begin
	       clk=1'b0;
            #5 clk=#5~clk;
       end
     
    initial
         begin
               $monitor("pc in =%d pc out =%d instruction =%d  control =%d",p_in,p_out,instruct,control);
               #5 p_in=32'd104;  instruct=16'd100; control=1'b1;
			   #5 p_in=32'd104;  instruct=16'd100; control=1'b0;
			   
         end
 endmodule