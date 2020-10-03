

; You may customize this and other start-up templates; 

; The location of this template is c:\emu8086\inc\0_com_template.txt
                                                                     
                                                                     
                                                                     
                                                                     
ASSUME CS:CODE, DS:DATA

DATA SEGMENT 
    
    MESSAGE DB 0DH, 0AH, "Enter 1 for interrupt", 0DH, 0AH, "$"
    
    DAT1 DB 02H, 06H, 03H, 04H
    
    DAT2 DB 03H, 01H, 07H, 03H
    
    SUM1  DB 00
    
    SUM2  DB 00
    
DATA ENDS   

   


CODE SEGMENT
    
    START:          
    
    MOV AX, DATA
    
    MOV DS, AX   
    
    MOV SI, OFFSET DAT1
    
    MOV CL, 00H
    
    ADD CL, [SI]
    
    INC SI   
    
    ADD CL, [SI]
    
    INC SI  
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV DX, OFFSET MESSAGE
    
    MOV AH, 09H
    
    INT 21H   
              
    MOV AH, 01H
    
    INT 21H  
    
    CMP AL, 31H
    
    JZ PR
    
              
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    
RT: ADD CL, [SI]
    
    INC SI
    
    ADD CL, [SI]   
    
    MOV SUM1, CL    
        
    MOV AH, 00H
    
    INT 21H
    
    
       
    
PR: PUSHF 

    PUSH CX
    
    PUSH SI
    
    MOV SI, OFFSET DAT2
    
    MOV CL, 00H
    
    ADD CL, [SI]
    
    INC SI   
    
    ADD CL, [SI]
    
    INC SI  
    
    ADD CL, [SI]
    
    INC SI
    
    ADD CL, [SI] 
    
    MOV SUM2, CL  
    
    POP SI
    
    POP CX  
    
    POPF
    
    JMP RT    
     

    
CODE ENDS   

END START


ret




