
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


;4!=4*3*2*1


mov al, 01h  
           
;;;;;;;;;;;;;;;;;;;;LOOP;;;;;;;;;;;;;;;;;
                     
mov cx, 05h 

lab: mul cl   

loop lab

;;;;;;;;;;;;;;;;;;;;LOOP;;;;;;;;;;;;;;;;;

ret




