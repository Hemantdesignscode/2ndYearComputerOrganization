

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

	dVal DWORD 04080102h


.code
main PROC
	
	COMMENT !
		Code to sum each BYTE which is each 1 byte for word e.g., 
		Remember little Endien format least signifcatn bit is placed into register first
		therefore it would be 02 + 01 + 08 + 04 = 0Fh
	!
	mov esi, OFFSET dVal

	mov ecx, SIZEOF dVal

	movzx eax, BYTE PTR [esi]
	
	L1:

		add esi, 1

		add al, BYTE PTR [esi]

	loop L1


	COMMENT ! This is Code for assignment 3 provided by instructor

		mov al, 0
		add al, BYTE PTR dval
		add al, BYTE PTR [dval+1]
		add al, BYTE PTR [dval+2]
		add al, BYTE PTR [dval+3]
	!
	
	Invoke ExitProcess, 0

main ENDP
END main