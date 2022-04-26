Include Irvine32.inc
.data

.code
main proc
	mov ecx,20
	safe_loop:
		push ecx ; 20 load into ecx
	
	mov ecx,10 ; for integer loop

		get_integer_or_alphabet:
			call randomize
			mov eax,62
			call randomrange ;0~61
			cmp eax,10
			jae get_alphabet ;�j��10�N����r������
			add eax,48 ;�_�h�N+48�H������Ʀr
			jmp display
		get_alphabet:
			cmp eax,36 ;�p�G���ͪ��Ʀr�p��36�A�j��10
			jae small	;�N����p�g
			add eax,55
			jmp display
		small:
			add eax,61
		display:
			call writechar
			loop get_integer_or_alphabet ;
			pop ecx
			call crlf
			loop safe_loop
			call waitmsg
	invoke exitprocess,0
main endp
end main