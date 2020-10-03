
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,01h

;4!=4*3*2*1

;;;LOOP;;;

mov cx,04h

lab:mul cx

loop lab

;;;LOOP;;;


ret




