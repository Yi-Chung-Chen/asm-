include irvine32.inc
.data
m1 byte "矩陣內容:",0
m2 byte "反轉後的結果:",0
space byte " ",0
arrayD dword 1,2,3,4,5,6,7
v1 dword ?
temp   dword ?

.code
main proc

	mov esi,offset arrayD 	

	mov ecx,lengthof arrayD

	mov edx,offset m1
	call writestring

	mov edx,offset space

	loop1:
		mov eax,[esi]
		add esi,sizeof dword
		call writedec
		call writestring
	loop loop1
	call crlf

	mov esi,offset arrayD
	mov ecx,lengthof arrayD
	mov edx,offset m2
	call writestring
	mov v1,sizeof dword
	mov eax,lengthof arrayD
	mul v1
	add esi,eax
	mov eax,[esi]
	
	mov edx,offset space
	loop2:
		sub esi,sizeof dword
		mov eax,[esi]
		call writedec
		call writestring
	loop loop2
	call crlf

	call waitmsg
main endp
end main