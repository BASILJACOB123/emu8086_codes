
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


ASSUME CS:CODE, DS:DATA          ;;; CODED BY BASIL JACOB (18BCE0956)

DATA SEGMENT
    
    INPUT1 DB 04H  
      
    INPUT2 DB 02H
    
   
    RESULT DB 02 DUP (00)
    
    DATA ENDS
                                  ;;; CODED BY BASIL JACOB (18BCE0956)
CODE SEGMENT
    
    START:
    
    MOV AX, CODE
    
    MOV DS, AX
    
    MOV DX, OFFSET COMP         
    
    MOV AL, 41H               
    
    MOV AH, 25H                
    
    INT 21H
    
    MOV BH,03H 
    
    INT 41H          
    
    MOV AH, 00H
    
    INT 21H
    
                              
    COMP PROC NEAR                 ;;; CODED BY BASIL JACOB (18BCE0956)
        
        MOV AX, DATA
    
        MOV DS, AX           
        
        MOV AL, INPUT1
        
        MOV CL, INPUT2  
        
        RCR BH, 01       
        
        
        JC LAB
        
        CMP BH,01H
        
        JZ LAB1
        
        ADD AL, CL 
        
        JMP GO   
        
                                   ;;; CODED BY BASIL JACOB (18BCE0956)
   LAB:CMP BH,01H
   
   JZ LAB2
       
   SUB AL, CL   
   
   JMP GO
   
   
   LAB1:MUL CL   
   
   JMP GO
   
                     
   LAB2:MOV AH,00H
   
   DIV CL      ;;; Storing quotient only in RESULT Variable
   
   
   
        
   GO: MOV RESULT,AL
   
   NOP       
        
   IRET
        
   COMP ENDP
    
  CODE ENDS

END START


ret




