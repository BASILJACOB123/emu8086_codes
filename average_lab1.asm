
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov bx , 5000h

mov [bx], 20h

inc bx        

mov [bx] , 42h

inc bx 


mov [bx] , 30h

mov al , 0h

add al,[bx]

dec bx

add al,[bx]

dec bx

add al , [bx]

mov bl ,3h

div bl

ret




