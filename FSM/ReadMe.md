# Exercise with Verilog Simulations - FSM

## About
Design a sequence generator that generates the following serial sequence:

If your Entry no. is 2019EE1X1X2X3X4, then the serial sequence to be generated
is:

{3-bit binary of (X3%8), 3-bit binary of (X4%8)} where % is the modulo operator.

For example:

If your Entry no. is 2019EE10465, you have to generate a sequence: {1,1,0,1,0,1}

If your Entry no. is 2019EE10485, you have to generate a sequence: {0,0,0,1,0,1}

If your Entry no. is 2019EE10498, you have to generate a sequence: {0,0,1,0,0,0}

and so on....

*In my case, this is {1,0,0,0,1,1}*

## Steps
• The circuit has one input, X, and one serial output, Y. If X is 1 at the rising
clock edge, the machine should generate the desired output sequence as Y.
If X is 1 while the circuit is busy generating its output sequence, the input X
should be ignored. If X is 0, and the circuit is idle, the output Y should be 0.

• Construct a state diagram for the finite state machine.

• How many flip-flops will you need?

• Assign values to each state in the state diagram.

• Construct the state table from the state diagram. Use D-flip-flops.

• Use Karnaugh maps to generate each of the inputs to each of the flipflops.

• Write Verilog code to simulate the circuit

### Explanation to the steps along with K-Maps, explanations, truth tables and output waveforms are compiled in *Digital-Electronics/FSM/FSM Report Vansh Gupta.pdf*

## Author

Vansh Gupta: https://github.com/V-G-spec

## License

Copyright -2020 - Indian Institute of Technology, Delhi

Part of course ELL201: Digital Electronics (Taught by Manan Suri and Dhiman Mallick)
