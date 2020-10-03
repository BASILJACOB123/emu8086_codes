
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 01h

;;;;;;;;;;;;;;;;;;;;LOOP;;;;;;;;;;;;;;;;;

mov bl, 03h

lab: mul bl  

dec bl

jnz lab

;;;;;;;;;;;;;;;;;;;;LOOP;;;;;;;;;;;;;;;;;

ret


;jz--pre inst o/p is zero   

;jnz -- per inst o/p is not zero

