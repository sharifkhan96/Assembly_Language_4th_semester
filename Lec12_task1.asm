
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 1
mov bl, 4
mov cl, 5

tag1:
add al, bl
loop tag1

mov cl, 5
jmp tag2

sub cl, bl
add al, cl

tag2:
dec al
loop tag2

ret

ret




