
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 8
mov ax, 1
mov bx, 2

myloop:
       
mul bx

loop myloop

ret




