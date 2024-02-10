
START: LXI H,90B1H
       MVI C,0AH
       MVI B,00H
       
NEXT: MOV A,M
      ANI 28H
      CPI 20H
      JNZ SKIP
      MOV A,M
      ADD B
      JNC SAVE
      INR D

 
SAVE: MOV B,A
SKIP: INX H
      DCR C
      JNZ NEXT
      MOV A,D
      OUT PORT 1
      MOV A,B
      OUT PORT 2
      HLT  

