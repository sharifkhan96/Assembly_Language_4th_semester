
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 1
mov cx, 5

myloop:

mov ah, 09h
mov dx, offset hel 
int 21h

mov ah, 02h
mov dl, 10
int 21h

mov ah, 02h
mov dl, 13
int 21h

cmp ax, 5
add ax, 1

loopne    myloop

mov ah, 09h
mov dx, offset tall
int 21h

ret

hel db " Hello$"
tall db "That's all$"

