
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 10
mov cx, 9
mov bx, 10

myloop:
add ax, bx
loop myloop

ret




