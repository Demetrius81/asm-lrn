include main.inc

.code
start:
	call main
	;---------
	push eax
	;---------
	call ExitProcess
;=======================================
main proc

	printf("+++++++++++++++++++++++++++++++++++++\n")
	printf("+          Buffer Overflow          +\n")
	printf("+++++++++++++++++++++++++++++++++++++\n\n")
	;---------
	call exploit
	;---------
	inkey
	
	xor eax,eax

	ret
main endp

end start