
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



 org 100h

mov cx, 5

myloop:
mov ah, 02h
mov dl, 'a'
int 21h 

mov ah, 02h
mov dl, 10
int 21h

mov ah, 02h
mov dl, 13
int 21h

loop myloop

ret


