org 100h
.model small

.data
       
 var1 db 8
 var2 db 3
 
 var3 db ?
 
 array1 db 31h, 01h, 'a', 62h      

.code
main proc 
    
     mov bh, var1
    
     mov bl, var2
     
     add bh, bl
     
     
     
     mov ah, 02h
     mov dl, array1
     int 21h
                    
     call space 
                              
     mov ah, 02h
     mov dl, array1+1
     int 21h
     
     call space
     
     mov ah, 02h
     mov dl, array1+2
     int 21h         
      
     call space
            
     mov ah, 02h
     mov dl, array1+3
     int 21h     
     
     mov ah, 02h   ; this line is for beep
     mov dl, 07h
     int 21h  
             
 main endp
ret

space proc

    mov ah,02h
    mov dl,20h
    int 21h
ret
    space endp


