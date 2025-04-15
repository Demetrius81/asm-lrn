.code
;=======================================
;[ebp+8] --> param1; [ebp+12] --> param2
;=======================================
addNumbersFC proc
	
	param1 	equ dword ptr[ebp+8]
	param2 	equ dword ptr[ebp+0Ch]
	sum 	equ dword ptr[ebp-4]
	;---------------	;function prologue
	push ebp			;
	mov ebp,esp			;
	;sub esp,4			;
	add esp,-4			;define local vars
	push ebx			;save main
	push esi			;base registers
	push edi			;to stack
	;---------------
	
	
	mov eax,param1
	mov edx,param2
	call _sum
	;---------------
	nop
	nop
	;---------------
	mov eax,sum
	;---------------	;function epilogue
	pop edi				;restore main
	pop esi				;base registers
	pop ebx				;from stack
	mov esp,ebp			;need to restore stack pointer to retutn address
	pop ebp				;
	ret 8				;we specify the offset to the number of bytes occupied by the function parameters
addNumbersFC endp

_sum proc
	add eax,edx
	ret
_sum endp

addNumbers proc
	
	param1 	equ dword ptr[ebp+8]
	param2 	equ dword ptr[ebp+0Ch]
	sum 	equ dword ptr[ebp-4]
	;---------------	;function prologue
	push ebp			;
	mov ebp,esp			;
	;sub esp,4			;
	add esp,-4			;define local vars
	push ebx			;save main
	push esi			;base registers
	push edi			;to stack
	;---------------
	
	
	mov eax,param1
	add eax,param2
	mov sum,eax
	;---------------
	nop
	nop
	;---------------
	mov eax,sum
	;---------------	;function epilogue
	pop edi				;restore main
	pop esi				;base registers
	pop ebx				;from stack
	mov esp,ebp			;need to restore stack pointer to retutn address
	pop ebp				;
	ret 8				;we specify the offset to the number of bytes occupied by the function parameters
addNumbers endp

addNumbers01 proc
	
	param1 equ dword ptr[ebp+8]
	param2 equ dword ptr[ebp+0Ch]
	
	push ebp			;function prologue
	mov ebp,esp			;-||-
	;---------------

	;mov eax,dword ptr[ebp+8]			;1 tick
	;mov edx,dword ptr[ebp+0Ch]			;1 tick
	;add eax,edx						;1 tick
	
	mov eax,param1						;1 tick
	add eax,param2						;2 ticks

	;---------------
	mov esp,ebp			;function epilogue		;1 tick
	pop ebp				;-||-					;1 tick
	;leave										;5 ticks
	ret 8				;we specify the offset to the number of bytes occupied by the function parameters
addNumbers01 endp

addNumbersCCall proc
	
	param1 	equ dword ptr[ebp+8]
	param2 	equ dword ptr[ebp+0Ch]
	sum 	equ dword ptr[ebp-4]
	;---------------	;function prologue
	push ebp			;
	mov ebp,esp			;
	;sub esp,4			;
	add esp,-4			;define local vars
	push ebx			;save main
	push esi			;base registers
	push edi			;to stack
	;---------------
	
	
	mov eax,param1
	add eax,param2
	mov sum,eax
	;---------------
	nop
	nop
	;---------------
	mov eax,sum
	;---------------	;function epilogue
	pop edi				;restore main
	pop esi				;base registers
	pop ebx				;from stack
	mov esp,ebp			;need to restore stack pointer to retutn address
	pop ebp				;
	ret					;ccall
addNumbersCCall endp