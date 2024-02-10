START:LXI H,9270H
      LXI D,9280H
      

NEXT: MOV A,M
      ADI 00H
      JPO ODD
      MOV A,M
      STAX D
CONT: INX H
      INX D
      MOV A,E
      CPI 8AH
      JNZ NEXT
      HLT


ODD: MOV A,M
     ORI 04H
     ANI 7FH
     STAX D
     JMP CONT