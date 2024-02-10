START: LXI D,8570H
       LXI H,8560H
       MVI C,0AH
    
NEXT: MOV B,M
      CALL BCD
      STAX D
      INX D
      INX H
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
     JNZ LOOP
     RET