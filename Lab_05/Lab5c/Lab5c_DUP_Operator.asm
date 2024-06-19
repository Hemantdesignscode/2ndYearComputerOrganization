
; summation of the list values
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data

	myWord word 4 dup (1,2,3,4,5)

.code
main PROC

	mov EAX, 0			; Zeroing EAX
	mov AX, myWord + 0	; sum up the list values
	add AX, myWord + 2
	add AX, myWord + 4
	add AX, myWord + 6
	add AX, myWord + 8

	Invoke ExitProcess, 0

main ENDP
END main