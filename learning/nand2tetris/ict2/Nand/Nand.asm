// Bitwise Nand of memory cell 0 and 1, result recorded in memory cell 2.

@0
D=M
@3
M=D
@1
D=M
@3
M=D+M

@3
M=M-1
@checkIf2
D;JEQ
@2
M=0
@END
0;JMP

(CHECKIF2)
@2
M=1
@END
0;JMP
