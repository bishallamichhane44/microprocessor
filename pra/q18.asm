START: LXI D, 8040H
       LXI H, 8070H
       MVI B, 0AH
       
NEXT: MVI M,00H
      LDAX D
      CALL COUNT
      INX D
      LDAX D
      CALL COUNT
      INX D
      INX H
      MVI M,00H
      INX H
      DCR B
      JNZ NEXT
      HLT

COUNT:  MVI C,08H
ROTATE: RLC
        JNC JUMP
        INR M
JUMP: DCR C
      JNZ ROTATE
      RET



;SOLUTION 2
;COUNT NO OF 1 IN 16 BIT NUMBER FROM TABLE 8240 AND STORE COUNT TO TABLE 8260H
      LXI D,8240H
      LXI H,8260H
      MVI C,0AH    ;NO OF DATA IN TABLE
    
	
 LP:  MVI B,08H
      LDAX D
      MVI M,00H
ROT:  RLC 
      JNC SKIP
      INR M        ;COUNTING IN LOWER BYTE
SKIP: DCR B
      JNZ ROT
      MVI B,08H
      INX D
      LDAX D
RTT:  RLC 
      JNC SKIP2
      INR M        ;COUNTING IN HIGHER BYTE
SKIP2:DCR B
      JNZ RTT
      INX H
      MVI M,00H   
      INX H
      INX D
      DCR C
      JNZ LP
      HLT
    


       
      
