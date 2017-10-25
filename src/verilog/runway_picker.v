module runway_picker(E,A,B,D1,D2,O4,O3,O2,O1);
	input E,A,B,D1,D2;
	output reg O4,O3,O2,O1;
	always @(E,A,B,D1,D2)
	begin
		if(E==1)
			begin
				O4=1;
				O3=A&B;
				O2=~O3;
				O1=A|(~B&~D2);
			end
	end

endmodule