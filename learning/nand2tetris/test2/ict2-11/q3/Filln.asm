// Square the number given in memory cell 0 and record it in memory cell 1.
@0
D=M       // Load M[0] into the D register.

@n
M=D       // Store the value of D register into the variable n (M[n]).

@1
M=0       // Initialize memory cell 1 to store the result.

(LOOP)

    @n
    D=M     // Load the value of n into D register. to check if it is 0.

    @END
    D;JEQ   // If n is 0, jump to the END label.

    @0
    D=M     // Load the value of n into D register.

    @1
    M=D+M   // Add n to the current total in M[1].

    @n
    MD=M-1  // Decrement n and store it back to M[n]; also store it in D.
    
    @LOOP
    0;JMP   // Unconditional jump to LOOP.

(END)
    @END
    0;JMP   // This keeps the program in an infinite loop after completion.
