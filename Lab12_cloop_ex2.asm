
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 1
mov bl, 2
mov cl, 5

tag1:
add al, bl
cmp al, 3
loopz tag1

mov al, 0

ret




