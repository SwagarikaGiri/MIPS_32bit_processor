module adder_1_bit(input1,input2,sum,carryout,carryin);
input input1,input2,carryin;//we carry out one bit addition
output  sum,carryout;
xor xor1(out1,input1,input2);
xor xor2(sum,out1,carryin);//sum is 2 exclusive or 
and and1 (out2,out1,carryin);
and and2(out3,input1,input2);
or  or1(carryout,out3,out2);
        

endmodule