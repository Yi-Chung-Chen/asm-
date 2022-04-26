include irvine32.inc
.data
m byte "加總後的結果: ",0
data01 word 12h, 42h, 87h, 61h,50h, 30h, 80h
.code
main proc
	
	mov esi,offset data01
	mov eax,[esi]
	sub eax,00420000h
	call writehex
	call crlf

	add esi,sizeof word
	add eax, [esi] ;12h+42h
	sub eax,00870000h
	call writehex
	call crlf

	add esi,sizeof word
	add eax,[esi] ; 54h+87h 
	sub eax, 00610000h
	call writehex
	call crlf

	add esi ,sizeof word
	add eax,[esi] ;DBh+61h CF=1
	sub eax,00500000h
	call writehex
	call crlf

	add esi ,sizeof word
	add eax,[esi];13Ch+50h 
	sub eax,00300000h
	call writehex
	call crlf

	add esi,sizeof word
	add eax,[esi];18Ch+30h
	sub eax,00800000h
	call writehex
	call crlf
	
	add esi,sizeof word
	add eax,[esi];1BCh+80h CF=1
	call writehex
	call crlf

	mov edx,offset m
	call writestring
	call writehex
	call crlf
	call waitmsg
main endp
end main