include irvine32.inc
.data
message byte"�п�J��ƭ�N:",0
array Dword 4 DUP(?)
times Dword ?
.code
main proc
	;----------------------------
	mov edx,offset message	
	call writestring
	call readint	;��J���N
	;----------------------------��ƹw�B�z----------------------------
	mov times,eax
	mov esi,offset array
	;----------------------------��ƹw�B�z----------------------------
	mov ecx,eax

	loopi:
		push ecx
		mov ecx,1
	loopJ:
		mov eax,times
		add eax,times
		call randomrange
		sub eax,times
		mov [esi],eax
		jmp display
	display:

		mov eax,[esi]
		call writeint
		loop loopJ 
		pop ecx
		call crlf
		loop loopi
	call waitmsg

main endp
end main
