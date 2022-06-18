
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data 
var1 dw ?
ev db "even$"
nev db "not even$"

.code
      
mov bx, 2      
mov ax, 7
mov var1, ax
div bx   
mov ax, var1

cmp dx, 0
je even
jne not_even


even:
mov ah, 09h
mov dx, offset ev
int 21h

ret

not_even:
mov ah, 09h
mov dx, offset nev
int 21h

ret




