
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ASSUME CS:CODE, DS: DATA 


DATA SEGMENT
    
    DATABLOCK DB 56h, 71h, ....
    
    FILENAME DB "KMB1.EXE",0
    
    MESSAGE DB 0AH, 0DH, "FILE NOT CREATED SUCCESSFULLY", 0AH, 0DH, "$"
    
DATA ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX
    
    MOV DX, OFFSET FILENAME
    
    MOV CX, 00H
    
    MOV AH, 3CH
    
    INT 21H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;creat;;;;;;;;;;;;;;;
    
    JNC WRITE
    
    MOV AX, DATA
    
    MOV DS, AX                     
    
    MOV DX, OFFSET MESSAGE
    
    MOV AH, 09H
    
    INT 21H
    
    JMP STOP
    
    
    WRITE: MOV BX, AX
    
    MOV CX, 0200H
    
    MOV DX, OFFSET DATABLOCK
    
    MOV AH, 40H
    
    INT 21H
    
    STOP: MOV AH, 4CH
    
    INT 21H
    
    CODE ENDS 

END START

ret




