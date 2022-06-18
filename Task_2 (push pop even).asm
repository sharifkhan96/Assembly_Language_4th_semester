
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
     
     var1 dw ?
     
.code
    mov ax, 0
    mov bx, 2
    mov cx, 30
       
    sequence:    
    mov var1, ax
    div bx
    mov ax, var1
    cmp dx, 0
    
    je even_number
            
    next:
    add ax, 1        
            
    loop sequence 
    
    even_number:    
    push ax
    cmp cx, 0
    jne next 
        
    mov cx, 0fh
    poping:       
    pop ax   
    loop poping    
ret




