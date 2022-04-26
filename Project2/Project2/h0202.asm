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
			jae get_alphabet ;大於10就跳到字母部分
			add eax,48 ;否則就+48隨機選取數字
			jmp display
		get_alphabet:
			cmp eax,36 ;如果產生的數字小於36，大於10
			jae small	;就跳到小寫
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