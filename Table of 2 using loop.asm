
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h   

mov cx, 4
mov bx, 1

myloop:
mov ax, 2  
inc bx
mul bx
loop myloop

ret



