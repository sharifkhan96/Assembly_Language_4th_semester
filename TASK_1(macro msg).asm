
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
   
   
 aboutme MACRO str1, str2, str3 
     
    mov ah, 09h
    mov dx, offset str1
    int 21h 
    
           mov ah, 02h
           mov dl, 10
           int 21h
           mov ah, 02h
           mov dl, 13
           int 21h
           
    mov ah, 09h
    mov dx, offset str2
    int 21h
    
           mov ah, 02h
           mov dl, 10
           int 21h
           mov ah, 02h
           mov dl, 13
           int 21h
    
    mov ah, 09h
    mov dx, offset str3
    int 21h
        
 ENDM 

org 100h

.data
    var1 db "Hello $"  
    var2 db "My name is Sharif $" 
    var3 db "My semester is 4th group B $" 
 

.code            
   
   main proc
    
        aboutme var1, var2, var3
        
    endp            
                   
 ret                  




