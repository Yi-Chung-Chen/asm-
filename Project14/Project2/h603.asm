include irvine32.inc

.data
m1 byte "¿é¤J¶¥¼h¼Æ¦r:",0
m2 byte "·¸¦ì¿ù»~",0
number dword ?
flag dword 0
.code

CannotShow:
	mov edx,offset m2
	call writestring
	call crlf
	call waitmsg
	invoke exitprocess,0
main proc

	mov edx,offset m1
	call writestring
	call readint
	.if eax<14
		mov ebx,eax
		call stage
		call writedec
	.else
		jmp Cannotshow
	.endif
	call waitmsg
main endp
stage proc
	.repeat
		dec ebx
		mul ebx
	.until ebx==1
	ret
stage endp
end main