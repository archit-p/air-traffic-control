`timescale 1ns/10ps
module tb_picker;
	reg E,A,B,D1,D2;
	wire O4,O3,O2,O1;
	runway_status runway_pick(i3,i2,i1,i0,en,clk,a,b,w);
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
