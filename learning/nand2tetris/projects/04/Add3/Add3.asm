// Add the numbers given in memory cells 0, 1 and 2 and record their sum in memory cell 3.

// Put your code here.

//sanitise memory
@3
M=0

//store R0
@0
D=M

//add to R3
@3
M=D+M

//store R1
@1
D=M

//add to R3
@3
M=D+M

//store R2
@2
D=M

//add to R3
@3
M=D+M

(END)
@END
0; JMP
