
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
   
   
.model small
.data
.code

main proc
        
        mov dl, 83 ; "S"
        mov ah, 02h
        int 21h
               
        mov dl, "h"
        mov ah, 02h
        int 21h
        
        mov dl, "a"
        mov ah, 02h
        int 21h
        
        mov dl, "r"
        mov ah, 02h
        int 21h
        
        mov dl, "i"
        mov ah, 02h
        int 21h   
        
        mov dl, "f"
        mov ah, 02h
        int 21h   
        
        mov ah, 4ch
        int 21h
    
main endp

end main



ret





