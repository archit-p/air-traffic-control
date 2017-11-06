Project consists of 5 modules,
1. Runway Picker - implementation of a boolean function which takes as input feedback from the runways and the incoming requests, and then outputs a suitable signal to be transmitted back.
2. Runway Status - module consists of 2 sub-modules namely timer and decoder. This module is responsible for returning the current status, as well as feedback from the runways. This is done using a combination of flip-flops.
3. Timer - timer module consists of a counter along with some flip-flops which store the status of the runways. At any time runway can be full or empty. Runway status module makes use of this status while deciding the output signal.
4. Decoder - is a simple implementation of a 4:16 decoder to make the outputs easy to understand by converting binary digits into hexadecimal alaphabets.

Usage:
To start the logisim simulation,
$ logisim input.circ
opens up the simulator.

Inside the simulator, press Ctrl+R to reset the simulation, and then Ctrl+K to start the clock used for the simulation.

Requests for runways can be sent using the three input pins.
1. First turn on enable.
2. Change the directions as required.
3. Turn off enable to send the request in.

Output:
1. The runway will light up according to the request.
2. If the runway in required direction is not available, the other runway is assigned.
3. If both the runways are full then a wait signal lights up.
4. If a wait signal is displayed, then a new request has to be issued again.

Sample input:
D1 = 0 D2 = 0
Gives runway B
If without waiting we issue another request,
D1 = 0 D2 = 0
Runway A is assigned becaused the desired runway B is already full.
And again if we issue another request,
D1 = 0 D2 = 0
Wait signal is displayed now as both the runways are full.
