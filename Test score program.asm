
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov ah, 01h
int 21h 

sub al, 30h

mov bl, al
                
mov ah, 01h
int 21h

mov dl, 9
cmp bl, dl
jge ninety
      
mov dl, 8      
cmp bl, dl
jge eighty
         
mov dl, 7      
cmp bl, dl
jge seventy 

mov dl, 3ch      
cmp bl, dl
jl sixty       

ninety:
mov ah, 09h
mov dx, offset grada 
int 21h
ret

eighty:
mov ah, 09h
mov dx, offset gradb
int 21h
ret

seventy:
mov ah, 09h
mov dx, offset gradc
int 21h
ret

sixty:
mov ah, 09h
mov dx, offset gradd
int 21h
ret

fail:
mov ah, 09h
mov dx, offset gradf
int 21h

ret

grada db " Your grade is A$"
gradb db " Your grade is B$"
gradc db " Your grade is C$"
gradd db " Your grade is D$"
gradf db " Your grade is F$"
val1 db ?

