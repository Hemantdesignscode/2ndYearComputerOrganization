
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	ARRAY WORD 10, 11, 13, 18, 21, 23, 24, 17, 45
	SUM WORD ?

.code
main PROC

	mov bx, 0
	mov SUM, bx

	mov edx, 0
	mov ecx, LENGTHOF ARRAY

	L1:
		mov ax, [Array+edx]
		and eax, 1
		cmp ax, 0
		JE IF_BLOCK
		JNE ELSE_BLOCK

		IF_BLOCK:
			mov bx, [Array+edx]
			add SUM, bx
			jmp next
		ELSE_BLOCK:
			add SUM, 0
		next:
		
		add edx, 2
	loop L1

	Invoke ExitProcess, 0

main ENDP
END main