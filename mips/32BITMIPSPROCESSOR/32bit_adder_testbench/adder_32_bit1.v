module adder_32_bit1(input1,input2,sum,carryout,carryin);

input [31:0] input1;
input [31:0] input2;
input carryin;
output carryout;
output [31:0] sum;
 wire c[32:0];
 assign c[0]=carryin;
  
     
           adder_1_bit add0(input1[0],input2[0],sum[0],c[1],c[0]);
	       adder_1_bit add1(input1[1],input2[1],sum[1],c[2],c[1]);
		   adder_1_bit add2(input1[2],input2[2],sum[2],c[3],c[2]);
		   adder_1_bit add3(input1[3],input2[3],sum[3],c[4],c[3]); 
		   adder_1_bit add4(input1[4],input2[4],sum[4],c[5],c[4]); 
		   adder_1_bit add5(input1[5],input2[5],sum[5],c[6],c[5]); 
		   adder_1_bit add6(input1[6],input2[6],sum[6],c[7],c[6]); 
		   adder_1_bit add7(input1[7],input2[7],sum[7],c[8],c[7]); 
		   adder_1_bit add8(input1[8],input2[8],sum[8],c[9],c[8]); 
		   adder_1_bit add9(input1[9],input2[9],sum[9],c[10],c[9]); 
		   adder_1_bit add10(input1[10],input2[10],sum[10],c[11],c[10]); 
		   adder_1_bit add11(input1[11],input2[11],sum[11],c[12],c[11]); 
		   adder_1_bit add12(input1[12],input2[12],sum[12],c[13],c[12]); 
		   adder_1_bit add13(input1[13],input2[13],sum[13],c[14],c[13]); 
		   adder_1_bit add14(input1[14],input2[14],sum[14],c[15],c[14]); 
		   adder_1_bit add15(input1[15],input2[15],sum[15],c[16],c[15]); 
		   adder_1_bit add16(input1[16],input2[16],sum[16],c[17],c[16]); 
		   adder_1_bit add17(input1[17],input2[17],sum[17],c[18],c[17]); 
		   adder_1_bit add18(input1[18],input2[18],sum[18],c[19],c[18]); 
		   adder_1_bit add19(input1[19],input2[19],sum[19],c[20],c[19]); 
		   adder_1_bit add20(input1[20],input2[20],sum[20],c[21],c[20]); 
		   adder_1_bit add21(input1[21],input2[21],sum[21],c[22],c[21]); 
		   adder_1_bit add22(input1[22],input2[22],sum[22],c[23],c[22]); 
		   adder_1_bit add23(input1[23],input2[23],sum[23],c[24],c[23]); 
		   adder_1_bit add24(input1[24],input2[24],sum[24],c[25],c[24]); 
		   adder_1_bit add25(input1[25],input2[25],sum[25],c[26],c[25]); 
		   adder_1_bit add26(input1[26],input2[26],sum[26],c[27],c[26]); 
		   adder_1_bit add27(input1[27],input2[27],sum[27],c[28],c[27]); 
		   adder_1_bit add28(input1[28],input2[28],sum[28],c[29],c[28]); 
		   adder_1_bit add29(input1[29],input2[29],sum[29],c[30],c[29]); 
		   adder_1_bit add30(input1[30],input2[30],sum[30],c[31],c[30]); 
		   adder_1_bit add31(input1[31],input2[31],sum[31],c[32],c[31]); 
		   
  
  assign carryout = c[32];
   
endmodule
