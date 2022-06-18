
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 1h
mov bl, 4h
sub al, bl

jg tag1
ja tag2
jl tag3
jb tag4
  
tag1:
mov ax, 1111h
ret

tag2:
mov ax, 2222h
ret

tag3:
mov ax, 3333h
ret

tag4:
mov ax, 4444h
ret

ret




