
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; Several cases with the arrays in ASM

; Declare two arrays, and move only first elements of both arrays in AL and BL respectively. 
;mov al, A1
;mov bl, A2
;
;ret
;
;A1 DB 1, 2, 3
;A2 DB 4, 5, 6



; now move 2nd element of A1 to AL and 3rd element of A2 to BL.
;mov al, A1+1
;mov bl, A2+2
;
;ret
;
;A1 DB 1, 2, 3
;A2 DB 4, 5, 6



; Display 123 using arrays
;mov ah, 02h
;mov dl, A1
;int 21h
;
;mov ah, 02h
;mov dl, A1+1
;int 21h
;
;mov ah, 02h
;mov dl, A1+2
;int 21h
;
;ret 
;
;A1 DB 31h, 32h, 33h   
;



; Display 1 2 3 using arrays
;mov ah, 02h
;mov dl, A1
;int 21h
;
;mov ah, 02h
;mov dl, 20h
;int 21h
;
;mov ah, 02h
;mov dl, A1+1
;int 21h
;
;mov ah, 02h
;mov dl, 20h
;int 21h
;
;mov ah, 02h
;mov dl, A1+2
;int 21h
;
;ret 
;
;A1 DB 31h, 32h, 33h

;another way
;mov ah, 02h
;mov dl, A1
;int 21h
;
;mov ah, 02h
;mov dl, A1+1
;int 21h
;
;mov ah, 02h
;mov dl, A1+2
;int 21h
;
;mov ah, 02h
;mov dl, A1+3
;int 21h
;
;mov ah, 02h
;mov dl, A1+4
;int 21h
;
;ret 
;
;A1 DB 31h, 20h, 32h, 20h, 33h


; Duplicate in ASM arrays
;mov ah, 02h
;mov dl, A1
;int 21h
;
;ret 
;
;A1 DB 5 DUP(39h)  




;constants

;what EQU 3
;mov ax, what
;same as
;mov ax, 3