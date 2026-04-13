# Adders (Verilog)

## Overview

This directory contains implementations of various adder circuits using Verilog HDL.
Adders are fundamental building blocks in digital design and are widely used in arithmetic and logic units (ALUs).

---

## Implemented Modules

* Half Adder
* Full Adder
* Ripple Carry Adder (RCA)
* Carry Lookahead Adder (CLA)

---

## Description

### Half Adder

* Adds two single-bit inputs
* Outputs: Sum and Carry

### Full Adder

* Adds three inputs (A, B, Carry-in)
* Outputs: Sum and Carry-out

### Ripple Carry Adder (RCA)

* Built using multiple Full Adders
* Simple design but slower due to carry propagation

### Carry Lookahead Adder (CLA)

* Faster adder design
* Uses generate and propagate logic to reduce delay

---

## Design Approach

* Implemented using Verilog HDL
* Modular and hierarchical design approach
* Verified using testbenches and waveform analysis

---

## Tools Used

* Icarus Verilog (Simulation)
* GTKWave (Waveform Analysis)
* Xilinx Vivado (Design & Synthesis)

---

## Learning Objective

* Understand arithmetic circuit design
* Learn hierarchical design
* Build foundation for ALU and processor design

---
