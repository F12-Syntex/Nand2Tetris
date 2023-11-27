// Perform a bitwise NOT of the value in memory cell R0 and record the result as 1 if R0 is 0, or 0 if R0 is 1 in memory cell R2.

// Load R0 into D
@R0
D=M

// Perform bitwise NOT on the value in D and then increment to get 1 if R0 was 0, and 0 if R0 was 1 (since !M of 0 is -1 and after incrementing it becomes 1, !M of anything non-zero is 0)
D=!D

// Mask all other bits except the least significant one
@1
D=D&A

// Store the result into R2
@R2
M=D

// End of the program (Endless loop to halt the CPU)
(END)
    @END
    0;JMP
