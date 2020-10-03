
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here    

mov bx, 5000h

mov [bx], 56h 

inc bx

mov [bx], 19h

inc bx

mov [bx], 72h

inc bx

mov [bx], 91h

inc bx

mov [bx], 45h

  
  
mov bx, 5000h 

mov al, 00h 

mov dl, 05h     ; number of input data = number of iterations   



again: mov cl, [bx]

cmp al, cl   ; compare al, cl

jnc change   ; jump no carry, if (al < [bx]) ----> change al

mov al, cl   ; 

change: nop ; else don't change al

inc bx   ; increment

dec dl   ; decrement

jnz again




ret




