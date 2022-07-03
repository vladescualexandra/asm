; Sum of an array using a procedure.
.model small
.stack 16
.data
	n DW 3
	array DW 10, 11, 12
	sum DW 0
.code
start:
	MOV AX, @data
	MOV DS, AX
	
	MOV AX, offset sum
	PUSH AX
	
	MOV AX, offset array
	PUSH AX
	
	MOV AX, n
	PUSH AX
	
	
	CALL arraysum
	
	MOV AX, 4c00h
	INT 21h
	
arraysum PROC NEAR
	PUSH BP
	MOV BP, SP
	
	XOR CX, CX
	MOV CX, [BP + 4]	; to get n
	
	MOV BX, [BP + 6]	; to get array
	
	;	BP+8	BP+6	BP+4	BP+2	BP+0
	;	-----------------------------------------
	;	| array	| n		| sum	| 		|  		|
	;	-----------------------------------------
	
	XOR AX, AX
	XOR SI, SI
	
	repeat:
		ADD AX, [BX][SI]
		INC SI
		INC SI
	loop repeat

	MOV BX, [BP + 8] 	; to get sum
	MOV [BX], AX		; to put the result from AX in sum (which is at BX offset)
	
	POP BP
	RET 6h
arraysum endp
end start




	