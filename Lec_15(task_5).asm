
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dl,var1+0
mov ah,02
int 21h 

mov dl,var2
mov ah,02
int 21h

mov dl,var1+1
mov ah,02
int 21h

mov dl,var2
mov ah,02
int 21h

mov dl,var1+2
mov ah,02
int 21h


ret 

var1 db 31H,32H,33H 
var2 db 20H


