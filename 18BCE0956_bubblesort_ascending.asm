
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here     

;;; CODED BY BASIL JACOB (18BCE0956) ;;;
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

inc bx

mov [bx], 06h 

inc bx

mov [bx], 25h

inc bx

mov [bx], 34h

inc bx

mov [bx], 100h

inc bx

mov [bx], 32h   





;;; BUBBLE SORT ;;; CODED BY BASIL JACOB (18BCE0956)
mov ch,0Ah

back2: mov cl,0Ah

mov bx,5000h

back1: mov al,[bx]

mov ah,[bx+1]

cmp al,ah    ;;; Compare numbers and check if carry is generated ;;;

jnc skip             ;;; jump if no carry is generated that is [bx]-[bx+1]>0 thereby setting CF=0

jz skip

mov [bx+1],al      ;;; to swap numbers if [bx] < [bx+1]

mov [bx],ah

skip: inc bx

dec cl         ;;; decrement inner loop ;;;

jnz back1

dec ch          ;;; decrement outer loop ;;; 

jnz back2       ;;; reinitialise inner loop and pointer value 




;;; To check values in the memory if they are appropriately sorted ;;; CODED BY BASIL JACOB (18BCE0956)

mov bx,5000h
mov ax,00h       

mov cl,0Ah

lab: mov al,[bx]

inc bx

loop lab 




ret




