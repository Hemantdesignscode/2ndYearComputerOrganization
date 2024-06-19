
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data 
	arrayB DWORD 1,2,3,4

.code
main PROC
          mov eax, arrayB ; 1,2,3,4
		  xchg eax, [arrayB+12] ; 4,2,3,1
		  xchg eax, [arrayB+4] ; 2, 4, 3, 1
		  xchg eax, [arrayB+8] ; 3, 4, 2, 1
		  xchg eax, arrayB

		  
	
	;mov ecx, word

	Invoke ExitProcess, 0
main ENDP
END main