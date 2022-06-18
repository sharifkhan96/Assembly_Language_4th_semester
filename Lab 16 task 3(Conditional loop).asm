
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 1
mov bx, 2

myloop:
           
mul bx

cmp ah, 1           

loopne myloop

ret




