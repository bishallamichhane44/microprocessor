
	  MVI A,00h
      LXI H,8067H
      MVI C,Ah
      LXI D, 0000H
NEXT: ADD M
      JNC SAVE
      INR D
SAVE: MOV E,A
      INX H
      DCR C
      JNZ NEXT
      MOV M,E
      INX H
      MOV M,D
      HLT

        