START: LXI H,8040H
       LXI D,8050H
       LXI B,8055H

NEXT:  MOV A,M
       STAX B
       INX B
       INX H
       MOV A,C
       CPI 5AH
       JNZ NEXT
       JMP FRONT

FRONT: MOV A,M
       STAX D
       INX D
       INX H
       MOV A,E
       CPI 55H
       JNZ FRONT
       HLT