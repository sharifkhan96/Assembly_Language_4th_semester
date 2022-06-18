
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 0h
mov cx, 5

k1:

 inc ax
 push ax

loop k1 


mov cx, 5

k2:
       
pop ax
add bx, ax       

loop k2

ret




