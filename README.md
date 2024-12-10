# AI-based Neural Network Processing Unit

Welcome to the repository for **Exercise 3 of the AI Systems Course** at the **University of Tehran**.  
This project focuses on designing and implementing a lightweight, efficient **processing element (PE)** for performing operations of neurons in a **multi-layer perceptron (MLP)** using Verilog.

---

## 🚀 Project Goals

- Design & Implementation: Develop a neural network processing unit capable of performing multiply-accumulate (MAC), ReLU activation, and quantization operations.
 ![{0338E447-C208-4419-840B-023EC0028C7A}](https://github.com/user-attachments/assets/19744409-b45c-43f6-990d-11c4d3d5eaf2)

- Hardware Acceleration: Use Verilog to create an optimized architecture that executes operations in a pipelined manner.
  ![{B829FE59-7D0F-4503-9982-FA8B1EDEBF3F}](https://github.com/user-attachments/assets/95df4a19-1ac7-47bd-be44-178f537a61e4)
 
- Lightweight Design: Minimize execution time while maintaining efficient resource usage.  

---

## 📂 Project Structure

- src/
  - PE.v: Processing Element module  
  - MAC.v: Multiply-Accumulate Unit  
  - ReLU.v: ReLU Activation  
  - Quantizer.v: Quantization Module  
  - SRAM.v: SRAM Storage Unit  
  - Controller.v: Control Unit  
  - Testbench.v: Testbench for Verification  

- reports/
  - 403_EAI-CA3.pdf: Exercise Instructions  
  - Gozaresh_final.pdf: Project Report  

- docs/
  - README.md: This File!  
  - results/: Simulation Results  

---

## 🛠️ Features

- Pipelined Processing: Achieves efficient computation by overlapping stages of execution.  
- Custom Modules:  
  - MAC Unit: Performs multiplication and accumulation.  
  - ReLU Module: Implements rectified linear activation.  
  - Quantizer: Converts values to fixed-point representation.  
  - SRAM: Stores neuron weights and intermediate results.  
- Optimized Control Unit: Handles read/write operations and ensures ping-pong memory access.  

---

## 📊 Results

The design was verified using custom testbenches and manual inputs.  
The simulation results confirm the accuracy of the system with correctly generated waveforms.


