# Built In Self Test

Project Overview:
The project focuses on designing and implementing a Built-In Self-Test (BIST) system for full adder circuits to ensure their reliability and functionality. The BIST system integrates test pattern generation and output response analysis, enabling on-chip testing and real-time fault detection without the need for external testing equipment.

Key Components:
Linear Feedback Shift Register (LFSR): Generates efficient, comprehensive, and pseudorandom test patterns.
Circuit Under Test (CUT): The full adder circuits being tested.
Multiple Input Signature Register (MISR): Captures and analyzes the output responses of the CUT.

Functionality:
The LFSR generates test vectors that are applied to the full adder circuits.
The MISR captures the output responses from the CUT.
By comparing the actual output with the expected golden signature, the system can identify faults in the circuit.

Evaluation:
The system is evaluated based on fault coverage, testing time, and hardware overhead. Simulation results demonstrate high fault coverage with minimal performance degradation and hardware complexity.

Significance:
This project enhances self-diagnostic capabilities in digital designs, offering a scalable and efficient method for ensuring the reliability of full adder circuits in modern digital systems.

Keywords: BIST, LFSR, MISR, full adder, self-diagnostic, test pattern generation, output response analysis.
