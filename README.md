# AI-based Neural Network Processing Unit 🚀

A high-performance, lightweight Verilog implementation of a Neural Network Processing Element (PE) for Multi-Layer Perceptron (MLP) acceleration. Developed as **Exercise 3** in the **AI Systems Course** at the **University of Tehran**.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()
[![Verilog](https://img.shields.io/badge/language-Verilog-orange.svg)]()

---

## Table of Contents

- [Project Goals](#project-goals)
- [Features](#features)
- [Project Structure](#project-structure)
- [Installation & Simulation](#installation--simulation)
- [Usage](#usage)
- [Results](#results)
- [Contributing](#contributing)
- [License](#license)
- [GitHub Topics (SEO)](#github-topics-seo)

---

## Project Goals 🎯

- **Design & Implementation**: Develop a neural network processing unit capable of performing multiply-accumulate (MAC), ReLU activation, and quantization operations.  
  ![{0338E447-C208-4419-840B-023EC0028C7A}](https://github.com/user-attachments/assets/19744409-b45c-43f6-990d-11c4d3d5eaf2)

- **Hardware Acceleration**: Use Verilog to create an optimized pipelined architecture for low-latency execution.  
  ![{B829FE59-7D0F-4503-9982-FA8B1EDEBF3F}](https://github.com/user-attachments/assets/95df4a19-1ac7-47bd-be44-178f537a61e4)

- **Lightweight & Scalable**: Minimize execution time and resource usage with parameterizable data widths and pipeline depths.

---

## Features ⭐

- **Pipelined MAC Unit**: Overlapping multiply-accumulate operations to achieve high throughput.
- **ReLU Activation**: Hardware-optimized rectified linear unit for non-linearity.
- **Quantizer**: Fixed-point quantization to control dynamic range and bit-width.
- **SRAM Interface**: Dual-port, ping-pong memory for efficient weight & data buffering.
- **Control FSM**: Manages read/write cycles and pipeline sequencing.
- **Parameterizable Design**: Configure word width, memory depth, and pipeline stages via Verilog parameters.

---

## Project Structure 📂

```
AI-based-Neural-Network-Processing-Unit/
├── src/
│   ├── PE.v           # Top-level Processing Element module
│   ├── MAC.v          # Multiply-Accumulate Unit
│   ├── ReLU.v         # ReLU Activation Module
│   ├── Quantizer.v    # Fixed-point Quantization Unit
│   ├── SRAM.v         # SRAM Storage Interface
│   └── Controller.v   # Control FSM
├── tests/
│   └── PE_testbench.v # Functional verification testbench
├── docs/
│   ├── simulation/    # Waveforms and logs
│   └── README.md      # Documentation (this file)
└── reports/
    ├── 403_EAI-CA3.pdf    # Assignment instructions
    └── Gozaresh_final.pdf # Final project report
```

---

## Installation & Simulation 🛠️

1. **Clone the repository**
   ```bash
   git clone https://github.com/Alighorbani1380/AI-based-Neural-Network-Processing-Unit
   ```


---

## Usage 🔧

- **Parameter Tuning**: Edit `src/PE.v` to adjust data widths and pipeline stages.
- **SoC Integration**: Instantiate `PE` module in your top-level design for on-chip acceleration.
- **Custom Verification**: Use `tests/PE_testbench.v` as a template for targeted test scenarios.

---

## Results 📊

Simulation confirms accurate MAC, ReLU, and quantization at 100 MHz with full throughput:  
![{5BF38F42-E5CC-4895-9213-7F20ECDBE04E}](https://github.com/user-attachments/assets/386f0bf5-ece4-4242-b4d7-727ae03812fd)



<!-- ## License 📄

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

--- -->

## GitHub Topics (SEO) 🔍

`verilog` `hardware-acceleration` `neural-network` `MLP` `processing-element` `FPGA` `AI-systems`
