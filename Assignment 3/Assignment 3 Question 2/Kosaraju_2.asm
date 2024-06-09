
COMMENT !
	Student: Hemant Kosaraju
	Computer Science 3210 Assignment 3
	April 12, 2024
!

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	
	var1 DWORD 10d
	var2 DWORD 11d
	var3 DWORD 12d

.code
main PROC

	mov eax, var1
	mov ebx, var2
	mov edx, var3
	cmp eax, ebx
	JA IF_BLOCK
	cmp edx, ebx
	JB IF_BLOCK
	
	jmp ELSE_BLOCK

	IF_BLOCK:
		add ebx, edx
		mov var1, ebx
		add ebx, 1		; instructor implemented inc var2 here
		add edx, 1		; instructor implemented inc var3 here
		jmp next
	ELSE_BLOCK:
		sub eax, 1		; instructor implemented dec var1 here
		sub ebx, 1		; instructor implemented dec var2 here
		sub edx, 1		; instructor implemented dec var3 here
	next:	

	Invoke ExitProcess, 0

main ENDP
END main