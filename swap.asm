; THIS IS WRONG, IT DOES NOT WORK 
; The one must pay attention to the modification 
; of the SP register value which is directly related 
; with the stack segment access - PUSH/POP instructions
.model small
.stack 16
.data

	value_x DW 1234h
	value_y DW 7777h
	
.code

swap MACRO X, Y
	PUSH AX
	PUSH BX
	MOV BX, X
	MOV AX, Y
	MOV X, AX
	MOV Y, BX
	POP BX
	POP AX
ENDM

start:
	MOV AX, @data
	MOV DS, AX
	
	MOV AX, value_x
	MOV SI, value_y
	
	swap AX, SI
	
	MOV AX, 4c00h
	INT 21h
end start