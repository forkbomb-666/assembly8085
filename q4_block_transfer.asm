# ORG 8000H
# BEGIN 8000H
	   LXI H,8050
	   MOV B,M
	   LXI D,9000

LOOP:	   INX H
	   MOV A,M
	   STAX D
	   INX D
	   DCR B
	   JNZ LOOP
	   HLT
# ORG 8050H
# DB 05H, 07H,02H,06H,01H,03H
