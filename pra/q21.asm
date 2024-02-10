START: LXI D,8445H
       LXI H,8345H
       MVI C,0AH

NEXT: MOV A,M
      CPI 64H
      JNC SKIP
      MOV B,M
      CALL BCD
      STAX D
      INX D
SKIP: INX H
      DCR C
      JNZ NEXT
      HLT 
    
BCD: MOV A,M
     CPI 00H
     RZ
     MVI A,00H

LOOP:ANA A
     ADI 01H
     DAA
     DCR B
     RZ
     JMP LOOP
     RET
     
