
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 4
mov bx, 4

cmp ax, bx

je eq
jne neq

eq:
mov ah, 09h
mov dx, offset equal
int 21h

mov ah, 04ch
int 21h

neq:
mov ah, 09h
mov dx, offset nequal
int 21h

mov ah, 04ch
int 21h
   
equal db "equal$"
nequal db "not equal$"   



