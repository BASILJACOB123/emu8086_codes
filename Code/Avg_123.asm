
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov bx, 5000h

mov [bx], 1h

inc bx

mov [bx], 2h

inc bx 

mov [bx], 3h

inc bx

mov [bx], 4h

inc bx

mov [bx], 5h

inc bx

mov [bx], 6h

inc bx

mov [bx], 7h

inc bx

mov [bx], 8h

inc bx

mov [bx], 9h

inc bx  

mov [bx],  0fh



mov al, 0h  

mov cx, 0ah 


lab: add al, [bx]

dec bx   

loop lab





mov bl, 0ah

div  bl


ret




