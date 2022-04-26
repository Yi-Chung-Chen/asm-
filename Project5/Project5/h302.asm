include irvine32.inc

.data
message1 byte"輸入第一個數:",0
message2 byte"輸入第二個數:",0
message3 byte"算到最後一個數(ex:15 13*14*15):",0
message4 byte"算到最後一個數加一(ex:15 14*15*16):",0
first dword ?
last  dword ?
times dword ?
temp_result dword 0
.code
main proc
	;-----------------------初始範圍輸入
	mov edx,offset message1
	call writestring
	call readint
	mov first,eax
	call crlf
	;-----------------------結束範圍輸入
	mov edx,offset message2
	call writestring
	call readint
	mov last,eax
	call crlf
	;-----------------------分割線-----------------------
	mov eax,0
	add eax,last
	sub eax,first
	sub eax,1
	mov times,eax
	mov ecx,times
	;-----------------------分割線-----------------------
	loop1:
		mov eax,first
		add first,1
		mul first
		add first,1
		mul first
		sub first,1
		add eax,temp_result
		mov temp_result,eax
	loop loop1
	mov edx , offset message3
	call writestring
	call writeint
	call crlf
		mov eax,first
		add first,1
		mul first
		add first,1
		mul first
		sub first,1
		add eax,temp_result
		mov temp_result,eax
	mov edx , offset message4
	call writestring
	call writeint
	call crlf
	call waitmsg
main endp
end main