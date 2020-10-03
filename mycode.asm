
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

name "add-sub"

; Immediate  
;-----------

mov al, 5     
mov bl, 3     


add bl, al

sub bl, 1 

  

; Register 
; ---------- 
                                                  
mov dh, bl   

; Direct  
; ----------
                                                  
mov [5000h],al

mov ch,[5000h]
                
mov ah, dh

; Register Indirect
; -----------------

mov bx, 5000h

mov ah, [bx]  
 
 
; Indexed 
; ----------- 

mov si, bx

mov cl, [si]  


; Register Relative
; ------------------

mov 50h[bx], 2000h

mov  ax,  50h[bx]  

; Based Index
; -----------

mov [bx] [si], 9000h

mov ax, [bx] [si]     

; Relative Based Index
;----------------------

mov 50h [bx][si], 1500h

mov ax, 50h [bx][si]    

;Add
;----     

mov [1000h], 2h

mov ax, 1000h

mov si, ax    

add ax, 1000h

add ax, bx

add ax, [si]

add ax, [1000h]

add [1000h], 5h       

mov ax, [1000h]
 
                
; Sub
; ----

sub ax, bx


; Increment
;-----------     
             
                     
inc ax       

inc [1000h] 


; Decrement
;-----------
    
         
dec ax




ret




