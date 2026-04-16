
# 2-bit ALU (Gate Level) – Verilog

This project implements a 2-bit Arithmetic Logic Unit (ALU) using gate-level modeling in Verilog.  
The design supports basic arithmetic and logic operations and is verified through simulation with waveform analysis.

---

##  Features

- 2-bit input operands (A, B)
- Control signal based operation selection
- Gate-level implementation (structural design)
- Functional verification using testbench
- Waveform validation

---

##  Supported Operations

| Control| Operation        |
|--------|------------------|
| 00     | Addition         |
| 01     | Subtraction      |
| 10     | AND              |
| 11     | OR               |

---

##  Design Details

- Built using basic logic gates and combinational blocks
- Arithmetic operations implemented using adder/subtractor logic
- Operation selection performed using multiplexing logic
- Pure combinational design (no clock)

---

##  Testbench & Verification

- Developed a self-checking testbench
- Applied multiple test cases to validate all operations
- Outputs verified against expected results
- No mismatches observed during simulation

---

##  Waveform

Waveforms generated using GTKWave / Vivado Simulator confirm correct functionality of:
- Arithmetic operations (Add/Sub)
- Logic operations (AND/OR)
- Control-based switching

*(Add waveform screenshot here)*

---

##  Tools Used

- Verilog HDL  
- Xilinx Vivado (Simulation)  
- GTKWave (Waveform Analysis)  

---

##  Key Learnings

- Gate-level vs RTL design differences  
- ALU operation selection using control signals  
- Importance of verification using testbenches  
- Debugging using waveform analysis  

---

##  Future Improvements

- Extend to 4-bit and 8-bit ALU  
- Add more operations (XOR, NOT, Shift)  
- Optimize design for speed and area  
- Move from gate-level to RTL-based optimized design  

---

## Note

This project is part of my learning journey in Digital VLSI Design and demonstrates fundamental ALU design using Verilog.
