START: LXI H,9050H
       LXI D,9060H
       MVI C,AH
    
NEXT:  MOV A,M
       CPI 30H
       JM SKIP
       CPI 70H
       JP SKIP
       STAX D
CONT:  INX H
       INX D
       DCR C
       JNZ NEXT
       HLT

SKIP: MVI A,00H
      STAX D
      JMP CONT