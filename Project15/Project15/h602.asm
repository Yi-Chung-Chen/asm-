TITLE Swap Procedure Example                 (Swap.asm)

; Demonstration of the Swap procedure, using
; PROTO, PROC, and INVOKE.
; Last update: 06/01/2006

INCLUDE Irvine32.inc

Swap PROTO,			; procedure prototype
	pValX:PTR DWORD,
	pValY:PTR DWORD

.data
Array  DWORD  10000h,20000h,30000h ,70000h

.code
main PROC

	; Display the array before the exchange:
	mov  esi,OFFSET Array
	mov  ecx,4		; count = 2
	mov  ebx,TYPE Array
	call DumpMem		; dump the array values
	
	mov edx,1
	.repeat
		INVOKE Swap,ADDR Array, ADDR [Array+4*edx]
		inc edx
	.until edx==3
	; Display the array after the exchange:
	call DumpMem

	exit
main ENDP

;-------------------------------------------------------
Swap PROC USES eax esi edi,
	pValX:PTR DWORD,	; pointer to first integer
	pValY:PTR DWORD	; pointer to second integer
;
; Exchange the values of two 32-bit integers
; Returns: nothing
;-------------------------------------------------------
	mov esi,pValX	; get pointers
	mov edi,pValY
	mov eax,[esi]	; get first integer
	xchg eax,[edi]	; exchange with second
	mov [esi],eax	; replace first integer
	ret
Swap ENDP

END main