
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ASSUME CS:CODE, DS:DATA   
      

DATA SEGMENT 
    
    CODELIST DB 34H, 45H, 56H, 47H, 23H, 12H, 19H, 24H, 21H, 00H
    
    CHAR EQU 03H
    
    CODEC DB 00H
            
DATA ENDS  

CODE SEGMENT


START: 

        MOV AX, DATA

        MOV DS, AX
        
        MOV BX, OFFSET CODELIST
        
        MOV AL, CHAR
        
        XLAT 
             
        MOV BYTE PTR CODEC, AL
        
        MOV AH, 4CH
        
        INT 21H

CODE ENDS 

END START

ret




