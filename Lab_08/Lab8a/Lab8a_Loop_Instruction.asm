
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

	;Summing an array (SumArray.asm)

.data
	intarray DWORD 10000h, 20000h, 30000h, 40000h

.code
main PROC

	mov edi, 0
	mov ecx, LENGTHOF intarray
	mov eax, 0
	L1:
		add eax, intarray[edi]
		add edi, TYPE intarray
	Loop L1

	Invoke ExitProcess, 0

main ENDP
END main