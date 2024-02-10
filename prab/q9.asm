START: LXI H,8050H
       LXI D,8070H
       LXI B,8090H

NEXT: LDAX D
      SUB M
      INX H
      INX D
      INX B
      LDAX D
      SBB M
      JNC WRITE
      JC SKIP
CONT: INX H
      INX D
      INX B
      MOV A,E
      CPI 85H
      JC NEXT
      HLT

WRITE:DCX H
      DCX D
      DCX B
      LDAX D
      SUB M
      STAX B
      INX H
      INX D
      INX B
      LDAX D
      SBB M
      STAX B
      JMP CONT


SKIP: MVI A,00H
      DCX H
      DCX D
      DCX B
      STAX B
      INX H
      INX D
      INX B
      STAX B
      JMP CONT