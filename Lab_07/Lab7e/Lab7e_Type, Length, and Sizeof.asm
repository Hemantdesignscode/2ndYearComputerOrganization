
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	myBytes BYTE 10h, 20h, 30h, 40h
	myWords WORD 3 DUP (?), 2000h
	myString BYTE "ABCDE"

.code
main PROC

	mov eax, TYPE myBytes			; a
	mov eax, LENGTHOF myBytes		; b
	mov eax, SIZEOF myBytes			; c
	mov eax, TYPE myWords			; d
	mov eax, LENGTHOF myWords		; e
	mov eax, SIZEOF myWords			; f
	mov eax, SIZEOF myString		; g

	Invoke ExitProcess, 0

main ENDP
END main