START: LXI H,805AH
       LXI D,8040H
       LXI B,805FH

MOVE: MOV A,M
      STAX B
      DCX B
      DCX H
      MOV A,L
      CPI 55H
      JNZ MOVE
      LXI H,8056H
      LXI D,8040H
      LXI B,805AH
      
NEXT: LDAX D
      MOV M,A
      INX H
      INX D
      MOV A,L
      CPI 5BH
      JC NEXT
      HLT
      
     


      