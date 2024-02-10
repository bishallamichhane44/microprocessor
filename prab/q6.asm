START: LXI H,8070H
       LXI D,8050H
       LXI B,8090H

NEXT:  LDAX D
       ADD M
       STAX B
       INX H
       INX D
       INX B
       LDAX D
       ADC M
       STAX B
       INX H
       INX D
       INX B
       MOV A,E
       CPI 64H
       JNZ NEXT
       HLT