
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
     
 var1 db "Hello$"
 var2 db "My name is Sharif$"
 var3 db "My semester is 4th group B$"

.code
main proc
   
   call printing 
    
ret    
main endp


printing proc
 
 mov ah, 09h
 mov dx, offset var1
 int 21h
 
 mov ah, 02h
 mov dl, 10
 int 21h   
 
 mov ah, 02h
 mov dl, 13
 int 21h
 
 mov ah, 09h
 mov dx, offset var2
 int 21h
 
 mov ah, 02h
 mov dl, 10
 int 21h   
 
 mov ah, 02h
 mov dl, 13
 int 21h
 
 mov ah, 09h
 mov dx, offset var3
 int 21h
    
    
printing endp


