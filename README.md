# LLVM_IR-Generator

## LLVM IR Code Generation Project

### Overview

This project demonstrates how to generate LLVM Intermediate Representation (IR) code using the LLVM C++ API. The generated IR code performs basic arithmetic operations, bitwise operations, and bit reversal on 32-bit integers. The project also includes a main function that calls these operations and prints the results using printf.

### Assignment Purpose

The purpose of this assignment is to introduce the fundamentals of LLVM IR generation. By writing a C++ program that programmatically creates IR code, the goal is to:

- Understand how to generate and manipulate LLVM IR.

- Learn how to define functions and perform arithmetic operations using LLVM's API.

- Execute generated IR code using LLVM's lli interpreter.

### Project Structure

- a2.cpp: The main C++ source file that generates LLVM IR code.

- output.ll: The generated LLVM IR code.

- Makefile: A Makefile to compile and run the project.

### Features

#### Arithmetic Operations

- Addition (sum)

- Subtraction (subtract)

- Multiplication (multiply)

- Division (divide)

#### Bitwise Operations

- Bitwise AND (bitwiseAnd)

- Bit Reversal


#### Printing Results

- Uses printf to print the results of the operations.

### How the Program Works
The program dynamically generates LLVM IR code using the LLVM C++ API:

1. LLVMContext and Module:
    - A LLVMContext is created to manage IR generation.

    - A Module is used as the top-level container for IR objects.

2. IRBuilder:

    - IRBuilder is used to generate LLVM instructions in a structured manner.

3. Function Definitions:

    - Functions such as sum, subtract, multiply, divide, bitwiseAnd, and reverseBits are defined.

    - Each function has an entry block where operations are performed.

4. Main Function Execution:

    - The main function calls these generated functions with sample inputs.

    - The results are printed using printf.

5. LLVM IR Code Generation:
    - The generated LLVM IR code is stored in output.ll.

6. Executing the IR Code:

    - The LLVM interpreter lli is used to execute the generated IR.



### How to Build and Run

#### Prerequisites

- LLVM installed on your system.

- clang++ compiler.

#### Build Instructions

##### Using the Makefile

- The provided Makefile simplifies the build and execution process.

##### Build the Project

``` make ```

- This will generate an executable named a.

#### Run the Project

``` make run ```

### This will:

- Generate the LLVM IR code and save it to output.ll.

- Run the executable.

- Execute the generated IR code using lli.

### Clean Up

``` make clean ```

This will delete the executable and the generated LLVM IR file.

### Manual Build and Run

If you prefer to build and run manually, follow these steps:

- Compile the C++ code:

``` clang++ a2.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o a ```

- Run the executable:

```
./a > output.ll
./a
lli output.ll
```

### Generated LLVM IR

The generated LLVM IR code is saved in output.ll. This file contains the definitions of the functions (sum, multiply, subtract, divide, bitwiseAnd, reverseBits, and main) along with the necessary instructions to perform the operations and print the results.

Example Output

When you run the program, it will print the results of the operations to the console:

```
Hello World!
Sum of 5 and 3 is: 8
Multiply of 9 and 4 is: 36
Divide of 36 and 6 is: 6
Subtract of 20 and 13 is: 7
Bitwise AND of 10 and 5 is: 0
Reversed bits of 10 is: 1342177280
```

### Challenges Faced and Solutions

1. Generating Reversed Bits Function

    - Challenge: Reversing bits efficiently in LLVM IR.

    - Solution: Used bitwise shifts (CreateShl, CreateLShr) and logical operations.
2. Understanding LLVM API

    - Challenge: LLVM’s API is complex, requiring detailed understanding of IR structures.

    - Solution: Used IRBuilder to simplify function creation and instruction generation.

### Conclusion

This project provides a basic introduction to generating LLVM IR using the LLVM C++ API. It demonstrates how to create functions, perform operations, and print results. The project can be extended to include more complex operations or optimizations.

