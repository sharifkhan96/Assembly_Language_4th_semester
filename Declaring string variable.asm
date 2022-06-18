
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small

.data    
    var db "Danish$"

.code
main proc
    
      mov dx, offset var
      mov ah, 9
      int 21h
          
main endp

ret




