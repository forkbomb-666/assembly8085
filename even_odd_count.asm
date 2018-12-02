# ORG 8000H
# BEGIN 8000H
	   MVI C,00
	   MVI D,00
	   LXI H,8050
	   MOV B,M

LOOP1:	   INX H
	   MOV A,M
	   RRC
	   JNC LOOP2
	   INR C
	   JMP LOOP3

LOOP2:	   INR D

LOOP3:	   DCR B
	   JNZ LOOP1
	   MOV A,C
	   STA 9000
	   MOV A,D
	   STA 9001
	   HLT
# ORG 8050H
# DB 08H, 07H,02H,06H,01H,03H,04H,08H,09H
