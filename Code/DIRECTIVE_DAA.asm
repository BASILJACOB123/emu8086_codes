
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt




ASSUME CS:CODE, DS:DATA    

                  
    
DATA SEGMENT
    
    OPR1 DB 42H
    
    OPR2 DB 98H
    
    RESULT DB 02 DUP (00)
    
DATA ENDS    




CODE SEGMENT 
    
    
    START:  
    
    MOV AX, DATA
    
    MOV DS,  AX 
    
    MOV AX, 0000H
    
    MOV AL, OPR1  
    
    MOV BL, OPR2
    
    ADD AL, BL
    
    DAA
    
    MOV SI, OFFSET RESULT
    
    MOV [SI], AL
    
    JNC MSB0
    
    MOV AH,01H 
    
    INC SI
    
    MOV [SI], AH   
    
    
MSB0: MOV AH, 00H
    
    INT 21H 
    
    CODE ENDS

 END START
    


ret




