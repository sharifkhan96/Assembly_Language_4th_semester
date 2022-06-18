
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 3
mov bx, 2


jmp facto

facto:
mul bx
dec bx
jz finish
jmp facto
         
         
         
 jmp finish
 finish:
 ret
 
ret




