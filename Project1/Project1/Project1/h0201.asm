Include Irvine32.inc
.data
mymessage1 BYTE "��J�Ĥ@�Ӿ��(�t���t��)�A��J�����enter:",0
mymessage2 BYTE "��J�ĤG�Ӿ��(�t���t��)�A��J�����enter:",0
mymessage3 BYTE "��J�ĤT�Ӿ��(�t���t��)�A��J�����enter:",0
mymessage4 BYTE "��J�ĥ|�Ӿ��(�t���t��)�A��J�����enter:",0
mymessage5 BYTE "��J�Ĥ��Ӿ��(�t���t��)�A��J�����enter:",0
mymessage6 BYTE "��J�Ĥ��Ӿ��(�t���t��)�A��J�����enter:",0
mymessage7 BYTE "�[�k�B�� a+b+c+d+e+f �����G��:",0
mymessage8 BYTE "��k�B�� a-b-c-d-e-f �����G��:",0
value1 sdword ?
value2 sdword ?
value3 sdword ?
value4 sdword ?
value5 sdword ?
value6 sdword ?

result sdword ?
.code
main PROC
	call clrscr
	;-----�m��1-------------
	mov dl,37	
	mov dh,13
	call gotoxy 
	mov edx,offset mymessage1
	call writeString
	;-------�ܼ�1��J-------
	call readint
	add value1,eax


	;-----�m��2-------------
	mov dl,37	
	mov dh,15
	call gotoxy 
	mov edx,offset mymessage2
	call writeString
	;-------�ܼ�2��J-------
	call readint
	add value2,eax ;2


	;-----�m��3-------------
	mov dl,37	
	mov dh,17
	call gotoxy 
	mov edx,offset mymessage3
	call writeString
	;-------�ܼ�3��J-------
	call readint
	add value3,eax ;3


	;-----�m��4-------------
	mov dl,37	
	mov dh,19
	call gotoxy 
	mov edx,offset mymessage4
	call writeString
	;-------�ܼ�4��J-------
	call readint
	add value4,eax ;4

	;-----�m��5-------------
	mov dl,37	
	mov dh,21
	call gotoxy 
	mov edx,offset mymessage5
	call writeString
	;-------�ܼ�5��J-------
	call readint
	add value5,eax ;5

	;-----�m��6-------------
	mov dl,37	
	mov dh,23
	call gotoxy 
	mov edx,offset mymessage6
	call writeString
	;-------�ܼ�5��J-------
	call readint
	add value6,eax ;6
	
	;���椻�r�[�k
	sub eax,eax ;eax�k�s
	add eax,value1
	add eax,value2
	add eax,value3
	add eax,value4
	add eax,value5
	add eax,value6

	mov dl,37
	mov dh,25
	call gotoxy
	mov edx,offset mymessage7
	call writestring
	call writeint
	call crlf

	;���椻�r��k
	sub eax,eax ;eax�k�s
	add eax,value1
	sub eax,value2
	sub eax,value3
	sub eax,value4
	sub eax,value5
	sub eax,value6
	mov dl,37
	mov dh,27
	call gotoxy
	mov edx,offset mymessage8
	call writestring
	call writeint
	call crlf
	
	call waitmsg
	exit
main ENDP
END main