; Print a message to the console.

.model small
.stack 16
.data
	message DB "test message", '$'
.code
start:
	MOV AX, @data
	MOV DS, AX
	
	MOV DX, offset message
	
	MOV AH, 09h
	INT 21h
end start