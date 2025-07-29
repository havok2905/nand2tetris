// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

    // hoist second number
    @R1
    D=M

    // set iterator to equal second number
    @i 
    M=D

    // set product to return
    @R2
    M=0

(LOOP)
    // if i is equal to 0, go to STOP
    @i
    D=M
    @END
    D;JEQ

    // Decrement times
    @i
    M=M-1

    // Keep adding groups
    @R2
    D=M
    @R0
    D=D+M
    @R2
    M=D

    // Go to LOOP
    @LOOP
    0;JMP
(END)
    @end
    0;JMP
