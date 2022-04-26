include irvine32.inc
.data
M1 byte"輸入學號(請使用上排的數字):",0
M2 byte"輸入的內容為:",0
M3 byte"通過!",0
m4 byte"所輸入非本系學號",0
m5 byte"密碼不正確",0
L1 DWORD ?
L2 DWORD ?
L3 DWORD ?
L4 DWORD ?
ISPACE1 DWORD ?
L5 DWORD ?
L6 DWORD ?
L7 DWORD ?
L8 DWORD ?
ISPACE2 DWORD ?
V1 DWORD ?
V2 DWORD ?
V3 DWORD ?
V4 DWORD ?
V5 DWORD ?
V6 DWORD ?
V7 DWORD ?
times dword 0
.code
main proc
	;============================ENTER===============================

	reenter2:
		cmp times,3
		je  nothere
		MOV EDX,OFFSET M1
		CALL WRITESTRING

		CALL READCHAR
		MOV  L1,EAX
		CALL CRLF

		CALL READCHAR
		MOV L2,EAX
		CALL CRLF

		CALL READCHAR
		MOV  L3,EAX
		CALL CRLF

		CALL READCHAR
		MOV  L4,EAX
		CALL CRLF

		CALL READCHAR
		MOV ISPACE1,EAX
		CALL CRLF

		CALL READCHAR
		MOV  L5,EAX
		CALL CRLF

		CALL READCHAR
		MOV L6,EAX
		CALL CRLF

		CALL READCHAR
		MOV  L7,EAX
		CALL CRLF

		CALL READCHAR
		MOV  L8,EAX
		CALL CRLF

		CALL READCHAR
		MOV ISPACE2,EAX
		CALL CRLF

		CALL READCHAR
		MOV  V1,EAX
		CALL CRLF

		CALL READCHAR
		MOV  V2,EAX
		CALL CRLF

		CALL READCHAR
		MOV  V3,EAX
		CALL CRLF

		CALL READCHAR
		MOV  V4,EAX
		CALL CRLF

		CALL READCHAR
		MOV  V5,EAX
		CALL CRLF

		CALL READCHAR
		MOV  V6,EAX
		CALL CRLF

		CALL READCHAR
		MOV  V7,EAX
		CALL CRLF

	;============================DISPLAY===============================

	MOV EDX,OFFSET M2
	CALL WRITESTRING

	MOV EAX,L1
	CALL WRITECHAR
	MOV EAX,L2
	CALL WRITECHAR

	MOV EAX,L3
	CALL WRITECHAR

	MOV EAX,L4
	CALL WRITECHAR

	MOV EAX,ISPACE1
	CALL WRITECHAR

	MOV EAX,L5
	CALL WRITECHAR

	MOV EAX,L6
	CALL WRITECHAR

	MOV EAX,L7
	CALL WRITECHAR

	MOV EAX,L8
	CALL WRITECHAR

	MOV EAX,ISPACE2
	CALL WRITECHAR

	MOV EAX,V1
	CALL WRITECHAR
	MOV EAX,V2
	CALL WRITECHAR
	MOV EAX,V3
	CALL WRITECHAR
	MOV EAX,V4
	CALL WRITECHAR
	MOV EAX,V5
	CALL WRITECHAR
	MOV EAX,V6
	CALL WRITECHAR
	MOV EAX,V7
	CALL WRITECHAR
	;============================COMPARE===============================


	MOV EAX,L1
	CMP EAX,12654 ;n
	JNE reenter

	MOV EAX,L2
	CMP EAX,11875 ;c
	JNE reenter

	MOV EAX,L3
	CMP EAX,5497 ;y
	JNE reenter

	MOV EAX,L4
	CMP EAX,5749 ;u
	JNE reenter

	MOV EAX,ISPACE1
	CMP EAX,14624 ;空白
	JNE reenter

	MOV EAX,L5
	CMP EAX,11843 ;C
	JNE reenter

	MOV EAX,L6
	CMP EAX,8019  ;S
	JNE reenter

	MOV EAX,L7
	CMP EAX,5961  ;I
	JNE reenter

	MOV EAX,L8
	CMP EAX,4677  ;E
	JNE reenter	


	MOV EAX,ISPACE2
	CMP EAX,14624 ;空白
	JNE reenter

	mov eax,v1
	cmp eax,20273
	JE  compare2

	MOV EAX,V1
	CMP EAX,561;1
	JNE reenter

	MOV EAX,V2
	CMP EAX,2864;0
	JNE reenter

	MOV EAX,V4
	ADD EAX,V5
	CMP EAX,3435;2+9
	JE inthenumber1
	CMP EAX,3939;3+0
	JNE reenter
	
	compare2:

		MOV EAX,V2
		CMP EAX,21040;0
		JNE reenter

		MOV EAX,V4
		ADD EAX,V5
		CMP EAX,39275;2+9
		JNE inthenumber2
		CMP EAX,41827;3+0
		JNE reenter
		

	inthenumber1:
		mov eax,v6
		cmp eax,2864
		ja reenter
		cmp eax,561
		jb reenter
		mov eax,v7
		cmp eax,2864
		ja reenter
		cmp eax,561
		jb reenter
		jmp yourhere

	inthenumber2:
		mov eax,v6
		cmp eax,21040
		ja reenter
		cmp eax,18231
		jb reenter
		mov eax,v7
		cmp eax,2864
		ja reenter
		cmp eax,561
		jb reenter
		jmp yourhere

	reenter:	
		mov eax,times
		add eax,1
		mov times,eax
		mov edx,offset m5
		call writestring
		call crlf
		jmp reenter2

	yourhere:
		mov edx,offset m3
		call writestring
		call crlf
		call waitmsg
		invoke exitprocess,0


	nothere:
		mov edx,offset m4
		call writestring
		call crlf
main endp
end main