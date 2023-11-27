// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// The purpose of this program is to toggle the entire screen between black and white pixels based on keyboard input.
// If any key is pressed, the screen will turn black. When no keys are pressed, the screen will turn white.

// Starts by entering an infinite loop that checks if a key is currently being pressed or not.
(LOOP)
    // Get keyboard value. The KBD memory location contains the most recently pressed key's ASCII code; 0 if no key is pressed.
    @KBD
    D=M

    // Check if a key is pressed (is KBD > 0?). If it is, jump to the 'ON' label to fill the screen with black.
    @ON
    D;JGT

    // If no key is pressed, proceed to clear the screen with white pixels by jumping to the 'OFF' label.
    @OFF
    0;JMP

// Label for turning the screen on (black).
(ON)
    // Set A-register to address R0 and load -1 into R0 to represent a black pixel (since the screen works in 16-bit mode,
    // -1 corresponds to all 16 bits set which makes the screen black).
    @R0
    M=-1

    // Jump to DRAW routine to update the screen pixels.
    @DRAW
    0;JMP

// Label for turning the screen off (white).
(OFF)
    // Set A-register to address R0 and load 0 into R0 to represent a white pixel (all bits cleared).
    @R0
    M=0

    // Jump to DRAW routine to update the screen pixels.
    @DRAW
    0;JMP

// This subroutine sets the entire screen's pixel values based on the current content of R0.
(DRAW)
    // Set up a counter to iterate over each pixel. There are 8192 16-bit locations in the screen memory.
    // Initializing counter in R1 with 8191 because counting starts from 0.
    @8191
    D=A
    @R1
    M=D

    // Loop over each screen pixel and set it to the value in R0 (either -1 for black or 0 for white).
    (NEXT)
        // Load current value of R1 into D and store it in variable 'pos'.
        @R1
        D=M
        @pos
        M=D

        // Calculate actual RAM address for the next pixel using the base address of the SCREEN and the counter at 'pos'.
        @SCREEN
        D=A
        @pos
        M=M+D

        // Draw the value (-1 or 0) at the current position pointed to by 'pos'.
        @R0
        D=M
        @pos
        A=M
        M=D

        // Decrement the counter (R1) as we just wrote to one pixel.
        @R1
        M=M-1

        // Continue the NEXT loop if there are still pixels to be updated (if R1 >= 0).
        @NEXT
        D;JGE

    // Once all pixels have been updated, loop back to the beginning to check keyboard input again.
    @LOOP
    0;JMP
