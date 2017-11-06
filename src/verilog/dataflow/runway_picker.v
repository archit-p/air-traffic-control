module runway_picker(d,A,B,clk,E,signal);
	reg a ,b;
	integer counta = 0, countb = 0;
	input [1:0]d;
	input E,clk;	
	output reg [3:0]signal;
	output reg A,B;
	always@(negedge E)
	begin
		assign a=A;
		assign b=B;
		assign signal[3]=1;
		assign signal[2]=a&b;
		assign signal[1]=~signal[2];
		assign signal[0]=a|(~b&~d[1]);
	end
	always@(posedge clk or b)
	begin
		assign countb=(signal==4'b1011)?countb+1:countb+1;
		assign B=(countb>2)?1:0;
		assign countb=(countb==15)?0:countb;

	end	
	always@(posedge clk or a)
	begin
		assign counta=(signal==4'b1010)?counta+1:counta+1;
		assign A=(counta<15)?1:0;
		assign counta=(counta==15)?0:counta;

	end
	

endmodule
