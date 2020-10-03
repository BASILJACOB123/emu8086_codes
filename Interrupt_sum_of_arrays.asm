

; You may customize this and other start-up templates; 

; The location of this template is c:\emu8086\inc\0_com_template.txt
                                                                     
;;; CODED BY BASIL JACOB (18BCE0956) ;;;                                                                   
                                                                     
                                                                     
ASSUME CS:CODE, DS:DATA

DATA SEGMENT 
    
    MESSAGE DB 0DH, 0AH, "Enter 1 for interrupt", 0DH, 0AH, "$"
    
    DAT1 DW 01H, 03H, 05H, 07H, 09H, 0BH, 0DH , 0FH , 11H, 13H 
    
    DAT2 DW 02H, 04H, 06H, 08H, 0AH, 0CH, 0EH , 10H , 12H , 14H 
    
    SUM1  DW 00
    
    SUM2  DW 00
    
DATA ENDS            


   

;;; CODED BY BASIL JACOB (18BCE0956) ;;; 

CODE SEGMENT
    
    START:          
    
    MOV AX, DATA
    
    MOV DS, AX                                
    
    MOV SI, OFFSET DAT1
    
    MOV BL, 00H   
    
    MOV CX, 09H
    
        
    
    lab: ADD BL,[SI]
    
    INC SI       
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
    
    loop lab
    
    
    
   
    
;;; CODED BY BASIL JACOB (18BCE0956) ;;;     
    
RT:
    
      

    lab2: ADD BL,[SI] 
    
    INC SI      
    INC SI
    
    loop lab2
    
    
    MOV SUM1, BX    
        
    MOV AH, 00H
    
    INT 21H
                           
                           
    
;;; CODED BY BASIL JACOB (18BCE0956) ;;;        
    
PR: PUSHF 

    PUSH BX
    
    PUSH SI 
    
    PUSH CX
    
    
    MOV SI, OFFSET DAT2
    
    MOV BL, 00H
    
    MOV CX, 0AH    
    
    
    lab1: ADD BL,[SI]
    
    INC SI      
    INC SI
    
    
    loop lab1
    
    
    
    
    
    MOV SUM2, BX
      
    
    POP CX 
    
    POP SI
    
    POP BX  
    
    POPF
    
    JMP RT    
     

    
CODE ENDS   

END START


ret




