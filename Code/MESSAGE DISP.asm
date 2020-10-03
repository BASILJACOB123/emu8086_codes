
; You may customize this and other start-up templates; 

; The location of this template is c:\emu8086\inc\0_com_template.txt
                                                                     
                                                                     
                                                                     
                                                                     
ASSUME CS:CODE, DS:DATA

DATA SEGMENT 
    
    MESSAGE DB 0DH, 0AH, "DISPLAY MESSAGE", 0DH, 0AH, "$"
    
DATA ENDS 


CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX 
    
    MOV DX, OFFSET MESSAGE
    
    MOV AH, 09H
    
    INT 21H
    
    MOV AH, 00H
    
    INT 21H
    
CODE ENDS   

END START


ret




