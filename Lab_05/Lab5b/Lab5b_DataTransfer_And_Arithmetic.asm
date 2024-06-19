

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

; This is a data directive used for declaring variables with BYTE types

.data
	Xval SDWORD 26		; Xval is signed 32-bit which is why SDWORD is used and set to value 26
	Yval DWORD 30		; Yval is unsigned 32-bit which is why DWORD is used and set to value 30
	Zval DWORD 40		; Zval is unsigned 32-bit which is why DWORD is used and set to value 40

; This is a code directive used for showing where the source code begins

.code
main PROC
	
	COMMENT !
		For the expression EAX = Xval - (Yval + Zval) the parentheses will be evaluated first then the sum will be subtracted from
		Xval
	!

	mov ebx, Yval
	add ebx, Zval
	sub Xval, ebx
	mov eax, Xval

	invoke ExitProcess, 0

main ENDP
END main