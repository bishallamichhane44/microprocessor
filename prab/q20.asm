START:LXI H,8070H
      LXI D,8060H
      MVI C,0AH

NEXT:LDAX D
     MOV B,A
     CALL BIN
     INX D
     INX H
     DCR C
     JNZ NEXT
     HLT

BIN: MVI M,00H
     CPI 00H
     RZ
LOOP:INR M
	 MOV B,A
     ANI 0FH
     CPI 00H 
     JZ SU
     MOV A,B
     SBI 01H
     JMP SKIP
    
SU:  MOV A,B 
	 SBI 07H
SKIP:RZ
     JMP LOOP
     RET
