
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include "emu8086.inc"
mov ah, 01h
int 21h

mov bl, al

print " - "

mov ah, 01h
int 21h
mov dl, al 

print " = "

sub bl, dl

add bl, 48

mov dl, bl

mov ah, 02h
int 21h

ret




