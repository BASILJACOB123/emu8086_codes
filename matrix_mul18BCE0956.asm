
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ASSUME CS:CODE,DS:DATA

; add your code here 


DATA SEGMENT
MAT1 DB 01H, 02H, 03H, 07H ;2X2 1X4

MAT2 DB 05H, 07H, 08H, 02H ;2X2 1X4

mat3 DB 01H,02H,03H,04H
result1 DW 04H DUP(?)  
result2 DW 04H DUP(?)
 
DATA ENDS

CODE SEGMENT
START:    
MOV ax,DATA
MOV ds,ax

MOV SI,OFFSET MAT1 
MOV DI,OFFSET MAT2
MOV bx,OFFSET result1  
mov ax,0000h
mov al,[SI]
mov dl,[DI]
mul dl

mov [bx],ax
mov ax,00h

mov al,[si+1]

mul [di+2]

add [bx],ax
inc bx 
inc bx    
mov ax,00h    
mov al,[si]
mul [di+1]

mov [bx],ax
mov ax,00h
mov al,[si+1]
mul [di+3]

add [bx],ax

inc bx
inc bx

mov ax,00h
mov al,[si+2]
mul [di]
mov [bx],ax
mov ax,00h
mov al,[si+3]
mul [di+2]

add [bx],ax

inc bx
inc bx

mov ax,00h
mov al,[si+2]
mul [di+1]
mov [bx],ax

mov ax,00h
mov al,[si+3]
mul [di+3]

add [bx],ax 


MOV bx,OFFSET result1
Mov cx,04h
l1: mov si,[bx]
inc bx
inc bx
loop l1        



MOV SI,OFFSET result1
MOV DI,OFFSET mat3
MOV BX,OFFSET result2


mov ax,0000h
mov AL,[SI]
mov DL,[DI]
mul DL

mov [bx],ax
mov ax,00h

mov al,[si+2]

mul [di+2]

add [bx],ax
inc bx 
inc bx    
mov ax,00h    
mov al,[si]
mov DL,[DI+1]
mul DL

mov [bx],ax
mov ax,00h
mov al,[si+2]
mov DL,[DI+3]
mul DL

add [bx],ax

inc bx
inc bx

mov ax,00h
mov al,[si+4]
mov DL,[DI]
mul DL
mov [bx],ax
mov ax,00h
mov al,[si+6]
mov DL,[DI+2]
mul DL

add [bx],ax

inc bx
inc bx

mov ax,00h
mov al,[si+4]
mov DL,[DI+1]
mul DL
mov [bx],ax

mov ax,00h
mov al,[si+6]
mov DL,[DI+3]
mul DL

add [bx],ax


MOV bx,OFFSET result2
Mov cx,04h
l2: mov si,[bx]
inc bx
inc bx
loop l2        


        
        
MOV AH,00H        
INT 21H        
CODE ENDS 
END START     


ret

ret




