
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    
    FILENAME DB "RESULT.COM", 0
    
    MESSAGE DB 0AH, 0DH, "FILE NOT CREATED", 0AH, 0DH, "$"
    
    DATA ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, CODE
    
    MOV DS, AX
    
    MOV DX, OFFSET ISR        ; name of ISR
    
    MOV AL, 0AH               ; number of ISR
    
    MOV AH, 25H               ;set interrupt vector
    
    INT 21H
    
    MOV DX, OFFSET FILENAME   ; name of the file to be created
    
    MOV AX, DATA
    
    MOV DS, AX
    
    MOV CX, 00H
    
    MOV AH, 3CH               ; creat a file
    
    INT 21H
    
    JNC FURTHER
    
    MOV DX, OFFSET MESSAGE    ; error message
    
    MOV AH, 09H
    
    INT 21H
    
    JMP STOP
    
    FURTHER: INT 0AH          ; run ISR 0AH
    
    STOP: MOV AH, 00H
    
    INT 21H
    
                              
    ISR PROC NEAR             ; ISR code
        
        MOV BX, AX
        
        MOV CX, 500H
        
        MOV DX, 1000H         ; offset
        
        MOV AX, 1000H         ; segment
        
        MOV DS, AX
        
        MOV AH, 40H           ; write file
        
        INT 21H
        
        IRET
        
        ISR ENDP
    
    CODE ENDS

END START


ret




