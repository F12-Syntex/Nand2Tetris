// Sets R2 to 0 to store the quotient of the division.
@R2
M=0

// Load R1 into D to use as a divisor.
@R1
D=M

// Check if the divisor (R1) is zero to prevent division by zero.
@R1
D;JEQ // If R1 is zero, skip to END to handle division by zero case.

// Initialize variables: R0 - dividend, R1 - divisor, R2 - quotient (result).
(DIVIDE_LOOP)
    // Load R0 (dividend) into A and D for comparison with R1 (divisor).
    @R0
    D=M

    // Compare if dividend (R0) is less than the divisor (R1).
    @R1
    D=D-M
    @DIVIDE_DONE
    D;JLT   // If dividend < divisor, we are done dividing.

    // Subtract divisor (R1) from dividend (R0) since dividend >= divisor.
    @R1
    D=M
    @R0
    M=M-D   // Perform subtraction R0 = R0 - R1.

    // Increment quotient (R2) by 1 as we have subtracted the divisor once.
    @R2
    M=M+1

    // Unconditional jump back to DIVIDE_LOOP label for the next iteration.
    @DIVIDE_LOOP
    0;JMP

(END)
    @END
    0;JMP
