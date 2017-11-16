/********************************************
Verilog Simulation of air traffic control system.

Airport description:
1)Airport contains two runways perpendicular to each other
2)Runway B faces E-W direction and Runway A faces N-S
3)Runway requests are taken in as 2 bit direction input.
4)The output signal indicates the runway to land on, or wait if both the runways are full.

Group Number:21

Member 1:
Name:Archit Pandey
Roll:16CO153

Member 2:
Name:Mohit Bhasi
ROll:16CO126
*********************************************/

Files contained have been names as indicated in the project specification.

Simulation in verilog is as follows:
1. Turn direction to the required value.
2. Toggle enable to send in the request.
3. Signal indicates the output of the request.

The included .gcd files can be examined using GTKWave. 

The test input is as follow:
Multiple requests with '00' as direction to see if signal become wait, and how long does it stay at wait.
