; Sum of two numbers.
.model small
.stack 16
.data
	a DB 5 ; 1 Byte -> offset 0000h
	b DB 3 ; 1 Byte -> offset 0001h
	sum DW ? ; 2 Bytes -> offset 2h
.code
start:
	MOV AX, @data
	MOV DS, AX
	
	XOR AX, AX 	; this will result in AX = 0
	MOV AL, a 	; AL = a
	ADD AL, b	; AX = AX + b = a + b
	
	MOV sum, AX ; sum = AX = a + b = 5 + 3 = 8
	
	MOV AX, 4C00h
	INT 21h
end start