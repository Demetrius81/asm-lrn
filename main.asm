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
	printf("+         Get Computer Info         +\n")
	printf("+++++++++++++++++++++++++++++++++++++\n\n")
	;---------
	call get_comp_info
	;---------
	inkey
	
	xor eax,eax

	ret
main endp

end start