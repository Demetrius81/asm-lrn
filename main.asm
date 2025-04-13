.686
.model flat, stdcall
option casemap:none
;===================================
include C:\masm32\include\kernel32.inc
includelib C:\masm32\lib\kernel32.lib


;-----------------------------------
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;old notation
;_TEXT SEGMENT
;start:

;end start
;_TEXT ends
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;------------------------------------

comment~
.const ; This announcement is not mandatory
	;FPS equ 1000
	FPS 	= 1000 ; only the simplest numerical value is declared in this way
	FLAG1 	= 1
	FLAG2 	= 2
	FLAG3 	= 1 + 2

.data
	numberA	dd	10
	numberB	dd	11
	
	
.data?
	hInstance	dd	?
~

.data
	buffer	dq	0
			dq	0

.code
start:
	
	;mov al,87h
	;mov ah,56h
	;mov ax,5678h
	;mov eax,12345678h
	;----------
	;mov cl,87h
	;mov ch,56h
	;mov cx,5678h
	;mov ecx,12345678h
	;----------
	;mov dl,87h
	;mov dh,56h
	;mov dx,5678h
	;mov edx,12345678h
	;---------
	;mov bl,87h
	;mov bh,56h
	;mov bx,5678h
	;mov ebx,12345678h
	;---------
	
	mov eax,614D5341h
	mov ecx,72657473h
	mov edx,00002179h
	;---------
	mov dword ptr[buffer],eax
	mov dword ptr[buffer+4],ecx
	mov dword ptr[buffer+8],edx
	;---------
	mov esi,offset buffer
	;---------
	mov eax,dword ptr[buffer]
	mov dx,word ptr[buffer+4]
	mov cl,byte ptr[buffer+6]
	;---------
	movzx eax,byte ptr[buffer]
	movsx edx,byte ptr[buffer+1]
	;---------
	push 1000
	;---------
	call Sleep
	;---------
	push 0
	;---------
	call ExitProcess
	;---------

end start