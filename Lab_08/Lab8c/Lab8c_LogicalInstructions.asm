
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.code
main PROC

	mov al, 01101111b
	and al, 00101101b				; AL = 
	mov al, 6Dh
	and al, 4Ah				; AL = 
	mov al, 00001111b
	or al, 61h				; AL = 
	mov al, 94h
	xor al, 37h				; AL = 

	Invoke ExitProcess, 0

main ENDP
END main