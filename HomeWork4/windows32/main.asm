; FileName : main.asm
; Author : Norris, Joel R
; Date : 2016_02_08
; Project : Lab 2

; Assembler directives
.586				; accept instructions for 586
.MODEL FLAT			; generate code for flat memory
INCLUDE io.h		; header file for input / output
.STACK 4096			; reserve 4096-byte stack

.DATA				; DATA section begins : reserve storage for data
					; no storage for this lab, everything is done with immediates and registers
					; results are obtained with debugging

.CODE				; Code section begins
_MainProc			PROC

					; initialize registers
					mov eax, 0;
					mov ebx, 0;

					; PART I
					; 1
					mov al, 07Eh
					add al, 082h

					; 2
					mov al, 30
					sub al,	50

					; 3
					mov ax, 0BDh
					add al, 67

					; 4
					mov ax, 0BDh
					add al, 67

					; 5
					mov ax, 0BDh
					add al, 67

					; 6
					mov ax, -3
					add ah, 1

					; 7
					mov al, -128
					sub al, 48

					; 8
					mov ax, 00FEDh
					mov cx, 00867h
					add ax, cx

					; 9
					mov ax, 09ABCh
					mov cx, 06BDFh
					add ax, cx

					; 10
					mov eax, 000000ACEh
					mov ecx, 000000FBDh
					sub ecx, eax

					; 11
					mov bx, 00001h
					dec bx

					; 12
					mov cx, 07FFFh

					inc ecx

					; 13
					mov ebx, 07FFFFFFFh
					inc bx

					; 14
					mov ax, 00009h
					inc ax

					; 15
					mov eax, 000000007h
					neg eax

					; 16
					mov dx, 0F0E0h
					neg dl

					; PART II
					; 1
					mov al, 8
					mov bl, 10
					mul bl

					; 2
					mov ax, 0200h
					mov cx, 0200h
					mul cx

					; 3
					mov eax, 030000000h
					mov ebx, 030000h
					mul ebx

					; 4
					mov al, 10
					mov bl, 4
					imul bl

					; 5
					mov al, 10
					mov bl, -4
					imul bl

					; 6 
					mov ax, 20
					mov bx, 10
					imul bx

					; 7
					mov ax, 48
					mov bl, 5
					div bl

					; 8
					mov dx, 0
					mov ax, 48
					mov cx, 5
					div cx

					; 9
					mov ax, -48
					mov bl, 5
					idiv bl

					; 10 
					mov ah, 0
					mov al, -48
					mov bl, 5
					idiv bl

					; 11
					mov al, -48
					cbw
					mov bl, 5
					idiv bl

					; 12
					mov ax, -48
					cwd
					mov bx, 5
					idiv bx

					; 13
					mov eax, -48
					cdq
					mov ebx, -5
					idiv ebx

					; 14
					mov eax, 020002h
					cdq
					mov ebx, 0100h
					idiv ebx





					; program end				
					mov		eax, 0;				; exit w/ return code 0
					ret
_MainProc			ENDP						; end of main procedure
					END							; end of source code
					