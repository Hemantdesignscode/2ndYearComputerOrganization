
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	
	Var1 DWORD 100
	Var2 DWORD 200
	Var3 DWORD 50
	Var4 DWORD ?

.code
main PROC

	mov eax, Var1
	mov ebx, Var2
	imul eax, ebx

    CDQ

	mov ebx, Var3
	imul ebx, 5
	idiv ebx
	mov Var4, eax
	
	Invoke ExitProcess, 0

main ENDP
END main