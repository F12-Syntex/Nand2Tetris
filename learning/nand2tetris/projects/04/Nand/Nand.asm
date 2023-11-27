// Bitwise Nand of memory cell 0 and 1, result recorded in memory cell 2.


//sanitise R2
@R2
M=0

// Load R0 into D
@R0
D=M

// Perform bitwise AND with R0 and R1, store the result in D
@R1
D=D&M

// Perform bitwise NOT on D (NAND operation)
D=!D

// Mask all other bits except the least significant one
@1
D=D&A

// Store the result into R2
@R2
M=D

// End of the Program (Endless Loop to Halt the CPU)
(END)
    @END
    0;JMP