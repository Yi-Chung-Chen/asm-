include irvine32.inc
.data
.code
main proc
	mov eax,1
	mov ecx,0
	mov ebx,1
	call writedec
	call crlf
	call fib
	call waitmsg
main endp
fib proc
.if eax<144
	add ecx,ebx
	mov eax,ecx
	xchg ecx,ebx
	call writedec
	call crlf
	call fib
.endif
	ret
fib endp
end main