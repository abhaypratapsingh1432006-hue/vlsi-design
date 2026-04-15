# 8-bit Ripple Carry Adder (RCA)

##  Overview

This project implements an **8-bit Ripple Carry Adder (RCA)** using structural Verilog.
The design is built by cascading multiple 1-bit Full Adders, where the carry output of each stage is passed to the next stage.


## Design Description

* Inputs:

  * a_rca [7:0] : First 8-bit operand
  * b_rca [7:0] : Second 8-bit operand
  * cin_rca     : Input carry

* Outputs:

  * s_rca [7:0] : 8-bit sum output
  * cout_rca    : Final carry output



## Working Principle

The Ripple Carry Adder works by propagating the carry sequentially through each Full Adder stage:

* Each bit addition depends on the carry from the previous stage
* Carry "ripples" from LSB → MSB
* This results in a simple but slower design due to cumulative delay


## 🔗 Architecture

* Built using **8 Full Adders**
* Carry chain:

  
  cin → FA0 → FA1 → FA2 → ... → FA7 → cout
  



## Performance Insight

* Simple and area-efficient
* Slower due to **linear carry propagation delay**
* Delay increases with number of bits


##  Simulation

* Verified using a Verilog testbench
* Waveforms generated using GTKWave



## 📊 Key Learning

* Understanding of **hierarchical design** using module instantiation
* Concept of **carry propagation delay**
* Comparison basis for faster adders like CLA


## Comparison Note

This design can be compared with a Carry Lookahead Adder (CLA):

| Feature    | RCA    | CLA      |
| ---------- | ------ | -------- |
| Carry      | Ripple | Parallel |
| Speed      | Slower | Faster   |
| Complexity | Low    | High     |



## Conclusion

The 8-bit Ripple Carry Adder is a fundamental building block in digital design.
While simple and easy to implement, its performance limitations motivate the use of optimized adders like CLA in high-speed applications.


