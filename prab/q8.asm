START: LXI H,8050H
       LXI D,8070H
       LXI B,8090H


NEXT: LDAX D
      SUB M
      STAX B
      INX H
      INX D
      INX B
      LDAX D
      SBB M
      STAX B
      INX H
      INX B
      INX D
      MOV A,E
      CPI 85H
      JC NEXT
      HLT




      
