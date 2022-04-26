include irvine32.inc
.data
message byte"請輸入整數值N:",0
array Dword 4 DUP(?)
times Dword ?
.code
main proc
	;----------------------------
	mov edx,offset message	
	call writestring
	call readint	;填入整數N
	;----------------------------資料預處理----------------------------
	mov times,eax
	mov esi,offset array
	;----------------------------資料預處理----------------------------
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
