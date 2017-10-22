module alu_testbench;
reg [31:0]t_a,t_b;
reg [2:0] t_control;
wire [31:0] t_result;
wire t_zero;
alu uu(.a(t_a),.b(t_b),.alu_control(t_control),.result(t_result),.zero(t_zero));
initial
begin
$monitor(t_control ,t_a    , t_b     , t_result,    t_zero);
t_control=3'b000;//add case
t_a=32'h0000000f;
t_b=32'h00000001;
#5
t_control=3'b001;//minus
#5
t_control=3'b010;//and
#5
t_control=3'b011;//or
#5
t_control=3'b110;//default 
end
endmodule






