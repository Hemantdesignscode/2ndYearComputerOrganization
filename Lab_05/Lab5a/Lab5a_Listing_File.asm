
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.code
main PROC
	
	mov AL, 20
	mov AX, 100
	mov EAX, 1000
	add EAX, 2
	sub AL, 20

	Invoke ExitProcess, 0
main ENDP 
END main