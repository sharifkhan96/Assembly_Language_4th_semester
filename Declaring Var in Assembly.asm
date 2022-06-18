
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small 

.data
    var db 5
    
.code

main proc
         
         mov dl, var
         
         add dl, 48
         
         mov ah, 2
         int 21h
    
main endp

ret




