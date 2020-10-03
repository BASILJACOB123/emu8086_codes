
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt




ASSUME CS:CODE, DS:DATA    

                  
    
DATA SEGMENT
    
    OPR1 DB 63H
    
    OPR2 DB 86H   
    
DATA ENDS    




CODE SEGMENT 
    
    
    START:  
    
    MOV AX, DATA
    
    MOV DS,  AX 
    
    MOV AX, 0000H
    
    MOV AL, OPR1  
    
    MOV BL, OPR2
    
    SUB AL, BL
    
    DAS
    
    JNC MSB0  
    
    MOV BH, AL
    
    MOV AL, 99H
    
    
    SUB AL, BH 
    
    DAS
    
    ADD AL, 01H 
    
    DAA
    
     
    
    
MSB0: MOV AH, 00H
    
    INT 21H 
    
    CODE ENDS

 END START
    


ret




