module decoder(in0,in1,in2,in3,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15);
	input in0,in1,in2,in3;
	output out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15;
	reg out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15;
	always @ (in0,in1,in2,in3)
	begin
		out0 = (~in0) & (~in1) & (~in2) & (~in3);
		out1 = (~in0) & (~in1) & (~in2) & (in3);
		out2 = (~in0) & (~in1) & (in2) & (~in3);
		out3 = (~in0) & (~in1) & (in2) & (in3);
		out4 = (~in0) & (in1) & (~in2) & (~in3);
		out5 = (~in0) & (in1) & (~in2) & (in3);
		out6 = (~in0) & (in1) & (in2) & (~in3);
		out7 = (~in0) & (in1) & (in2) & (in3);
		out8 = (in0) & (~in1) & (~in2) & (~in3);
		out9 = (in0) & (~in1) & (~in2) & (in3);
		out10 = (in0) & (~in1) & (in2) & (~in3);
		out11 = (in0) & (~in1) & (in2) & (in3);
		out12 = (in0) & (in1) & (~in2) & (~in3);
		out13 = (in0) & (in1) & (~in2) & (in3);
		out14 = (in0) & (in1) & (in2) & (~in3);
		out15 = (in0) & (in1) & (in2) & (in3);
	end
endmodule
