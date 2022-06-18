
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
         
; overflow occurs
;mov al, 10000001b
;sub al, 00000100b 

; overflow occurs
;mov al, 10000001b
;sub al, 00010100b

; overflow does not occur
;mov al, 00000001b
;sub al, 00000100b   
   
; overflow does not occur
;mov al, 10000001b
;sub al, 10000000b  

; overflow does not occur
;mov al, 10000001b
;sub al, 10010000b   
             
; overflow does not occur
mov al, 00001111b
sub al, 10010000b  
    
; overflow occurs
;mov al, 00001111b
;sub al, 10000000b

; overflow occurs
;mov al, 10000001b
;sub al, 00000100b


ret




