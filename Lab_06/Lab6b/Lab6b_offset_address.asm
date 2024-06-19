
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	arrayD DWORD 10000h, 20000h, 30000h

.code
main PROC
	
	; Direct Offset Addressing (doubleword array)

	mov eax, arrayD
	mov ebx, [arrayD + 4]
	mov edx, [arrayD + 8]

	Invoke ExitProcess, 0

main ENDP
END main