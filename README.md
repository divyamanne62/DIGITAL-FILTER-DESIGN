# DIGITAL-FILTER-DESIGN
# Digital FIR Filter Design using Verilog

## Overview
This project implements a Digital FIR (Finite Impulse Response) Filter using Verilog HDL. The filter is designed and simulated to demonstrate digital signal filtering using shift registers and filter coefficients.

## Objective
To design and simulate a FIR digital filter using Verilog HDL and verify its operation through waveform analysis.

## FIR Filter Equation

y[n] = Σ h[k]x[n-k]

Where:
- x[n] = input signal
- h[k] = filter coefficients
- y[n] = filtered output

## Features
- 4-tap FIR filter
- Signed 8-bit input
- 16-bit output
- Shift register implementation
- Stable digital filter design

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

## Project Files

| File Name | Description |
|------------|-------------|
| fir_filter.v | FIR filter design module |
| fir_filter_tb.v | Testbench for simulation |
| fir_filter.vcd | Waveform dump file |
| README.md | Project documentation |

## Filter Coefficients

h0 = 1  
h1 = 2  
h2 = 3  
h3 = 2  

## Simulation Steps

### Compile

```bash
iverilog -o fir_filter fir_filter.v fir_filter_tb.v
