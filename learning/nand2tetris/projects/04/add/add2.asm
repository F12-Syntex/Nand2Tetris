// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Adds R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
(ADD)
    //get R0
    @R0
    D=M

    //add R0 to R2
    @R2
    M=D+M

    //get R1
    @R1
    D=M

    //add R1 to R2
    @R2
    M=D+M

    //infinite loop
    @END
    0;JMP

(END)
    @END
    0;JMP
