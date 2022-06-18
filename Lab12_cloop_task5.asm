
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 1
mov bl, 4
mov cl, 5

tag1:
add al, al
cmp al, bl
loopne tag1

ret




