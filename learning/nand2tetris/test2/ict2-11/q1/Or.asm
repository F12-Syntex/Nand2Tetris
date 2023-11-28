// Bitwise OR of memory cell 0 and 1, result recorded in memory cell 2.
//sanitise R2
@2
M=0

// Load R0 into D
@0
D=M

// Perform bitwise OR with R0 and R1, store the result in D
@1
D=D|M

// Store the result into R2
@2
M=D

// End of the Program (Endless Loop to Halt the CPU)
(END)
    @END
    0;JMP