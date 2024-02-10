START: LXI D, 80B1H
       LXI H, 80A1H
       MVI C, 0AH

NEXT:  MOV A,E
       ADI 10H
       MOV B,A
       LDAX D
       CMP M
       MOV E,B
       JNC JUMP
       MOV A,M
       STAX D
       JMP SKIP

JUMP: MVI A,FFH
      STAX D

SKIP: MOV A,B
      SUI 10H
      MOV E,A
      INX H
      INX D
      DCR C
      JNZ NEXT
      HLT