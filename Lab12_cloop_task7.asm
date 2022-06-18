
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 10
mov bl, 4
mov cl, 8

tag1:
add al, bl
cmp al, 22
loopne tag1

jmp tag2
add al, cl
inc cl

tag2:
add al, 2

tag3:
sub al, 24
loope tag3

loop tag2

ret




