module instruct_mem(clk,pc,opcode,r_reg1,r_reg2,w_reg,shift,funct,inst_16bit);
input clk;
input [31:0] pc;
output  reg [5:0] opcode;//6 bit opcode
output reg [4:0] r_reg1;
output reg [4:0] r_reg2;
output reg [4:0] w_reg;
output reg [4:0] shift;
output reg [5:0] funct;
output reg [15:0] inst_16bit;
reg  [31:0] inst;
reg [31:0] memdata [127:0];

initial
        begin
        

         memdata[0] = 32'b00000000001000100001100000100000;
         memdata[1] = 32'b00000000001000100001100000100010;
		 memdata[2] = 32'b00000000001000100001100000100011;
		 memdata[3] = 32'b00000000001000100001100000100101;
		 memdata[4] = 32'b10000000001000100001100000100000;
		 memdata[5] = 32'b00000000001000100001100000100000;
         memdata[6] = 32'b00000000001000100001100000100010;
		 memdata[7] = 32'b00000000001000100001100000100100;
		 memdata[8] = 32'b00000000001000100001100000100101;
		 memdata[9] = 32'b10000000001000100001100000100000;
		memdata[10] = 32'b00000000001000100001100000100000;
        memdata[11] = 32'b00000000001000100001100000100010;
		memdata[12] = 32'b00000000001000100001100000100100;
		memdata[13] = 32'b00000000001000100001100000100101;
		memdata[14] = 32'b10000000001000100001100000100000;
		memdata[15] = 32'b00000000001000100001100000100000;
        memdata[16] = 32'b00000000001000100001100000100010;
		memdata[17] = 32'b00000000001000100001100000100100;
		memdata[18] = 32'b00000000001000100001100000100101;
		memdata[19] = 32'b10000000001000100001100000100000;
		memdata[20] = 32'b00000000001000100001100000100000;
        memdata[21] = 32'b00000000001000100001100000100010;
		memdata[22] = 32'b00000000001000100001100000100100;
		memdata[23] = 32'b00000000001000100001100000100101;
		memdata[24] = 32'b10000000001000100001100000100000;
		memdata[25] = 32'b00000000001000100001100000100000;
        memdata[26] = 32'b00000000001000100001100000100010;
		memdata[27] = 32'b00000000001000100001100000100100;
		memdata[28] = 32'b00000000001000100001100000100101;
		memdata[29] = 32'b10000000001000100001100000100000;
		memdata[30] = 32'b00000000001000100001100000100000;
        memdata[31] = 32'b00000000001000100001100000100010;
		memdata[32] = 32'b00000000001000100001100000100100;
		memdata[33] = 32'b00000000001000100001100000100101;
		memdata[34] = 32'b10000000001000100001100000100000;
		memdata[35] = 32'b00000000001000100001100000100000;
        memdata[36] = 32'b00000000001000100001100000100010;
		memdata[37] = 32'b00000000001000100001100000100100;
		memdata[38] = 32'b00000000001000100001100000100101;
		memdata[39] = 32'b10000000001000100001100000100000;
		

        end

always @( *)
        begin
                   inst = memdata[pc];
				   inst_16bit=memdata[pc];
				   opcode[5:0]=inst[31:26];
				   r_reg1[4:0]=inst[25:21];
				   r_reg2[4:0]=inst[20:16];
				   w_reg [4:0]=inst[15:11];
				   shift [4:0]=inst[10:6];
				   funct [5:0]=inst[5:0]; 
				   inst_16bit[15:0]=inst[15:0];
				 
        end
		

endmodule

