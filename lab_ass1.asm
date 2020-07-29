
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

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
     
mov ax,0h


;;; LOOP for average of values ;;;     

mov cx,0Ah    

lab: add ax , [bx]

dec bx
dec bx

loop lab


mov cx,0Ah  

div cx   

mov dx,ax



;;; LOOP for subtracting mean from original value ;;; 

inc bx
inc bx   
mov cx,0Ah
           
lab1: sub [bx],dx

mov ax,[bx]

inc bx
inc bx



loop lab1



;;; LOOP for squaring the differences ;;;        

dec bx
dec bx

mov cx,0Ah  

mov ax,[bx]

lab2: mul ax

mov [bx],ax

dec bx
dec bx 

mov ax,[bx]



loop lab2 


;;; Loop for finally computing variance ;;;

inc bx
inc bx
mov cx,0Ah


lab3: add ax , [bx]

inc bx
inc bx

loop lab3


mov cx,0Ah  

div cx   

mov dx,ax

;;; dx has the variance ;;;





ret
