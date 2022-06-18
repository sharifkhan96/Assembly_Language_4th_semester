
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data

arr db 4 (?)


.code

main proc
    mov ax,@data
    mov ds,ax
    mov cx,4
    mov si,offset arr
    print 'enter values: '
    
    
    loop1:
    mov ah,01h
    int 21h
    
    
    mov [si],al
    inc si
    loop loop1
    
    
    mov dl,10
    mov ah,02h
    int 21h
    
    
    mov dl,13
    mov ah,02h
    int 21h
    print 'your values in array :'
    
       mov si,offset arr
       mov cx,4
    loop2:
    mov dl,[si]
    mov ah,02h
    int 21h
    
    
    mov dl,10
    mov ah,02h
    int 21h
    mov dl,13
    mov ah,02h
    int 21h
    
    
    inc si
    loop loop2
    main endp
end main
    

