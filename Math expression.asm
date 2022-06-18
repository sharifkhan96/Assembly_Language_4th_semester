
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; 11*11/14-3
;mov al, 11
;mov bl, 11
;mul bl
;mov bl,14
;div bl
;mov bl,3
;sub al,bl
          
          
mov al, 11
mov bl, 11
mul bl
mov bl, 14
sub bl, 3
div bl
          
ret




