.686
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

	;sub esp,8					;ccall
	;mov dword ptr[esp+4],8		;ccall
	;mov dword ptr[esp],7		;ccall
	;call addNumbersCCall		;ccall
	;add esp,8					;ccall
	;---------
	push 8
	push 7
	;push FPS
	;---------
	call addNumbersFC
	;---------
	push FPS
	;---------
	call Sleep
	;---------
	push 0
	;---------
	mov eax,0

	ret
main endp

end start