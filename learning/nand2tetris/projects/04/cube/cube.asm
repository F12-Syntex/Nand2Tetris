// Cube the number given in memory cell 0 and store it in memory cell 2.

@0
D=M       // Load M[0] into the D register.

@n
M=D       // Store the value of D register into the variable n (M[n]).

@1
M=0       // Initialize memory cell 1 to temporarily hold the square result.

@2
M=0       // Initialize memory cell 2 to store the final cube result.

(SQUARE)
    @n
    D=M     // Load the value of n into D register to check if it is 0.
    @SQUARE_DONE
    D;JEQ   // If n is 0, jump to SQUARE_DONE label.

    @0
    D=M     // Re-load the value of M[0] to multiply with current total.

    @1
    M=D+M   // Add n to the current total in M[1] (part of squaring).

    @n
    MD=M-1  // Decrement n and store it back to M[n]; also store it in D.

    @SQUARE
    0;JMP   // Unconditional jump to SQUARE.

(SQUARE_DONE)
    // Now memory cell 1 holds the square of the number.
    // We need to multiply this result by the number in memory cell 0 again.

    @0
    D=M      // Store the original number in D for multiplication with the square.

    @n
    M=D      // Reset n to original number from memory cell 0.

(CUBE_LOOP)
    @n
    D=M      // Load the value of n into D register to check if it is 0.
    @END
    D;JEQ    // If n is 0, jump to the END label.

    @1
    D=M      // Load the squared number into D.

    @2
    M=D+M    // Add the square to the current total in M[2] (part of cubing).

    @n
    MD=M-1   // Decrement n and store it back to M[n]; also store it in D.

    @CUBE_LOOP
    0;JMP    // Unconditional jump to CUBE_LOOP.

(END)
    @END
    0;JMP    // This keeps the program in an infinite loop after completion.
