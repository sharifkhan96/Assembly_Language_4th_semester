
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small

.stack 100h

.data

myarray db 04h, 05h, 06h, 02h, 07h
largest db ?

.code

mov ax, @data
mov dx, ax

mov cx, 5

mov si, offset myarray

mov al, [si] ; al=4

up:

inc si
cmp al, [si]

ja next
mov al, [si]

loop up     

next:
loop up
mov dl, al
add dl, 30h ;48
mov ah, 02h
int 21h

mov ah, 04ch
int 21h
end



