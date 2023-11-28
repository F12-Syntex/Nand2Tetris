// Increment R1 by 1
@R1
M=M+1

// Sets R3 to 0 to store the quotient of the division.
@R3
M=0

// Load updated R1 into D to use as the divisor.
@R1
D=M

// Initialize variables: R0 - dividend, R1 - divisor, R3 - quotient (result), R4 - remainder.
(DIVIDE_LOOP)
    // Load R0 (dividend) into A and D for comparison with R1 (divisor).
    @R0
    D=M

    // Compare if dividend (R0) is less than the divisor (R1).
    @R1
    D=D-M
    @DIVIDE_DONE
    D;JLT   // If dividend < divisor, we are done dividing; R0 now contains the remainder.

    // Subtract divisor (R1) from dividend (R0) since dividend >= divisor.
    @R1
    D=M
    @R0
    M=M-D   // Perform subtraction R0 = R0 - R1.

    // Increment quotient (R3) by 1 as we have subtracted the divisor once.
    @R3
    M=M+1

    // Unconditional jump back to DIVIDE_LOOP label for the next iteration.
    @DIVIDE_LOOP
    0;JMP

(DIVIDE_DONE)
    // After division is done, whatever left in R0 is the remainder.
    // We store the remainder in R4.
    @R0
    D=M
    @R4
    M=D

    // The result is already in R3 (quotient) and R4 (remainder).
    // We can end the program here or jump to end label if there's more code that follows.
    @END
    0;JMP

(END)
    @END
    0;JMP
