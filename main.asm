.686
.model flat, stdcall
option casemap:none
;===================================
include C:\masm32\include\kernel32.inc
includelib C:\masm32\lib\kernel32.lib


comment~
;old notation
_TEXT SEGMENT
start:




end start
_TEXT ends
~

.code
start:

	push 3000
	call Sleep
	push 0
	call ExitProcess

end start