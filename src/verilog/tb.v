`timescale 1ns/10ps
module tb;
	reg E,A,B,D1,D2;
	wire O4,O3,O2,O1;
	runway_picker runway_pick(E,A,B,D1,D2,O4,O3,O2,O1);
	initial
	begin
		E=1;
		A=1;
		B=1;
		D1=0;
		D2=0;		
		$monitor("Input:%d%d%d%d%d",E,A,B,D1,D2);
		#100;
		$monitor("Output:%d%d%d%d",O4,O3,O2,O1);
		$finish;
	end
endmodule // tb
