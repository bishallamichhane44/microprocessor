START: LXI H,8050H
       LXI D,8070H
       LXI B,8090H
       
 NEXT: LDAX D
 	ADD M
       STAX B
       INX H
       INX D
       INX B
       LDAX D
       ADC M
       CPI 01H
       STAX B
       JNC SKIP
       DCX B
       STAX B
       INX B
  SKIP:INX H
  	INX D
       INX B
       MOV A,E
       CPI 84H
       JC NEXT
       HLT
