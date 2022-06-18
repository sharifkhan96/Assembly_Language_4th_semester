
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
   
   myarr db 5 (?)
   input db "enter values:$"
   output db "values in array:$"

.code

main proc
    
mov ax, @data
mov dx, ax
mov cx, 5

mov si, offset myarr

;print 'enter values: '
mov ah, 09h
mov dx, offset input
int 21h

loop1:
mov ah, 01h
int 21h

mov [si], al
inc si

loop loop1

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h

;print 'your values in array :'
mov ah, 09h
mov dx, offset output
int 21h
mov si, offset myarr
mov cx, 5

loop2:
          
mov dl, [si]
mov ah, 02h
int 21h 

inc si         

loop loop2    
    
main endp
ret



