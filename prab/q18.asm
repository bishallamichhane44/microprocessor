START: LXI D, 8040H
       LXI H, 8070H
       MVI B, 0AH
       
NEXT: MVI M,00H
      LDAX D
      CALL COUNT
      INX D
      LDAX D
      CALL COUNT
      INX D
      INX H
      MVI M,00H
      INX H
      DCR B
      JNZ NEXT
      HLT

COUNT:  MVI C,08H
ROTATE: RLC
        JNC JUMP
        INR M
JUMP: DCR C
      JNZ ROTATE
      RET




       
      
