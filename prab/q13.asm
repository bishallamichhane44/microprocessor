START: LXI H,9500H
       LXI D,0000H
       LXI B,0000H

NEXT:  MOV A,M
       ADD E
       MOV E,A 
       INX H
       MOV A,M
       ADC D
       MOV D,A
       JC EXT
CONT:  INX H
       MOV A,L
       CPI 14H
       JC NEXT
       MOV M,E
       INX H
       MOV M,D
       INX H
       MOV M,C
       INX H
       MOV M,B
       HLT
       
EXT:   INX B
       JMP CONT