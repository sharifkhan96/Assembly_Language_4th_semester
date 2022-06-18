
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 01h
int 21h

mov dl, al 

mov ah, 01h
int 21h   

mov dh, al

mov ah, 01h
int 21h

mov bl, al

cmp dl, dh
jg tag1

cmp bl, dh
jg tag2   

   
tag1:
   mov ah, 09h
   mov dx, offset gt1
   int 21h
   ret

tag2:
    mov ah, 09h
    mov dx, offset gt3
    int 21h
ret

ret

gt1 db " Greater is first number$"
gt3 db " Greater is 3rd number$"


