`timescale 1ns/10ps
module tb_status;
	reg i3,i2,i1,i0,en,clk;
	wire ra,rb,ws;
	runway_status status(i3,i2,i1,i0,en,clk,ra,rb,ws);
	initial
	begin
		$dumpfile("rs.vcd");
		$dumpvars(0,status);
		en=1;
		i3=1;
		i2=1;
		i1=0;
		i0=1;	
		$monitor("Input:%d%d%d%d%d",en,i3,i2,i1,i0);
		#100;
		$monitor("Output:%d%d%d",ra,rb,ws);
		$finish;
	end
	initial clk=1;
	always #2 clk=~clk;
endmodule // tb
