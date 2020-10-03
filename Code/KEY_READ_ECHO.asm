
; You may customize this and other start-up templates; 

; The location of this template is c:\emu8086\inc\0_com_template.txt
                                                                     
                                                                     
                                                                     
                                                                     
ASSUME CS:CODE, DS:DATA

DATA SEGMENT 
    
    RES DB 01 DUP(?)
    
DATA ENDS 


CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX 
    
    MOV AH, 01H
    
    INT 21H 
    
    MOV RES, AL
    
    MOV AH, 00H
    
    INT 21H
    
CODE ENDS   

END START


ret




