include irvine32.inc

.data
message1 byte"��J�Ĥ@�Ӽ�:",0
message2 byte"��J�ĤG�Ӽ�:",0
message3 byte"���̫�@�Ӽ�(ex:15 13*14*15):",0
message4 byte"���̫�@�Ӽƥ[�@(ex:15 14*15*16):",0
first dword ?
last  dword ?
times dword ?
temp_result dword 0
.code
main proc
	;-----------------------��l�d���J
	mov edx,offset message1
	call writestring
	call readint
	mov first,eax
	call crlf
	;-----------------------�����d���J
	mov edx,offset message2
	call writestring
	call readint
	mov last,eax
	call crlf
	;-----------------------���νu-----------------------
	mov eax,0
	add eax,last
	sub eax,first
	sub eax,1
	mov times,eax
	mov ecx,times
	;-----------------------���νu-----------------------
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