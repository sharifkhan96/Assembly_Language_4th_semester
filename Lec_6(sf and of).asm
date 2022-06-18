
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
   
;SF = 1 & OF = 0
mov al, 10000000b 
add al, 00000000b

;SF = 1 & OF = 1
mov al, 01000000b
add al, 01000000b

;SF = 0 & OF = 1
mov al, 10000000b 
add al, 10000000b 

;SF = 0 & OF = 0
mov al, 11000000b
add al, 01000000b


ret




