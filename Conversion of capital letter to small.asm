
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

; conversion of capital to small letter   

.model small
.data
.code

main proc
    
print 'Enter capital letter : '
mov ah, 1
int 21h

mov dl, al

add dl, 32   

print ' Small  letter is : '

mov ah, 2
int 21h  

main endp

ret




