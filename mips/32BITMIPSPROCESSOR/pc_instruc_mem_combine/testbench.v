//pc_combine(p_out,opcode,r_reg1,r_reg2,w_reg,shift,funct,inst_16bit); result,zero,wr_file


module testbench;
   wire [31:0] p_out;
   wire  [5:0] opcode;//6 bit opcode
   wire  [4:0] r_reg1;
   wire  [4:0] r_reg2;
   wire  [4:0] w_reg;
   wire  [4:0] shift;
   wire  [5:0] funct;
   wire  [15:0] inst_16bit;
   wire [31:0] r1_data;
   wire [31:0] r2_data;
   wire [31:0] result;
   wire zero;
   wire wr_file;
   pc_combine uu1(.p_out(p_out),.opcode(opcode),.r_reg1(r_reg1),.r_reg2(r_reg2),.w_reg(w_reg),.shift(shift),.funct(funct),.inst_16bit(inst_16bit),.r1_data(r1_data),.r2_data(r2_data),.result(result),.zero(zero),.wr_file(wr_file));
  initial
  begin
     $monitor("the output is  %d opcode =%d r_reg1=%d r_reg2 =%d w_reg =%d shift = %d funct = %d inst_16bit =%d  read data1 =%d read data2 =%d result =%d zero=%d write file =%d ",p_out,opcode,r_reg1,r_reg2,w_reg,shift,funct,inst_16bit,r1_data,r2_data,result,zero,wr_file);
  end
endmodule  