;BINARY TO BCD  FROM 8560 TO 8570
    LXI H,8560H
    LXI D,8570H
    MVI C,0AH  
    MVI B,00H


L2: MOV A,M
    MOV B,A
    CPI 00H
    JZ SKIP
    MVI A,00H
L1: ANA A         ;TO RESET THE FLAGS 
    ADI 01H
    DAA
    DCR B
    JNZ L1
SKIP:STAX D
    INX H
    INX D
    DCR C
    JNZ L2
    HLT
    

