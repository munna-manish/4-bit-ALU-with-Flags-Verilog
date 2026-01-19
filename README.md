# 4-Bit ALU with Status Flags (Verilog)

## Overview
A synthesizable 4-bit Arithmetic Logic Unit (ALU) designed in Verilog. This project demonstrates modular RTL design and the implementation of status flags (Zero, Carry, Overflow, Negative) which are essential for CPU control units.

## Features
- **Arithmetic Operations:** Addition, Subtraction (2's Complement).
- **Logical Operations:** AND, OR.
- **Status Flags:**
  - **Zero (k):** Set if result is 0.
  - **Carry (C):** Set if an unsigned carry occurs.
  - **Overflow (V):** Set if signed arithmetic overflow occurs.
  - **Negative (N):** Set if the MSB of the result is 1.

## Tools Used
- **Simulation: Icarus Verilog, VS Code**
- **Waveform Viewer: GTKWave** 

