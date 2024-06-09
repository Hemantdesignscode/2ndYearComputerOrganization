
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
	z DWORD 3 DUP (?)
	x WORD 10
	y WORD 15
	r WORD 4

.code
main PROC

	mov ax, x
	add ax, y
	add ax, r
	movzx eax, ax
	mov DWORD PTR z[0], eax				; for the DWORD array each word is 4 bytes therefore first word is 0 bytes

	mov bx, y
	sub bx, r
	add bx, ax
	movzx ebx, bx
	mov DWORD PTR z[4], ebx				; for the DWORD array each word is 4 bytes therefore second word is 4 bytes

	mov dx, y
	add dx, bx
	add dx, ax
	movzx edx, dx
	mov DWORD PTR z[8], edx				; for the DWORD array each word is 4 bytes therefore third word is 8 bytes

	Invoke ExitProcess, 0

main ENDP
END main