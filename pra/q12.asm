START: LXI H,8040H
       LXI D,8080H
       MVI C,11H

NEXT:  MOV A,M
       STAX D
       DCX D
       INX H
       DCR C
       JNZ NEXT
       HLT
       