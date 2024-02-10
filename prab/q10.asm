START: LXI H,A430H
       LXI D,A440H


NEXT:  MOV A,M
       ANI 21H
       CPI 01H
       JNZ SKIP
       MOV A,M
       STAX D
CONT:  INX H
       INX D
       MOV A,E
       CPI 4AH
       JNZ NEXT
       HLT
       

SKIP: MVI A,00H
      STAX D
      JMP CONT