
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'

org 100h

.model small
.data
.code

main proc
    
       mov ah, 1
       int 21h
       
       mov bl, al
            
       print '+'
       
       mov ah, 1
       int 21h
       
       add bl, al
       sub bl, 48
           
       mov dl, bl
       
       print ' = '
           
       mov ah, 2
       int 21h
    
main endp

ret




