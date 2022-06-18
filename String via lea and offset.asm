
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov dx, offset var1 
mov ah, 09h
int 21h
                       
ret

var1 dw "Green Planet $"
 
 
 
 
 
; second way via lea(load effective address)
;mov ah, 09h
;lea dx, var2
;int 21h
;
;ret 
;
;var2 dw "green planet $"


