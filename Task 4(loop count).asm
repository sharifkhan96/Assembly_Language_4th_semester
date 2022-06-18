
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 10
mov cx, 65535
mov bx, 2


tag1:
    mul bx
    cmp ax, 160
loopnz tag1  

mov ax, 65535
sub ax, cx

ret




