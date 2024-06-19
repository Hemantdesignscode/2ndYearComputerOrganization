
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data

	array DWORD 10h, 20h, 30h, 40h, 50h
	sample DWORD 50h

.code
Search PROC

	mov EBX, sample
	mov ESI, OFFSET array
	mov ECX, LENGTHOF array
	mov EDX, TYPE array

	L1:
		mov eax, array+[edx]
		push eax
		cmp eax, ebx
		JE IF_BLOCK
		JNE ELSE_BLOCK
		
		IF_BLOCK:
			pop eax
			jmp next
		ELSE_BLOCK:
			mov EAX, -1
		next:
		add edx, 4
	loop L1

	Invoke ExitProcess, 0

Search ENDP
END Search