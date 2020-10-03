
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h





mov ax, 01h  
           
;;;;;;;;;;;;;;;;;;;;LOOP;;;;;;;;;;;;;;;;;
                     
mov cx, 09h 

lab: mul cx   

loop lab

;;;;;;;;;;;;;;;;;;;;LOOP;;;;;;;;;;;;;;;;;

ret


 
 
 

