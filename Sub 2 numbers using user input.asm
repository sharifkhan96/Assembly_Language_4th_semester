
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov ah, 09h
mov dx, offset msg
int 21h

mov ah, 01h
int 21h

mov bh, al
       
       
mov ah, 09h
mov dx, offset msg1
int 21h       
       
mov ah, 01h
int 21h

mov bl, al


mov al, bh
sub bh, bl
add bh, 48
 
mov ah, 02h
mov dl, al
int 21h

mov ah, 02h
mov dx, 45
int 21h

mov ah, 02h
mov dl, bl
int 21h

mov ah, 02h
mov dx, 61 
int 21h 


mov ah, 02h
mov dl, bh
int 21h

ret

msg db "Enter number1: $"
msg1 db "Enter number2: $"

