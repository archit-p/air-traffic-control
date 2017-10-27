module runway_status(i3,i2,i1,i0,en,clk,a,b,w);
	reg [3:0]cb=4'b0000;
	reg [3:0]cw=4'b0000;
	reg [3:0]ca=4'b0000;
	reg [3:0]in=4'b0000;
	input en,i0,i1,i2,i3,clk;
	output reg a,b,w;	
	always @(posedge clk)
	begin
		in[0]=i0;
		in[1]=i1;
		in[2]=i2;
		in[3]=i3;
		if (en==1)
		begin
			if(in==4'b1010)  //runway A
			begin
				a=1;
				ca<=ca+4'b0001;
				if (ca>=4'b1111)
				begin
					ca=4'b0000;
					a=0;
				end
			end
			if(in==4'b1011)  //runway B
			begin
				b=1;		
				cb<=4'b0001+cb;
				if (cb>=4'b1111)
				begin
					cb=4'b0000;
					b=0;
				end
			end
			if(in==4'b1101)  //wait
			begin
				w=1;
				cw<=4'b0001+cw;
				if (cw>=4'b1111)
				begin
					cw=4'b0000;
					w=0;
				end
			end
		end
	end		
endmodule // runway_status