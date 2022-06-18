
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 02h
mov dl, 65 
int 21h    

mov cx,25

myloop:           
           
mov ah, 02h
add dl,1
int 21h


loopnz myloop

ret




