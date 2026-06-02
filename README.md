# VLSI AI Convolution Accelerator

Hardware accelerator for 2D image convolution based on a custom Booth Radix-4 signed multiplier implemented in VHDL and validated through an ASIC design flow using Cadence tools.

## Overview

This project focuses on the design and implementation of a complete hardware accelerator for 2D convolution operations commonly used in image processing and AI workloads.

The accelerator integrates:

* A custom signed 16×16 Booth Radix-4 multiplier
* Carry Save Adder (CSA) reduction trees
* Carry Propagate Adder (CPA) final accumulation
* A streaming 3×3 convolution engine
* A line buffer for sliding window generation
* Sobel edge detection filters
* ASIC synthesis and physical implementation using Cadence GPDK45 technology

The entire architecture was described in VHDL, functionally verified through simulation, synthesized, placed and routed using Cadence tools.

---

## Architecture

### Booth Radix-4 Multiplier

The multiplier reduces the number of partial products using Booth encoding.

Main blocks:

* Booth Encoder
* Transformer Block
* Partial Product Generator
* CSA Reduction Tree
* CPA Final Adder

Features:

* Signed multiplication
* 16-bit operands
* 32-bit result
* Reduced arithmetic complexity

---

### 2D Convolution Engine

The convolution core performs:

* 9 parallel multiplications
* Accumulation through a CSA tree
* 3×3 kernel processing
* Streaming image processing

The architecture produces one convolution result per valid cycle after buffer initialization.

---

### Line Buffer

A dedicated line buffer generates sliding 3×3 windows from an incoming pixel stream.

Features:

* Streaming operation
* Stride = 1
* Window validity management
* Border handling

---

## Sobel Filters

The accelerator was validated using Sobel edge detection kernels.

### Horizontal Sobel

| -1 | 0 | 1 |
| -- | - | - |
| -2 | 0 | 2 |
| -1 | 0 | 1 |

Detects vertical edges.

### Vertical Sobel

| -1 | -2 | -1 |
| -- | -- | -- |
| 0  | 0  | 0  |
| 1  | 2  | 1  |

Detects horizontal edges.

---

## Verification

### Booth Multiplier Validation

The multiplier was verified using:

* Positive operands
* Negative operands
* Mixed-sign operands

Simulation results matched expected arithmetic outputs.

### Convolution Validation

The convolution engine was tested using custom image patterns and Sobel kernels.

Results confirmed:

* Correct window generation
* Accurate convolution computation
* Proper handling of signed arithmetic

---

## ASIC Flow

Technology:

* Cadence GPDK45

Design Flow:

1. RTL Design (VHDL)
2. Functional Simulation
3. Logic Synthesis
4. Place & Route
5. Post-Synthesis Verification
6. Post-Layout Verification

---

## Results

| Metric               | Value      |
| -------------------- | ---------- |
| Technology           | GPDK 45 nm |
| Maximum Clock Period | 2.45 µs    |
| Operating Frequency  | ~408 kHz   |
| Estimated Power      | 0.115 µW   |

The design successfully completed synthesis and physical implementation while meeting timing constraints.

---

## Tools

* VHDL
* Cadence Genus
* Cadence Innovus
* ASIC Design Flow
* Digital VLSI Design

---

## Project Structure

```text
.
├── rtl/
│   ├── booth_multiplier/
│   ├── convolution_core/
│   ├── line_buffer/
│   └── top/
│
├── testbench/
│
├── synthesis/
│
├── place_route/
│
├── simulations/
│
├── docs/
│   ├── architecture.png
│   ├── multiplier_results.png
│   ├── convolution_results.png
│   └── physical_design.png
│
└── README.md
```

---

## Future Improvements

* Runtime kernel selection
* Configurable stride
* Support for arbitrary kernel sizes
* Pipelined architecture for higher throughput
* FPGA implementation
* CNN-oriented accelerator extensions

---

## Author

Aristide-Hervé Dossou

Master 2 Electrical Engineering (EEA)

Embedded Systems & Hardware Design
