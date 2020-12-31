# MiniJava to K210 RISC-V Assembly Compiler  
This Compiler can translate MiniJava into K210 RISC-V assembly.  

## MiniJava Syntax and Type System  
MiniJava is a subset of Java. The meaning of a MiniJava program is given by its meaning as a Java program.  
[BNF for MiniJava](http://compilers.cs.ucla.edu/cs132/project/MiniJava.html)  
[Syntax alternative source Tufts](http://alumni.cs.ucr.edu/~weesan/cs152/MiniJava.html)  
[Syntax alternative source UCR](http://www.cs.tufts.edu/~sguyer/classes/comp181-2006/MiniJava.html)  
[MiniJava-typesystem](http://web.cs.ucla.edu/~palsberg/course/cs132/MiniJava-typesystem.pdf)  
  
If the syntax of the input MiniJava program is not correct, the Compiler will report an exception. Although common IDEs cannot check for MiniJava syntax correctness, the correct MiniJava program should be able to run in Java properly.  
  
## Kendryte K210 (K210)  
[K210](https://canaan.io/product/kendryteai) is a RISC-V Dual Core 64bit chip for AI+IOT. It is widely used in the development board of embedded system.  
RISC-V Assembly can run on K210 by using RISC-V GNU Toolchain.  
If you are interested in my development environment, please refer to [this tutorial](https://github.com/qingpeng9802/build-maix-bit-k210-bare-metal-debug-dev-env). UART is used for input and output on the development board.  

## Usage  

### Compatibility  
`miniJava-to-k210-riscv-compiler.jar` is written by using `jdk1.8.0_101`.  
`JRE version 1.8+` should be able to execute `miniJava-to-k210-riscv-compiler.jar` properly.  
`JRE 15.0.1` can execute it properly.  
### Command  
If you would like to print RISC-V assembly to terminal,  
`java -jar miniJava-to-k210-riscv-compiler.jar < test.java`  
  
If you would like to print RISC-V assembly to file `test.s`,  
`java -jar miniJava-to-k210-riscv-compiler.jar < test.java  > test.s`

### Examples
`k210asms` & `k210out_pics`:  
The RISC-V assembly files in `k210asms` are compiled from the corresponding MiniJava files in `testcases`.  
The pictures in `k210out_pics` are the serial communication result of the corresponding RISC-V assembly files in `k210asms`.  
  
## About  
This project is based on the RISC-V version homework of UCLA CS132. The project contains four parts to form a compiler pipeline: [Type Checker] -> [Translate to Sparrow] -> [Translate to SparrowV (Register Allocation)] -> [RISC-V assembly]. In the original homework, the target language of the last step is [Venus](https://github.com/kvakil/venus) RISC-V assembly.  
  
The project is formed by modifying the target language of the last step to K210 RISC-V assembly. [This tutorial](https://github.com/qingpeng9802/port-riscv-asm-from-venus-to-k210) records the steps to complete the project.  
  
## Copyright Notice  
The copyright of the content in the folder `testcases` and `cs132.jar` belongs to [Professor Palsberg](https://web.cs.ucla.edu/~palsberg/).  
  
For Academic Integrity, this is NOT a open source project, and the file `miniJava-to-k210-riscv-compiler.jar` is highly obfuscated.  
(Professor Palsberg spent a lot of energy on the development of the RISC-V version homework for UCLA CS132 Compiler Construction, which is a CS capstone, so I try to protect the effectiveness of the homework here.)  
