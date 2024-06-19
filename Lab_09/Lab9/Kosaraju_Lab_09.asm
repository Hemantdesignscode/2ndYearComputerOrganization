
COMMENT !
	Name: Hemant Kosaraju
	Lab 9 Section 020 CRN 17917
	Location, Classroom South Room 400
!

.386
.model flat, stdcall
.stack 4096

.data
	ARRAY WORD 10, 2, 23, 45, 21, 11
	MAXIMUM WORD ?

ExitProcess PROTO, dwExitCode: DWORD

.code
main PROC

	mov bx, 0
	mov MAXIMUM, bx

	mov edx, 2
	mov ecx, 6

	L1:

		cmp [ARRAY+edx], bx
		JG IF_BLOCK
		JLE ELSE_BLOCK

		IF_BLOCK:
			mov bx , [ARRAY+edx]
			mov MAXIMUM, bx
			jmp next
		ELSE_BLOCK:
			mov ax, [ARRAY+edx]
		next:

		add edx, 2
	loop L1
	
	Invoke ExitProcess, 0

main ENDP
END main