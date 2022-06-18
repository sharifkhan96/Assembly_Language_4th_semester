
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



 

 
 
 
 
 MyMacro MACRO str1, str2, str3
    mov dx, offset str1
    mov ah, 9
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h
    
    
     mov dx, offset str2
    mov ah, 9
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h
           
           
  mov dx, offset str3
    mov ah, 9
    int 21h
     
 ENDM
 
 org 100h 
 

 main proc   
    
 .data
     
 str1 db "heloo $"
  str2 db "my name is mehr $"
 str3 db "my semester is 4rth $"
 
 .code
 
 
MyMacro  str1, str2, str3
 main endp 
 ret
  






