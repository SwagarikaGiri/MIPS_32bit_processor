module clk(clk);
    output reg clk;
    initial
      begin
      clk=1'b0;
    end
    always
     begin
      #5 clk=#5~clk;
     end
endmodule
