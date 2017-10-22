module clktb;
  wire clk;
  
  clk clk1(.clk(clk));
  initial
   begin
   $monitor("clock  %d",clk);
   
   end
 endmodule
  
