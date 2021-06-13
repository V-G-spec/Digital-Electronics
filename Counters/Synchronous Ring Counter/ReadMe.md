# Synchronous Ring Counter

## About
A Ring counter behaves like a Shift-Register, except that the first Flip-Flop
gets an input which can be a combination of any of the current states.
Johnson Counter that is covered in class, is an example of a Ring Counter.

## Steps
• First, calculate the number of D Flip-Flops required.

• Assign values to the inputs D for each of the Flip-Flops looking at the
state table (Fig. 1). Note that for the intermediate flip-flops, the
behaviour is the output of one fed as input to the other. Be careful
about the input of the MSB of the states.

• When implementing the counter, let it start from the state b4b3b2b1
where b4b3b2b1 is 4-bit binary representation of X4, and X4 is last
digit of your Entry no. 2019EE1X1X2X3X4.
   **In my case, this is 0011**

• Write Verilog code for this counter.

## Further Notes
Question: Does the counter cover all 16 possible states? Try to figure out what
the counter is trying to do, and how it depends on which state the
counter starts from.

Answer to this question, along with all the other steps with proper explanation are in *Digital-Electronics/Counters/Counters Report VanshGupta.pdf*

## Author

Vansh Gupta: https://github.com/V-G-spec

## License

Copyright -2020 - Indian Institute of Technology, Delhi

Part of course ELL201: Digital Electronics (Taught by Manan Suri and Dhiman Mallick)
