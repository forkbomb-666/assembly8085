# ORG 8000H
# BEGIN 8000H
	   LXI H,8050
	   MOV B,M
	   INX H
	   MOV A,M
	   DCR B

LOOP:	   INX H
	   CMP M
	   JC NEXT
	   MOV A,M

NEXT:	   DCR B
	   JNZ LOOP
	   STA 9000
	   HLT
# ORG 8050H
# DB 05H, 07H,02H,06H,01H,03H
