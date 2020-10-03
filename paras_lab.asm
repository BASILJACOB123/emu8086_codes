
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   


org 100h

mov bx,5000h


mov [bx],00h  
inc bx
mov [bx],64h   

inc bx
mov [bx],00h   
inc bx
mov [bx],5Ah


inc bx
mov [bx],00h   
inc bx
mov [bx],50h
     
inc bx
mov [bx],00h   
inc bx
mov [bx],46h

inc bx
mov [bx],00h   
inc bx
mov [bx],3Ch

inc bx
mov [bx],00h   
inc bx
mov [bx],32h

inc bx
mov [bx],00h   
inc bx
mov [bx],28h

inc bx
mov [bx],00h   
inc bx
mov [bx],1Eh

inc bx
mov [bx],00h   
inc bx
mov [bx],14h

inc bx
mov [bx],00h   
inc bx
mov [bx],0Ah

mov cx,0Ah

l1: add ax,[bx]
dec bx
dec bx
loop l1

mov si,0Ah

div si

mov dx,ax

mov cx,0Ah

inc bx
inc bx

l2: sub [bx],dx  
mov ax,[bx]
mul ax
mov [bx],ax
inc bx
inc bx

loop l2

dec bx
dec bx

mov cx,0Ah 
mov ax,0h

l3: add ax,[bx] 

dec bx
dec bx

loop l3

inc bx
inc bx

mov cx,0Ah

div cx




ret




