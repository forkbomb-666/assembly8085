# ORG 8000H
# BEGIN 8000H
	   LDA 9000
	   MOV B,A
	   LDA 9001
	   MOV C,A
	   MVI A,00

L1:	   ADD B
	   DCR C
	   JNZ L1
	   STA 9003
	   HLT
# ORG 9000H
# DB 03H, 04H
