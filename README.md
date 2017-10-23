# Air Traffic Controller - devel

Runway picker outputs either 1010(a) or 1011(b) or 1101(d)<br/>
Where a signifies land on runway a, b signifies land on runway b, d signifies delay landing<br/>
Runway status now uses a 4:16 decoder

Enable pin has been included.

While sending in directions, pilot also sends an enable signal. This signal is important for the overall functionality.

LED strips to signify runways were added. Need some shape changes to make them look better.

Runway_status now employs timer modules
Timer module desc -
	Included the counter along with the flip flops. Gives output as runway status and runway feedback.
