;<Program title>

jmp start

;data

;code
start: nop
	  MVI A,00h
      LXI H,8067H
      MVI B,Ah
loop: ADD M
	  INX H
      DCR B
      JNZ loop
      hlt