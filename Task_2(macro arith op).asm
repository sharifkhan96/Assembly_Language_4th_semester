
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


sum macro var1, var2
     
    mov dl, var1
    add dl, var2 
    
    endm
                
                
diff macro var1, var2
    
    mov dh, var1
    sub dh, var2
        
    endm        


increment macro var1, var2
        
        inc var1
        inc var2
        mov al, var1
        mov ah, var2
    
    endm            
    
    
decrement macro var1, var2
        
        dec var1
        dec var2
        mov bl, var1
        mov bh, var2
    
    endm    

org 100h

.model small

.data 
var1 db 8
var2 db 3
         
.code

main proc
    
    sum var1 var2
    diff var1 var2
    increment var1 var2
    decrement var1 var2        
         
ret          
main endp




