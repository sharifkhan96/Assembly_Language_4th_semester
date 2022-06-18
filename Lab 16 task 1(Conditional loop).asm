
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 10
mov cx, 65535

myloop:
           
add ax, 10           
cmp ax, 100           

loopne myloop
      
mov ax, 65535
sub ax, cx      
 
ret




