
; You may customize this and other start-up templates; 

; The location of this template is c:\emu8086\inc\0_com_template.txt
                                                                     
                                                                     
                                                                     
                                                                     
ASSUME CS:CODE, DS:DATA

DATA SEGMENT 
    
    INPUT DB 47H
    
DATA ENDS 


CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX    
    
    MOV DL, INPUT
    
    MOV AH, 02H
    
    INT 21H 
    
    
    MOV AH, 00H
    
    INT 21H
    
CODE ENDS   

END START


ret




