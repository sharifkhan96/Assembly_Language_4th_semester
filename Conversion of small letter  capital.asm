
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

; conversion of small letter to capital   

.model small
.data
.code

main proc
    
print 'Enter small letter : '
mov ah, 1
int 21h

mov dl, al

sub dl, 32   

print ' Capital  letter is : '

mov ah, 2
int 21h  

main endp

ret




