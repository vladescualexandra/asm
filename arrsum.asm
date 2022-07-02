; Sum of an array. - without procedures/macros
.model small
.stack 16
.data
	n DB 3
	array DB 1, 2, 3
	sum DW 0
.code
start:
	MOV AX, @data
	MOV DS, AX

	XOR AX, AX
	XOR CX, CX	; set counter to 0

	MOV BX, offset array
	
	repeat:
		CMP CL, n
		JE final
		
		MOV AL, [BX]
		ADD [sum], AX
		
		INC CX
		INC BX
		
		JMP repeat
	
	final:
	
	XOR AX, AX
	MOV AX, sum
	
	MOV AX, 4C00h
	INT 21h
end start