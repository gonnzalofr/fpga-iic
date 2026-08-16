# fpga-iic

I²C controller in Verilog for the PYNQ-Z2 (Zynq XC7Z020). Vivado 2025.2 project.

## Rebuilding

`IIC.xpr` was created on the original machine and contains absolute paths under `D:\FPGA\IIC\`. It also references board constraints at `C:\Users\20252331\Downloads\pynq-z2_v1.0.xdc\`, which is outside this repo. Copies of `PYNQ-Z2 v1.0.xdc` and `PYNQ-Z2 v1.0.tcl` are included at the repo root and must be re-added to the project after cloning. The project will not open cleanly from a fresh clone without this. The copies at the repo root come from `D:\FPGA\pynq-z2_v1.0.xdc\`: `PYNQ-Z2 v1.0.tcl` is byte-identical to the Downloads original, but `PYNQ-Z2 v1.0.xdc` is byte-different from the Downloads version IIC was originally built against.

## Excluded files

Vivado build outputs (`IIC.cache/`, `IIC.hw/`, `IIC.sim/`, `IIC.ip_user_files/`) are excluded via `.gitignore`; they are regenerated on synthesis.
