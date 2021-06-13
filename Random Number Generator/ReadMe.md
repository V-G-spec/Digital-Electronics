# Random Number Generator

## Application
The primary applications of Random Number Generators as a whole can be seen in the fields of cryptography, data encryption, statistical sampling
, online games (eg: Gambling)- essentially any area where producing an unpredictable result is desirable. 
However, for applications that would prefer non-repeatability of inputs i.e. 
True Randomness independent of any seed or repeatability, such as in security or encryption, TRNGS or True Random Number Generators are preferred.

What we have constructed is a PRNG or Pseudo-Random Number Generator. PRNGs are central in applications such as computer simulations 
(consider, for example, Monte Carlo method where repeated random sampling is desirable). However, we still believe the primary applications are electronic games- 
something as simple as the roll of a dice, or a simple handheld gambling machine or something as elaborate as procedural 
generation in 3D Games can benefit greatly from the random numbers repeatedly generated from PRNGS.

## Inspiration
In lecture 15 of ELL201, Prof. Manan talked briefly about how random number generation may take place. 
This piqued our interest and we wanted to know more about how- an entirely deterministic system like the following digital circuit, could potentially 
generate a sense of randomness within it and act as a Random Number Generator. So when asked to do this project, that encouraged us to read 
about both PRNGS and TRNGS, how and why they work, and why such a simple principle of random number generation potentially has large-scale 
applications in various fields. Why we specifically chose to do this over anything else, can be traced back to our love for 
numbers and number games, and to replicate those electronically, which is also the inspiration behind our name.

## Material required for real-world realization of circuit
We believe the simplest application of our circuit can be a simple digital dice, or a coin toss machine. 
To realise any of this, we would. need an external digital modified version of BCD to 7-Segment display decoder to ensure that only numbers from 1-6 would be output. 
Similarly for a dice, a separate decoder would need to be made, along with the necessary physical components like power supply, a trigger button, physical insulation/box etc.

## Real Life Components Required
* 7486 IC - XOR GATE IC (1 pc)

* 7447 IC BCD to Seven Segment Decoder Driver (1 pc)

* CD74HCT7046AE Clock Generator and Synthesizer (1 pc)

* HEF4013BP IC (Dual D-type Flip Flop) (3 pcs)

* 7 Segment LED Display (1 pc)

## References
https://circuitverse.org - for Simulation

http://www-users.math.umn.edu/-garrett/students/reu/pRNGs.pdf

A Search for Good Pseudo-random Number Generators_ Survey and Empirical Studies.pdf

https://en.wikipedia.org/wiki/Random_number_generation#Practical_applications_and_uses

http://theurbanengine.com/blog//linear-feedback-shift-registers

## Author

Vansh Gupta: https://github.com/V-G-spec

## License

Copyright -2020 - Indian Institute of Technology, Delhi

Part of course ELL201: Digital Electronics (Taught by Manan Suri and Dhiman Mallick)
