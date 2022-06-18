
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 02h
mov dl, A1
INT 21H

MOV AH, 02H
MOV DL, A1+1
INT 21H

MOV AH, 02H
MOV DL, A1+2
INT 21H

MOV AH, 02H
MOV DL, A1+3
INT 21H

ret

A1 DB 2 DUP(31H, 32H) 

