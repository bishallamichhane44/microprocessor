START: MVI D,00h
       MVI B,00h
       MVI C,10H
       LXI H,80A1H

NEXT:  MOV A,M
       RLC
       JC SKIP
       RRC
       ADD B
       JNC SAVE
       INR D
    
SAVE: MOV B,A
SKIP: INX H
      DCR C
      JNZ NEXT
      MOV A,B
      OUT PORT 1
      MOV A,D
      OUT PORT 2
      HLT