// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// subtracts R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
(SUB)
    //get R1
    @R0
    D=M

    //subtract R0 from R1
    @R1
    D=D-M

    //store result in R2
    @R2
    M=D

    //end program
    @END
    0;JMP

(END)
    @END
    0;JMP
