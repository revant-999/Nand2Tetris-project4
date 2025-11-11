(BEGIN)      // Loop program forever

@KBD
D=M
@BLACK
D;JNE
@WHITE
D;JEQ

(BLACK)
@counter     // Paint the screen black
M=-1
(LOOP)
@counter
M=M+1
D=M
@SCREEN
A=D+A
M=-1
@8191
D=D-A
@LOOP
D;JNE       // Finish painting the screen black
@BEGIN
0;JMP

(WHITE)
@counterwhite     // Paint the screen white
M=-1
(LOOPWHITE)
@counterwhite
M=M+1
D=M
@SCREEN
A=D+A
M=0
@8191
D=D-A
@LOOPWHITE
D;JNE       // Finish painting the screen white

@BEGIN      // Jump back to BEGIN
0;JMP