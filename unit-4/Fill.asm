(LOOP)
    @KBD
    D=M

    @SETCOLORTOBLACK
    D;JGT

    @SETCOLORTOWHITE
    D;JMP
    
    (SETCOLORTOBLACK)
        @color
        M=-1
        @RENDER
        0;JMP

    (SETCOLORTOWHITE)
        @color
        M=0
        @RENDER
        0;JMP

    (RENDER)
        @SCREEN
        D=A
        @screenaddress
        M=D

        @8192
        D=A
        @counter
        M=D
        (INNERLOOP)
            @counter
            D=M
            @pos
            M=D
            @screenaddress
            D=M
            @pos
            M=D+M
            
            @color
            D=M
            @pos
            A=M
            M=D

            @counter
            D=M-1
            M=D

            @counter
            D=M
            @INNERLOOP
            D;JGE

    // Infinite loop
    @LOOP
    0;JMP
