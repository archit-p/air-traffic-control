module controller
(
	d,
	clk,
	en,
	signal
);
	input [1:0] d;
	input clk;
	input en;

	output reg [3:0]signal;

	reg a = 1'b0;
	reg b = 1'b0;
	
	integer counta = 0, countb = 0;
	always@(negedge en)
	begin
		if(d == 2'b00)
			if(b == 0)
			begin
				signal = 4'b1011;
				b = 1'b1;
			end
			else if(a == 0)
			begin
				signal = 4'b1010;
				a = 1'b1;
			end
			else
				signal = 4'b1101;
		if(d == 2'b01)
                        if(a == 0)
			begin
                                signal = 4'b1010;
				a = 1'b1;
			end
                        else if(b == 0)
			begin
                                signal = 4'b1011;
				b = 1'b1;
			end
                        else
                                signal = 4'b1101;
		if(d == 2'b10)
                        if(b == 0)
			begin
                                signal = 4'b1011;
				b = 1'b1;
			end
                        else if(a == 0)
			begin
                                signal = 4'b1010;
				a = 1'b1;
			end
                        else
                                signal = 4'b1101;
		if(d == 2'b11)
                        if(a == 0)
			begin
                                signal = 4'b1010;
				a = 1'b1;
			end
                        else if(b == 0)
			begin
                                signal = 4'b1011;
				b = 1'b1;
			end
                        else
                    		signal = 4'b1101;
	end
	
	always@(posedge clk)
	begin
		if(a == 1)
                        counta = counta + 1;
                if(b == 1)
                        countb = countb + 1;
                if(counta == 15)
                        a = 0;
                if(countb == 15)
                        b = 0;
	end
endmodule
