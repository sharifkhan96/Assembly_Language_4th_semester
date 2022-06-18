
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

mov dx, offset numONE
mov ah, 9
int 21h

mov ah, 01h
int 21h

mov bl, al

mov dx, offset numTWO
mov ah, 9
int 21h

mov ah, 01h
int 21h

cmp al, bl

je eq
jne Neq


eq:
 mov dx, offset msg
 mov ah, 9
 int 21h

ret
      
Neq:
      mov dx, offset neqMSG
      mov ah, 09h
      int 21h    
ret

 msg db " Equal$"       
 
 neqMSG db " Not equal$"    
 
 numONE db "Enter No 1 : $"
 
 numTWO db " Enter No 2 : $"

