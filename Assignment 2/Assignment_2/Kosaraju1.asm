
COMMENT !
	Student: Hemant Kosaraju
	Class: Computer Science 3210
	Assignment#: 2
!

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	val1 WORD 134h
	val2 WORD 139h
	val3 WORD 67h
	val4 WORD 47h
	result WORD 0d

.code
main PROC

	COMMENT ! 
		Val3 + Val4 is being moved and added to dx register
	!
	mov dx, val3
	add dx, val4

	COMMENT !
		Val1 - Val2 is being moved and subtracted from ax register
	!
	mov ax, val1
	sub ax, val2
	sub dx, ax

	COMMENT !
		The expression (30 × 4) / 8 calculated to be 15 or 000F is moved to bx register
		and then subtracted from dx
	!
	mov bx, (30*4)/8
	sub dx, bx
	movzx edx, dx
	mov [result], dx

	Invoke ExitProcess, 0

main ENDP
END main