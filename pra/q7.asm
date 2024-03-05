
START: LXI H 8050H
       LXI D 8070H
       LXI B 8090H


NEXT: LDAX D
      ADD M
      JNC SKIP
      STAX B
      INX H
      INX D
      INX B
      LDAX D
      ADC M
CONT: STAX B
      INX H
      INX D
      INX B
      MOV A,E
      CPI 80H
      JNZ NEXT
      

SKIP: MVI A,00H
      STAX B
      INX H
      INX D
      INX B
      JMP CONT
    

      
