# VLSI Design Projects (Verilog RTL)

This repository contains my learning and implementation of fundamental Digital VLSI Design concepts using Verilog HDL.  
The focus is on RTL design, functional verification, and basic FPGA design flow using Xilinx Vivado.

---

##  Objectives

- Build strong fundamentals in digital design
- Implement RTL modules using Verilog
- Verify designs using testbenches
- Understand synthesis and resource utilization

---

##  Tools Used

- Xilinx Vivado (Synthesis & Implementation)
- GTKWave / Vivado Simulator (Waveform Analysis)
- Verilog HDL
- Git & GitHub

---

##  Project List

###  Carry Look Ahead Adder (8-bit)
- Designed using propagate and generate logic
- Parallel carry computation to reduce delay
- Synthesized in Vivado and analyzed LUT utilization

---

###  Ripple Carry Adder (8-bit)
- Designed using hierarchical full adder instantiation
- Developed self-checking testbench for verification
- Verified functionality using waveform analysis

---

###  2-bit ALU
- Supports arithmetic and logic operations
- Modular design using combinational blocks
- Verified using structured testbench

---

###  4-bit Comparator
- Outputs: greater than, less than, equal
- Implemented using combinational logic
- Functionally verified via simulation

---

###  8×1 Multiplexer
- Implemented using RTL modeling
- Verified using testbench and waveform

---

##  Design Flow Followed

RTL Design → Testbench → Simulation → Synthesis → Implementation

---

##  Key Learnings

- Difference between Ripple Carry and Carry Look Ahead architecture
- Importance of verification using testbenches
- Basic understanding of FPGA synthesis and LUT utilization
- Writing modular and reusable Verilog code

---

##  Future Work

- Add timing analysis using XDC constraints
- Implement more complex designs (FIFO, FSM, UART)
- Explore design optimization (area vs speed)

---

## Author

**Abhay (B.Tech ECE, IIIT Bhagalpur)**  
GitHub: https://github.com/abhaypratapsingh1432006-hue

---

##  Note

This repository is part of my learning journey in Digital VLSI Design and will be continuously updated with new projects and improvements.
