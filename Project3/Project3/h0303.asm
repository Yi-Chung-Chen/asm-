Include Irvine32.inc
.data
mymessage1 BYTE "��J�ӤH�Ǹ��᤭�X�Ĥ@�X:",0
mymessage2 BYTE "��J�ӤH�Ǹ��᤭�X�ĤG�X:",0
mymessage3 BYTE "��J�ӤH�Ǹ��᤭�X�ĤT�X:",0
mymessage4 BYTE "��J�ӤH�Ǹ��᤭�X�ĥ|�X:",0
mymessage5 BYTE "��J�ӤH�Ǹ��᤭�X�Ĥ��X:",0
mymessage6 BYTE "�[�`�᪺���G:",0
stu_number1 Dword ?
stu_number2 Dword ?
stu_number3 Dword ?
stu_number4 Dword ?
stu_number5 Dword ?
.code
main proc
	;--------------------------------------
	mov edx,offset mymessage1
	call writestring
	call readint
	mov  stu_number1 , eax
	call crlf
	;--------------------------------------
	mov edx,offset mymessage2
	call writestring
	call readint
	mov  stu_number2 , eax
	call crlf
	;--------------------------------------
	mov edx,offset mymessage3
	call writestring
	call readint
	mov  stu_number3 , eax
	call crlf
	;--------------------------------------
	mov edx,offset mymessage4
	call writestring
	call readint
	mov  stu_number4 , eax
	call crlf
	;--------------------------------------
	mov edx,offset mymessage5
	call writestring
	call readint
	mov  stu_number5 , eax
	call crlf


	;--------------------------------------
	SUB eax,eax ;�k0
	add eax,stu_number5
	add eax,stu_number5
	add eax,5
	;--------------------------------------
	add eax,stu_number4
	add eax,stu_number4
	add eax,stu_number4
	sub eax,1
	;--------------------------------------
	add eax,stu_number3
	add eax,stu_number3
	add eax,stu_number3
	add eax,stu_number3
	add eax,stu_number3
	add eax,6
	;--------------------------------------
	add eax,stu_number2
	add eax,stu_number2
	add eax,5
	;--------------------------------------
	add eax,stu_number1
	add eax,stu_number1
	add eax,stu_number1
	add eax,5
	;--------------------------------------
	mov edx,offset mymessage6
	call writestring
	call writeint
	call crlf
	call waitmsg
	invoke exitprocess,0
main endp
end main