START: LXI H,8250H
       LXI D,8260H
       MVI C,AH
    
NEXT:  MOV A,M
       CPI 50H
       JM ADD
       CPI 80H
       JP ADD
       JMP SKIP
ADD:   STAX D
CONT:  INX H
       INX D
       DCR C
       JNZ NEXT
       HLT

SKIP: MVI A,00H
      STAX D
      JMP CONT