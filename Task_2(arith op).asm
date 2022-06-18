
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small

.data

var1 db 8
var2 db 3

.code
 
main proc

call sum
call diff
call increment
call decrement         
         
ret
    
main endp


sum proc
         mov dl, var1
         add dl, var2
    
 sum endp


diff proc
         mov dh, var1
         sub dh, var2
    
 diff endp

increment proc 
    
         inc var1
         inc var2
         mov al, var1
         mov ah, var2
    
 increment endp

decrement proc
         
         dec var1
         dec var2
         mov bl, var1
         mov bh, var2
    
 decrement endp





