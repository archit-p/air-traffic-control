/********************************************
Behaviorial modelling of air traffic control system.

Airport description:
1)Airport contains two runways perpendicular to each other
2)Runway B faces E-W direction and Runway A faces N-S

Group Number:21

Member 1:
Name:Archit Pandey
Roll:16CO153

Member 2:
Name:Mohit Bhasi
ROll:16CO126
*********************************************/


module runway_select(d,clk,en,signal);

/********************************************
Inputs :
1) d-signifies direction of travel bits
   00-East,10-West,01-South,11-North
2) Clock
3) Enable pin

Ouputs :
1) signal-signifies the output generated by
   the curcuit

Other Variables:
1) a-signifies the current state of runway a
2) b-signifies the current state of runway 
3) counta-counter for runway a, counts till 15
   and clears the runway after that
4) countb-counter for runway b, counts till 15
   and clears the runway after that
********************************************/
	input [1:0] d;
	input clk;
	input en;
	output reg [3:0]signal;
	reg a = 1'b0;
	reg b = 1'b0;
	integer counta = 0, countb = 0;

//The en signal is used to represent that an input has been given to the circuit. It is negative edge triggererd, 
//any change in the value signifies a new input and hence a new set of computations is carried out.

	always@(negedge en)
	begin
		if(d == 2'b00)				//Plane is heading in E-W Direction
			if(b == 0)				//Runway B is free
			begin
				signal = 4'b1011;	//Land on Runway B
				b = 1'b1;			//Make Runway B occupied for next set of inputs
			end
			else if(a == 0)			//Runway A is free
			begin
				signal = 4'b1010;	//Land on Runway A
				a = 1'b1;			//Make Runway A occupied for next set of inputs
			end
			else
				signal = 4'b1101;	//If none of the runways are available send the wait signal
		if(d == 2'b01)				//Plane is heading in W-E Direction
            if(a == 0)				//Runway A is free
			begin
                signal = 4'b1010;	//Land on Runway A
				a = 1'b1;			//Make Runway A occupied for next set of inputs
			end
            else if(b == 0)			//Runway B is free
			begin
                signal = 4'b1011;	//Land on Runway B
				b = 1'b1;			//Make Runway B occupied for next set of inputs
			end
            else
                signal = 4'b1101;	//If none of the runways are available send the wait signal
		if(d == 2'b10)				//Plane is heading in N-S Direction
            if(b == 0)				//Runway B is free
			begin
                signal = 4'b1011;	//Land on Runway B
				b = 1'b1;			//Make Runway B occupied for next set of inputs
			end
            else if(a == 0)			//Runway A is free
			begin
                signal = 4'b1010;	//Land on Runway A
				a = 1'b1;			//Make Runway A occupied for next set of inputs
			end
            else
                signal = 4'b1101;	//If none of the runways are available send the wait signal
		if(d == 2'b11)				//Plane is heading in S-N Direction
            if(a == 0)				//Runway A is free
			begin
                signal = 4'b1010;	//Land on Runway A
				a = 1'b1;			//Make Runway A occupied for next set of inputs
			end
            else if(b == 0)			//Runway B is free
			begin
                signal = 4'b1011;	//Land on Runway B
				b = 1'b1;			//Make Runway B occupied for next set of inputs
			end
            else
                signal = 4'b1101;	//If none of the runways are available send the wait signal
	end

//The below is an implementation of a counter that counts till 15, if a is occupied the timer for a starts likewise, if b is 
//occupied timer for b starts. The timers reset and the runways are made free once the count reaches 15.

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