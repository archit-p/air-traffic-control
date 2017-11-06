module runway_picker(E,d,clk,signal);
	wire a = 1'b0;
	wire b = 1'b0;
	assign a=0;
	assign b=0;
	integer counta = 0, countb = 0;
	input [1:0]d;
	input E,D1,D2,clk;	
	output [3:0]signal;
	//always @(negedge E)
	//begin
	assign signal[3]=1;
	assign signal[2]=a&b;
	assign signal[1]=~signal[2];
	assign signal[0]=a|(~b&~d[1]);
	assign a=~signal[0]&signal[1]&~signal[2]&signal[3]; //1010
	assign b=signal[0]&signal[1]&~signal[2]&signal[3]; //1011

	
endmodule
