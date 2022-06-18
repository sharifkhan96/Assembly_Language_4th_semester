
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
  
; table of 2 through mul
;mov bl, 1
;mov cl, 5
;tag1:   
;mov al, 2
;mul bl 
;inc bl
;loop tag1  
         
; table of 2 through addition         
;mov al, 2
;mov cl, 4
;tag:
;add al, 2
;loop tag                

; table of 2 through mul
mov bl, 1
mov cl, 4
tag2:     
mov al, 2
inc bl
mul bl
loop tag2


ret




