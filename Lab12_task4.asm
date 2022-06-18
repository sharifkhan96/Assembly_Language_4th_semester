
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;task 4 lab 12

mov al, 1
mov bl, 3
mov cl, 4
gotolabel:
mul bl
loop gotolabel

ret




