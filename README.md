# 16-bit FPGA ALU Design

A 16-bit Arithmetic Logic Unit (ALU) designed in Verilog and simulated using AMD Vivado. This project was created to explore fundamental computer architecture and digital logic concepts including datapaths, buses, multiplexers, combinational logic, and RTL design.

---

## Features

The ALU supports the following operations:

| Select Input (`SEL`) | Operation       |
| -------------------- | --------------- |
| `00`                 | Bitwise AND     |
| `01`                 | Bitwise OR      |
| `10`                 | Bitwise XOR     |
| `11`                 | 16-bit Addition |

---

## Technologies Used

* Verilog HDL
* AMD Vivado
* Logisim Evolution
* 
## ALU Architecture

The ALU consists of:

* 16-bit AND logic
* 16-bit OR logic
* 16-bit XOR logic
* 16-bit adder
* Multiplexer-based operation selection

The select signal (`SEL`) controls which operation is routed to the output through a multiplexer.

---

## Example Verilog Module

```verilog
module alu16 (
    input  [15:0] A,
    input  [15:0] B,
    input  [1:0] SEL,

    output reg [15:0] RESULT
);

always @(*) begin
    case (SEL)

        2'b00: RESULT = A & B;
        2'b01: RESULT = A | B;
        2'b10: RESULT = A ^ B;
        2'b11: RESULT = A + B;

    endcase
end

endmodule
```

---

## Simulation

The ALU was verified using a custom Verilog testbench (`alu16_tb.v`) in Vivado.

The simulation tests:

* AND operation
* OR operation
* XOR operation
* 16-bit addition

Waveforms were used to verify correct functionality for each operation.

--

## Future Improvements

Potential future extensions include:

* Subtraction support
* Shift operations
* Status flags (Zero, Carry, Overflow)
* Register file integration
* Simple CPU datapath integration
* RISC-style instruction decoding

---

## Author

Mohammad Asif
Electrical Engineering Student
Toronto Metropolitan University
