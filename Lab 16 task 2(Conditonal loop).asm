
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov cx, 65535
mov ax, 1

myloop:
             
inc ax

cmp ah, 1   ; cmp ah, 0          

loopne myloop  ; loope myloop

ret




