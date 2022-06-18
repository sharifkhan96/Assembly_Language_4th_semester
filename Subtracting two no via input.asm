
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include 'emu8086.inc'

org 100h

.model small
.data
.code

main proc
    
       mov ah, 1
       int 21h
       
       mov bl, al
            
       print '-'
       
       mov ah, 1
       int 21h
       
       sub bl, al
       add bl, 48
           
       mov dl, bl
       
       print ' = '
           
       mov ah, 2
       int 21h
    
main endp

ret

ret




