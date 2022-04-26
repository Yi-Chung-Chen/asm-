Include Irvine32.inc
.data
mymessage1 BYTE "輸入第一個整數(含正負號)，輸入之後按enter:",0
mymessage2 BYTE "輸入第二個整數(含正負號)，輸入之後按enter:",0
mymessage3 BYTE "輸入第三個整數(含正負號)，輸入之後按enter:",0
mymessage4 BYTE "輸入第四個整數(含正負號)，輸入之後按enter:",0
mymessage5 BYTE "輸入第五個整數(含正負號)，輸入之後按enter:",0
mymessage6 BYTE "輸入第六個整數(含正負號)，輸入之後按enter:",0
mymessage7 BYTE "加法運算 a+b+c+d+e+f 的結果為:",0
mymessage8 BYTE "減法運算 a-b-c-d-e-f 的結果為:",0
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
	;-----置中1-------------
	mov dl,37	
	mov dh,13
	call gotoxy 
	mov edx,offset mymessage1
	call writeString
	;-------變數1輸入-------
	call readint
	add value1,eax


	;-----置中2-------------
	mov dl,37	
	mov dh,15
	call gotoxy 
	mov edx,offset mymessage2
	call writeString
	;-------變數2輸入-------
	call readint
	add value2,eax ;2


	;-----置中3-------------
	mov dl,37	
	mov dh,17
	call gotoxy 
	mov edx,offset mymessage3
	call writeString
	;-------變數3輸入-------
	call readint
	add value3,eax ;3


	;-----置中4-------------
	mov dl,37	
	mov dh,19
	call gotoxy 
	mov edx,offset mymessage4
	call writeString
	;-------變數4輸入-------
	call readint
	add value4,eax ;4

	;-----置中5-------------
	mov dl,37	
	mov dh,21
	call gotoxy 
	mov edx,offset mymessage5
	call writeString
	;-------變數5輸入-------
	call readint
	add value5,eax ;5

	;-----置中6-------------
	mov dl,37	
	mov dh,23
	call gotoxy 
	mov edx,offset mymessage6
	call writeString
	;-------變數5輸入-------
	call readint
	add value6,eax ;6
	
	;執行六字加法
	sub eax,eax ;eax歸零
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

	;執行六字減法
	sub eax,eax ;eax歸零
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