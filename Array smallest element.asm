
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; PROGRAM TO FIND LARGEST FROM ARRAY
.MODEL SMALL
.STACK 100H
.DATA
ARR DB 04H,02H,01H,04H,07h
SARR DB ?

.CODE
MOV AX , @DATA ; INITIALIZING DATA SEGMENT
MOV DS , AX

MOV CX , 4; INITIALIZING LOOP COUNTER

MOV SI , OFFSET ARR ;LOADING BASE ADDRESS OF ARR

MOV AL , [SI]  ;al=4

UP:
INC SI   ; si=5
CMP AL , [SI] ; al<si

JB NEXT
 MOV AL , [SI]
 LOOP UP
NEXT:
LOOP UP

MOV DL , AL
ADD DL , 48  ; 9+48=57( 57 is ascii for 9)
MOV AH ,2
INT 21H
MOV AH , 4CH ; INTERUPT FOR EXIT
INT 21H
END




