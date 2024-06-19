
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	myByte1 BYTE 9Bh

.code
main PROC
	
	mov bx, 0A69Bh
	movzx eax, bx

	movzx eax, myByte1

	mov bx, 0A69Bh
	movsx eax, bx

	Invoke ExitProcess, 0

main ENDP
END main