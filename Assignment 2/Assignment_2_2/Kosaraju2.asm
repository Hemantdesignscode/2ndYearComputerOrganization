
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
	val1 WORD 12d
	val2 DWORD 9d
	val3 BYTE 2d
	val4 BYTE 20d

.code
main PROC

	COMMENT !
		- (val3 - val1) the negative operator is unary which is why it is outside 
		of parentheses and applies to the total result, which is why we use neg operator
	!
	movzx eax, val3
	sub ax, val1
	neg ax

	COMMENT !
		(-val4 + val2) we first assigned val4 normally and used movzx since the register size
		is 32-bit and val4 is BYTE type 8-bit and then we neg operator the register because val4 has unary minus
		then add val2 which is already DWORD type 32-bit to the 32-bit ebx register
	!
	movzx ebx, val4
	neg ebx
	add ebx, val2

	COMMENT !
		The code below shows the addition of the two mathematical expressions - (val3 - val1) + (-val4 + val2)
		which we have calculated separately above
	!
	add eax, ebx

	COMMENT !
		We moved the final result from 32-bit ebx register to 32-bit ecs register according to 
		the assignment's instructions and then added three to the final result
	!
	mov ecx, eax
	add ecx, 3

	Invoke ExitProcess, 0

main ENDP
END main