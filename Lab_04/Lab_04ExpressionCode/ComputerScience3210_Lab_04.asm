.386
.model flat,stdcall
.stack 4096
ExitProcess proto, dwExitCode: DWORD

.code
main PROC
	mov AL, 245
	mov BL, 41
	mov CL, 11
	mov DL, 215
	sub AL, DL
	add AL, CL
	sub AL, BL
	Invoke ExitProcess, 0
main ENDP
END Main