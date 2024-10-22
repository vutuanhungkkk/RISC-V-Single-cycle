In this project, I designed a RISC-V single-cycle processor from scratch involves understanding each of its key components. A single-cycle processor completes every instruction in one clock cycle, making the design simple, but it lacks the efficiency of more complex multi-cycle processors. The RISC-V processor, an open-source instruction set architecture (ISA), is known for its simplicity, modularity, and extensibility, making it an excellent choice for both learning and research.

Key Components of a Single-Cycle RISC-V Processor
Program Counter (PC): The Program Counter holds the address of the instruction currently being executed. After each cycle, the PC increments to point to the next instruction, unless altered by branch or jump instructions.

Instruction Memory: This module stores the program's machine instructions. The instruction is fetched from memory using the PC and then decoded to determine the processor's operations.

Register File: The register file contains 32 general-purpose registers (x0 to x31). Two registers can be read, and one register can be written to simultaneously. Register x0 is hardwired to zero, a requirement of the RISC-V ISA.

ALU (Arithmetic Logic Unit): The ALU handles arithmetic and logical operations like addition, subtraction, AND, OR, and comparisons. Its operations are controlled by signals based on the type of instruction (e.g., R-type, I-type).

Control Unit: The control unit decodes the instruction's opcode and generates control signals that guide the flow of data through the processor. It ensures the correct operation of the ALU, memory access, and routing through multiplexers.

Data Memory: Used during load and store instructions, data memory interacts with the processor to read data (on load) or write data (on store), with the memory address computed by the ALU.

About RISC-V
RISC-V, a Reduced Instruction Set Computer (RISC) architecture, is open-source, designed for simplicity and flexibility. Its modular nature supports a variety of extensions, such as integer, floating-point, and atomic operations. RISC-V is widely adopted for educational purposes, research, and commercial applications due to its straightforward design and adaptability.

For a comprehensive understanding of RISC-V architecture and design principles, consult "Computer Organization and Design RISC-V Edition: The Hardware/Software Interface" by David Patterson and John Hennessy.
Link "https://github.com/Majid-Ali25/Computer-Architecture"

![image](https://github.com/user-attachments/assets/c464800d-d715-4286-8d4b-4832e979bdce)



