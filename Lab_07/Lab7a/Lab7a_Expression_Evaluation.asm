
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	val1 SWORD 23
	val2 SWORD -35
	val3 SDWORD 4

.code
main PROC

	COMMENT !
		The Expression we are trying to EBX = (-Val3 - Val2) + (Val1 * 2)
	!

	mov eax, val3
	mov edx, 0
	sub edx, eax
	movzx eax, val2
	sub edx, eax
	movzx eax, val1
	add eax, eax
	add edx, eax
	movzx ebx, dx

	Invoke ExitProcess, 0

main ENDP
END main