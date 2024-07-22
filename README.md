# Full Adder VHDL Project

This project demonstrates various implementations of full adders using VHDL. It includes one-bit and four-bit full adders implemented in dataflow, behavioral, and structural styles. The goal is to showcase different design methodologies for building and simulating digital adder circuits.

## Project Structure

The project is structured as follows:

- `dataflow_4_bit_full_adder.vhdl`: Dataflow implementation of the four-bit full adder.
- `dataflow_1_bit_full_adder.vhdl`: Dataflow implementation of the one-bit full adder.
- `behavioral_4_bit_full_adder.vhdl`: Behavioral implementation of the four-bit full adder.
- `behavioral_1_bit_full_adder.vhdl`: Behavioral implementation of the one-bit full adder.
- `structural_1_bit_full_adder.vhdl`: Structural implementation of the one-bit full adder using basic gates.
- `and_gate.vhdl`: VHDL code for the AND gate.
- `or_gate.vhdl`: VHDL code for the OR gate.
- `xor_gate.vhdl`: VHDL code for the XOR gate.
- `tb_dataflow_4_bit_full_adder.vhdl`: Testbench for the dataflow implementation of the four-bit full adder.
- `tb_behavioral_4_bit_full_adder.vhdl`: Testbench for the behavioral implementation of the four-bit full adder.
- `tb_dataflow_1_bit_full_adder.vhdl`: Testbench for the dataflow implementation of the one-bit full adder.
- `tb_behavioral_1_bit_full_adder.vhdl`: Testbench for the behavioral implementation of the one-bit full adder.

## Prerequisites

To work with this project, you need the following:

- **Active-HDL**: This project is developed using Active-HDL. Make sure you have the Active-HDL Student Edition or a licensed version installed.

## Setup

1. **Download and Install Active-HDL**: If you don’t have Active-HDL installed, download it from [Aldec](https://www.aldec.com/en/products/active-hdl) and follow the installation instructions.

2. **Project Files**: Ensure all the VHDL files are in the correct directory structure. The files should be placed in the `src` folder.

3. **Compile the Project**:
   - Open Active-HDL and create a new project.
   - Add all the VHDL files to the project.
   - Compile the project using the provided command line or through the Active-HDL GUI.

## Simulation

1. **Setup Simulation**:
   - Open Active-HDL and navigate to the simulation workspace.
   - Load the compiled project.

2. **Run Simulation**:
   - Choose the desired testbench (e.g., `tb_dataflow_4_bit_full_adder` or `tb_behavioral_1_bit_full_adder`) and run the simulation.
   - Analyze the results in the waveform viewer.

## Usage

- **Dataflow Approach**: The `dataflow_4_bit_full_adder` and `dataflow_1_bit_full_adder` entities use a dataflow style to model the adder circuits.
- **Behavioral Approach**: The `behavioral_4_bit_full_adder` and `behavioral_1_bit_full_adder` entities use a behavioral style for modeling.
- **Structural Approach**: The `structural_1_bit_full_adder` entity is implemented using basic gates and is used in the structural approach.

## Troubleshooting

- **Unknown Identifier Errors**: Ensure all referenced entities are correctly compiled and available in the work library.
- **Compilation Errors**: Check for syntax errors and ensure all VHDL files are correctly written and included in the project.

## License

This project is for educational purposes only. Please refer to the Active-HDL licensing terms for any commercial use.
